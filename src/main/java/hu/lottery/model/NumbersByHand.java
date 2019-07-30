package hu.lottery.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "hand_draw")
public class NumbersByHand implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "id", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "num1")
	private int num1;

	@Column(name = "num2")
	private int num2;

	@Column(name = "num3")
	private int num3;

	@Column(name = "num4")
	private int num4;

	@Column(name = "num5")
	private int num5;

	@Column(name = "num6")
	private int num6;

	@Column(name = "num7")
	private int num7;

	@OneToOne(mappedBy = "numbersByHand")
	private LotteryWeeklyDrawData lotteryWeeklyDrawData;

	public NumbersByHand() {
		super();
	}

	public NumbersByHand(int id, int num1, int num2, int num3, int num4, int num5, int num6, int num7,
			LotteryWeeklyDrawData lotteryWeeklyDrawData) {
		super();
		this.id = id;
		this.num1 = num1;
		this.num2 = num2;
		this.num3 = num3;
		this.num4 = num4;
		this.num5 = num5;
		this.num6 = num6;
		this.num7 = num7;
		this.lotteryWeeklyDrawData = lotteryWeeklyDrawData;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public int getNum2() {
		return num2;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public int getNum3() {
		return num3;
	}

	public void setNum3(int num3) {
		this.num3 = num3;
	}

	public int getNum4() {
		return num4;
	}

	public void setNum4(int num4) {
		this.num4 = num4;
	}

	public int getNum5() {
		return num5;
	}

	public void setNum5(int num5) {
		this.num5 = num5;
	}

	public int getNum6() {
		return num6;
	}

	public void setNum6(int num6) {
		this.num6 = num6;
	}

	public int getNum7() {
		return num7;
	}

	public void setNum7(int num7) {
		this.num7 = num7;
	}

	public LotteryWeeklyDrawData getLotteryWeeklyDrawData() {
		return lotteryWeeklyDrawData;
	}

	public void setLotteryWeeklyDrawData(LotteryWeeklyDrawData lotteryWeeklyDrawData) {
		this.lotteryWeeklyDrawData = lotteryWeeklyDrawData;
	}

//	@Override
//	public String toString() {
//		return "NumbersByHand [id=" + id + ", num1=" + num1 + ", num2=" + num2 + ", num3=" + num3 + ", num4=" + num4
//				+ ", num5=" + num5 + ", num6=" + num6 + ", num7=" + num7;
//	}



}
