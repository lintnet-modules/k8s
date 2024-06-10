// A lint file of lintnet.
// https://lintnet.github.io/
function(param) [
  {
    name: 'Containers must provide app label for pod selectors',
    location: {
      kind: std.get(doc, 'kind', ''),
      name: std.get(std.get(doc, 'metadata', {}), 'name', ''),
    },
  }
  for doc in param.data.value
  if std.get(doc, 'kind', '') == 'Deployment' &&
  // .spec.selector.matchLabels.app
  !std.objectHas(std.get(std.get(std.get(doc, 'spec', {}), 'selector', {}), 'matchLabels', {}), 'app')
]
