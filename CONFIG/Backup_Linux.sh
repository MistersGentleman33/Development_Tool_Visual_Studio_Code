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
rm -rf ~/.config/Code/Cache/
rm -rf ~/.config/Code/CachedData/
rm -rf ~/.config/Code/GPUCache/
rm -rf ~/.config/Code/*_GPUCache_*/

rm -rf ~/.config/Code/User/workspaceStorage/
rm -rf ~/.config/Code/logs/




rm -f ./Code.zip

cd ~/.config/
zip ./Code.zip -r ./Code/
cd -
mv ~/.config/Code.zip ./

rm -f ./Code_$DATE.zip
cp ./Code.zip ./Code_$DATE.zip




sync
echo SYNC



