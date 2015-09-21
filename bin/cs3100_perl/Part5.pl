while(<STDIN>)
{
	$input .= $_;
}

#while($input =~ s@\<(.|\n)+\>@@g)
#{
#	print "true\n";
#}

$input =~ s@\<(.|\n)*?\>@@gi;

print $input;