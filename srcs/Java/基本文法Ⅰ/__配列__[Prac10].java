import java.util.Arrays;

public class Prac10 {
	public static void main(String[] args) {
		int[] ten21;
		double heikin21;

		ten21 = new int[3];
		ten21[0] = 52;
		ten21[1] = 21;
		ten21[2] = 88;
		heikin21 = (ten21[0] + ten21[1] + ten21[2]) / 3.0;

		System.out.println(ten21[0]);
		System.out.println(ten21[1]);
		System.out.println(ten21[2]);
		System.out.println(heikin21);
		System.out.println("");

		// 配列の初期化
		int[] ten2 = { 63, 90, 75, 45, 81 };
		// int ten2[] = { 63, 90, 75, 45, 81 }; 書き方はどちらでも良い
		int sum = 0;
		for (int i = 0; i < ten2.length; i++) {
			sum += ten2[i];
		}
		double heikin2 = (double)sum / ten2.length;
		System.out.println(ten2[0]);
		System.out.println(ten2[1]);
		System.out.println(ten2[2]);
		System.out.println(ten2[3]);
		System.out.println(ten2[4]);
		System.out.println(heikin2);
		System.out.println("");

		// 二次元配列
		int arr[][] = {
			{33, 71},
			{-16, 45, 54, 10000},
			{5}
		};

		System.out.println("arr.length = " + arr.length);

		for(int i=0; i < arr.length; i++){
			System.out.println("arr[" + i + "].length = " + arr[i].length);
		}
		System.out.println("");

		for(int i=0; i<arr.length; i++){
			for(int j=0; j<arr[i].length; j++){
				System.out.println(arr[i][j]);
			}
		}
		System.out.println("");

		// 配列のソート
		int ar[] = {3, 9, 1, 0, 5};
		System.out.println(Arrays.toString(ar));

		Arrays.sort(ar);
		System.out.println(Arrays.toString(ar));
		System.out.println("");

		String ar2[] = {"9", "1", "a", "A", "-"};
		System.out.println(Arrays.toString(ar2));

		Arrays.sort(ar2);
		System.out.println(Arrays.toString(ar2));

	}
}
