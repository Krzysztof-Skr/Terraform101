# ustawienie subscrypcji dostawcy Microsoft Azure
export ARM_SUBSCRIPTION_ID="ec560136-63d2-4829-8eb1-c7fd3851b373"

# ustawienie aplikacji  i środowiska
export TF_VAR_application_name="observaability"
export TF_VAR_environment_name="dev"

# ustawienie backend
export BACKEND_RESOURCE_GROUP="rg-terraform-state-dev"
export BACKEND_STORAGE_ACCOUNT="sthprtm8jqgd"
export BACKEND_CONTAINER_NAME="tfstate"
export BACKEND_KEY=$TF_VAR_application_name-$TF_VAR_environment_name

#run terraform
terraform init \
 -backend-config="resource_group_name=${BACKEND_RESOURCE_GROUP}" \
 -backend-config="storage_account_name=${BACKEND_STORAGE_ACCOUNT}" \
 -backend-config="container_name=${BACKEND_CONTAINER_NAME}" \
 -backend-config="key=${BACKEND_KEY}"

terraform $*

rm -rf .terraform
