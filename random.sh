#we need to create 10 files named "random_text_{1..10}.txt each one containing 1000 random characters"

#creatig 10 files in fuser home directory
cd /home/fuser
touch random_text_{1..10}.txt

#filling files with 1000 random characters
for i in random_text_{1..10}.txt
do
  shuf -zer -n1000  {A..Z} {a..z} {0..9} | tr -d '\0' >> $i
done