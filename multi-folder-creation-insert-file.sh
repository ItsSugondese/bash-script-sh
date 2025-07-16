for i in $(seq 13 24); do
  dir="chapter-$i"
  mkdir -p "$dir"
  for type in adjective verb noun phrase; do
    touch "$dir/chapter-$i-$type.txt"
  done
done
