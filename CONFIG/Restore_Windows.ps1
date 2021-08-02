if (Test-Path ./_vscode.zip) {
    Remove-Item -Force -Recurse -Path ~/.vscode/
    Expand-Archive -Path ./_vscode.zip -DestinationPath ~/ -Force
}


if (Test-Path ./Code.zip) {
    Remove-Item -Force -Recurse -Path ~/AppData/Roaming/Code/
    Expand-Archive -Path ./Code.zip -DestinationPath ~/AppData/Roaming/ -Force
}


