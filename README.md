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

acs-name-sub<String>: default rhacs-operator

acs-source<String>: default redhat-operators

acs-sourceNamespace<String>: default openshift-marketplace

acs-namespace<String>: default stackrox

### Developer Spaces
dev-spaces<bool>: If not set Developer Spaces will not be managed

dev-spaces-channel<String>: default stable

dev-spaces-install-plan-approval<String>: default Automatic

dev-spaces-name-sub<String>: default rhacs-operator

dev-spaces-source<String>: default redhat-operators

dev-spaces-sourceNamespace<String>: default openshift-marketplace

dev-spaces-namespace<String>: default stackrox

### Developer OpenShift Gitops
gitops-dev<bool>: If not set Developer OpenShift Gitops intances will not be managed

gitops-dev-teams<list<String>>: List of teams that will need their own OpenShift Gitops in the Hub cluster

### Loki
loki<bool>: If not set Loki will not be managed. Dependent on ODF Multi Object Gateway

loki-name-sub<String>: default loki-operator

loki-namespace<String>: default openshift-operators-redhat

loki-channel<String>: default stable-6.1

loki-install-plan-approval<String>: default Automatic

loki-source<String>: default redhat-operators

loki-sourcenamespace<String>: default openshift-marketplace

loki-size<String>: default 1x.extra-small

loki-storageclass<String>: default gp3-csi

loki-lokistack-name<String>: default logging-lokistack

### OpenShift Logging
logging<bool>: If not set OpenShift Logging will not be managed, Dependent on Loki and COO

logging-name-sub<String>: default cluster-logging

logging-namespace<String>: default openshift-logging

logging-channel<String>: default stable-6.1

logging-installPlanApproval<String>: default Automatic

logging-source<String>: default redhat-operators

logging-sourceNamespace<String>: default openshift-marketplace

### Cluster Observability Operator
coo<bool>: If not set Cluster Observability Operator will not be managed

coo-name-sub<String>: default cluster-observability-operator

coo-namespace<String>: default openshift-cluster-observability-operator

coo-channel<String>: default stable

coo-installPlanApproval<String>: default Automatic

coo-source<String>: default redhat-operators

coo-sourceNamespace<String>: default openshift-marketplace

### Compliance Operator Stig Apply
compliance<bool>: If not set Compliance Operator will not be managed. Helm chart config map must be set with profiles and remediations

compliance-name<String>: default compliance-operator

compliance-namespace<String>: default openshift-compliance

compliance-installPlanApproval<String>: default Automatic

compliance-source<String>: default redhat-operators

compliance-sourceNamespace<String>: default openshift-marketplace

compliance-nameSub<String>: default compliance-operator

compliance-channel<String>: default stable

### OpenShift Data Foundation
odf<bool>: If not set OpenShift Data Foundation will not be managed. If Storage Nodes are enable ODF will be installed on Storage Nodes. If Storage Nodes are Disabled only Nooba Multi Object Gateway will be installed

odf-name-sub<String>: default odf-operator

odf-namespace<String>: default openshift-storage

odf-channel<String>: default stable-4.17

odf-installPlanApproval<String>: default Automatic

odf-source<String>: default redhat-operators

odf-sourceNamespace<String>: default openshift-marketplace
