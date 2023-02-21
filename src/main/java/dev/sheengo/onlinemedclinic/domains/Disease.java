package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "disease")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Disease implements Domain{
    @Id
    @Column(columnDefinition = "smallint")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Short id;
    @Column(nullable = false)
    private String name;
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "specialization_id", nullable = false)
    private Specialization specialization;
    private String description;
}
