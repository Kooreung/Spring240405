package com.study.controller;

import com.study.domain.MyBean141;
import com.study.domain.MyBean142;
import com.study.domain.MyBean143;
import com.study.domain.MyBean144;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("main14")
public class Controller14 {

    @RequestMapping("sub1")
    public void sub1(Model model){
        MyBean141 o1 = new MyBean141("신촌", "한국", 33, "흥민");
        MyBean142 o2 = new MyBean142();
        o2.setName("강인");
        o2.setId("19");
        o2.setAge(22);

        model.addAttribute("player1", o1);
        model.addAttribute("player2", o2);
    }

    @RequestMapping("sub2")
    public void sub2(Model model){
        MyBean142 o1 = new MyBean142();
        MyBean142 o2 = new MyBean142();
        o1.setName("김민재");
        o2.setName("이정후");

        model.addAttribute(o1);
        model.addAttribute(List.of(o1, o2));
    }

    @RequestMapping("sub3")
    public void sub3(@ModelAttribute("player1") MyBean142 o1){
        o1.setName("오타니");
    }

    @RequestMapping("sub4")
    public String sub4(@ModelAttribute MyBean142 o1){
        o1.setName("김민재");
        return "/main14/sub3";
    }

    @RequestMapping("sub5")
    public String sub5(MyBean142 o1){
        o1.setName("유재석");
        return "/main14/sub3";
    }

    @RequestMapping("sub6")
    public void sub6(MyBean142 o1){
        o1.setName("카리나");
    }

    @RequestMapping("sub7")
    public String sub7(MyBean143 o1){
        o1.setAddress("신촌");
        return "/main14/sub6";
    }

    // 할당 방법 : /main14/sub?city=london&address=ny
    @RequestMapping("sub8")
    public void sub8(MyBean144 o1){
        System.out.println(o1);
    }
}
