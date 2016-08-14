import java.io.*;

public class Hexdump {
	public static void main(String[] args){

		System.out.println("");

		try{
			FileInputStream fis = new FileInputStream(args[0]);

			int ofs_fix = 8;
			String zero_fix = "";
			String ofs = "";

			int idx_i = 0;
			String idx_s = "";

			char ch;
			String sch;
			String asc = "";

			String s = "";
			String bytes = "";

			int c;
			while((c = fis.read()) != -1){
				s = Integer.toHexString(c);
				if(s.length() == 1){
					s = "0" + s;
				}

				bytes += s;

				if(0x20 <= c && c <= 0x7f){
					ch = (char)c;
					sch = String.valueOf(ch);

				} else {
					sch = ".";
				}
				asc += sch;

			}
			fis.close();


			int LOOP = (bytes.length() / 32) + 1;
			int cnt = 0;
			int base = 0;
			int base_asc = 0;
			for(int k=0; k<LOOP; k++){
				idx_s = Integer.toHexString(idx_i);
				if(idx_s.length() < ofs_fix){
					for(int j=0; j<(ofs_fix - idx_s.length()); j++){
						zero_fix += "0";
					}
				}
				ofs = zero_fix + idx_s;
				System.out.print(ofs);

				System.out.print("  ");

				if(k == LOOP - 1){
					for(int l=0; l<((bytes.length() % 32) / 2); l++){
						System.out.print(bytes.substring(base+cnt, base+cnt+2));
						System.out.print(" ");
						cnt += 2;
					}
					int rest_cnt = 16 - ((bytes.length() % 32) / 2);
					for(int n=0; n<rest_cnt; n++){
						System.out.print("   ");
					}

					System.out.print(" |");
					for(int m=0; m<(asc.length() % 16); m++){
						System.out.print(asc.charAt(base_asc + m));
					}


				} else {
					for(int l=0; l<16; l++){
						System.out.print(bytes.substring(base+cnt, base+cnt+2));
						System.out.print(" ");
						cnt += 2;
					}

					System.out.print(" |");
					for(int m=0; m<16; m++){
						System.out.print(asc.charAt(base_asc + m));
					}

					base_asc += 16;
					base += 32;
					cnt = 0;
				}

				zero_fix = "";
				idx_i += 16;
				System.out.println("");
			}

		}catch(IOException e){
					System.out.println(e);
		}

	}
}
