//package test.first.util;
//
//import java.io.BufferedReader;
//import java.io.FileNotFoundException;
//import java.io.FileReader;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
//import test.first.model.Lotto;
//
//public class ReadFile {
//
//	public static List<Lotto> readFromFile() {
//		String line = "";
//		List<Lotto> lottoList = new ArrayList<Lotto>();
//		try (BufferedReader br = new BufferedReader(new FileReader("D:/AndiDolgai/teszt/skandi.csv"),102400)) {
//			
//			int i=0;
//			while (br.ready()) {
//				line="";
//				line = br.readLine();
//				String[] temp = line.split(";");
//				
//				lottoList.add(new Lotto(
//						i, //id
//						Integer.parseInt(temp[0]), //year
//						Integer.parseInt(temp[1]), //week
//						temp[2], //date
//						Integer.parseInt(temp[3]), //sevenM
//						temp[4], //sevenP
//						Integer.parseInt(temp[5]), //sixM
//						temp[6], //sixP
//						Integer.parseInt(temp[7]), //fiveM
//						temp[8], //fiveP
//						Integer.parseInt(temp[9]), //fourM
//						temp[10], //fourP
//						Integer.parseInt(temp[11]), //m1
//						Integer.parseInt(temp[12]), //m2
//						Integer.parseInt(temp[13]), //m3
//						Integer.parseInt(temp[14]), //m4
//						Integer.parseInt(temp[15]), //m5
//						Integer.parseInt(temp[16]), //m6
//						Integer.parseInt(temp[17]), //m7
//						Integer.parseInt(temp[18]), //h1
//						Integer.parseInt(temp[19]), //h2
//						Integer.parseInt(temp[20]), //h3
//						Integer.parseInt(temp[21]), //h4
//						Integer.parseInt(temp[22]), //h5
//						Integer.parseInt(temp[23]), //h6
//						Integer.parseInt(temp[24]) //h7
//						));
//				i++;
//			}
//
//			for (Lotto lotto : lottoList) {
//				System.out.println(lotto.toString());
//			}
//
//
//		} catch (FileNotFoundException e) {
//			System.out.println("file not found");
//			e.printStackTrace();
//		} catch (IOException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
//
//		return lottoList;
//	}
//
//}
