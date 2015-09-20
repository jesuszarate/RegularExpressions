while(<STDIN>)
{
	$input .= $_;
}

$input =~ s!//.*!!g;
print $input;