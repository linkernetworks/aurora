# Summary
This repo contains the released binaries of Job submit tool - aiforge.

# Download and install

For Linux, macOS

```
wget https://raw.githubusercontent.com/linkernetworks/aiforge/master/install.sh -O - | bash
```

or

```
curl https://raw.githubusercontent.com/linkernetworks/aiforge/master/install.sh | bash
```

# Usage
## Display commands and help
**$ aiforge --help**
```
Usage:
  aiforge [command]

Available Commands:
  help        Help about any command
  submit      Submit py/ipynb file to job server
  version     Show the version information

Flags:
  -h, --help            help for aiforge
  -s, --server string   Address of JobServer (default "jobserver.default:50051")

Use "aiforge [command] --help" for more information about a command.
```

## Display help of a command
**$ aiforge submit --help**
```
Submit py/ipynb file to job server

Usage:
  aiforge submit [flags]

Flags:
  -e, --environment string   Environment (tf13, tf14, tf15, tf16, caffe, pytorch, mxnet)
  -f, --file string          Path of py/ipynb file
  -h, --help                 help for submit
  -p, --priority float       Optional value of the Job priority (1000~3000) (default 3000)
  -r, --remark string        Optional string of Job description (default "created by submit tool")

Global Flags:
  -s, --server string   Address of JobServer (default "jobserver.default:50051")
```

## Submit Job
**$ aiforge submit -f notebooks/example-tensorflow.ipynb -e tf13**
```
Submitting 'notebooks/example-tensorflow14.ipynb' to 'jobserver.default:50051'...
Job created: https://some.aurora-hostname.com/#/jobs/view/5ad6e551e60eb60001cc3556
```

Currently, the submit command only support py/ipynb files under `/workspace/notebooks/`,
and the `aiforge submit` command must be executed in `/workspace`.

Choose the environment by `-e` argument, it can be one of `tf13`, `tf14`,
`tf15`, `tf16`, `caffe`, `pytorch`, `mxnet`.

## Show build reversions
**$ aiforge version**
```
Release Version: develop
Build Number:
Build Date: 2018-04-18 11:28:56
Build Revision: 112e45f9
Build Revision Describe: heads/develop-0-g112e45f9
Portal Submodule Revision: +1912725b3522b1449adc272241456dfb5ee85f48
```
