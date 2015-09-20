# The loop condition stores one line at a time into $_
while (<STDIN>)
{   	 
	$input .= $_;
}
	
$input =~ s/(\b)\d\d\d(-)\d\d(\-)\d\d\d\d(\b)/###-##-####/g; 
print $input;