package Entitati;

public class Contacte {
	
	private int id;
	private String FirstName;
	private String LastName;
	private String Email;
	private String Phone;
	private String Adress;
	private String City;
	private String State;
	private String ZipCode;
	private String Description;
	
	
	
	
	public Contacte(int id, String firstName, String lastName, String email, String phone, String adress, String city,
			String state, String zipCode, String description) {
		super();
		this.id = id;
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		Phone = phone;
		Adress = adress;
		City = city;
		State = state;
		ZipCode = zipCode;
		Description = description;
	}
	
	
	public Contacte(int i, String firstname2, String lastname2, String email2, String phone2, String address,
			String city2, String state2, String comment) {
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getAdress() {
		return Adress;
	}
	public void setAdress(String adress) {
		Adress = adress;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getZipCode() {
		return ZipCode;
	}
	public void setZipCode(String zipCode) {
		ZipCode = zipCode;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
}





