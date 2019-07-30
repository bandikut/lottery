package hu.lottery.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "lottery_draw")
public class LotteryWeeklyDrawData implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "year")
	private int year;

	@Column(name = "week")
	private int week;

	@Column(name = "draw_date")
	private String date;

	@Column(name = "seven_match_count")
	private int sevenM;

	@Column(name = "seven_prize")
	private String sevenP;

	@Column(name = "six_match_count")
	private int sixM;

	@Column(name = "six_prize")
	private String sixP;

	@Column(name = "five_match_count")
	private int fiveM;

	@Column(name = "five_prize")
	private String fiveP;

	@Column(name = "four_match_count")
	private int fourM;

	@Column(name = "four_prize")
	private String fourP;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_by_hand", referencedColumnName = "id")
	private NumbersByHand numbersByHand;
	


	public LotteryWeeklyDrawData() {
		super();
	}

	public LotteryWeeklyDrawData(int id, int year, int week, String date, int sevenM, String sevenP, int sixM,
			String sixP, int fiveM, String fiveP, int fourM, String fourP, NumbersByHand numbersByHand) {
		super();
		this.id = id;
		this.year = year;
		this.week = week;
		this.date = date;
		this.sevenM = sevenM;
		this.sevenP = sevenP;
		this.sixM = sixM;
		this.sixP = sixP;
		this.fiveM = fiveM;
		this.fiveP = fiveP;
		this.fourM = fourM;
		this.fourP = fourP;
		this.numbersByHand = numbersByHand;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getWeek() {
		return week;
	}

	public void setWeek(int week) {
		this.week = week;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getSevenM() {
		return sevenM;
	}

	public void setSevenM(int sevenM) {
		this.sevenM = sevenM;
	}

	public String getSevenP() {
		return sevenP;
	}

	public void setSevenP(String sevenP) {
		this.sevenP = sevenP;
	}

	public int getSixM() {
		return sixM;
	}

	public void setSixM(int sixM) {
		this.sixM = sixM;
	}

	public String getSixP() {
		return sixP;
	}

	public void setSixP(String sixP) {
		this.sixP = sixP;
	}

	public int getFiveM() {
		return fiveM;
	}

	public void setFiveM(int fiveM) {
		this.fiveM = fiveM;
	}

	public String getFiveP() {
		return fiveP;
	}

	public void setFiveP(String fiveP) {
		this.fiveP = fiveP;
	}

	public int getFourM() {
		return fourM;
	}

	public void setFourM(int fourM) {
		this.fourM = fourM;
	}

	public String getFourP() {
		return fourP;
	}

	public void setFourP(String fourP) {
		this.fourP = fourP;
	}

	public NumbersByHand getNumbersByHand() {
		return numbersByHand;
	}

	public void setNumbersByHand(NumbersByHand numbersByHand) {
		this.numbersByHand = numbersByHand;
	}

	@Override
	public String toString() {
		return "LotteryWeeklyDrawData [id=" + id + ", year=" + year + ", week=" + week + ", date=" + date + ", sevenM="
				+ sevenM + ", sevenP=" + sevenP + ", sixM=" + sixM + ", sixP=" + sixP + ", fiveM=" + fiveM + ", fiveP="
				+ fiveP + ", fourM=" + fourM + ", fourP=" + fourP +  ", numbersByHand="
				+ numbersByHand + "]";
	}

}
