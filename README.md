# az-tf-aks-st
Repo for testing a bug in Azure AKS and Storage file share

### 
Update backend.conf for storing terraform state.

First we need to run terraform code with initial mode flag and then without using this flag.

### Commands: Terraform
- `terraform init -backend-config=backend.conf`
- `terraform plan -var=initial_mode=true`
- `terraform apply -var=initial_mode=true`
- `terraform plan`
- `terraform apply`

Once all the infra is provisioned, we can create all k8s objects using helm charts under helm folder.
Once deployment is done you can check the resources in test namespace.

### Commands: helm
- `helm list -A`
- `helm install goodly-guppy ./mychart`
- `helm uninstall goodly-guppy`

## Documentation
- [AzureRM](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Kubernetes TF provider](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
- [Kubernetes Docs](https://kubernetes.io/docs/home/)
- [Helm](https://helm.sh/docs/chart_template_guide/getting_started/)