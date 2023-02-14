package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;


@Entity
@Table(name = "users")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class User implements Domain {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String firstName;
    private String lastName;
    @Enumerated(EnumType.STRING)
    private UserRole role;
    private String phone;
    private String username;
    @Enumerated(EnumType.STRING)
    private Status status;
    private Short spamCount;
    private String address;
    private String passport;
    private Boolean isDeleted;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    private Integer pictureId;
    private LocalDateTime birthdate;

    public enum UserRole{
        USER, DOCTOR, ADMIN, SUPER_ADMIN
    }
    public enum Status{
        NO_ACTIVE, ACTIVE, BLOCK
    }
}
