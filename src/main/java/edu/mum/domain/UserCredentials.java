package edu.mum.domain;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Diana Yamaletdinova
 *         <p>
 *         May 21, 2017
 */
@Entity(name = "Usercredentials")
public class UserCredentials {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USERCRED_ID")
    private Long id = null;

    @Column(name = "USER", nullable = false, unique = true, length = 127)
    String userName;

    @Column(name = "PASSWORD", nullable = false)
    String password;

    Boolean enabled;

    @OneToOne(mappedBy = "userCredentials", cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    private User user;

    @OneToMany(mappedBy = "usercred", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    List<Authority> authority = new ArrayList<>();

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Authority> getAuthority() {
        return authority;
    }

    public void setAuthority(List<Authority> authority) {
        this.authority = authority;
    }

}
