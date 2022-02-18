all: ipfs ipfs-cluster
ipfs:
	ansible-playbook -i inventory.yml ipfs.yml  --skip-tags "update-config"
ipfs-cluster:
	ansible-playbook -i inventory.yml ipfs-cluster.yml
.PHONY = all ipfs ipfs-cluster

update-ipfs-configs:
	ansible-playbook -i inventory.yml ipfs.yml --tags "update-config"

