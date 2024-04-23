package com.study.mapper;

import com.study.domain.MyBean255CustomerList;
import com.study.domain.MyBean255EmployeeList;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

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

    @Delete("""
            DELETE FROM Employees
            WHERE EmployeeId = #{id};
            """)
    int deleteEmployeeById(int eid);

    @Insert("""
            INSERT INTO Customers
            (CustomerName, ContactName, Address, City, PostalCode, Country)
            VALUES 
            (#{name}, #{contactName}, #{address}, #{city}, #{postalCode}, #{country})
            """)
    int insertCustomer(MyBean255CustomerList customer);

    @Insert("""
            INSERT INTO Employees
            (LastName, FirstName, BirthDate, Photo, Notes)
            VALUES 
            (#{lastName}, #{firstName}, #{birthDate}, #{photo}, #{notes})
            """)
    int insertEmployee(MyBean255EmployeeList employee);

    @Update("""
            UPDATE Employees
            SET
                LastName = #{lastName},
                FirstName = #{firstName},
                BirthDate = #{birthDate},
                Photo = #{photo},
                Notes = #{notes}
            WHERE EmployeeId = #{id};
            """)
    int updateEmployee(MyBean255EmployeeList employee);
}
