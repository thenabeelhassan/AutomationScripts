# [TERRAFORM](https://www.terraform.io/docs)

- Open Google Cloud Shell
- Set the project ID
> gcloud config set project __elaborate-howl-285701__
- Create a Directory __`terraform`__
> mkdir __terraform__ && cd __terraform__
- Upload __`main.tf`__ and __`variables.tf`__ to this folder
- Execute follwing commands
> terraform init
> terraform apply

![terraform apply](https://i.ibb.co/5FRZ1pL/2022-04-30-1-25-31.png)
`On successfull execution of the above command output will look alike:`
![terraform apply output](https://lh4.googleusercontent.com/nmaAbK7ZiG4N1KKOtN_E_fJg2wuxNTapjUnx_mf674rtKfe8z-1TkvDnPnS6HQpVvpPfdCULIJwKNTE-sZC2=w1366-h635)
`Host will return the Public IP of the instace created`

>_Note: SSH Key of the instance created will be added to SSH Keys of the Host/gCloud Shell._

- For Ansible configuration the target instance must be added to known host list. For this process ssh to the _target instance_ from the _Host/gCloud Shell_.

`Type "yes" hen asked for continue connecting`
![SSH to Target Instance](https://lh6.googleusercontent.com/crvAVpVAqKcCS8VmJpu-IXIFPvVf2l6UVXkOziNZcN2ynM8pBL3sP62Q5Sk1KTdeIr_NZJVbkDlBawv-behl=w758-h635)
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTk3NjY3OTY5NCwxNTI4NDg4ODcsLTEzMD
U2MDYwNDIsLTcwMDEyMDI5OSw0NzAzMjM3OTAsMTE5Nzg3MjQx
NCwtNzgzNzMyODA3LDE0MTQzNDU3NDEsLTE5NDQ3NzYyODksMT
U0NDg4MDQwMF19
-->