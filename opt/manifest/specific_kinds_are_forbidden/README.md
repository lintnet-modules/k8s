# specific_kinds_are_forbidden

Specific kinds are forbidden.

## Why?

You can forbid specific kind of resources.
For example, if you enforce to use [Argo Rollouts](https://argoproj.github.io/rollouts/) and want to forbid Deployment, you can use this module.

## Usage

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*.yaml',
      ],
      modules: [
        {
          path: 'github_archive/github.com/lintnet-modules/k8s/opt/manifest/specific_kinds_are_forbidden/main.jsonnet@faf9f14c4cd522eb0d3b7e9539a6fe8c16ba5c4b:v0.1.0',
          config: {
            kinds: ['Deployment'],
            excludes: ['Deployment/nginx-deployment'], // <kind>/<name>
          },
        },
      ],
    },
  ],
}
```

## Config

- `kinds` (Required): A list of forbidden kinds
- `excludes`: A list of excluded resources
