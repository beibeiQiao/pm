package dao;

import java.util.ArrayList;
import java.util.List;
import entity.Data;
import util.DBUtil;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

public  class DataDaoImpl implements DataDao{
	public List<Data> queryAllDatas(String name) throws SQLException {
		List<Data> list = new ArrayList<Data>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from "+name+" where time like '201904%'";
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Data data = new Data();
				data.setStation(rs.getString("station"));
				data.setTime(rs.getString("time"));
				data.setPM25(rs.getDouble("PM25"));
				data.setPM10(rs.getDouble("PM10"));
				data.setAQI(rs.getDouble("AQI"));
				data.setSO2(rs.getDouble("SO2"));
				data.setNO2(rs.getDouble("NO2"));
				data.setO3(rs.getDouble("o3"));
				list.add(data);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}
	
	public List<Data> queryDay() throws SQLException {
		List<Data> list = new ArrayList<Data>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			for(int i=1;i<=12;i++){
				String sql ="select * from station"+i+" order by time desc limit 1";
				PreparedStatement pst =con.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next()){
					Data data = new Data();
					data.setStation(rs.getString("station"));
					data.setTime(rs.getString("time"));
					data.setPM25(rs.getDouble("PM25"));
					data.setPM10(rs.getDouble("PM10"));
					data.setSO2(rs.getDouble("SO2"));
					data.setO3(rs.getDouble("o3"));
					data.setNO2(rs.getDouble("NO2"));
					data.setCO(rs.getDouble("CO"));
					data.setAQI(rs.getDouble("AQI"));
					list.add(data);
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	public List<Data> aqiDatas(String name) throws SQLException {
		List<Data> list = new ArrayList<Data>();
		try {
			DBUtil dbUtil=new DBUtil();
			Connection con=dbUtil.getCon();
			String sql ="select * from "+name+" order by time desc limit 1";
			PreparedStatement pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Data data = new Data();
				data.setStation(rs.getString("station"));
				data.setTime(rs.getString("time"));
				data.setPM25(rs.getDouble("PM25"));
				data.setPM10(rs.getDouble("PM10"));
				data.setAQI(rs.getDouble("AQI"));
				data.setSO2(rs.getDouble("SO2"));
				data.setNO2(rs.getDouble("NO2"));
				data.setO3(rs.getDouble("o3"));
				data.setCO(rs.getDouble("CO"));
				list.add(data);
				}
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return list;
	}


}
