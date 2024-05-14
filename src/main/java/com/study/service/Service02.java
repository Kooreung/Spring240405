package com.study.service;

import com.study.mapper.Mapper06;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class Service02 {
    private final Mapper06 mapper;

    public void transferMoney1() {
        // 강인이 돈 1000 빼기
        mapper.subtractMoney();

        // 흥민이 돈 1000 넣기
        mapper.addMoney();
    }

    @Transactional
    public void transferMoney2() {
        // 강인이 돈 1000 빼기
        mapper.subtractMoney();

        if (true) {
            throw new RuntimeException();

        }
        // 흥민이 돈 1000 넣기
        mapper.addMoney();
    }

    @Transactional
    public void transferMoney3() throws Exception {
        // 강인이 돈 1000 빼기
        mapper.subtractMoney();

        if (true) {
            throw new Exception();
        }

        // 흥민이 돈 1000 넣기
        mapper.addMoney();
    }

    @Transactional(rollbackFor = Exception.class)
    public void transferMoney4() throws Exception {
        // 강인이 돈 1000 빼기
        mapper.subtractMoney();

        if (true) {
            throw new Exception();
        }

        // 흥민이 돈 1000 넣기
        mapper.addMoney();
    }

    @Transactional
    public void transferMoney5() {
        // 강인이 돈 1000 빼기
        mapper.subtractMoney();

        if (true) {
            try {
                throw new RuntimeException();
            } catch (Exception e) {
                throw new RuntimeException();
            }
        }
        // 흥민이 돈 1000 넣기
        mapper.addMoney();
    }
}
