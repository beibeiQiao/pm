package dao;
import java.util.List;

import entity.Data;
import java.sql.SQLException;

public interface DataDao {
	List<Data> queryAllDatas(String name) throws SQLException;
	List<Data> queryDay() throws SQLException;
	List<Data> aqiDatas(String name) throws SQLException;

}
