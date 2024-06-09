# containers_must_not_run_as_root

Containers must not be run as root.

👎

[testdata/fail.yaml](testdata/fail.yaml)

👍

[testdata/pass.yaml](testdata/pass.yaml)

## Why?

In terms of security, containers should be run as non root user.

https://kubernetes.io/docs/concepts/security/pod-security-standards/

## Usage

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*.yaml',
      ],
      modules: [
        'github_archive/github.com/lintnet-modules/k8s/manifest/containers_must_not_run_as_root/main.jsonnet@faf9f14c4cd522eb0d3b7e9539a6fe8c16ba5c4b:v0.1.0',
      ],
    },
  ],
}
```

## Config

No config.
