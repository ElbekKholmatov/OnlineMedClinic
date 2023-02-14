package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "specialization")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Specialization implements Domain{
    @Id
    @Column(columnDefinition = "smallserial")
    private Short id;
    @Column(nullable = false)
    private String name;
    @Column(nullable = false)
    private String description;
}
