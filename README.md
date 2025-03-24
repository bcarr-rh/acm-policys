# acm-policys

## Cluster Labels
#### values can be set on a per clusterset level to decide what features of autoshift will be applied to each cluster
##

### infra-nodes
infra-nodes<int>: Number of infra nodes min if autoscale. If not set infra nodes are not managed, if blank infra nodes will be deleted

infra-nodes-numcpu<int>: Number of cpu per infra node

infra-nodes-memory-mib<int>: Memory mib per infra node

infra-nodes-numcores-per-socket<int>: Number of CPU Cores per socket

infra-nodes-zones<list<String>>: list of availability zones

### worker-nodes
worker-nodes<int>: Number of worker nodes min if autoscale. If not set worker nodes are not managed, if blank worker nodes will be deleted

worker-nodes-numcpu<int>: Number of cpu per worker node

worker-nodes-memory-mib<int>: Memory mib per worker node

worker-nodes-numcores-per-socket<int>: Number of CPU Cores per socket

worker-nodes-zones<list<String>>: list of availability zones

### storage-nodes
storage-nodes<int>: Number of storage nodes min if autoscale. If not set storage nodes are not managed, if blank storage nodes will be deleted. Local Storage Operator will be installed if Storage Nodes are enabled

storage-nodes-numcpu<int>: Number of cpu per storage node

storage-nodes-memory-mib<int>: Memory mib per storage node

storage-nodes-numcores-per-socket<int>: Number of CPU Cores per socket

storage-nodes-zones<list<String>>: list of availability zones

### Advanced Cluster Security
acs<bool>: If not set Advanced Cluster Security will not be managed

acs-channel<String>: default stable

acs-install-plan-approval<String>: default Automatic

acs-source<String>: default redhat-operators

acs-source-namespace<String>: default openshift-marketplace

### Developer Spaces
dev-spaces<bool>: If not set Developer Spaces will not be managed

dev-spaces-channel<String>: default stable

dev-spaces-install-plan-approval<String>: default Automatic

dev-spaces-source<String>: default redhat-operators

dev-spaces-source-namespace<String>: default openshift-marketplace

### Developer OpenShift Gitops
gitops-dev<bool>: If not set Developer OpenShift Gitops intances will not be managed

gitops-dev-teams<list<String>>: List of teams that will need their own OpenShift Gitops in the Hub cluster

### Loki
loki<bool>: If not set Loki will not be managed. Dependent on ODF Multi Object Gateway

loki-channel<String>: default stable-6.1

loki-install-plan-approval<String>: default Automatic

loki-source<String>: default redhat-operators

loki-source-namespace<String>: default openshift-marketplace

loki-size<String>: default 1x.extra-small

loki-storageclass<String>: default gp3-csi

loki-lokistack-name<String>: default logging-lokistack

### OpenShift Logging
logging<bool>: If not set OpenShift Logging will not be managed, Dependent on Loki and COO

logging-channel<String>: default stable-6.1

logging-install-plan-approval<String>: default Automatic

logging-source<String>: default redhat-operators

logging-source-namespace<String>: default openshift-marketplace

### Cluster Observability Operator
coo<bool>: If not set Cluster Observability Operator will not be managed

coo-channel<String>: default stable

coo-install-plan-approval<String>: default Automatic

coo-source<String>: default redhat-operators

coo-source-namespace<String>: default openshift-marketplace

### Compliance Operator Stig Apply
compliance<bool>: If not set Compliance Operator will not be managed. Helm chart config map must be set with profiles and remediations

compliance-name<String>: default compliance-operator

compliance-install-plan-approval<String>: default Automatic

compliance-source<String>: default redhat-operators

compliance-source-namespace<String>: default openshift-marketplace

compliance-channel<String>: default stable

### Local Storage Operator

local-storage<bool>: if not set to true, local storage will not be managed or deployed.

local-storage-channel<String>: 

local-storage-source<String>: 

local-storage-source-namespace<String>: 

local-storage-install-plan-approval<String>: 

### OpenShift Data Foundation
odf<bool>: If not set OpenShift Data Foundation will not be managed. if Storage Nodes are enable will deploy ODF on local storage/ storage nodes

odf-multi-cloud-gateway<String>: values standalone or standard. Install ODF with only nooba object gateway or full odf

odf-nooba-pvpool<bool>: if not set nooba will be deployed with default settings. Recomended don't set for cloud providers. Use pv pool for storage

odf-nooba-store-size<String>: example 500Gi. if pvpool set. Size of nooba backing store

odf-nooba-store-num-volumes<String>: example 1. if pvpool set. number of volumes

odf-ocs-storage-class-name<String>: if not using local-storage, storage class to use for ocs

odf-ocs-storage-size<String>: storage size per nvme

odf-ocs-storage-count<String>: number of replica sets of nvme drives, note total amount will count * replicas

odf-ocs-storage-replicas<String>: replicas, 3 is recommended

odf-resource-profile<String>: default balanced. lean: suitable for clusters with limited resources, balanced: suitable for most use cases, performance: suitable for clusters with high amount of resources.

odf-channel<String>: default stable-4.17

odf-install-plan-approval<String>: default Automatic

odf-source<String>: default redhat-operators

odf-source-namespace<String>: default openshift-marketplace