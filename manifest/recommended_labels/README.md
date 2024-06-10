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
          path: 'github_archive/github.com/lintnet-modules/k8s/manifest/recommended_labels/main.jsonnet@9641bc355c86b7623f97ac91dfbd99a683439dad:v0.1.0',
        },
      ],
    },
  ],
}
```

## Config

Nothing.
