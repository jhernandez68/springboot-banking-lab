package com.jhoan.bankinglab.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/demo")
public class DemoController {

    @GetMapping("/saludo/{nombre}")
    public Map<String, String> saludar(@PathVariable String nombre) {
        return Map.of("mensaje", "Hola " + nombre);
    }

    @GetMapping("/suma")
    public Map<String, Integer> sumar(@RequestParam int a, @RequestParam int b) {
        return Map.of("resultado", a + b);
    }
}
