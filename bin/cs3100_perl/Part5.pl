while(<STDIN>)
{
	$input .= $_;
}

#$input =~ s@\<(.|\n)*?\>@@gi; 
#$input =~ s@((\<)((?!<).|\n)*?(\>))@@gi; #Matches the case where no unquoted < characters should appear inside a tag
										 # but fails when there is two nested like: < hello <world>>
$result = "";
while($input =~ m@((\<)((?!<).|\n)*?(\>))@g)
{
	if($input =~ m@("(\.)*.*?(\.)*(?<!\\)")|("(\.)*.*?(\.)*(?<=\\\\)")@g)
	{
		$input =~ s@((\<)((?!<).|\n)*?(\>))@@g;
		$result .= $1;
	}
}
$result += "\nend";
print $result;