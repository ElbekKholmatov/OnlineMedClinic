package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@jakarta.persistence.Entity
@Table(name = "orders")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Order implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer userId;
    private Integer doctorId;
    private LocalDateTime visitTime;
    private String description;
    @Builder.Default
    @Enumerated(EnumType.STRING)
    private Status status = Status.NO_ACTION;

    public enum Status{
        NO_ACTION, ORDERED, IN_TREATMENT
    }
}
