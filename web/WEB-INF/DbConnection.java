package com.db.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

//classname obj name=new classname();
//obj.methodname();
//classname.methodname();
//DbConnection.getconnection();

public class DbConnection{
    public static Connection getConnection()
    {
        Connection con = null;
        try{
             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/salesorder", "root", "root");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}


