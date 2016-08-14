import java.io.*;

public class Prac4 {
	public static void main(String[] args) {
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		try {
			System.out.println("降水確率を入力してください。");
			String line = reader.readLine();
			int n = Integer.parseInt(line);
			System.out.println("降水確率は" + n + "%です。");

			if (n < 0 || 100 < n) {
				System.out.println("降水確率は 0 ～ 100の間ですよ。");
			} else if (n >= 50) {
				System.out.println("傘を忘れずにね。");
			} else {
				System.out.println("傘はいりません。");
			}

			System.out.println("いってらっしゃい。");
		} catch (IOException e) {
			System.out.println(e);
		} catch (NumberFormatException e) {
			System.out.println("数字の形式が正しくありません。");
		}

		System.out.println("");

		// 三項演算子
		int age = 25;
		String msg;

		msg = (age > 20) ? "u r adult" : "u r child";
		System.out.println(msg);

	}
}
