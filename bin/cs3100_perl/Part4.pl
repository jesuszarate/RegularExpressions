while(<STDIN>){	
	$input .= $_; 	
}

$output = "";
#while($input =~ m!((").+? (?<!\\)")!g) 
while($input =~ m@(".*?(?<!\\)")@g) #(\.)*
#while($input =~ m@("(\.)*.*?(\.)*(?<!\\)")@g)
{
	$output .= $1 . "\n";
}

$output .= "end";
print $output;

