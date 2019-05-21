package model;

import java.time.LocalDateTime;

/**
 *
 * @author Alson
 */
public class AccessLog {
    private String ID;    
    private String UID;   
    private LocalDateTime ldt;
    private String event;    
    
    public AccessLog(String ID, String UID, LocalDateTime ldt, String event) {
        this.ID = ID;
        this.UID = UID;
        this.ldt = ldt;
        this.event = event;  
    }
    public AccessLog() {
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getUID() {
        return UID;
    }

    public void setUID(String UID) {
        this.UID = UID;
    }

    public LocalDateTime getLdt() {
        return ldt;
    }

    public void setLdt(LocalDateTime ldt) {
        this.ldt = ldt;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }
    
}

