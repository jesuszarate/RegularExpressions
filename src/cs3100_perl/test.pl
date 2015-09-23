while(<STDIN>)
{
	$input .= $_;
}
$HTML = "((\<)((?!\")(?!<).|\n)*?(\>))";
$htmls = "((\<)((?!<).|\n)*?(\>))";
#$quoted = "(\"(\.)*.*?(\.)*(?<!\\)\")|(\"(\.)*.*?(\.)*(?<=\\\\)\"))";

#$quoteHtml = "(<((.|\n)*?(" . $quoted . ").*?)>)";


$input =~ s@$HTML@@g; 

#$input =~ s@((\<)((?!")(?!<).|\n)*?(\>))@@gi; #Matches the case where no unquoted < characters should appear inside a tag
										 # but fails when there is two nested like: < hello <world>>
										 
while($input =~ m@$htmls@g)
#if($input =~ m@$quoted@g)
{
	#print $1;	
}


#$input =~ s@$quoteHtml@@g;
#$input =~ s@(<((.|\n)*?(".*").*?)>)@@g; # quotehtml before quoted

print $input;