package ch03;

import java.util.ArrayList;

public class FaqCategories {
	private ArrayList<String> listCats = new ArrayList<String>();

	public FaqCategories() {
		listCats.add("Dates et Heures");
		listCats.add("Strings et StringBuffers");
		listCats.add("Threads");
	}

	public ArrayList<String> getAllCategories() {
		return listCats;
	}
}
