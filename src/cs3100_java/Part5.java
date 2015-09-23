package cs3100_java;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Part5 {
	public static void main(String args[])
    {
        Scanner s = new Scanner(System.in);

        String input = "";
        while(s.hasNext())
        {
            input += s.nextLine() + "\n";
        }

        Pattern htmlP = Pattern.compile("((<)((?!\")(?!<).|\\n)*?(>))");

        Matcher m = htmlP.matcher(input);

        String mResults = m.replaceAll("");

        Pattern finalP = 
        		Pattern.compile("((<)(((?!<).|\\n)*?)((\"(\\.)*.*?(\\.)*(?<!\\\\)\")|(\"(\\.)*.*?(\\.)*(?<=\\\\\\\\)\"))(((?!<).|\\n)*?)(>))");

        m = finalP.matcher(mResults);
        System.out.println(m.replaceAll("") + "\n\n\n");
    }
}
