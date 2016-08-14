import java.io.*;

public class Prac13{
	public static void main(String[] args){

		try{
			File file = new File("Prac13.txt");
			BufferedReader br = new BufferedReader(new FileReader(file));

			String str;
			while((str = br.readLine()) != null){
				System.out.println(str);

			}

			br.close();

		}catch(FileNotFoundException e){
			System.out.println(e);

		}catch(IOException e){
			System.out.println(e);

		}
	}
}
