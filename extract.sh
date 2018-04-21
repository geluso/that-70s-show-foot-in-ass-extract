for file in `ls html`
do
  filename=`basename "$file" | sed s/.html//`
  echo $filename
  cat "html/$file" | pup '.scrolling-script-container' > "just_script/$filename"
done
