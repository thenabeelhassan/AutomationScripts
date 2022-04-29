# [TERRAFORM](https://www.terraform.io/docs)

- Open Google Cloud Shell
- Set the project ID
> gcloud config set project __elaborate-howl-285701__
- Create a Directory __`terraform`__
> mkdir __terraform__ && cd __terraform__
- Upload __`main.tf`__ and __`variables.tf`__ to this folder
- Execute follwing commands
> terraform init
terraform apply
![terraform apply](https://i.ibb.co/5FRZ1pL/2022-04-30-1-25-31.png)
`On successfull execution of the above command output will look alike:`
![terraform apply output](https://lh4.googleusercontent.com/9BNJl14zg7x8I1KMZIp7yl8vGW6ilm1tshuICxxEprs1aP22Bt4U4tyOKJSO6CZ3ZnxeR0sWovz8xztUr_zq=w1366-h635)
`Host will return the Public IP of the instace created`
> _Note: SSH Key of the instance created will be added to SSH Keys of the Host/gCloud Shell._  
- For Ansible configuration the target instance must be added to known host list. For this process ssh to the _target instance_ from the _Host/gCloud Shell_.
> ![SSH to Target Instance](https://lh3.googleusercontent.com/jO_fUlsmm7TgHkX8YwOohE7NO9XxSsTFj0L6AwQHxSlQKZ1skIXKT5HtIGClqCrWtzzKu5fW_O7v7YbeI4gi=w1366-h635)
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzMDU2MDYwNDIsLTcwMDEyMDI5OSw0Nz
AzMjM3OTAsMTE5Nzg3MjQxNCwtNzgzNzMyODA3LDE0MTQzNDU3
NDEsLTE5NDQ3NzYyODksMTU0NDg4MDQwMF19
-->
