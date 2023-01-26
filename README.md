# solar-ansible

## dev setup
```bash
docker run --rm -v "/var/run/docker.sock:/var/run/docker.sock" --name "solar-infra-runner" ghcr.io/mospolytech-solar-regatta/solar-ansible/solar-infra-runner:latest
```

## production setup

* install ansible

```bash
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```
* install galaxy dependencies

```bash
$ ansible-galaxy collection install -r requirements.yaml
```

* run command with environment variables for sudo password and postgres db, user and user password

example:
```bash
$ ansible-playbook deploy-boat.yaml --extra-vars "ansible_sudo_pass=<sudo_password> db_user=<postgres_user> db_name=<postgres_db> db_password=<postgres_password>"
```
