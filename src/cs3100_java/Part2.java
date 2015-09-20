package cs3100_java;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Print the input with every Java-style single-line comment 
 * (beginning with // and continuing to the end of the line) removed.
 * The newline character should not be removed.
 * @author Jesus Zarate
 *
 */
public class Part2 {

	public static void main(String args[]){

		Scanner s = new Scanner(System.in);

		//Pattern p = Pattern.compile("[^\"]//.*");
		Pattern p = Pattern.compile("//.*");

		String line = "";		
		while(s.hasNextLine())
		{
			line += s.nextLine() + "\n";
		}
		
		System.out.println(p.matcher(line).replaceAll(""));
	}
}