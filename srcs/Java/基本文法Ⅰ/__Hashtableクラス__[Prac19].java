import java.util.*;

class Prac19 {
  public static void main(String args[]) {
    // ハッシュ表を作成し、情報を設定する
    Hashtable<String, String> hashtable = new Hashtable<String, String>();
    hashtable.put("apple", "red");
    hashtable.put("strawberry", "red");
    hashtable.put("lime", "green");
    hashtable.put("banana", "yellow");
    hashtable.put("orange", "orange");

    // ハッシュ表の要素を表示する
    Enumeration<String> e = hashtable.keys();
    while(e.hasMoreElements()) {
      String k = e.nextElement();
      String v = hashtable.get(k);
      System.out.println("key = " + k + "; value = " + v);
    }

    // appleの値を表示する
    System.out.print("\nThe color of an apple is: ");
    String v = hashtable.get("apple");
    System.out.println(v);
  }
}