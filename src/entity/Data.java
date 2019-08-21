package entity;

public class Data {
	private String  station;
	private String time;
	private double PM25;
	private double PM10;
	private double SO2;
	private double o3;
	private double NO2;
	private double CO;
	private double AQI;
	
	public Data(){
		
	}
	
	public  Data(String station,String time,double PM25,double PM10,double SO2,double o3,double NO2,double CO,double AQI){
		this.station =station;
		this.time = time;
		this.PM25 = PM25;
		this.PM10 = PM10;
		this.SO2 = SO2;
		this.o3 = o3;
		this.NO2 = NO2;
		this.CO = CO;
		this.AQI =AQI;
	}

	public String getStation() {
		return station;
	}

	public void setStation(String station) {
		this.station = station;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public double getPM25() {
		return PM25;
	}

	public void setPM25(double pM25) {
		PM25 = pM25;
	}

	public double getPM10() {
		return PM10;
	}

	public void setPM10(double pM10) {
		PM10 = pM10;
	}

	public double getSO2() {
		return SO2;
	}

	public void setSO2(double sO2) {
		SO2 = sO2;
	}

	public double getO3() {
		return o3;
	}

	public void setO3(double o3) {
		this.o3 = o3;
	}

	public double getNO2() {
		return NO2;
	}

	public void setNO2(double nO2) {
		NO2 = nO2;
	}

	public double getCO() {
		return CO;
	}

	public void setCO(double cO) {
		CO = cO;
	}

	public double getAQI() {
		return AQI;
	}

	public void setAQI(double aQI) {
		AQI = aQI;
	}
	 public String toString() {
		return "��ȡ��"+station+"�Ŀ����������:"+time+" "+PM25+"  "+AQI +" "+ CO;
		 
	 }
	
}
