import java.io.*;
import java.net.*;

class Prac21{
	public static void main(String args[]) {
		try {
			// サーバーとポートを取得する
			int port = 12345;

			// ソケットを作成する
			Socket s = new Socket("192.168.43.32", port);

			// サーバーから乱数を読み取る
			InputStream is = s.getInputStream();
			DataInputStream dis = new DataInputStream(is);
			int i = dis.readInt();

			// 結果を表示する
			System.out.println(i);

			// ストリームをクローズする
			dis.close();
		}
		catch (Exception e) {
			System.out.println("Exception: " + e);
		}
	}
}