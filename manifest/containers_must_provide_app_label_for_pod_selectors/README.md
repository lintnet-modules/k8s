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
        'github_archive/github.com/lintnet-modules/k8s/manifest/containers_must_provide_app_label_for_pod_selectors/main.jsonnet@9641bc355c86b7623f97ac91dfbd99a683439dad:v0.1.0',
      ],
    },
  ],
}
```

## Config

No config.
