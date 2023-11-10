# az-tf-aks-st
Repo for testing a bug in Azure AKS and Storage file share

### Commands: Terraform
- `terraform init -backend-config=backend.conf`
- `terraform plan`
- `terraform apply`

### Commands: helm
- `helm list -A`
- `helm install goodly-guppy ./mychart`
- `helm uninstall goodly-guppy`

## Documentation
- [AzureRM](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Kubernetes TF provider](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)
- [Kubernetes Docs](https://kubernetes.io/docs/home/)
- [Helm](https://helm.sh/docs/chart_template_guide/getting_started/)