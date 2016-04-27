package com.hb.resistPage;

import java.util.StringTokenizer;

public class test {
	
	void test1 () {
		String email="hyunjaejeong@naver.com				";
		StringTokenizer values = new StringTokenizer(email, "\t");
		while (values.hasMoreElements()) {
			System.out.println("result : "+values.nextToken()+"..");
		}
	}
	
	public static void main(String[] args) {
		test test = new test();
		test.test1();
	}
}