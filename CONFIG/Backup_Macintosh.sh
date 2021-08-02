#Global Variable FIX: Differrent Date Before & After 24:00:00
DATE=$(date +"%Y%m%d")




rm -f ./_vscode.zip

cd ~/
zip ./_vscode.zip -r ./.vscode/
cd -
mv ~/_vscode.zip ./

rm -f ./_vscode_$DATE.zip
cp ./_vscode.zip ./_vscode_$DATE.zip




#UseLess
rm -rf ~/Library/Application\ Support/Code/Cache/
rm -rf ~/Library/Application\ Support/Code/CachedData/
rm -rf ~/Library/Application\ Support/Code/GPUCache/
rm -rf ~/Library/Application\ Support/Code/*_GPUCache_*/

rm -rf ~/Library/Application\ Support/Code/User/workspaceStorage/
rm -rf ~/Library/Application\ Support/Code/logs/




rm -f ./Code.zip

cd ~/Library/Application\ Support/
zip ./Code.zip -r ./Code/
cd -
mv ~/Library/Application\ Support/Code.zip ./

rm -f ./Code_$DATE.zip
cp ./Code.zip ./Code_$DATE.zip




sync
echo SYNC



