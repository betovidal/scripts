fullfile=$1
filename=$(basename -- "$fullfile")
# echo "Filename = $filename"
extension="${filename##*.}"
filename="${filename%.*}"

# echo "Extension = $extension"

xclip -selection clipboard -t image/$extension -i $fullfile
