package com.study.domain;

import lombok.Data;

import java.util.List;

@Data
public class MyBean412 {
    private String name;
    private int age;
    private Boolean married;
    private MyBean411 info;
    private List<String> foods;
}
