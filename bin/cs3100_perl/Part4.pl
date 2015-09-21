while(<STDIN>){	
	$input .= $_; 	
}

while($input =~ m@("(\.)*.*?(\.)*(?<!\\)")|("(\.)*.*?(\.)*(?<=\\\\)")@g)
{		
	if(defined $1)
	{
		$output .= $1 . "\n";
	}
	else{
		$output .= $4 . "\n";
	}
}

print $output;

