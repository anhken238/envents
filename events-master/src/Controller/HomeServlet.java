package Controller;

import Model.Event;
import Service.event.EventImpl;
import Service.event.IEvent;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

    private IEvent eventImpl = new EventImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "search":
                showSearchResult(request, response);
                break;
            default:
                listEverything(request, response);
                break;
        }
    }

    private void listEverything(HttpServletRequest request, HttpServletResponse response) {
        List<Event> eventListNew = this.eventImpl.getNewEvent();
        List<Event> eventListOld = this.eventImpl.getOldEvent();
        Event populateEvent = eventImpl.getPopulateEvent();

        request.setAttribute("eventListNew", eventListNew);
        request.setAttribute("eventListOld", eventListOld);
        request.setAttribute("populateEvent", populateEvent);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showSearchResult(HttpServletRequest request, HttpServletResponse response) {
        String keyword = request.getParameter("search");
        List<Event> searchResult = this.eventImpl.getSearchResults(keyword);
        request.setAttribute("result", searchResult);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("search.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "newevent":
                showNewEventsList(request, response);
                break;
            case "oldevent":
                showOldEventsList(request, response);
                break;
            default:
                listEverything(request, response);
                break;
        }
    }

    private void showOldEventsList(HttpServletRequest request, HttpServletResponse response) {
        List<Event> eventListOld = this.eventImpl.getAllOldEvent();
        request.setAttribute("eventListOld", eventListOld);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("oldevent.jsp");

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showNewEventsList(HttpServletRequest request, HttpServletResponse response) {
        List<Event> eventListNew = this.eventImpl.getAllNewEvent();
        request.setAttribute("eventListNew", eventListNew);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("newevent.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
