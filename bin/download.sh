counter=1000
for img in `grep -o 'https://img.alicdn.com/imgextra/i[0-9]*/[0-9]*/[!_a-zA-Z0-9\-]*\.jpg' source.html`
do
    counter=`expr $counter + 1`
    wget $img -O $counter.jpg
done
