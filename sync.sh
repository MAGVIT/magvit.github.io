cp -r _* img ../magvit-ann.github.io/
cd ../magvit-ann.github.io
find . -type f | grep html | xargs -I {} sed -i '' -e '1h;2,$H;$!d;g' -e 's/<!--strip anonymous begin-->.*<!--strip anonymous end-->//g' {}
find . -type f | grep yml | xargs -I {} sed -i '' -e '1h;2,$H;$!d;g' -e 's/<!--strip anonymous begin-->.*<!--strip anonymous end-->//g' {}
git add .
git commit -m "Synced changes"
git push
