package dev.sheengo.onlinemedclinic.domains;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@jakarta.persistence.Entity
@Table(name = "document")
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Document implements Domain{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String generatedFileName;
    private String originalFileName;
    private String mimeType;
    private String filePath;
    private Integer fileSize;
    private Integer deletedByUser ;
    private String extension;
}
