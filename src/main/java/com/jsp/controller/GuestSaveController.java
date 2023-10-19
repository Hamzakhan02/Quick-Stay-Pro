package com.jsp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.dto.Guest;
import com.jsp.service.GuestService;

@WebServlet("/Guest")
public class GuestSaveController extends HttpServlet {
    private GuestService guestService = new GuestService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     
        String guestName = req.getParameter("guestName");
        String numberOfGuestsStr = req.getParameter("numberOfGuests");
        int numberOfGuests = Integer.parseInt(numberOfGuestsStr);
        String phoneNumber = req.getParameter("phoneNumber");
        String email = req.getParameter("email");

     
        Guest guest = new Guest();
        guest.setGuestName(guestName);
        guest.setNumberOfGuests(numberOfGuests);
        guest.setPhoneNumber(phoneNumber);
        guest.setEmail(email);

      
        Guest savedGuest = guestService.saveGuest(guest);

        if (savedGuest != null) {
          
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("UserBookRoom.jsp");
            requestDispatcher.forward(req, resp);
        } else {

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("GuestSave.jsp");
            requestDispatcher.include(req, resp);
        }
    }
}
