import java.io.*;

public class Prac3{
	public static void main(String[] args){
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

		try{
			System.out.println("何か入力してください。");
			String line = reader.readLine();
			System.out.println(line + "が入力されました。");

		}catch(IOException e){
				System.out.println(e);
		}
	}
}
