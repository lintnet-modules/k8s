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
          path: 'github_archive/github.com/lintnet-modules/k8s/opt/manifest/specific_kinds_are_forbidden/main.jsonnet@9641bc355c86b7623f97ac91dfbd99a683439dad:v0.1.0',
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
