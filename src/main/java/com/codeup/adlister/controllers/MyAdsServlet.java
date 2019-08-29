package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/myads")
public class MyAdsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            User user = (User) req.getSession().getAttribute("user");
            if (user != null){
              List<Ad> userAds = DaoFactory.getAdsDao().findUserAds(user.getId());
              req.setAttribute("userads",userAds);
                System.out.println("it's working");
            }





        req.getRequestDispatcher("/WEB-INF/ads/myads.jsp").forward(req, resp);

    }
}
