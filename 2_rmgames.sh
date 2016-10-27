
grep -r "game " ../5 > list
grep -r "Game " ../5 >> list

while read -r; do
  echo "rm ${REPLY%%:*}" >> rmlist
done < list

cat rmlist | sort -u > cleanlist

sh cleanlist

rm list
rm rmlist
rm cleanlist