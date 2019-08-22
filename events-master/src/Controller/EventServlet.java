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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

@WebServlet(name = "EventServlet", urlPatterns = "/events")
public class EventServlet extends HttpServlet {

    private IEvent eventImpl = new EventImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createEvent(request, response);
                break;
            case "edit":
                updateEvent(request, response);
                break;
            case "delete":
                softDeleteEvent(request, response);
                break;
            case "restore":
                restoreEvent(request, response);
                break;
            case "search":
                searchResult(request, response);
                break;
            default:
                break;
        }
    }

    private void restoreEvent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        this.eventImpl.restoreSoftDeleteEvent(id);
        try {
            response.sendRedirect("/events");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void softDeleteEvent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        int is_delete = this.eventImpl.getIsDeleteById(id);
        if (is_delete == 0) {
            this.eventImpl.softDeleteEvent(id);
            try {
                response.sendRedirect("/events");
            } catch (IOException e) {
                e.printStackTrace();
            }
        } else {
            this.eventImpl.restoreSoftDeleteEvent(id);
            try {
                response.sendRedirect("/events");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void updateEvent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String eventName = request.getParameter("eventName");
        String image = request.getParameter("image");
        String imageNote = request.getParameter("imageNote");
        String place = request.getParameter("place");
        String day = request.getParameter("dayOrganize");
        Date dayOrganize = Date.valueOf(day);//chuyển đổi kiểu dữ liệu ngày nhập từ input (String sang Sql Date)
        String organizer = request.getParameter("organizer");
        String introduce = request.getParameter("introduce");
        String detailedProgram = request.getParameter("detailedProgram");
        String category = request.getParameter("category");
        int idAdmin = 1;

        Event event = new Event(id, eventName, image, imageNote, place, dayOrganize,
                organizer, introduce, detailedProgram, category, idAdmin);

        this.eventImpl.updateEvent(event);

        request.setAttribute("event", event);
        request.setAttribute("message", "Event was updated");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/event/edit.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createEvent(HttpServletRequest request, HttpServletResponse response) {
        try {
            String eventName = request.getParameter("eventName");
            String image = request.getParameter("image");
            String imageNote = request.getParameter("imageNote");
            String place = request.getParameter("place");
            String day = request.getParameter("dayOrganize");
            Date dayOrganize = Date.valueOf(day);//chuyển đổi kiểu dữ liệu ngày nhập từ input (String sang Sql Date)
            String organizer = request.getParameter("organizer");
            String introduce = request.getParameter("introduce");
            String detailedProgram = request.getParameter("detailedProgram");
            String category = request.getParameter("category");
            int idAdmin = 1;

            Event event = new Event(0, eventName, image, imageNote, place, dayOrganize,
                    organizer, introduce, detailedProgram, category, idAdmin);

            this.eventImpl.createPost(event);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/event/create.jsp");
            request.setAttribute("message", "New event was created");
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
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                softDeleteEvent(request,response);
                break;
            case "restore":
                restoreEvent(request, response);
                break;
            case "search":
                searchResult(request, response);
                break;
            case "view":
                viewEvent(request, response);
                break;
            default:
                listEvent(request, response);
                break;
        }
    }

    private void searchResult(HttpServletRequest request, HttpServletResponse response) {
        String search = request.getParameter("search");
        List<Event> eventList = this.eventImpl.getSearchResults(search);
        request.setAttribute("eventList", eventList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("search.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void listEvent(HttpServletRequest request, HttpServletResponse response) {
        List<Event> eventList = this.eventImpl.getAllEvents();
        request.setAttribute("eventList", eventList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/event/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void viewEvent(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        session.setAttribute("idEvent", id);
        int isOld = eventImpl.isOldEvent(id);
        session.setAttribute("isOld",isOld);
        Event event = this.eventImpl.getPostById(id);
        request.setAttribute("event", event);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("post.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Event event = this.eventImpl.showEditFormById(id);
        request.setAttribute("event", event);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/event/edit.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/event/create.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}