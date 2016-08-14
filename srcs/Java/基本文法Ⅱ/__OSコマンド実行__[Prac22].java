import java.io.*;

public class Prac22{
	public static void main(String[] args){
		try{
			Process p = Runtime.getRuntime().exec("cmd.exe /C dir");
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));

			String line;
			while((line = reader.readLine()) != null){
				System.out.println(line);
			}

		}catch(IOException e){
				System.out.println(e);
		}
	}
}
