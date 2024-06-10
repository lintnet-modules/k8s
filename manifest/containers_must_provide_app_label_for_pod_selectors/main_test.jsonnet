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
        name: 'Containers must provide app label for pod selectors',
        location: {
          kind: 'Deployment',
          name: 'nginx-deployment',
        },
      },
    ],
  },
]
