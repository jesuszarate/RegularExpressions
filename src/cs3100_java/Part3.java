package cs3100_java;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Count the number of times a telephone number formatted as (xxx) xxx-xxxx 
 * appears in the input and write this count to the output.  The space after 
 * the area code is optional.  Each phone number must be preceded with the 
 * beginning of a line or white space; each phone number must be followed by 
 * the end of a line or white space.
 * 
 * @author Jesus Zarate
 *
 */
public class Part3 {

	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);

		//Pattern p = Pattern.compile("\\b\\(\\d\\d\\d\\)\\s?\\d\\d\\d\\-\\d\\d\\d\\d\\b");
		Pattern p = Pattern.compile("\\s\\(\\d\\d\\d\\)\\s?\\d\\d\\d\\-\\d\\d\\d\\d\\b");
		
		int count = 0;
		
		String doc = "";
		while(input.hasNextLine())
		{
			doc += input.nextLine()+"\n";
		}
					
		Matcher m = p.matcher(doc);
			
		while (m.find())
		{
			count++;
		}	
		
		System.out.println(count);
	}
}
