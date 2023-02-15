package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.domains.Domain;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Response<T extends Domain> {
    private Cookie cookie;
    private T domain;
    private String returnPage;
    private HttpServletRequest request;
}
