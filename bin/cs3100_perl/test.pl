while(<STDIN>)
{
	$input .= $_;
}

#$input =~ s@\<(.|\n)*?\>@@gi; 
#$input =~ s@((\<)((?!<).|\n)*?(\>))@@gi; #Matches the case where no unquoted < characters should appear inside a tag
										 # but fails when there is two nested like: < hello <world>>
										 
#while($input =~ m@((\<)((?!<).|\n)*?(\>))|(.*(?!<)|(?!>))@g)
while($input =~ m@(.)*@g)
{
	if($input =~ m@((\<)((?!<).|\n)*?(\>))@g)
	{
		print "true";
	}
	else{
		print "false";
	}
	
	#$input =~ s@((\<)((?!<).|\n)*?(\>))@@g;
	if(defined $one)
	{
		$one = $1;
	}
	else{
		$one = $5;
	}
	
	
	#print $input; 
	print "\n" . "=>" . $one . "<=" ."\n";
	
	if($one =~ m@((\<)((?!<).|\n)*?(\>))@g)
	{
		#If it contains a quote then make sure there is a matching quote
		if($1 =~ m@"@g)
		{
			print $one . "\n\n";				
			if(($one =~ m@("(\.)*.*?(\.)*(?<!\\)")|("(\.)*.*?(\.)*(?<=\\\\)")@g))
			{
				$input =~ s@((\<)((?!<).|\n)*?(\>))@@g;
				#print "=>" . $input . "<="; 
				$result .= $one;
			}
			else{
				#$input =~ s@((\<)((?!<).|\n)*?(\>))@@g;
				$result .= $one;
			}
		}
	}
	#else{
	#	$one =~ s@((\<)((?!<).|\n)*?(\>))@@g;
	#	#print "=> " . $input . " <="; 
	#	$result .= $1;	
	#}
}

$result .= "\nend";
#print $result;