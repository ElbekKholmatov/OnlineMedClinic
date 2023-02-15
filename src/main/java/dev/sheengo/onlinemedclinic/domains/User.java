package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDate;
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
    @Column(nullable = false)
    private String firstName;
    @Column(nullable = false)
    private String lastName;
    @Builder.Default
    @Enumerated(EnumType.STRING)
    private UserRole role = UserRole.USER;
    @Column(nullable = false)
    private String phone;
    @Column(nullable = false)
    // unique
    private String username;
    @Column(nullable = false)
    private String password;
    @Builder.Default
    @Enumerated(EnumType.STRING)
    private Status status = Status.ACTIVE;
    @Column(nullable = true, columnDefinition = "smallint default 0")
    private Short spamCount;
    @Column(nullable = false)
    private String address;
    @Column(nullable = false)
    private String passport;

    @Column(nullable = true, columnDefinition = "bool default false")
    private Boolean isDeleted;

    @CreationTimestamp
    @Column(nullable = true, columnDefinition = "timestamp default current_timestamp")
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
    @OneToOne(cascade = CascadeType.ALL)
    private Document pictureId;
    private LocalDate birthdate;

    public enum UserRole{
        USER, DOCTOR, ADMIN, SUPER_ADMIN
    }
    public enum Status{
        NO_ACTIVE, ACTIVE, BLOCK
    }
}
