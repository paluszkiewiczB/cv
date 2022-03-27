module.exports = {
  document: (node) => `<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>${node.getDocumentTitle()}</title>
  <link href="https://fonts.googleapis.com/css?family=Inter:400,450,600,700" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div id="content">
    ${node.getContent()}
  </div>
</body>`
}
