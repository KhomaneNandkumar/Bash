function add () {
	echo "the sum of $1 and $2 is : $(( $1+$2))"
}

function sub () {
        echo "the substraction  of $1 and $2 is : $(( $1-$2))"
}

function mul () {
        echo "the multiplication of $1 and $2 is : $(( $1*$2))"
}

function div () {
        echo "the division of $1 and $2 is : $(( $1/$2))"
}

add 33 48
sub 876 530
mul 8 5
div 90 9
