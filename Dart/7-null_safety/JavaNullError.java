public class JavaNullError {
   
    public static void main(String args[]) {
        String myString = null;
        printLength(myString);
    } 
 
    private static void printLength(String str) {
        System.out.println(str.length());
    }
}