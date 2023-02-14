package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "document")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Document implements Domain{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column(nullable = false)
    private String generatedFileName;
    @Column(nullable = false)
    private String originalFileName;
    @Column(nullable = false)
    private String mimeType;
    @Column(nullable = false)
    private String filePath;
    @Column(nullable = false)
    private Integer fileSize;
    @Column(nullable = false)
    private Integer deletedByUser;
    @Column(nullable = false)
    private String extension;
}
