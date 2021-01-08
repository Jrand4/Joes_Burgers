/*
 * This contains the business logic to connect to the database
 *
 * @author nmahadev
 */
package myBeans;

import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import java.sql.*;

public class DBConnect {

  // driver and connection string variables
  private final String driver = "com.mysql.jdbc.Driver";
  private final String url = "jdbc:mysql://localhost:3306/joes_burgers";
  private final String user = "mahadev";
  private final String pwd = "mahadev";

  // JDBC variables and methods
  private Connection conn = null;           // creates the pipeline 
  private Statement stm = null;
  private PreparedStatement pstm = null;
  private ResultSet rst = null;             // returns table of query
  private ResultSetMetaData rsmd = null;    // returns the structure information of the table

  private Connection conn2 = null;           // creates the pipeline 
  private Statement stm2 = null;
  private PreparedStatement pstm2 = null;
  private ResultSet rst2 = null;             // returns table of query
  private ResultSetMetaData rsmd2 = null;    // returns the structure information of the table

  // Utility Methods
  private String openDB() {
    try {
      Class.forName(driver);
      conn = DriverManager.getConnection(url, user, pwd);
      stm = conn.createStatement();
    } catch (Exception e) {
      return e.getMessage();
    }
    return "Opened";
  }

  
  private String closeDB() {
    try {
      stm.close();
      conn.close();
    } catch (Exception e) {
      return e.getMessage();
    }
    return "Closed";
  }

  public String[] isPwdValid(String sql, String user, String pwd){
    String message = openDB();
    if(message.equals("Opened")){
      try{
        pstm = conn.prepareStatement(sql);
        pstm.setString(1,user);
        pstm.setString(2, pwd);
        rst = pstm.executeQuery();
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        String[] result = new String[count];
        int records = 0;
        while(rst.next()){
          records++;
          for (int i = 0; i < count; i++) {
            result[i] = rst.getString(i+1);
          }
        }
        closeDB();
        if(records == 0){
          result[0] = "Error: Invalid Credentials";
        }
        return result;
      }
      catch(Exception ex){
        String[] result = new String[1];
        result[0] = ex.getMessage();
        return result;
      }
    }else{
      String[] result = new String[1];
      result[0] = "Error: " + message;
      return result;
    }
  }

  public int getLastNum(String sql) {
    String message = openDB();
    int count = 0;
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        if (rst.last()) {
          count = Integer.parseInt(rst.getString(1));
        }
        message = closeDB();
      } catch (Exception ex) {
        return -1;
      }
    }
    return count;
  }

  // APIs connect database
  public String insertData(String sql) {
    String message = openDB();

    if (message.equals("Opened")) {
      try {
        stm.executeUpdate(sql);
        message = "Success";
      } catch (Exception e) {
        return e.getMessage();
      }
      message = "Update Successful";
    }
    closeDB();
    return message;
  }

  public String getFoodIDFromFoodName(String sql) {
    String result = "";
    String message = openDB();
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        if (count == 1 && rst.next()) {
          result = rst.getString(1);
        } else {
          result = "NONE";
        }
        message = closeDB();
        return result;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }

  public String getUserType(String sql) {
    String result = "";
    String message = openDB();
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        if (count == 1 && rst.next()) {
          result = rst.getString(1);
        } else {
          result = "NONE";
        }
        message = closeDB();
        return result;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }

  public String getData(String sql) {
    String result = "";
    String message = openDB();
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        while (rst.next()) {
          for (int i = 0; i < count; i++) {
            result += rst.getString(i + 1) + " ";
          }
        }
        message = closeDB();
        return result;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }

  public String[] getDataVector(String sql) {
    String[] result = new String[1];
    String message = openDB();
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        rst.last();
        int size = rst.getRow();
        result = new String[size];
        rst.first();
        int i = 0;
        result[i] = rst.getString(1) + " ";
        i++;
        while (rst.next()) {
          result[i] = rst.getString(1) + " ";
          i++;
        }
        message = closeDB();
        return result;
      } catch (Exception e) {
        result[0] = e.getMessage();
        return result;
      }
    } else {
      result[0] = message;
      return result;
    }
  }


  public String htmlTable(String sql) {
    String result = "<table class=\"table\">\n";
    String message = openDB();
    if (message.equals("Opened")) {
      try {
        rst = stm.executeQuery(sql);
        rsmd = rst.getMetaData();
        int count = rsmd.getColumnCount();
        // create column headings
        result += "<tr>\n";
        for (int i = 0; i < count; i++) {
          String colname = rsmd.getColumnName(i + 1);
          result += "<th>" + colname + "</th>\n";
        }
        result += "</tr>\n";
        // create data rows
        while (rst.next()) {
          result += "<tr>\n";
          for (int i = 0; i < count; i++) {
            result += "<td>" + rst.getString(i + 1) + "</td>\n";
          }
          result += "</tr>\n";
        }
        result += "</table>\n";
        message = closeDB();
        return result;
      } catch (Exception e) {
        return e.getMessage();
      }
    } else {
      return message;
    }
  }
}
