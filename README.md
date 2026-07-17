# simple 1-node slurm setup

- Create a Rocky 9 VM 
- Go there and become root
- Install git & ansible 

```
# dnf install -y git ansible
```

- Check out this repo
- Change slurmpass var in slurm/slurm.yml (`openssl rand -hex 12` to gen something)
- Run 

```
# ansible-playbook slurm/slurm.yml
```

- Test by running

```
# cd 
# sbatch example-job
```

- Sometimes the node state gets wonky

```
# cd 
# ./fix-slurm-status
```

- Install docker

```
# ansible-playbook docker/docker.yml
# docker ps 
```

- Add users that need docker access to the docker group

```
# usermod -aG docker exampleuser
```
