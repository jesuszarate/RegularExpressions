while(<STDIN>)
{
	$input .= $_;
}

#$input =~ s@\<(.|\n)*?\>@@gi; 
$input =~ s@((\<)((?!<).|\n)*?(\>))@@gi; #Matches the case where no unquoted < characters should appear inside a tag
										 # but fails when there is two nested like: < hello <world>>

print $input;