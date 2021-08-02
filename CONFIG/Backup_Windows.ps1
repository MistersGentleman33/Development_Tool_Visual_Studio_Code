#Global Variable FIX: Differrent Date Before & After 24:00:00
$DATE=(Get-Date).ToString("yyyyMMdd")




rm ./_vscode.zip
Compress-Archive -Path ~/.vscode/ -DestinationPath ./_vscode.zip


rm ./_vscode_$DATE.zip
cp ./_vscode.zip ./_vscode_$DATE.zip




#UseLess
Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/Cache/
Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/CachedData/
Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/GPUCache/
Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/*_GPUCache_*/

Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/User/workspaceStorage/
Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/logs/




rm ./Code.zip
Compress-Archive -Path ~/AppData/Roaming/Code/ -DestinationPath ./Code.zip

rm ./Code_$DATE.zip
cp ./Code.zip ./Code_$DATE.zip



