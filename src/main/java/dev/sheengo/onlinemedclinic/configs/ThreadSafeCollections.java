package dev.sheengo.onlinemedclinic.configs;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public interface ThreadSafeCollections {
    List<Integer> id = Collections.synchronizedList(new ArrayList<>());
}
