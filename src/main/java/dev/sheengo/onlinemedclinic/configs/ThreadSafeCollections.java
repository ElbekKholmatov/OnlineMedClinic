package dev.sheengo.onlinemedclinic.configs;

import dev.sheengo.onlinemedclinic.domains.Order;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public interface ThreadSafeCollections {
    List<Integer> id = Collections.synchronizedList(new ArrayList<>());
    ConcurrentHashMap<Integer, Order> orderMap = new ConcurrentHashMap<>();
}
