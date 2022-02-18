all: ipfs ipfs-cluster
ipfs:
	ansible-playbook -i inventory.yml ipfs.yml  --skip-tags "update-ipfs-config"
ipfs-cluster:
	ansible-playbook -i inventory.yml ipfs-cluster.yml --skip-tags "update-ipfs-cluster-config"
.PHONY = all ipfs ipfs-cluster

update-ipfs-configs:
	ansible-playbook -i inventory.yml ipfs.yml --tags "update-ipfs-config"

update-ipfs-cluster-configs:
	ansible-playbook -i inventory.yml ipfs-cluster.yml --tags "update-cluster-config"
