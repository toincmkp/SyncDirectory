// コンストラクタのオーバーロード

class Point3D{
	double x;
	double y;
	double z;

	String s;

	Point3D(double ax){
		x = ax;
		y = 1;
		z = 1;

		s = "None";
	}

	Point3D(double ax, double ay){
		x = ax;
		y = ay;
		z = 1;

		s = "None";
	}

	Point3D(double ax, double ay, double az){
		x = ax;
		y = ay;
		z = az;

		s = "None";
	}

	Point3D(String str1){
		x = 0;
		y = 0;
		z = 0;

		s = str1;
	}

	void move(double mx, double my, double mz){
		x = mx;
		y = my;
		z = mz;
		s = "Moved!";
	}


}

class Prac17{
	public static void main(String args[]){
		Point3D p1 = new Point3D(1.1);
		System.out.println("p1.x = " + p1.x);
		System.out.println("p1.y = " + p1.y);
		System.out.println("p1.z = " + p1.z);
		System.out.println("p1.s = " + p1.s + "\n");

		Point3D p2 = new Point3D(1.1, 3.4);
		System.out.println("p2.x = " + p2.x);
		System.out.println("p2.y = " + p2.y);
		System.out.println("p2.z = " + p2.z);
		System.out.println("p2.s = " + p2.s + "\n");

		Point3D p3 = new Point3D(1.1, 3.4, -2.8);
		System.out.println("p3.x = " + p3.x);
		System.out.println("p3.y = " + p3.y);
		System.out.println("p3.z = " + p3.z);
		System.out.println("p3.s = " + p3.s + "\n");

		Point3D p4 = new Point3D("Hello!");
		System.out.println("p4.x = " + p4.x);
		System.out.println("p4.y = " + p4.y);
		System.out.println("p4.z = " + p4.z);
		System.out.println("p4.s = " + p4.s + "\n");

		p4.move(5, 5, 5);
		System.out.println("p4.move!");
		System.out.println("p4.x = " + p4.x);
		System.out.println("p4.y = " + p4.y);
		System.out.println("p4.z = " + p4.z);
		System.out.println("p4.s = " + p4.s + "\n");

	}
}
