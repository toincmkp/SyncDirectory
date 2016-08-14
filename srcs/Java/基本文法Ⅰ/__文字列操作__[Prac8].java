import java.io.*;

public class Prac8 {
	public static void main(String[] args) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			String line, s;

			// 小文字化
			line = reader.readLine();
			s = line.toLowerCase();
			System.out.println(s);

			// 大文字化
			line = reader.readLine();
			s = line.toUpperCase();
			System.out.println(s);

			// 文字列方→数値型
			String str = "500";
			int n = Integer.parseInt(str);
			System.out.println(n+50);

		} catch (IOException e) {
			System.out.println(e);
		}

		System.out.println("");
		String msg = "abcde";

		// 文字列の長さ
		System.out.println(msg.length());
		System.out.println("");

		// 文字列の抜き出し
		System.out.println(msg.substring(2, 5));
		System.out.println(msg);
		System.out.println("");

		char c = msg.charAt(2);
		System.out.println(c);
		System.out.println("");

		// 文字列の置換
		System.out.println(msg.replaceAll("ab", "zx"));
		System.out.println(msg);
		System.out.println("");

		// 指定した文字で区切り配列化
		String s1 = "Sun, Mon, Tue";
		String[] youbi = s1.split(", ", 0);

		for(int i=0; i<youbi.length; i++){
			System.out.println(youbi[i]);
		}
		System.out.println("");

	}
}
