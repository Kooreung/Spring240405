package com.study.controller;


import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequestMapping("main7")
public class Controller07 {

    @RequestMapping("sub1")
    public void method1(String search, HttpServletResponse resp) throws IOException {
        //검색 하는 일...
//        String result = search + " 키워드 검색 결과";
        String result = STR."""
                <div style = "display : flex;
                    justify-content : center;
                    align-items : center;">
                    <div style = "padding : 10px; background-color : skyblue;">
                        \{search} + 키워드 검색 결과
                    </div>
                </div>
                """;

        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().print(result);
    }

    @RequestMapping("sub2")
    public String method2() {
        // 요청 정보 분석/가공
        // 비즈니스 로직 처리
        // 결과를 모델에 담고
        // view 로 포워딩
        return "view1";
    }
}
