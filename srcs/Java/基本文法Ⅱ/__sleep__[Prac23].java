public class Prac23{
	public static void main(String[] args){
		try{
			System.out.println("start");
			Thread.sleep(1500);
			System.out.println("end");

		}catch(InterruptedException e){
			System.out.println(e);
		}
	}
}
