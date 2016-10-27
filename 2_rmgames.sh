
grep -r "game " $1 > list
grep -r "Game " $1 >> list


while read -r; do
  echo "rm ${REPLY%%:*}" >> rmlist
done < list

cat rmlist | sort -u > cleanlist

sh cleanlist

rm list
rm rmlist
rm cleanlist