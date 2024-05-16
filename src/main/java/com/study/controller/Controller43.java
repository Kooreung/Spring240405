package com.study.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api/main43")
public class Controller43 {

    // 상태 코드를 직접 명시해서 응답하고 싶으면
    // ResponseEntity 를 사용한다.
    // ResponseEntity 응답일 때는 ResponseBody 생략이 가능하다.
    @GetMapping("sub1")
    public ResponseEntity sub1() {

//        return ResponseEntity.status(200).build();
        return ResponseEntity.ok().build();
    }

    @GetMapping("sub2")
    public ResponseEntity sub2() {
//        return ResponseEntity.status(400).build();
        return ResponseEntity.badRequest().build();
    }

    @GetMapping("sub401")
    public ResponseEntity sub401() {
        return ResponseEntity.status(401).build();
    }

    @GetMapping("sub403")
    public ResponseEntity sub403() {
        return ResponseEntity.status(403).build();
    }

    @GetMapping("sub404")
    public ResponseEntity sub404() {
//        return ResponseEntity.status(404).build();
        return ResponseEntity.notFound().build();
    }

    @GetMapping("sub500")
    public ResponseEntity sub500() {
//        return ResponseEntity.status(500).build();
        return ResponseEntity.internalServerError().build();
    }
}
