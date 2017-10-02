package libraryBooks;

/**
 * Created by RENT on 2017-10-02.
 */
public enum BookGenre {
    EPOS("Epopeja"), DRAMA("Dramat"), THRILLER("Thriller"), COMEDY ("Komedia"), STORY("Powieść");

    private String friendlyName;

    BookGenre(String friendlyName) {
        this.friendlyName = friendlyName;
    }

    public String getFriendlyName() {
        return friendlyName;
    }

    public void setFriendlyName(String friendlyName) {
        this.friendlyName = friendlyName;
    }
}
