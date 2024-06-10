# recommended_labels

Check if recommended labels are set.

https://kubernetes.io/docs/concepts/overview/working-with-objects/common-labels/

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
          path: 'github_archive/github.com/lintnet-modules/k8s/manifest/recommended_labels/main.jsonnet@faf9f14c4cd522eb0d3b7e9539a6fe8c16ba5c4b:v0.1.0',
        },
      ],
    },
  ],
}
```

## Config

Nothing.
