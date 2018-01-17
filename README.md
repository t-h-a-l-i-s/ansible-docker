Use this image to execute [Ansible](http://docs.ansible.com) playbooks especially on Windows hosts.

# Usage
```
$ docker run --rm -v %cd%:/pwd -w /pwd \
   thalis/ansible:debian-slim-stable <host-pattern> [options]
```
