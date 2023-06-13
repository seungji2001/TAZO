package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class BoardForUpdate implements Serializable{
	private int boardId;
	private String arrival;
	private String departure;
	private String arrivalTime;
	private String departureTime;
	private int headCount;
	private int realtimeState;
	
	public BoardForUpdate(int boardId, String arrival, String departure, String arrivalTime,
			String departureTime, int headCount, int realtimeState) {
		super();
		this.boardId = boardId;
		this.arrival = arrival;
		this.departure = departure;
		this.arrivalTime = arrivalTime;
		this.departureTime = departureTime;
		this.headCount = headCount;
		this.realtimeState = realtimeState;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
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

	public int getHeadCount() {
		return headCount;
	}

	public void setHeadCount(int headCount) {
		this.headCount = headCount;
	}

	public int getRealtimeState() {
		return realtimeState;
	}

	public void setRealtimeState(int realtimeState) {
		this.realtimeState = realtimeState;
	}

	@Override
	public String toString() {
		return "BoardForUpdate [boardId=" + boardId + ", arrival=" + arrival + ", departure=" + departure
				+ ", arrivalTime=" + arrivalTime + ", departureTime=" + departureTime + ", headCount=" + headCount
				+ ", realtimeState=" + realtimeState + "]";
	}

}
