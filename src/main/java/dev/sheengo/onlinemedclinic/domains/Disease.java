package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@jakarta.persistence.Entity
@Table(name = "disease")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Disease implements Domain{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;
    private String name;
    private Integer specializationId;
    private String description;
}
