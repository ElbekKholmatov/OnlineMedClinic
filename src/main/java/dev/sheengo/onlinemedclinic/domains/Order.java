package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "orders")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne(cascade = CascadeType.ALL)
    private User user;
    @ManyToOne(cascade = CascadeType.ALL)
    private Doctor doctor;
    @CreationTimestamp
    @Column(nullable = true, columnDefinition = "timestamp not null default current_timestamp")
    private LocalDateTime visitTime;
    @Column(nullable = false)
    private String description;
    @Builder.Default
    @Enumerated(EnumType.STRING)
    private Status status = Status.NO_ACTION;

    public enum Status{
        NO_ACTION, ORDERED, IN_TREATMENT
    }
}
