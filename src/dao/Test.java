package dao;

import java.sql.SQLException;
import entity.Data;
public class Test {
	public static void main(String[] args){
		DataDao datadao = new DataDaoImpl();
		try{
			//for(Data data:datadao.queryAllDatas("station2"))
				//System.out.println(data);
			for(Data data1:datadao.queryDay())
				System.out.println(data1);
			//for(Data data2:datadao.aqiDatas("station2"))
				//System.out.println(data2);
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
