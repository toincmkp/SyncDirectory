import java.io.*;

public class Prac14{
	public static void main(String[] args){

		try{
			File file = new File("Prac14.txt");
			BufferedWriter bw = new BufferedWriter(new FileWriter(file));

			bw.write("aaa");
			bw.write("bbb");

			// \nでの改行不能
			bw.newLine();
			bw.write("ccc");

			bw.close();

		}catch(FileNotFoundException e){
			System.out.println(e);

		}catch(IOException e){
			System.out.println(e);

		}
	}
}
