Use this image to execute [Ansible](http://docs.ansible.com) playbooks especially on Windows hosts.

# Usage
```
$ docker run --rm -v %cd%:/pwd -w /pwd \
   thalis/ansible:debian-slim-stable <host-pattern> [options]
```

For example to see the version of the packed ansible execute

```
$ docker run --rm thalis/ansible:2.4 --version
```

If you want to execute `ansible-playbook` change the entrypoint by using the command

```
$ docker run --entrypoint "ansible-playbook" --rm thalis/ansible:2.4 --version
```
