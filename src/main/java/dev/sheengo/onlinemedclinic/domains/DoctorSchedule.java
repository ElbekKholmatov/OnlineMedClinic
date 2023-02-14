package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;

@Entity
@Table(name = "doctor_schedule")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class DoctorSchedule implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne(cascade = CascadeType.ALL)
    private Doctor doctorId;
    @CreationTimestamp
    @Column(nullable = true, columnDefinition = "timestamp default current_timestamp")
    private LocalDateTime workTime;
}
