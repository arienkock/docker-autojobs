# Jenkins-autojobs Docker Image

Installs the awesome [jenkins-autojobs](https://github.com/gvalkov/jenkins-autojobs).

The `entrypoint.sh` script runs the appropriate makejobs script for each yaml config in `/var/jenkins-autojobs/*-config.yaml`, where `*` = `svn`, `git`, or `hg`.

After completion it runs any command passed as arguments at the end of the `docker run` command.
