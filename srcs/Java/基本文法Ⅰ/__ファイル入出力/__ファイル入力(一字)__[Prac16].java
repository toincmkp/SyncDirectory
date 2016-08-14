import java.io.*;

public class Prac16{
	public static void main(String[] args){

		try{
			File file = new File("Prac16.txt");
			FileReader filereader = new FileReader(file);

			int ch;
			while((ch = filereader.read()) != -1){
				System.out.print((char)ch);
			}

			filereader.close();

		}catch(FileNotFoundException e){
			System.out.println(e);

		}catch(IOException e){
			System.out.println(e);

		}
	}
}
