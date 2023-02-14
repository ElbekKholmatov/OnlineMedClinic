package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "history")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class History implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @CreationTimestamp
    @Column(nullable = true, columnDefinition = "timestamp not null default current_timestamp")
    private LocalDateTime createdAt;
    @ManyToOne(cascade = CascadeType.ALL)
    private User userId;
    @ManyToOne(cascade = CascadeType.ALL)
    private Doctor doctorId;
    @ManyToOne(cascade = CascadeType.ALL)
    private Specialization specializationId;
    @Column(nullable = false)
    private String description;
}
