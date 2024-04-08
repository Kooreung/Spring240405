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

    @RequestMapping("sub3")
    public String method3() {
        return "view2";
        // /WEB-INF/view/view2.jsp 로 포워딩
        // application.properties 에 설정하였기 때문
    }

    @RequestMapping("sub4")
    public String method4() {
        return "view3";
        // /WEB-INF/view/view3.jsp 로 포워딩
    }

    @RequestMapping("sub5")
    public String method5() {
        return "/main7/sub5"; // 같은 경우가 많다.
    }

    @RequestMapping("sub6")
    public String method6() {
        return null; // 요청 경로와 같은 view 의 이름으로 결정
    }

    @RequestMapping("sub7")
    public void method7() {
        // 요청 경로와 같은 view 의 이름으로 결정
        // view : /WEB-INF/view/main7/sup7.jsp
    }

    @RequestMapping("sub8")
    public void method8() {
        System.out.println("Controller07.method8");
    }
}
