package com.zw.admin.server.service.impl;

import com.zw.admin.server.dao.ParkMapper;
import com.zw.admin.server.model.Park;
import com.zw.admin.server.service.ParkService;
import com.zw.admin.server.utils.ExcelUtil;
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
 * @ClassName ParkServiceImpl
 * @Description 车位Service
 * @Author zhangcc
 * @Date 2020/1/1 16:51
 */
@Service
public class ParkServiceImpl implements ParkService {

    private static final Logger log = LoggerFactory.getLogger("adminLogger");
    private final static String EXCEL2003 = "xls";
    private final static String EXCEL2007 = "xlsx";
    @Autowired
    private ParkMapper parkMapper;

    @Override
    public int deleteByPrimaryKey(String parkNo) {
        int result = parkMapper.deleteByPrimaryKey(parkNo);
        log.debug("删除车位号为{}的车位信息", parkNo);
        return result;
    }

    @Override
    public int insertSelective(Park record) {
        int result = parkMapper.insertSelective(record);
        log.debug("添加车位号为{}的车位信息", record.getParkNo());
        return result;
    }

    @Override
    public Park selectByPrimaryKey(String parkNo) {
        Park park = new Park();
        park = parkMapper.selectByPrimaryKey(parkNo);
        log.debug("查询车位号为{}的车位信息", parkNo);
        return park;
    }

    @Override
    public int updateByPrimaryKeySelective(Park record) {
        int result = parkMapper.updateByPrimaryKeySelective(record);
        log.debug("修改车位号为{}的车位信息", record.getParkNo());
        return result;
    }

    @Override
    public String excelPark(MultipartFile file) {
        List<Park> parkList = new ArrayList<>();
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
                    Park park = new Park();
                    Row row = sheet.getRow(i);
                    int firstCellNum = row.getFirstCellNum();// 获取所在行的第一个列号
                    int lastCellNum = row.getLastCellNum();// 获取所在行的最后一个列号

                    if (row.getPhysicalNumberOfCells() != 0) {
                        for (int j = firstCellNum; j <= lastCellNum; j++) {
                            cell = row.getCell(j);
                            String cellValue = ExcelUtil.getCellValue(cell).trim();
                            if (j == 0) {
                                park.setParkNo(cellValue);
                            } else if (j == 1) {
                                park.setParkArea(cellValue);
                            } else if (j == 2) {
                                if (cellValue.equals("公用车位")) {
                                    park.setParkType(2);
                                } else if (cellValue.equals("业主车位")){
                                    park.setParkType(1);
                                }
                            } else if (j == 3) {
                                park.setOwnerName(cellValue);
                            }
                        }
                    }
                    parkList.add(park);
                }
                parkMapper.insertFromExcel(parkList); //存入数据库
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
