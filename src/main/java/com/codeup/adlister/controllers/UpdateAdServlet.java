package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/updateAds")
public class UpdateAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String updatedAd = request.getParameter("update");
//         Parse because the results come back as a string.
         Ad ad = DaoFactory.getAdsDao().findAdWithId(Long.parseLong(updatedAd));
         request.setAttribute("ad", ad);
         request.getRequestDispatcher("WEB-INF/ads/updateAds.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
                Long.parseLong(request.getParameter("id")),
                user.getId(),
                request.getParameter("title"),
                request.getParameter("description"),
                Long.parseLong(request.getParameter("categ"))
        );
        DaoFactory.getAdsDao().updateAd(ad);
        response.sendRedirect("/myads");
    }
}
