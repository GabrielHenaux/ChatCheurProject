import java.time.LocalDate;

public class Log {
    //We only put the ID attribute because all the other attributes will be chared from the SQL base:
    private int ID;

    public void setLog(){

    }

    public LocalDate getTime(){
        LocalDate time = null;
        //Get with the SQL query
        return time;

    }

    public TypeLog getType(){
        //Return the value in the SQL thanks to the ID:
        return TypeLog.CONECTION;
    }
}
