package dev.sheengo.onlinemedclinic.dto;

import java.time.LocalDate;

public class DoctorDetailsDTO {
    private Integer id;
    private String firstName;
    private String lastName;
    private String phone;
    private String username;
    private String password;
    private String address;
    private LocalDate birthdate;

    private String specializationName;
    private String specializationDescription;
    private String docInfo;

    private String photoOriginalFileName;
    private String photoGeneratedFileName;
    private String photoFileSize;
    private String photoContentType;

}
