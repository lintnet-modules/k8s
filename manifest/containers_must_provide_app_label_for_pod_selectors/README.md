# containers_must_provide_app_label_for_pod_selectors

Containers must provide app label for Pod selectors.

👎

[testdata/fail.yaml](testdata/fail.yaml)

👍

[testdata/pass.yaml](testdata/pass.yaml)

## Usage

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/k8s/manifest/containers_must_provide_app_label_for_pod_selectors/main.jsonnet@faf9f14c4cd522eb0d3b7e9539a6fe8c16ba5c4b:v0.1.0',
      ],
    },
  ],
}
```

## Config

No config.
