import Enums.UserState;

public class User extends Client{
    //We only put the ID becasue all the other attributes will be charged from the SQL server:
    private int ID;

    public void sendMessage(String message){

    }

    public void sendLog(){
        //one-time function because it will send the type of the user thanks to 'instanceOf': no need to overwrite-it:)

    }

    public void setState(UserState state){

    }



}
