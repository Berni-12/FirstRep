package com.zcc.admin.server.service.impl;

import com.zcc.admin.server.service.HouseService;
import com.zcc.admin.server.dao.HouseMapper;
import com.zcc.admin.server.model.House;
import com.zcc.admin.server.utils.ExcelUtil;
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
import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName HouseServiceImpl
 * @Description 房屋Service
 * @Author zhangcc
 * @Date 2019/12/31 16:55
 */
@Service
public class HouseServiceImpl implements HouseService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    private final static String EXCEL2003 = "xls";
    private final static String EXCEL2007 = "xlsx";
    @Autowired
    private HouseMapper houseMapper;

    @Override
    public int deleteByPrimaryKey(String houseNo) {
        int result = houseMapper.deleteByPrimaryKey(houseNo);
        log.debug("删除房屋号为{}的房屋信息", houseNo);
        return result;
    }

    @Override
    public int insertSelective(House record) {
        int result = houseMapper.insertSelective(record);
        log.debug("添加房屋号为{}的房屋信息", record.getHouseNo());
        return result;
    }

    @Override
    public House selectByPrimaryKey(String houseNo) {
        House house = new House();
        house = houseMapper.selectByPrimaryKey(houseNo);
        log.debug("查询房屋号为{}的信息", houseNo);
        return house;
    }

    @Override
    public int updateByPrimaryKeySelective(House record) {
        int result = houseMapper.updateByPrimaryKeySelective(record);
        log.debug("更新房屋号为{}的房屋信息", record.getHouseNo());
        return result;
    }

    @Override
    public String excelHouse(MultipartFile file) {
        List<House> houseList=new ArrayList<>();
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
                    House  house=new House();
                    Row row = sheet.getRow(i);
                    int firstCellNum = row.getFirstCellNum();// 获取所在行的第一个列号
                    int lastCellNum = row.getLastCellNum();// 获取所在行的最后一个列号

                    if (row.getPhysicalNumberOfCells() != 0) {
                        for (int j = firstCellNum; j <= lastCellNum; j++) {
                            cell = row.getCell(j);
                            String cellValue = ExcelUtil.getCellValue(cell);
                            if (j==0){
                                house.setHouseNo(cellValue);
                            }else if (j==1){
                                house.setHouseType(cellValue);
                            }else if (j==2){
                                house.setHouseArea(cellValue);
                            }
                        }
                    }
//                    System.out.println();
                    houseList.add(house);
                }
                houseMapper.insertFromExcel(houseList); //存入数据库
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
