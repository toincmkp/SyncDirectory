import java.io.*;
import java.net.*;

public class Prac20{
	public static void main(String[] args){
		try {
			// ポートを取得する
			int port = 12345;

			// サーバーソケットを作成する
			ServerSocket ss = new ServerSocket(port);

			// クライアントからの要求を受け取る
			Socket s = ss.accept();

			// 結果をクライアントに書き込む
			OutputStream os = s.getOutputStream();
			DataOutputStream dos = new DataOutputStream(os);
			dos.writeInt(15);

			// ストリームをクローズする
			dos.close();
		}
		catch (Exception e) {
			System.out.println("Exception: " + e);
		}
	}
}
