public class Prac9 {
	public static void main(String[] args) {
		int p, q;
		p = 10000;
		q = halve(p);
		System.out.println("元の値段が" + p + "円なら、半額だと" + q + "円になります。\n");

		printGraph(10);
	}

	public static int halve(int n) {
		return n / 2;
	}

	public static void printGraph(int x) {
		for (int i = 0; i < x; i++) {
			System.out.print("*");
		}
		System.out.println("");
	}

}
