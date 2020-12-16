package dto;

public class Comment {
	private int id;
	private int cheeringId;
	private int writerId;
	private String crtDate;
	private String text;
	private String writerName;
	private String teamImgName;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCheeringId() {
		return cheeringId;
	}
	public void setCheeringId(int cheeringId) {
		this.cheeringId = cheeringId;
	}
	public int getWriterId() {
		return writerId;
	}
	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}
	public String getCrtDate() {
		return crtDate;
	}
	public void setCrtDate(String crtDate) {
		this.crtDate = crtDate;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getTeamImgName() {
		return teamImgName;
	}
	public void setTeamImgName(String teamImgName) {
		this.teamImgName = teamImgName;
	}
	
}
