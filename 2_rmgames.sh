
grep -r "game " ../5 > list
grep -r "Game " ../5 >> list

cat list | awk -F':' '{print $1}' > trimlist

while read -r; do
  echo "rm ${REPLY%.*}.*" >> rmlist
done < trimlist

cat rmlist | sort -u > cleanlist

sh cleanlist

rm list
rm rmlist
rm trimlist
rm cleanlist
