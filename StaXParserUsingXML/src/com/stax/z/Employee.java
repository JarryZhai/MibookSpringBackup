package com.stax.z;

public class Employee
{
 private int id;
 private String name;
 private String title;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
@Override
public String toString() {
	return "Employee [id=" + id + ", name=" + name + ", title=" + title + "]";
}
}
