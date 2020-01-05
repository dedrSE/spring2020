package com.kgitbank.mvc04;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JSoupTest {
	public static void main(String[] args) throws Exception {
		Document doc = Jsoup.connect("https://music.naver.com/listen/top100.nhn?domain=DOMESTIC_V2").get();
//		System.out.println(doc);
//		Elements list = doc.select(".name>a.thumb>img");
		Elements list = doc.select(".ellipsis");
		for (Element e : list) {
//			System.out.println(e.attr("src"));
			System.out.println(e.text());
		}
		
	}
}
