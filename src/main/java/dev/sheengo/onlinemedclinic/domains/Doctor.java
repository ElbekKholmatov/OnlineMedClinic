package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "doctor")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Doctor implements Domain {
    @Id
    @OneToOne(cascade = CascadeType.ALL)
    private User userId;
    @OneToOne(cascade = CascadeType.ALL)
    private Specialization specializationId;
    private String info;
    @Column(nullable = true, columnDefinition = "numeric(15, 2) default 0")
    private Double rating;
}
