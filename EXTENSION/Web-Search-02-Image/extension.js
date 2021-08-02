const vscode = require("vscode");




function activate(context) {
  context.subscriptions.push(vscode.commands.registerTextEditorCommand(
    "extension.WebSearchImage", () => {
      Search("Search")
    }
  ));
}




function Search(type) {
  var sel = Selected();
  if (!sel) {
    return;
  }
  let URL = encodeURI(sel);

  let Config;
  if (type == "Search") {
    Config = vscode.workspace.getConfiguration("WebSearchImage");
  }

  URL = Config.get("QueryTemplate").replace("%STRING%", URL);
  vscode.commands.executeCommand("vscode.open", vscode.Uri.parse(URL));
}

function Selected() {
  const documentText = vscode.window.activeTextEditor.document.getText();
  if (!documentText) {
    return "";
  }
  let activeSelection = vscode.window.activeTextEditor.selection;
  if (activeSelection.isEmpty) {
    return "";
  }
  const selStartoffset = vscode.window.activeTextEditor.document.offsetAt(
    activeSelection.start
  );
  const selEndOffset = vscode.window.activeTextEditor.document.offsetAt(
    activeSelection.end
  );

  let sel = documentText.slice(selStartoffset, selEndOffset).trim().replace(/\s\s+/g, " ");
  return sel;
}




function deactivate() {}




exports.activate = activate;
exports.deactivate = deactivate;