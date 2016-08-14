import java.util.*;

public class Prac18 {
	public static void main(String[] args) {

		String s = "";
		Stack<String> ars = new Stack<String>();

		ars.push("1");
		ars.push("5");

		System.out.println(ars);

		s = ars.pop();

		System.out.println(ars);

		System.out.print(s);
	}
}


