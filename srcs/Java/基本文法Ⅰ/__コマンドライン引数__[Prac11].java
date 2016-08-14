import java.io.*;

public class Prac11 {
	public static void main(String[] args) {

		if (args.length == 0) {
			System.out.println("使用法：java Prac11 文字列 ...");
			System.exit(0);
		}

		System.out.println("引数：" + args.length + ", args[0]：" + args[0]);
	}
}
