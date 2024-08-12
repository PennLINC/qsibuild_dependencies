# QSIBuild Dependencies

This repo builds docker images of software that will be copied
into QSIPrep and QSIRecon.

## How does it work?

The CI jobs are only run if a tag is pushed. The individual software
packages all have their own version tags in `setup_build.sh`. If
I wanted to build AFNI, I could set in `setup_build.sh`

```
TAG_AFNI=1.2.3
```

Then I'd edit `Dockerfile_AFNI` in `qsibuild_dependencies` until it builds
the version I want. Then I commit and tag `qsibuild_dependencies` to `1.2.3`
and CircleCI detects that this tag needs the AFNI build to run. It runs it
and pushes the resulting container to `docker://pennbbl/qsiprep-afni:1.2.3`.

You can use the new afni version in `qsiprep_build` or `qsirecon_build` by
editing the `setup_build.sh` script in either of those repos.