Terraform variables: are type contraints
types: input,output,local

primitive:
number,
string,
bool

non-primitive: stores complex data types.
list,
set,
map,
tuple,
object

how to define:
can be defined in the main.tf or create another file variable.tf
main.tf / variables.tf
variable "environment" {
  type = string
  description = "The name of the environment"
  default = "dev"
  
}
if no value of environmnet is provided it takes default "dev"

terraform.tfvars file contains only the value of the variables as a dictionary or map

environnment = "staging"

to override all, we can pass using the -var flag at the time of tf plan

terraform plan -var=environmnet="prod"


Precedence:
-var (highest)- passing to cmd
tfvars
environmnet variables


more to learn:
https://developer.hashicorp.com/terraform/language/values/variables


locals: values are not changes much often.
         resue and not to declare again and again