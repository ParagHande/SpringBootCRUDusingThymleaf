package com.demo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer rollNo;
	private String fName;
	private String lName;
	private Integer currentYear;
	
	public Integer getRollNo() {
		return rollNo;
	}
	public void setRollNo(Integer rollNo) {
		this.rollNo = rollNo;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public Integer getCurrentYear() {
		return currentYear;
	}
	public void setCurrentYear(Integer currentYear) {
		this.currentYear = currentYear;
	}
	
	@Override
	public String toString() {
		return "Student [rollNo=" + rollNo + ", fName=" + fName + ", lName=" + lName + ", currentYear=" + currentYear
				+ "]";
	}
	
	
	
	
	
}
