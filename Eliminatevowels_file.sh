echo "Program for deleting the vowels in a file"
echo "File before deleting the vowels"
cat string.txt
echo ""
echo "File after deleting the vowels"
echo ""
sed '/^[aeiouAEIOU]/d' string.txt

