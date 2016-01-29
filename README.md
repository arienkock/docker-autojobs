# Jenkins-autojobs Docker Image

A docker image that runs the awesome [jenkins-autojobs](https://github.com/gvalkov/jenkins-autojobs).

The `entrypoint.sh` script runs the appropriate makejobs script for each yaml config in the volume `/var/jenkins-autojobs/*-config.yaml`, where `*` = `svn`, `git`, or `hg`.

After completion it runs any command passed as arguments at the end of the `docker run` command.

E.g.:

```
# assuming a jenkins container is running with the name jenkins...
docker run --rm --link jenkins -v /tmp/autojobs:/var/jenkins-autojobs arienkock/docker-autojobs echo "Finished!"
```



This command will run autojobs, link the jenkins container (so you can access it using http://jenkins:8080 in your `*-config.yaml`), and mount the host dir `/tmp/autojobs` which contains the yaml config files.
