while(<STDIN>)
{
	$input .= $_;
}

$HTML = "((\<)((?!\")(?!<).|\n)*?(\>))";
$input =~ s@$HTML@@g; 
print $input;

$input =~ s@((\<)(((?!<).|\n)*?)\"(((?!<).|\n)*?)\"(((?!<).|\n)*?)(\>))@@g;
print "\n\n\n\n\n" . $input;

#$result += $input;
#print $result;