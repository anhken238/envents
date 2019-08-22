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

import Model.RegistrationDetails;

import java.util.List;

public interface IRegistrationDetails {
    public boolean createRegistrationDetails(RegistrationDetails registrationDetails);

    public List<RegistrationDetails> getAllRegistrationDetails();

    public boolean checkSubscriber(String email, int id_event);
}