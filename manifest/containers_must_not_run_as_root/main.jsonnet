// A lint file of lintnet.
// https://lintnet.github.io/
function(param) [
  {
    name: 'Containers must not run as root',
    location: {
      kind: std.get(doc, 'kind', ''),
      name: std.get(std.get(doc, 'metadata', {}), 'name', ''),
    },
  }
  for doc in param.data.value
  if std.get(doc, 'kind', '') == 'Deployment' &&
  // .spec.template.spec.securityContext.runAsNonRoot
  !std.get(std.get(std.get(std.get(std.get(doc, 'spec', {}), 'template', {}), 'spec', {}), 'securityContext', {}), 'runAsNonRoot', false)
]
