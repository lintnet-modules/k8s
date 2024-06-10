// A test file of lintnet.
// https://lintnet.github.io/
function(param) [
  {
    name: 'pass',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        kinds: ['Service'],
      },
    },
    result: [],
  },
  {
    name: 'invalid config',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        kind: ['Service'],
      },
    },
    result: [
      {
        name: 'This kind is forbidden',
        message: 'config is invalid',
        custom: {
          errors: {
            errors: [
              {
                'error': "missing property 'kinds'",
                instanceLocation: '',
                keywordLocation: '/required',
                valid: false,
              },
              {
                'error': "additional properties 'kind' not allowed",
                instanceLocation: '',
                keywordLocation: '/additionalProperties',
                valid: false,
              },
            ],
            instanceLocation: '',
            keywordLocation: '',
            valid: false,
          },
        },
      },
    ],
  },
  {
    name: 'fail',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        kinds: ['Deployment'],
      },
    },
    result: [
      {
        name: 'This kind is forbidden',
        location: {
          kind: 'Deployment',
          name: 'nginx-deployment',
        },
      },
    ],
  },
  {
    name: 'exclude',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        kinds: ['Deployment'],
        excludes: ['Deployment/nginx-deployment'],
      },
    },
    result: [],
  },
  {
    name: 'not exclude',
    data_file: 'testdata/pass.yaml',
    param: {
      config: {
        kinds: ['Deployment'],
        excludes: ['Deployment/nginx'],
      },
    },
    result: [
      {
        name: 'This kind is forbidden',
        location: {
          kind: 'Deployment',
          name: 'nginx-deployment',
        },
      },
    ],
  },
]
