import java.io.*;

public class Prac24 {
	public static void main(String[] args){
		Console cos = System.console();

		if(cos != null){
			char[] rdpass = cos.readPassword();
			String ptext = new String(rdpass);

			System.out.println(ptext);
		}
	}
}
