package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
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
    private Integer userId;
    private Integer doctorId;
    private Integer specializationId;
    private String description;
}
