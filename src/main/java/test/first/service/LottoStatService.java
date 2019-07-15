package test.first.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import test.first.model.Lotto;

public class LottoStatService {

	public static void favouriteNumber (List<Lotto> lottoList, Integer[] fav) {
		List<Integer> favs = new ArrayList<Integer>(Arrays.asList(fav));
		if (lottoList.containsAll(favs)) {
			System.out.println("már kihúzták");
		} else {
			System.out.println("még nem húzták ki");
		}
		
	}
	
}
