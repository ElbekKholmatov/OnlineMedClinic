package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@jakarta.persistence.Entity
@Table(name = "history")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class History implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private LocalDateTime createdAt;
    @ManyToOne
    private User userId;
    @ManyToOne
    private Doctor doctorId;
    @ManyToOne
    private Specialization specializationId;
    private String description;
}
