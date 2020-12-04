package dto;

public class Player {
	private int id;
	private String name;
	private String teamName;
	private String backNumber;
	private String imgName;
	private String country;
	private String position;
	private int age;
	private int goals;
	private Integer shots;
	private Integer shotsInTarget;
	private int appearances;
	private int assist;
	
	
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
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getBackNumber() {
		return backNumber;
	}
	public void setBackNumber(String backNumber) {
		this.backNumber = backNumber;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getGoals() {
		return goals;
	}
	public void setGoals(int goals) {
		this.goals = goals;
	}
	public Integer getShots() {
		return shots;
	}
	public void setShots(Integer shots) {
		this.shots = shots;
	}
	public Integer getShotsInTarget() {
		return shotsInTarget;
	}
	public void setShotsInTarget(Integer shotsInTarget) {
		this.shotsInTarget = shotsInTarget;
	}
	public int getAppearances() {
		return appearances;
	}
	public void setAppearances(int appearances) {
		this.appearances = appearances;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
}
