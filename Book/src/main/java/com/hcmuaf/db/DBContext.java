package com.hcmuaf.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    private final String hostName="localhost:3306";
    private final String dbName="user";
    private final String username="root";
    private final String password="GOYear23611";
    private final String instance="";

    private String connectionURL="jdbc:mysql://"+hostName+"/"+dbName;

    public Connection getConnection() throws Exception {
        String url="jdbc:mysql://node623052-book-store.j.layershift.co.uk/user?characterEncoding=utf-8";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url,username,password);
    }

    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection());
            System.out.println("connect success");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
