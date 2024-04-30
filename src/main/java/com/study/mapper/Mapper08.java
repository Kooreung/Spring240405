package com.study.mapper;

import com.study.domain.MyBean255EmployeeList;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Mapper08 {
    @Select("""
            <script>
            SELECT *
            FROM Employees
            WHERE LastName = 'abc'
            <if test="false">
            OR FirstName = 'def'
            </if>
            </script>
            """)
    List<MyBean255EmployeeList> query1();

    @Select("""
            <script>
                SELECT * FROM my_table
                <if test="lastName != null">
                -- lastName 이 null 이 아닐 때 포함되는 코드
                </if>
                <if test="lastName == null">
                -- lastName 이 null 일 때 포함되는 코드
                </if>
            </script>
            """)
    Object query2(MyBean255EmployeeList e);

    @Select("""
                        <script>
                            SELECT * FROM my_table
                            <if test="firstName == 'lee'">
                            -- firstName 이 lee 일 때 진행되는 코드
                            </if>
                            <if test="firstName != 'lee'">
                            -- firstName 이 lee 가 아닐 때 진행되는 코드
                            </if>
                        </script>
            """)
    Object query3(MyBean255EmployeeList e);

    @Select("""
            <script>
            SELECT * FROM my_table
            <if test="firstName == 'lee'">
            -- lee 일 때
            </if>
            <if test="firstName == 'kim'">
            -- kim 일 때
            </if>
            <if test="firstName neq null">
            -- null 아닐 때
            </if>
            <if test="firstName eq null">
            -- null 일 때
            </if>
            </script>
            """)
    Object query4(MyBean255EmployeeList e);

    @Select("""
            <script>
            SELECT * FROM my_table
                <trim prefix="WHERE" prefixOverrides="OR">
                    <if test="lastName != null">
                    OR    LastName = #{lastName}
                    </if>
                    <if test="firstName != null">
                    OR    firstName = #{firstName}
                    </if>
                </trim>
            </script>
            """)
    Object query5(MyBean255EmployeeList e);

    @Select("""
            <script>
            <bind name="patternKeyword" value='"%" + keyword + "%"' />
            SELECT * FROM Employees
            WHERE Notes LIKE #{patternKeyword}
            </script>
            """)
    List<MyBean255EmployeeList> query6(String keyword);
}
