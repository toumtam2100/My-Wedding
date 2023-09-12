package model;

import java.util.Date;

public class Order extends User {
    private String orderID;
    private Date createAt;
    private Date startTime;
    private Date stopTime;

    public Order(String fullName, String orderID, Date createAt, Date startTime, Date stopTime) {
        super(fullName);
        this.orderID = orderID;
        this.createAt = createAt;
        this.startTime = startTime;
        this.stopTime = stopTime;
    }

    public Order(String orderID, Date createAt, Date startTime, Date stopTime) {
        this.orderID = orderID;
        this.createAt = createAt;
        this.startTime = startTime;
        this.stopTime = stopTime;
    }

    public Order() {
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getStopTime() {
        return stopTime;
    }

    public void setStopTime(Date stopTime) {
        this.stopTime = stopTime;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderID='" + orderID + '\'' +
                ", createAt=" + createAt +
                ", startTime=" + startTime +
                ", stopTime=" + stopTime +
                '}';
    }
}
