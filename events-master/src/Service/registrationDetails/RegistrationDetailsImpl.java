/*
 *************************************
 * Created by IntelliJ IDEA          *
 * User: Nhat                     *
 * Email: nhatnpa2508@gmail.com      *
 * Date: 7/2/2019                     *
 * Time: 5:27 PM                     *
 *************************************
 */

package Service.registrationDetails;

import Model.ConnectDatabase;
import Model.RegistrationDetails;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RegistrationDetailsImpl implements IRegistrationDetails {

    Connection connection = ConnectDatabase.getConnection();
    ResultSet resultSet = null;
    Statement statement;
    String sql;

    @Override
    public boolean createRegistrationDetails(RegistrationDetails registrationDetails) {
        try {
            statement = connection.createStatement();
            sql = "insert into registrationdetail(id_subscriber,id_event,content_registration)" +
                    " values('" + registrationDetails.getId_subscriber() + "','" + registrationDetails.getId_event() + "','"
                     + registrationDetails.getContent_registration() + "')";
            statement.executeUpdate(sql);
            statement.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<RegistrationDetails> getAllRegistrationDetails() {
        List<RegistrationDetails> registrationsList = new ArrayList<>();
        sql = "select event.name_event, event.place, event.day_organize, subscriber.fullName, subscriber.email, subscriber.phone, registrationdetail.content_registration \n" +
                "FROM events.registrationdetail \n" +
                "inner join subscriber \n" +
                "on registrationdetail.id_subscriber = subscriber.id \n" +
                "inner join event \n" +
                "on registrationdetail.id_event = event.id \n" +
                "order by event.name_event ASC;";

        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);

            while (resultSet.next()) {
                String nameEvent = resultSet.getString("name_event");
                String place = resultSet.getString("place");
                Date dayOrganize = resultSet.getDate("day_organize");
                String fullName = resultSet.getString("fullName");
                String email = resultSet.getString("email");
                String phone = resultSet.getString("phone");
                String contentRegistration = resultSet.getString("content_registration");

                RegistrationDetails registration = new RegistrationDetails(nameEvent, place, dayOrganize, fullName, email, phone, contentRegistration);
                registrationsList.add(registration);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return registrationsList;
    }

    @Override
    public boolean checkSubscriber(String email, int id_event) {
        sql = "select subscriber.*, registrationdetail.* " +
                "FROM events.registrationdetail " +
                "inner join subscriber on registrationdetail.id_subscriber = subscriber.id " +
                "where subscriber.email = '" + email + "' and registrationdetail.id_event = '" + id_event + "'";
        boolean check = true;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                if (id > 0) {
                    check = false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return check;
    }
}