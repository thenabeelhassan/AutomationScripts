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
![terraform apply output](https://lh4.googleusercontent.com/nmaAbK7ZiG4N1KKOtN_E_fJg2wuxNTapjUnx_mf674rtKfe8z-1TkvDnPnS6HQpVvpPfdCULIJwKNTE-sZC2=w1366-h635)
`Host will return the Public IP of the instace created`
> _Note: SSH Key of the instance created will be added to SSH Keys of the Host/gCloud Shell._  
- For Ansible configuration the target instance must be added to known host list. For this process ssh to the _target instance_ from the _Host/gCloud Shell_.
> ![SSH to Target Instance](https://lh3.googleusercontent.com/jO_fUlsmm7TgHkX8YwOohE7NO9XxSsTFj0L6AwQHxSlQKZ1skIXKT5HtIGClqCrWtzzKu5fW_O7v7YbeI4gi=w1366-h635)
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTUyODQ4ODg3LC0xMzA1NjA2MDQyLC03MD
AxMjAyOTksNDcwMzIzNzkwLDExOTc4NzI0MTQsLTc4MzczMjgw
NywxNDE0MzQ1NzQxLC0xOTQ0Nzc2Mjg5LDE1NDQ4ODA0MDBdfQ
==
-->