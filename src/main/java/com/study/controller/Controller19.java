package com.study.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

@Controller
@RequestMapping("main19")
public class Controller19 {


    // session 사용 안할 때
    @RequestMapping("sub1")
    public void sub1(){
        System.out.println("Controller19.sub1");
    }
    // 가져 갈 cookie 가 없음

    // session 사용할 때
        // 첫 서버 요청에는 cookie 미지급
    @RequestMapping("sub2")
    public void sub2(HttpSession session){
        session.setAttribute("attr", "value");
        System.out.println("Controller19.sub2");
    }



    @RequestMapping("sub6")
    public void sub6(HttpServletResponse response){
        Cookie cookie = new Cookie("cookie-name1", "cookie-value1");
        response.addCookie(cookie);

    }

    @RequestMapping("sub7")
    public void sub7(HttpServletResponse response){
        Cookie cookie = new Cookie("cookie-name2", "cookie-value2");
        response.addCookie(cookie);
    }

    @RequestMapping("sub8")
    public void sub8(HttpServletResponse response){
        Cookie cookie = new Cookie("cookie-name3", "cookie-value3");
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        // cookie 지속시간 결졍 (초 단위)
        cookie.setMaxAge(3);
        response.addCookie(cookie);
    }

    @RequestMapping("sub9")
    public void sub9(HttpServletResponse response){
        Cookie cookie = new Cookie("cookie-name4", "cookie-value4");
        cookie.setHttpOnly(true);
        cookie.setPath("/");
        // cookie 지속시간 결졍 (초 단위)
        cookie.setMaxAge(60);
        response.addCookie(cookie);
    }

    @RequestMapping("sub10")
    public void sub10(HttpServletRequest request, HttpServletResponse response){
        // cookie-name4 지우기
        // 1. 요청에서 쿠키 얻기
        Cookie[] cookies = request.getCookies();
        Cookie cookie = null;
        if(cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("cookie-name4")) {
                    cookie = c;
                }
            }
        }
        if(cookie != null){
            // 2. 쿠키의 지속시간 0 으로 세팅
            cookie.setPath("/");
            cookie.setMaxAge(0);
            // 3. 쿠키를 응답에 추가
            response.addCookie(cookie);
        }
    }
}
