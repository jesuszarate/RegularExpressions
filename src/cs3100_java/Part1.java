package cs3100_java;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Print the input with every Social Security number 
 * (three digits, a hyphen, two digits, a hyphen, four digits;
 *  e.g. 123-45-6789) replaced with ###-##-####.  Each SSN must
 *  be preceded with the beginning of a line or white space; 
 *  each SSN must be followed by the end of a line or white space.
 *  
 * @author Jesus Zarate
 *
 */
public class Part1 {
	
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		
		Pattern p = Pattern.compile("(\\b)\\d\\d\\d(\\-)\\d\\d(\\-)\\d\\d\\d\\d(\\b)");//
		
		Matcher m = p.matcher(input.nextLine());
		StringBuffer sb = new StringBuffer();
		
		while (m.find())
		{			
			m.appendReplacement(sb, m.group(1) + "###" + m.group(2) + "##" + m.group(3) + "####" + m.group(4));			
		}
		m.appendTail(sb);
		System.out.println(sb);
	}
}