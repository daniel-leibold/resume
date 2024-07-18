# define themes kendall, elegant, stackoverflow
THEMES=(elegant kendall stackoverflow)
# iterate over all themes
for i in "${THEMES[@]}"
do
  resume export resume_$i.pdf --format pdf --theme $i
  echo "created resume at resume_$i.pdf"
done
cp -v *.pdf /mnt/c/temp/