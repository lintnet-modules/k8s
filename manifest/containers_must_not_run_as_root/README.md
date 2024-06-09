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
        'github_archive/github.com/lintnet-modules/k8s/manifest/containers_must_not_run_as_root/main.jsonnet@b0e00a40cb10d68f1d3e3a543a400fe589d293a2:v0.1.0',
      ],
    },
  ],
}
```

## Config

No config.
