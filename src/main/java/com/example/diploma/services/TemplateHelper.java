package com.example.diploma.services;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class TemplateHelper {
    public static String formatLocalDateTime(LocalDateTime dateTime, String pattern) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
        return dateTime.format(formatter);
    }
}
