package com.study.controller;

import com.study.domain.MyBean411;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/api/main41")
public class Controller41 {

    // 직렬화로 된 json 데이터를 받아야 한다.
    // 역직렬화
    // 기존에는 RequestParam 으로 받았던 것을
    // RequestBody 로 받으면 된다.
    // Key: Value 로 구성되어 있으므로 Map 으로 받으면 된다.
    // String 과 Object
    // 6가지 데이터 타입 중 어떤 게 들어올 지 모르니 Object 를 쓰는 것
    @PostMapping("/sub1")
    public void sub1(@RequestBody Map<String, Object> map) {
        System.out.println("Controller41.sub1");
        System.out.println("map = " + map);
    }

    @PostMapping("/sub2")
    public void sub2(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);

    }

    @PostMapping("/sub3")
    public void sub3(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    @PostMapping("/sub4")
    public void sub4(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);
    }

    @PostMapping("/sub5")
    public void sub5(@RequestBody Map<String, Object> map) {
        System.out.println("map = " + map);

        Object name = map.get("name");
        System.out.println("name.getClass() = " + name.getClass());
        Object age = map.get("age");
        System.out.println("age.getClass() = " + age.getClass());
        Object item = map.get("item");
        System.out.println("item.getClass() = " + item.getClass());
        Object married = map.get("married");
        System.out.println("married.getClass() = " + married.getClass());
        Object team = map.get("team");
        System.out.println("team.getClass() = " + team.getClass());
    }

    @PostMapping("sub6")
    public void sub6(@RequestBody MyBean411 bean411) {
        System.out.println("bean411 = " + bean411);
    }
}
