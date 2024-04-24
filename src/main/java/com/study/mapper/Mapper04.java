package com.study.mapper;

import com.study.domain.MyBean331;
import com.study.domain.MyBean332;
import com.study.domain.MyBean333;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Mapper
public interface Mapper04 {

    @Select("""
            SELECT string_col stringCol,
                    int_col intCol,
                    dec_col decCol,
                    date_col dateCol,
                    date_time_col dateTimeCol
            FROM my_table9;
            """)
    List<MyBean331> select1();

    @Select("""
            SELECT *
            FROM my_table9;
            """)
    List<MyBean332> select2();

    @Select("""
            SELECT *
            FROM my_table10;
            """)
    List<MyBean333> select3();

    @Insert("""
            INSERT INTO my_table9 
            (string_col, int_col, dec_col, date_col, date_time_col)
            VALUES 
            (#{c1}, #{c2}, #{c3}, #{c4}, #{c5})
            """)
    int insert1(String c1, String c2, String c3, String c4, String c5);

    // 위 방식과 동일한데 Type 만 맞춰서 설정한 상황
    @Insert("""
            INSERT INTO my_table9 
            (string_col, int_col, dec_col, date_col, date_time_col)
            VALUES 
            (#{c1}, #{c2}, #{c3}, #{c4}, #{c5})
            """)
            // c1 이든 뭐든 이름만 맞춰서 쓰면 된다.
    int insert2(String c1, Integer c2, Double c3, LocalDate c4, LocalDateTime c5);

    @Insert("""
            INSERT INTO my_table10 (
            title, name, age, price, published, inserted)
            VALUES
            (#{val1}, #{val2}, #{val3}, #{val4}, #{val5},#{val6})    
            """)

    int insert3(String val1, String val2, Integer val3, Double val4, LocalDate val5, LocalDateTime val6);
}
