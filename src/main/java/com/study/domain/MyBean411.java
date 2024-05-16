package com.study.domain;

import lombok.Data;

@Data
public class MyBean411 {
    private String name;
    private Integer age;

    public String getDesc() {
        // get method 를 만들어두면 같이 불러간다.
        // JSON 직렬화 시 get Method 로 Property 가 결정 된다.
        return STR."이름은 \{name} 이고 나이는 \{age} 세 입니다.";
    }
}
