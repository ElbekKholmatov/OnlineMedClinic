package dev.sheengo.onlinemedclinic.services;

import dev.sheengo.onlinemedclinic.dao.DoctorDAO;
import dev.sheengo.onlinemedclinic.dao.OrderDAO;
import dev.sheengo.onlinemedclinic.domains.Doctor;
import dev.sheengo.onlinemedclinic.domains.Specialization;
import dev.sheengo.onlinemedclinic.domains.User;
import jakarta.servlet.http.HttpServletRequest;

public class DoctorService implements Service<Doctor> {
    @Override
    public Response<Doctor> service(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Doctor> save(HttpServletRequest request) {
        return null;
    }

    private static final ThreadLocal<DoctorService> instance = ThreadLocal.withInitial(DoctorService::new);

    public static DoctorService getInstance() {
        return instance.get();
    }


    @Override
    public Response<Doctor> update(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Doctor> delete(HttpServletRequest request) {
        return null;
    }

    @Override
    public Response<Doctor> get(HttpServletRequest request) {

        UserService userService = UserService.getInstance();
        User userObj = userService.get(Integer.parseInt(request.getSession().getAttribute("id").toString())).getDomain();

        Specialization specializationObj = DoctorDAO.getInstance().findDoctorByUserId(userObj.getId()).getSpecialization();

        DoctorDAO doctorDAO = DoctorDAO.getInstance();
        Doctor doctorObj = doctorDAO.findDoctorByUserId(userObj.getId());

        String info = doctorObj.getInfo();

        Double rating = doctorObj.getRating();
        if (rating == null) {
            rating = 0.0;
        }

        Doctor doctor = Doctor.builder()
                .user(userObj)
                .specialization(specializationObj)
                .info(info)
                .rating(rating)
                .build();

        DoctorDAO.getInstance().save(doctor);

        request.setAttribute("user", userObj);
        request.setAttribute("doctor", doctor);
        request.setAttribute("specialization", specializationObj);
        return Response.<Doctor>builder().request(request).build();
    }

    public Response<Doctor> getOrders(HttpServletRequest request) {
        Integer id = Integer.parseInt(request.getSession().getAttribute("id").toString());

        OrderDAO orderDAO = OrderDAO.getInstance();
        request.setAttribute("orders", orderDAO.findOrderByDoctorUserId(id));

        return Response.<Doctor>builder().request(request).build();
    }

    @Override
    public Response<Doctor> get(Integer id) {
        return Response.<Doctor>builder()
                .domain(DoctorDAO.getInstance().get(id))
                .build();
    }
}
