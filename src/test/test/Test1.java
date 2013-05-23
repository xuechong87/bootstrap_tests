package test;

public class Test1 {
	public static void main(String[] args) {
		StringBuffer sb = new StringBuffer("aaaaaaaadddhhsasdfw");
		sb.replace(sb.indexOf("hh"), sb.indexOf("hh")+"hh".length(), "HHHHHHH");
		System.out.println(sb);
	}
}
 