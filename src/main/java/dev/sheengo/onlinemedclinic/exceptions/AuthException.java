package dev.sheengo.onlinemedclinic.exceptions;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class AuthException extends Exception{
    public AuthException(String message) {
        super(message);
    }
}
