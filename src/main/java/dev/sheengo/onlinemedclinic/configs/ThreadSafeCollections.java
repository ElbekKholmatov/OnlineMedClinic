package dev.sheengo.onlinemedclinic.configs;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public class ThreadSafeCollections {
    List<Integer> id = Collections.synchronizedList(new ArrayList<>());
}
