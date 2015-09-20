while(<STDIN>){	
	$input .= $_; 	
}

while($input =~ m!\s\(\d\d\d\)\s?\d\d\d\-\d\d\d\d\b!g)
{
	$count++;
}
print $count;