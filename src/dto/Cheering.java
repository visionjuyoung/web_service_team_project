package dto;

public class Cheering {
	private int id;
	private String title;
	private int writerId;
	private String writerName;
	private String crtDate;
	private String text;
	private String teamImgName;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getWriterId() {
		return writerId;
	}
	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
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
	public String getTeamImgName() {
		return teamImgName;
	}
	public void setTeamImgName(String teamImgName) {
		this.teamImgName = teamImgName;
	}
	
}

