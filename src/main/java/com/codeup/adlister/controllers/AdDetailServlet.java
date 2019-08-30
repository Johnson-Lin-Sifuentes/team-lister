package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/details")
public class AdDetailServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = request.getParameter("username");
        String adId = request.getParameter("id");
        Long id = Long.parseLong(adId);
        request.setAttribute("ad", DaoFactory.getAdsDao().findAdWithId(id));
        request.getRequestDispatcher("/WEB-INF/ads/adDetails.jsp").forward(request, response);

    }
}
