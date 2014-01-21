package ca.delmar.api.domain;

import java.io.Serializable;

/**
 * Created by jinw on 21/01/14.
 */
public class Contact implements Serializable {
    String name;
    String email;

    public Contact(String name, String email) {
        this.name = name;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
