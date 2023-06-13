package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ReservationDTO implements Serializable{
	private int driverId;
	private String arrival;
	private String departure;
	private String arrivalTime;
	private String departureTime;
	private int state;
	private int reservationId;
	//추가
	private int customerId;
	private String customerStrId;
	private int boardId;

	
	public ReservationDTO(int resetvationId) 
	{
		this.reservationId = resetvationId;
	}
	
	
	public ReservationDTO(int driverId, String arrival, String departure, String arrivalTime, String departureTime,
			int state, int resetvationId) {
		super();
		this.driverId = driverId;
		this.arrival = arrival;
		this.departure = departure;
		this.arrivalTime = arrivalTime;
		this.departureTime = departureTime;
		this.state = state;
		this.reservationId = resetvationId;
	}
	
	//예약 정보 가지고오기
	public ReservationDTO(int customerId, String customerStrId, int state, int reservationId, int boardId) {
		super();
		this.customerId = customerId;
		this.customerStrId = customerStrId;
		this.state = state;
		this.reservationId = reservationId;
		this.boardId = boardId;
	}


	public int getCustomerId() {
		return customerId;
	}


	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}


	public int getDriverId() {
		return driverId;
	}
	public void setDriverId(int driverId) {
		this.driverId = driverId;
	}
	public String getArrival() {
		return arrival;
	}
	public void setArrival(String arrival) {
		this.arrival = arrival;
	}
	public String getDeparture() {
		return departure;
	}
	public void setDeparture(String departure) {
		this.departure = departure;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	public int getReservationId() {
		return reservationId;
	}

	public void setReservationId(int reservationId) {
		this.reservationId = reservationId;
	}


	public String getCustomerStrId() {
		return customerStrId;
	}


	public void setCustomerStrId(String customerStrId) {
		this.customerStrId = customerStrId;
	}


	@Override
	public String toString() {
		return "ReservationDTO [driverId=" + driverId + ", state=" + state + ", reservationId=" + reservationId
				+ ", customerId=" + customerId + ", customerStrId=" + customerStrId + ", boardId=" + boardId + "]";
	}
	
	
}
