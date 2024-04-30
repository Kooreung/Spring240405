package com.study.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface Mapper06 {

    @Update("""
            UPDATE mydb2.bank
            SET money = money - 1000
            WHERE name = '강인'
            """)
    int subtractMoney();

    @Update("""
            UPDATE mydb2.bank
            SET money = money + 1000
            WHERE name = '흥민'
            """)
    int addMoney();
}
