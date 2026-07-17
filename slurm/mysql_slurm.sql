create database slurm_acct_db;
grant all on slurm_acct_db.* TO 'slurm'@'localhost' identified by '{{ slurmpass }}' with grant option;
