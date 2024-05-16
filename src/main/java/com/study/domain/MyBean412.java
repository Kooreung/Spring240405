package com.study.domain;

import lombok.Data;

import java.util.ArrayList;
import java.util.Map;

@Data
public class MyBean412 {
    private String name;
    private int age;
    private Boolean married;
    private Map<String, Object> info;
    private ArrayList<String> foods;
}
