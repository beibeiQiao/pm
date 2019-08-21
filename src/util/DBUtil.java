package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DBUtil {
	private String dbUrl="jdbc:mysql://localhost:3306/pm?characterEncoding=utf8";
	private String dbUserName="root";
	private String dbPassword="123";
	private String jdbcName="com.mysql.jdbc.Driver";
	
	
public Connection getCon() throws Exception{
	Class.forName(jdbcName);
	Connection con=DriverManager.getConnection(dbUrl,dbUserName,dbPassword);
	return con;
}
public void closeCon(Connection con) throws Exception{
	if(con!=null){
		con.close();
	}
}

public double[][] query1() throws Exception{
	String sql1 = "select SO2_avg from so2 order by date Desc limit 5;";
	String sql2 = "select NO2_avg from no2 order by date Desc limit 5;";
	String sql3 = "select o3_avg  from o3  order by date Desc limit 5;";
	
	Connection con = getCon();
	Statement st1 =  con.createStatement();
	ResultSet rs1 = st1.executeQuery(sql1);
	
	Statement st2 =  con.createStatement();
	ResultSet rs2 = st2.executeQuery(sql2);
	
	Statement st3 =  con.createStatement();
	ResultSet rs3 = st3.executeQuery(sql3);
	double z[][] = new double[3][5];
	int x1=0;
	int x2=0;
	int x3=0;
	while(rs1.next()){
		z[0][x1] = rs1.getDouble(1);
		x1++;
	}
	while(rs2.next()){
		z[0][x2] = rs2.getDouble(1);
		x2++;
	}
	while(rs3.next()){
		z[0][x3] = rs3.getDouble(1);
		x3++;
	}
	return z;
}

public double[] query2() throws Exception{
	String sql = "select PM25_avg from pm25 order by date Desc limit 5;";
	Connection con = getCon();
	Statement st =  con.createStatement();
	ResultSet rs = st.executeQuery(sql);
	double z[] = new double[5];
	int x=0;
	while(rs.next()){
		z[x] = rs.getDouble(1);
		System.out.println(z[x]);
		x++;
	}
	return z;
}
public double[] query3() throws Exception{
	String sql1 = "select SO2_avg from so2 order by date Desc limit 1;";
	String sql2 = "select NO2_avg from no2 order by date Desc limit 1;";
	String sql3 = "select o3_avg  from o3  order by date Desc limit 1;";
	
	Connection con = getCon();
	Statement st1 =  con.createStatement();
	ResultSet rs1 = st1.executeQuery(sql1);
	
	Statement st2 =  con.createStatement();
	ResultSet rs2 = st2.executeQuery(sql2);
	
	Statement st3 =  con.createStatement();
	ResultSet rs3 = st3.executeQuery(sql3);
	double z[] = new double[3];
	int x1=0;

	while(rs1.next()){
		z[x1] = rs1.getDouble(1);
		x1++;
	}
	
	return z;
}

public static void main(String[] args) {
	DBUtil dbUtil=new DBUtil();
	try {
		//dbUtil.query1();
		dbUtil.query2();
	} catch (Exception e) {
		e.printStackTrace();
	}
}

}
