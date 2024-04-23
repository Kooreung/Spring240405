package com.study.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface Mapper03 {
    @Delete("""
    DELETE FROM Customers
    WHERE CustomerId = 1;
    """)
    int deleteCustomer();

    @Delete("""
    DELETE FROM Customers
    WHERE CustomerId = #{id};
    """)
    int deleteCustomerById(int id);
}
