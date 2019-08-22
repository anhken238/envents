/*
 *************************************
 * Created by IntelliJ IDEA          *
 * User: Nhat                     *
 * Email: nhatnpa2508@gmail.com      *
 * Date: 7/2/2019                     *
 * Time: 5:26 PM                     *
 *************************************
 */

package Service.event;

import Model.ConnectDatabase;
import Model.Event;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class EventImpl implements IEvent {
    Connection connection = ConnectDatabase.getConnection();
    ResultSet resultSet = null;
    Statement statement;
    String sql;

    String patter = "dd-MM-yyyy";
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(patter);

    @Override
    public void createPost(Event event) {
        try {
            statement = connection.createStatement();
            sql = "insert into event(name_event, image, image_note, place, day_organize, organizer, introduce, detailed_program, category, id_Admin)" +
                    " values('" + event.getName_event() + "','" + event.getImage() + "','"
                    + event.getImage_note() + "','" + event.getPlace() + "','" + event.getDay_organize() + "','"
                    + event.getOrganizer() + "','" + event.getIntroduce() + "','" + event.getDetailed_program() + "','"
                    + event.getCategory() + "','" + event.getId_Admin() + "')";
            statement.executeUpdate(sql);
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Event getPostById(int id) {
        sql = "select *, username from event inner join admin on event.id_Admin = admin.id where event.id = '" + id + "'";
        Event event = null;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");

                Date day_organize = resultSet.getDate("day_organize");
                String dayOrganize = simpleDateFormat.format(day_organize);

                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");

                Date post_date = resultSet.getDate("post_date");
                String postDate = simpleDateFormat.format(post_date);
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String lastEditedDate = simpleDateFormat.format(last_edited_date);

                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");
                String username = resultSet.getString("username");

                event = new Event(id, name_event, image, image_note, place, dayOrganize, organizer, introduce,
                        detailed_program, is_delete, postDate, lastEditedDate, category, id_Admin, username);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return event;
    }

    @Override
    public Event showEditFormById(int id) {
        sql = "select *, username from event inner join admin on event.id_Admin = admin.id where event.id = '" + id + "'";
        Event event = null;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");
                Date day_organize = resultSet.getDate("day_organize");
                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");
                Date post_date = resultSet.getDate("post_date");
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");
                String username = resultSet.getString("username");

                event = new Event(id, name_event, image, image_note, place, day_organize, organizer, introduce,
                        detailed_program, is_delete, post_date, last_edited_date, category, id_Admin, username);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return event;
    }

    @Override
    public List<Event> getAllEvents() {
        List<Event> eventList = new ArrayList<>();
        sql = "select event.*, admin.username from event " +
                "inner join admin " +
                "where event.id_Admin = admin.id ";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");
                Date day_organize = resultSet.getDate("day_organize");
                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");
                Date post_date = resultSet.getDate("post_date");
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String name_Category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");
                String username = resultSet.getString("username");

                Event event = new Event(id, name_event, image, image_note, place, day_organize, organizer, introduce,
                        detailed_program, is_delete, post_date, last_edited_date, name_Category, id_Admin, username);

                eventList.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eventList;
    }

    @Override
    public List<Event> getSearchResults(String keyword) {
        List<Event> eventList = new ArrayList<>();
        sql = "select * from event where name_event like '%" + keyword + "%'";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");

                Date day_organize = resultSet.getDate("day_organize");
                String dayOrganize = simpleDateFormat.format(day_organize);

                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");

                Date post_date = resultSet.getDate("post_date");
                String postDate = simpleDateFormat.format(post_date);
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String lastEditedDate = simpleDateFormat.format(last_edited_date);

                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");

                Event event = new Event(id, name_event, image, image_note, place, dayOrganize, organizer
                        , introduce, detailed_program, is_delete, postDate, lastEditedDate, category, id_Admin);
                eventList.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eventList;
    }
    
    @Override
    public Event getPopulateEvent() {
        sql = "select event.*, count(id_event) from registrationdetail " +
                "inner join event where event.id = registrationdetail.id_event and event.is_delete = 0 " +
                "and day_organize between now() and '2030-01-01' " +
                " group by id_event order by count(id_event) DESC limit 1;";
        Event event = null;
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");
                Date day_organize = resultSet.getDate("day_organize");
                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");
                Date post_date = resultSet.getDate("post_date");
                Date last_edited_date = resultSet.getDate("last_edited_date");
                int id_Admin = resultSet.getInt("id_Admin");
                String name_Category = resultSet.getString("category");

                event = new Event(id, name_event, image, image_note, place, day_organize, organizer
                        , introduce, detailed_program, is_delete, post_date, last_edited_date, name_Category, id_Admin);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return event;
    }

    @Override
    public void updateEvent(Event event) {
        try {
            statement = connection.createStatement();
            sql = "update event set name_event = '" + event.getName_event() + "', image = '" + event.getImage()
                    + "', image_note = '" + event.getImage_note() + "', place = '" + event.getPlace()
                    + "', day_organize = '" + event.getDay_organize() + "', organizer = '" + event.getOrganizer() + "', introduce = '" + event.getIntroduce()
                    + "', detailed_program = '" + event.getDetailed_program() + "', category = '" + event.getCategory() + "', id_Admin = '" + event.getId_Admin()
                    + "', last_edited_date = NOW() where id = '" + event.getId() + "'";
            statement.executeUpdate(sql);
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void softDeleteEvent(int id) {
        try {
            statement = connection.createStatement();
            sql = "update event set is_delete = 1 where id = '" + id + "'";
            statement.executeUpdate(sql);
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public int getIsDeleteById(int id) {
        int is_delete = 0;
        sql = "SELECT is_delete FROM event where id = '" + id + "'";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                is_delete = resultSet.getInt("is_delete");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return is_delete;
    }

    @Override
    public void restoreSoftDeleteEvent(int id) {
        try {
            statement = connection.createStatement();
            sql = "update event set is_delete = 0 where id = '" + id + "'";
            statement.executeUpdate(sql);
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public List<Event> getOldEvent() {
        List<Event> eventList = new ArrayList<>();
        sql = "select * from events.event where day_organize between '2019-01-01' and now() and is_delete = 0 order by day_organize DESC limit 3";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");

                Date day_organize = resultSet.getDate("day_organize");
                String dayOrganize = simpleDateFormat.format(day_organize);

                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");

                Date post_date = resultSet.getDate("post_date");
                String postDate = simpleDateFormat.format(post_date);
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String lastEditedDate = simpleDateFormat.format(last_edited_date);

                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");

                Event event = new Event(id, name_event, image, image_note, place, dayOrganize, organizer
                        , introduce, detailed_program, is_delete, postDate, lastEditedDate, category, id_Admin);
                eventList.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eventList;
    }

    @Override
    public List<Event> getAllOldEvent() {
        List<Event> eventList = new ArrayList<>();
        sql = "select * from events.event where day_organize between '2019-01-01' and now() and is_delete = 0 order by day_organize DESC";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");

                Date day_organize = resultSet.getDate("day_organize");
                String dayOrganize = simpleDateFormat.format(day_organize);

                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");

                Date post_date = resultSet.getDate("post_date");
                String postDate = simpleDateFormat.format(post_date);
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String lastEditedDate = simpleDateFormat.format(last_edited_date);

                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");

                Event event = new Event(id, name_event, image, image_note, place, dayOrganize, organizer
                        , introduce, detailed_program, is_delete, postDate, lastEditedDate, category, id_Admin);
                eventList.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eventList;
    }

    @Override
    public List<Event> getNewEvent() {
        List<Event> eventList = new ArrayList<>();
        sql = "select * from events.event where day_organize between now() and '2030-01-01' and is_delete = 0 order by day_organize ASC limit 9";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");

                Date day_organize = resultSet.getDate("day_organize");
                String dayOrganize = simpleDateFormat.format(day_organize);

                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");

                Date post_date = resultSet.getDate("post_date");
                String postDate = simpleDateFormat.format(post_date);
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String lastEditedDate = simpleDateFormat.format(last_edited_date);

                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");

                Event event = new Event(id, name_event, image, image_note, place, dayOrganize, organizer
                        , introduce, detailed_program, is_delete, postDate, lastEditedDate, category, id_Admin);
                eventList.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eventList;
    }

    @Override
    public List<Event> getAllNewEvent() {
        List<Event> eventList = new ArrayList<>();
        sql = "select * from events.event where day_organize between now() and '2030-01-01' and is_delete = 0 order by day_organize ASC";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name_event = resultSet.getString("name_event");
                String image = resultSet.getString("image");
                String image_note = resultSet.getString("image_note");
                String place = resultSet.getString("place");

                Date day_organize = resultSet.getDate("day_organize");
                String dayOrganize = simpleDateFormat.format(day_organize);

                String organizer = resultSet.getString("organizer");
                String introduce = resultSet.getString("introduce");
                String detailed_program = resultSet.getString("detailed_program");
                String is_delete = resultSet.getString("is_delete");

                Date post_date = resultSet.getDate("post_date");
                String postDate = simpleDateFormat.format(post_date);
                Date last_edited_date = resultSet.getDate("last_edited_date");
                String lastEditedDate = simpleDateFormat.format(last_edited_date);

                String category = resultSet.getString("category");
                int id_Admin = resultSet.getInt("id_Admin");

                Event event = new Event(id, name_event, image, image_note, place, dayOrganize, organizer
                        , introduce, detailed_program, is_delete, postDate, lastEditedDate, category, id_Admin);
                eventList.add(event);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eventList;
    }

    @Override
    public int isOldEvent(int id) {
        int numberDay = 0;
        sql = "SELECT day_organize,DATEDIFF(day_organize,now()) AS isOld FROM event where id = '" + id + "'";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                numberDay = resultSet.getInt("isOld");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return numberDay;
    }
}
