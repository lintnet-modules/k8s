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
        name: 'Recommended labels must be set',
        location: {
          kind: 'StatefulSet',
          name: '',
          recommended_label: 'app.kubernetes.io/part-of',
        },
      },
    ],
  },
]
