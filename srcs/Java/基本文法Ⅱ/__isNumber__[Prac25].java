public class Prac25 {
	public static void main(String[] args) {

		String test_str = "1234";

		if(isNumber(test_str)){
			System.out.println("Yes.");

		} else {
			System.out.println("No.");

		}
	}

	public static boolean isNumber(String str){

		char c;
		int i, len_str;
		boolean flag = true;

		len_str = str.length();

		if(len_str == 0){
			flag = false;

		} else {
			for(i=0; i<len_str; i++){
				c = str.charAt(i);

				if(!(0x30 <= c && c <= 0x39)){
					flag = false;

				}
			}
		}

		return flag;
	}
}
