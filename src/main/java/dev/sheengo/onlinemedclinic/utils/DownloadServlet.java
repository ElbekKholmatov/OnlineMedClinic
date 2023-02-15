package dev.sheengo.onlinemedclinic.utils;

import dev.sheengo.onlinemedclinic.dao.DocumentDAO;
import dev.sheengo.onlinemedclinic.domains.Document;
import dev.sheengo.onlinemedclinic.services.DocumentService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@WebServlet(name = "DownloadServlet", value = "/download")
public class DownloadServlet extends HttpServlet {
    private static final Path rootPath = Path.of("/home/asror/Documents/library/upload");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String filename = request.getParameter("filename");
        String forDownload = request.getParameter("download");
        DocumentService service = DocumentService.getInstance();
        Document document = service.get(request).getDomain();
        Path filePath = rootPath.resolve(filename);
        response.setContentType(document.getMimeType());
        if (forDownload != null)
            response.addHeader("Content-Disposition", "attachment; filename=" + document.getOriginalFileName());
        response.getOutputStream().write(Files.readAllBytes(filePath));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
