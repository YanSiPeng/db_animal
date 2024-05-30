package com.example;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import java.net.UnknownHostException;

@SpringBootApplication
@Slf4j
public class SpringbootApplication {

    public static void main(String[] args) throws UnknownHostException {
        Logger log = LoggerFactory.getLogger(SpringbootApplication.class);
        ConfigurableApplicationContext applicationContext = SpringApplication.run(SpringbootApplication.class, args);
    }

}
