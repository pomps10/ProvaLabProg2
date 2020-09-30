package br.santalucia.registrations;

public class Registrations {
	private String name;
	private String email;
	private String cel;
	private int index;

	public Registrations(String name, String email, String cel) {
		this.setName(name);
		this.setEmail(email);
		this.setCel(cel);
		this.index = RegistrationsArray.registrationsList.size();
		RegistrationsArray.registrationsList.add(this);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCel() {
		return cel;
	}

	public void setCel(String cel) {
		this.cel = cel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
}
