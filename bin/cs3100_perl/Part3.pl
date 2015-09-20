while(<STDIN>){	
	$input .= $_; 	
}

while($input =~ m!\s\(\d\d\d\)\s?\d\d\d\-\d\d\d\d!g)
{
		$count++;
}
print $count;