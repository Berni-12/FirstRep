package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.BuildMapper;
import com.zw.admin.server.model.Build;
import com.zw.admin.server.service.BuildService;
import com.zw.admin.server.utils.ExcelUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName BuildServiceImpl
 * @Description
 * @Author zhangcc
 * @Date 2020/1/21 10:07
 */

@Service
public class BuildServiceImpl implements BuildService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    private final static String EXCEL2003 = "xls";
    private final static String EXCEL2007 = "xlsx";
    @Autowired
    private BuildMapper buildMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        int result = buildMapper.deleteByPrimaryKey(id);
        return result;
    }

    @Override
    public int insertSelective(Build record) {
        int result = buildMapper.insertSelective(record);
        return result;
    }

    @Override
    public Build selectByPrimaryKey(Integer id) {
        Build build = new Build();
        build = buildMapper.selectByPrimaryKey(id);
        return build;
    }

    @Override
    public int updateByPrimaryKeySelective(Build record) {
        int result = buildMapper.updateByPrimaryKeySelective(record);
        return result;
    }

    @Override
    public String excelBuild(MultipartFile file) {
        List<Build> buildList=new ArrayList<>();
        if (file == null) {
            log.error("上传文件为空，请重新上传");
            return "1";
        }
        String fileName = file.getOriginalFilename();
        if (!fileName.matches("^.+\\.(?i)(xls)$") && !fileName.matches("^.+\\.(?i)(xlsx)$")) {
            log.error("上传文件格式不正确");
            return "2";
        }

        //创建工作簿
        Workbook workbook = null;
        Cell cell = null;
        try {
            //生成字节流
            InputStream is = file.getInputStream();
            //判断版本
            if (fileName.endsWith(EXCEL2007)) {
                workbook = new XSSFWorkbook(is);
            }
            if (fileName.endsWith(EXCEL2003)) {
                workbook = new HSSFWorkbook(is);
            }

            //读取
            if (workbook != null) {
                Sheet sheet = workbook.getSheetAt(0);
                //getFirstRowNum()获取第一行
                //getLastRowNum()获取最后一行
                //第一行为表头
                for (int i = sheet.getFirstRowNum() + 1; i <= sheet.getLastRowNum(); i++) {
                    Build  build=new Build();
                    Row row = sheet.getRow(i);
                    int firstCellNum = row.getFirstCellNum();// 获取所在行的第一个列号
                    int lastCellNum = row.getLastCellNum();// 获取所在行的最后一个列号

                    if (row.getPhysicalNumberOfCells() != 0) {
                        for (int j = firstCellNum; j <= lastCellNum; j++) {
                            cell = row.getCell(j);
                            String cellValue = ExcelUtil.getCellValue(cell);
                            if (j==0){
                                build.setBuildName(cellValue);
                            }else if (j==1){
                                build.setBuildArea(cellValue);
                            }else if (j==2){
                                build.setBuildFloor(Integer.parseInt(cellValue));
                            }
//                            System.out.print(cellValue + "\t");
                        }
                    }
//                    System.out.println();
                    buildList.add(build);
                }
                buildMapper.insertFormExcel(buildList); //存入数据库
            }
        } catch (Exception e) {
            log.error(String.format("parse excel exception!"), e);
        } finally {
            if (workbook != null) {
                try {
                    workbook.close();
                } catch (Exception e) {
                    log.error(String.format("parse excel exception!"), e);
                }
            }
        }
        return "0";
    }
}
