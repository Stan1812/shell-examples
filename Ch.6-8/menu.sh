#!/bin/nash
cat <<END
  1.faker
  2.uzi
  3.shy
END

read -p "choose your fav palyer and input the ID" a

[ "$a" = "1" ] &&{
    echo "yes Faker is god"
}
[ "$a" = "2" ] &&{
    echo "best ADC in 2018"
}
[ "$a" = "3" ] &&{
    echo "god"
}
[[ ! "$a" =~ [1-3] ]] &&{
    echo "xxx"
}