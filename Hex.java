import java.util.Arrays;

class Hex {
    public static void main(String[] args) {
        // System.out.println("Converting " + args[0]);

        String[] rgb = args[0].split(",");
        // System.out.println(Arrays.toString(rgb));

        String hex = "";

        for (String token: rgb) {
            // System.out.println(token);
            int intColor = Integer.parseInt(token);
            hex += Hex.hex(intColor / 16);
            hex += Hex.hex(intColor % 16);
        }

        System.out.println(hex);
    }

    public static String hex(int n) {
        return (0 <= n && n <= 9) ? String.valueOf(n) : String.valueOf((char)(n - 10 + 'A')); 
    }
}
