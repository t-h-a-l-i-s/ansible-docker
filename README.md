Use this image to execute [Ansible](http://docs.ansible.com) playbooks especially on Windows hosts.

# Usage
```
$ docker run --rm -v %cd%:/pwd -w /pwd \
   thalis/ansible:2.4 <host-pattern> [options]
```

For example to see the version of the packed `ansible-playbook` execute

```
$ docker run --rm thalis/ansible:2.4 --version
```

If you want to execute the `ansible` command change the entrypoint by using the command

```
$ docker run --entrypoint "ansible" --rm thalis/ansible:2.4 --version
```
