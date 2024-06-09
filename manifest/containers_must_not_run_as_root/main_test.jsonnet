// A test file of lintnet.
// https://lintnet.github.io/
function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    result: [],
  },
  {
    name: 'fail',
    data_file: 'testdata/fail.yaml',
    result: [
      {
        name: 'Containers must not run as root',
        location: {
          kind: 'Deployment',
          name: 'nginx-deployment',
        },
      },
    ],
  },
  {
    name: 'runAsNonRoot is false',
    data_file: 'testdata/run-as-root.yaml',
    result: [
      {
        name: 'Containers must not run as root',
        location: {
          kind: 'Deployment',
          name: 'nginx-deployment',
        },
      },
    ],
  },
]
