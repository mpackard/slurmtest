# simple 1-node slurm setup

- Create a Rocky 9 VM 
- Go there and become root
- Change slurmpass in slurm/slurm.yml (`openssl rand -hex 12` to gen something)
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
