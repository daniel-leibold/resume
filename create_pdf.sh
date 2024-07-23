# define themes kendall, elegant, stackoverflow
THEMES=(elegant kendall stackoverflow onepage-plus)
echo "Starting to create resume pdf files..."
# iterate over all themes
for i in "${THEMES[@]}"
do
  echo -n "File resume_dleibold_$i.pdf..."
  resume export resume_dleibold_$i.pdf --format pdf --theme $i
  echo "created!"
done
cp -v *.pdf /mnt/c/temp/