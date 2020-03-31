package com.zw.admin.server.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 * @ClassName Test
 * @Description TODO
 * @Author zhangcc
 * @Date 2020/1/4 15:53
 */
public class Test {
    private static Scanner cin;
    private static int[] rem = new int[501];


    public static void main(String args[]) throws Exception {
        Map<String,String> map=new HashMap<String,String>();
        map.put("a","11111");
        map.put("a","222222");
        map.put("a","333333");
        final Map<String,String> hashMap=map;

        hashMap.put("c","22323244");

        System.out.println(hashMap);

    }

    private static int calc(int step) {
        int ret = 0;
        if(-1 != rem[step]) {
            return rem[step];
        }
        if(step>=1) {
            for(int i=1;i<=step;i++) {
                if(-1 != rem[i]) {
                    ret = ret + rem[i]+1;
                    System.out.println(rem[i]);
                }else {
                    ret = ret + calc(i/2)+1;
                    rem[i] = ret;
                    System.out.println(rem[i]);
                }

            }
        }

        return ret;
    }

}
