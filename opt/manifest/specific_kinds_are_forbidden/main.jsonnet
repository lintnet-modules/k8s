// A lint file of lintnet.
// https://lintnet.github.io/

local validateJSONSchema = std.native('jsonschema.Validate');
local schema = import 'main_config_schema.json';

function(param)
  local vr = validateJSONSchema(schema, param.config);
  if vr != null then [
    {
      name: 'This kind is forbidden',
      message: 'config is invalid',
      custom: {
        errors: vr,
      },
    },
  ] else [
    {
      name: 'This kind is forbidden',
      location: {
        kind: std.get(doc, 'kind', ''),
        name: std.get(std.get(doc, 'metadata', {}), 'name', ''),
      },
    }
    for doc in param.data.value
    if std.contains(param.config.kinds, std.get(doc, 'kind', '')) &&
    !std.contains(std.get(param.config, 'excludes', []), std.get(doc, 'kind', '') + '/' + std.get(std.get(doc, 'metadata', {}), 'name', ''))
  ]
