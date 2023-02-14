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
@Table(name = "doctor_schedule")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class DoctorSchedule implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer doctorId;
    private LocalDateTime workTime;
}
