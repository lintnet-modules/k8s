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
        'github_archive/github.com/lintnet-modules/k8s/manifest/containers_must_not_run_as_root/main.jsonnet@9641bc355c86b7623f97ac91dfbd99a683439dad:v0.1.0',
      ],
    },
  ],
}
```

## Config

No config.
