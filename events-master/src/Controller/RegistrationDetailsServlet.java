package Controller;

import Model.Event;
import Model.RegistrationDetails;
import Model.Subscriber;
import Service.event.EventImpl;
import Service.event.IEvent;
import Service.registrationDetails.IRegistrationDetails;
import Service.registrationDetails.RegistrationDetailsImpl;
import Service.subscriber.ISubscriber;
import Service.subscriber.SubscriberImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "RegistrationDetailsServlet", urlPatterns = "/registration")
public class RegistrationDetailsServlet extends HttpServlet {

    private IRegistrationDetails registrationDetailsDAO = new RegistrationDetailsImpl();
    private ISubscriber subscriberImpl = new SubscriberImpl();
    private IEvent eventImpl = new EventImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createRegistration(request, response);
                break;
            case "viewSubscriberList":
                listSubscriber(request, response);
                break;
            default:
                listRegistrations(request, response);
                break;
        }
    }

    private void listSubscriber(HttpServletRequest request, HttpServletResponse response) {
        List<Subscriber> subscribers = this.subscriberImpl.getAllSubscriber();
        request.setAttribute("subscribers", subscribers);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/registrationDetails/listSubscriber.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void createRegistration(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String content = request.getParameter("message");
        int idEvent = (Integer) session.getAttribute("idEvent");
        boolean check = this.registrationDetailsDAO.checkSubscriber(email, idEvent);
        if (check) {
            boolean checkIdSubscriberByEmail = this.subscriberImpl.checkIdSubscriberByEmail(email);
            if (checkIdSubscriberByEmail) {
                Subscriber subscriber = new Subscriber(0,fullName,email,phone,address);
                this.subscriberImpl.createSubscriber(subscriber);
                int idSubscriber = this.subscriberImpl.getIdSubscriberByEmail(email);
                RegistrationDetails registrationDetails = new RegistrationDetails(idSubscriber,idEvent,content);
                this.registrationDetailsDAO.createRegistrationDetails(registrationDetails);
                Event event = this.eventImpl.getPostById(idEvent);
                request.setAttribute("event", event);
                request.setAttribute("message", "Register email was finish");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("post.jsp");
                try {
                    requestDispatcher.forward(request, response);
                } catch (ServletException | IOException e) {
                    e.printStackTrace();
                }
            } else {
                int idSubscriber = this.subscriberImpl.getIdSubscriberByEmail(email);
                RegistrationDetails registrationDetails = new RegistrationDetails(idSubscriber,idEvent,content);
                this.registrationDetailsDAO.createRegistrationDetails(registrationDetails);
                Event event = this.eventImpl.getPostById(idEvent);
                request.setAttribute("event", event);
                request.setAttribute("message", "Register email was finish");
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("post.jsp");
                try {
                    requestDispatcher.forward(request, response);
                } catch (ServletException | IOException e) {
                    e.printStackTrace();
                }
            }
        }
        Event event = this.eventImpl.getPostById(idEvent);
        request.setAttribute("event", event);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("post.jsp");
        request.setAttribute("message", "Email was register before");
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
            case "viewSubscriberList":
                listSubscriber(request, response);
                break;
            default:
                listRegistrations(request, response);
                break;
        }
    }

    private void listRegistrations(HttpServletRequest request, HttpServletResponse response) {
        List<RegistrationDetails> registrationsList = this.registrationDetailsDAO.getAllRegistrationDetails();
        request.setAttribute("registrationsList", registrationsList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("manager/registrationDetails/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
