/*
 *************************************
 * Created by IntelliJ IDEA          *
 * User: Nhat                     *
 * Email: nhatnpa2508@gmail.com      *
 * Date: 7/2/2019                     *
 * Time: 5:23 PM                     *
 *************************************
 */

package Model;

import java.sql.Date;

public class Event {
    private int id;
    private String name_event;
    private String image;
    private String image_note;
    private String place;
    private Date day_organize;
    private String organizer;
    private String introduce;
    private String detailed_program;
    private String is_delete;
    private Date post_date;
    private Date last_edited_date;
    private int id_Admin;
    private String category;
    private String username;

    //dd-MM-yyyy
    private String dayOrganize;
    private String postDate;
    private String lastEditedDate;

    public Event() {
    }

    public Event(int id) {
        this.id = id;
    }

    public Event(int id, String name_event) {
        this.id = id;
        this.name_event = name_event;
    }

    //dùng cho hàm create event
    public Event(int id, String name_event, String image, String image_note, String place, Date day_organize, String organizer, String introduce,
                 String detailed_program, String name_Category, int id_Admin) {
        this.id = id;
        this.name_event = name_event;
        this.image = image;
        this.image_note = image_note;
        this.place = place;
        this.day_organize = day_organize;
        this.organizer = organizer;
        this.introduce = introduce;
        this.detailed_program = detailed_program;
        this.category = name_Category;
        this.id_Admin = id_Admin;
    }

    public Event(int id, String name_event, String image, String image_note, String place, Date day_organize, String organizer, String introduce,
                 String detailed_program, String is_delete, String name_Category, String name_Admin) {
        this.id = id;
        this.name_event = name_event;
        this.image = image;
        this.image_note = image_note;
        this.place = place;
        this.day_organize = day_organize;
        this.organizer = organizer;
        this.introduce = introduce;
        this.detailed_program = detailed_program;
        this.is_delete = is_delete;
        this.category = name_Category;
        this.username = name_Admin;
    }

    //dùng cho hàm getPostById
    public Event(int id, String name_event, String image, String image_note, String place, Date day_organize, String organizer, String introduce,
                 String detailed_program, String is_delete, Date post_date, Date last_edited_date, String category, int id_Admin, String username) {
        this.id = id;
        this.name_event = name_event;
        this.image = image;
        this.image_note = image_note;
        this.place = place;
        this.day_organize = day_organize;
        this.organizer = organizer;
        this.introduce = introduce;
        this.detailed_program = detailed_program;
        this.is_delete = is_delete;
        this.post_date = post_date;
        this.last_edited_date = last_edited_date;
        this.category = category;
        this.id_Admin = id_Admin;
        this.username = username;
    }
    // use for get populate event *********************
    public Event(int id, String name_event, String image, String image_note, String place, Date day_organize, String organizer, String introduce,
                 String detailed_program, String is_delete, Date post_date, Date last_edited_date, String category, int id_Admin) {
        this.id = id;
        this.name_event = name_event;
        this.image = image;
        this.image_note = image_note;
        this.place = place;
        this.day_organize = day_organize;
        this.organizer = organizer;
        this.introduce = introduce;
        this.detailed_program = detailed_program;
        this.is_delete = is_delete;
        this.post_date = post_date;
        this.last_edited_date = last_edited_date;
        this.category = category;
        this.id_Admin = id_Admin;
    }

    //Xuất trường ngày tháng theo định dạng dd-MM-YYYY (14 biến)
    public Event(int id, String name_event, String image, String image_note, String place, String day_organize, String organizer, String introduce,
                 String detailed_program, String is_delete, String post_date, String last_edited_date, String category, int id_Admin) {
        this.id = id;
        this.name_event = name_event;
        this.image = image;
        this.image_note = image_note;
        this.place = place;
        this.dayOrganize = day_organize;
        this.organizer = organizer;
        this.introduce = introduce;
        this.detailed_program = detailed_program;
        this.is_delete = is_delete;
        this.postDate = post_date;
        this.lastEditedDate = last_edited_date;
        this.category = category;
        this.id_Admin = id_Admin;
    }

    //Xuất trường ngày tháng theo định dạng dd-MM-YYYY (15 biến - hàm getPostById)
    public Event(int id, String name_event, String image, String image_note, String place, String day_organize, String organizer, String introduce,
                 String detailed_program, String is_delete, String post_date, String last_edited_date, String category, int id_Admin, String username) {
        this.id = id;
        this.name_event = name_event;
        this.image = image;
        this.image_note = image_note;
        this.place = place;
        this.dayOrganize = day_organize;
        this.organizer = organizer;
        this.introduce = introduce;
        this.detailed_program = detailed_program;
        this.is_delete = is_delete;
        this.postDate = post_date;
        this.lastEditedDate = last_edited_date;
        this.category = category;
        this.id_Admin = id_Admin;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName_event() {
        return name_event;
    }

    public void setName_event(String name_event) {
        this.name_event = name_event;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getImage_note() {
        return image_note;
    }

    public void setImage_note(String image_note) {
        this.image_note = image_note;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Date getDay_organize() {
        return day_organize;
    }

    public void setDay_organize(Date day_organize) {
        this.day_organize = day_organize;
    }

    public String getOrganizer() {
        return organizer;
    }

    public void setOrganizer(String organizer) {
        this.organizer = organizer;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getDetailed_program() {
        return detailed_program;
    }

    public void setDetailed_program(String detailed_program) {
        this.detailed_program = detailed_program;
    }

    public String getIs_delete() {
        return is_delete;
    }

    public void setIs_delete(String is_delete) {
        this.is_delete = is_delete;
    }

    public Date getPost_date() {
        return post_date;
    }

    public void setPost_date(Date post_date) {
        this.post_date = post_date;
    }

    public Date getLast_edited_date() {
        return last_edited_date;
    }

    public void setLast_edited_date(Date last_edited_date) {
        this.last_edited_date = last_edited_date;
    }

    public int getId_Admin() {
        return id_Admin;
    }

    public void setId_Admin(int id_Admin) {
        this.id_Admin = id_Admin;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDayOrganize() {
        return dayOrganize;
    }

    public void setDayOrganize(String dayOrganize) {
        this.dayOrganize = dayOrganize;
    }

    public String getPostDate() {
        return postDate;
    }

    public void setPostDate(String postDate) {
        this.postDate = postDate;
    }

    public String getLastEditedDate() {
        return lastEditedDate;
    }

    public void setLastEditedDate(String lastEditedDate) {
        this.lastEditedDate = lastEditedDate;
    }
}
