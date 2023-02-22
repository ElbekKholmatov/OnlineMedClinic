package dev.sheengo.onlinemedclinic.exceptions;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class OrderException extends Exception{
    public OrderException(String message) {
        super(message);
    }
}
