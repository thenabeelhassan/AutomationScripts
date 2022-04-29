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
![SSH to Target Instance](https://lh4.googleusercontent.com/2IgLll7NyUqB2xnZ0Cb4EbWj6a4JOMDzOsNPHdRHYkQaW_9Hkr216Hfvj2fr2JRLHXEtb470Mf8jv5qrKEpj=w1366-h635)
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM3Mjg4MTE3NiwxOTc2Njc5Njk0LDE1Mj
g0ODg4NywtMTMwNTYwNjA0MiwtNzAwMTIwMjk5LDQ3MDMyMzc5
MCwxMTk3ODcyNDE0LC03ODM3MzI4MDcsMTQxNDM0NTc0MSwtMT
k0NDc3NjI4OSwxNTQ0ODgwNDAwXX0=
-->