package model;

import java.util.Date;
import java.util.List;

public class CustomerDTO {
   
   private int id;
   private String strId;
   private String name;
   private int gender;
   private int age;
   private int job; //1 학생 2 직장인
   private String phone;
   private String password;
   private String info;
   private List<ReservationDTO> customerReservationInfo;

   
   //매칭을 위한 생성자
   public CustomerDTO(int gender, int age, int job) {
      super();
      this.gender = gender;
      this.age = age;
      this.job = job;
   }
   
   public CustomerDTO(String name, int gender, int age, int job, String phone, String password, String info) {
	super();
	this.name = name;
	this.gender = gender;
	this.age = age;
	this.job = job;
	this.phone = phone;
	this.password = password;
	this.info = info;
}

//password포함 생성자 - 보여주면 안되는 나의 정보
   public CustomerDTO(int id, String name, int gender, int age, int job, String phone, String password, String info) {
      super();
      this.id = id;
      this.name = name;
      this.gender = gender;
      this.age = age;
      this.job = job;
      this.phone = phone;
      this.password = password;
      this.info = info;
   }
   
   public CustomerDTO(int id, String name, int gender, int age, int job, String phone, String password, String strId, String info) {
	      super();
	      this.id = id;
	      this.strId = strId;
	      this.name = name;
	      this.gender = gender;
	      this.age = age;
	      this.job = job;
	      this.phone = phone;
	      this.info = info;
	   }
   
   //password제외한 생성자 - 보여줘도 되는 나의 정보
   public CustomerDTO(String strId, String name, int gender, int age, int job, String phone, String info) {
      super();
      this.strId = strId;
      this.name = name;
      this.gender = gender;
      this.age = age;
      this.job = job;
      this.phone = phone;
      this.info = info;
   }
   
   
   public CustomerDTO() {
      // TODO Auto-generated constructor stub
      super();
   }

   public CustomerDTO(String strId, String name, int gender, int age, int job, String phone, String password, String info) {
      super();
      this.strId = strId;
      this.name = name;
      this.gender = gender;
      this.age = age;
      this.job = job;
      this.phone = phone;
      this.password = password;
      this.info = info;
      }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   public String getStrId() {
      return strId;
   }
   public void setStrId(String strId) {
      this.strId = strId;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public int getGender() {
      return gender;
   }
   public void setGender(int gender) {
      this.gender = gender;
   }
   public int getAge() {
      return age;
   }
   public void setAge(int age) {
      this.age = age;
   }
   public int getJob() {
      return job;
   }
   public void setJob(int string) {
      this.job = string;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public List<ReservationDTO> getCustomerReservationInfo() {
      return customerReservationInfo;
   }
   public void setCustomerReservationInfo(List<ReservationDTO> customerReservationInfo) {
      this.customerReservationInfo = customerReservationInfo;
   }

   public String getInfo() {
      return info;
   }

   public void setInfo(String info) {
      this.info = info;
   }

   @Override
   public String toString() {
      return "CustomerDTO [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", job=" + job
            + ", phone=" + phone + ", password=" + password + ", customerReservationInfo=" + customerReservationInfo
            + "]";
   }
   
   //로그인 시 비밀번호 검사
      public boolean matchPassword(String password) {
         if (password == null) {
            return false;
         }
         return this.password.equals(password);
      }
      
      public boolean isSameUser(String strId) {
           return this.strId.equals(strId);
       }
   
}