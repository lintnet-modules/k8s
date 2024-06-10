// A lint file of lintnet.
// https://lintnet.github.io/
local recommendedLabels = [
  'app.kubernetes.io/name',
  'app.kubernetes.io/instance',
  'app.kubernetes.io/version',
  'app.kubernetes.io/component',
  'app.kubernetes.io/part-of',
  'app.kubernetes.io/managed-by',
];
function(param) [
  {
    name: 'Recommended labels must be set',
    location: {
      kind: std.get(doc, 'kind', ''),
      name: std.get(std.get(doc, 'metadata', {}), 'name', ''),
      recommended_label: label,
    },
  }
  // .metadata.labels.[<label name>]
  for doc in param.data.value
  for label in recommendedLabels
  if !std.objectHas(std.get(std.get(doc, 'metadata', {}), 'labels', {}), label)
]
