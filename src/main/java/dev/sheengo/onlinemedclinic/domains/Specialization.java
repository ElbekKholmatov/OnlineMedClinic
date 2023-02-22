package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Collection;
import java.util.List;
import java.util.Vector;

@Entity
@Table(name = "specialization")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Specialization implements Domain {
    @Id
    @GeneratedValue(generator = "specialization_id_seq", strategy = GenerationType.SEQUENCE)
    @SequenceGenerator(name = "specialization_id_seq", sequenceName = "specialization_id_seq", allocationSize = 1)
    @Column(columnDefinition = "smallserial")
    private Short id;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private String description;

}
