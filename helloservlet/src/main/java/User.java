public class User {
    private String firstname;
    private String lastname;

    public User(String un, String ln)
    {
        this.firstname = un;
        this.lastname = ln;
    }

    public String getFirstname()
    {
        return firstname;
    }

    public String getLastname()
    {
        return lastname;
    }
}
