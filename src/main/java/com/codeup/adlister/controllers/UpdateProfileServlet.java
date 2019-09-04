package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns ="/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
    @Override
    public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String updateProfile = request.getParameter("updateProfile");
        User user = DaoFactory.getUsersDao().findByUsername(updateProfile);
        request.setAttribute("user", user);
        request.getRequestDispatcher("WEB-INF/updateProfile.jsp").forward(request, response);
    }

    @Override
    public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user");

        User userUpdate = new User(
//                Long.parseLong(request.getParameter("id")),
                user.getId(),
                request.getParameter("username"),
                request.getParameter("email")
//                Long.parseLong(request.getParameter("password"))
        );
        DaoFactory.getUsersDao().updateProfile(userUpdate);
        response.sendRedirect("/logout");
    }
}
