# k8s

A lintnet module for kubernetes

## Rules

- [manifest/containers_must_not_run_as_root](manifest/containers_must_not_run_as_root): Containers must not be run as root
- [manifest/containers_must_provide_app_label_for_pod_selectors](manifest/containers_must_provide_app_label_for_pod_selectors): Containers must provide app label for pod selectors
- [manifest/recommended_labels](manifest/recommended_labels): Recommend labels must be set
- [opt/manifest/specific_kinds_are_forbidden](opt/manifest/specific_kinds_are_forbidden): Specific kinds are forbidden

## LICENSE

[MIT](LICENSE)
