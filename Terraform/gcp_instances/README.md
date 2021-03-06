# [TERRAFORM](https://www.terraform.io/docs)

- Open Google Cloud Shell
- Set the project ID
  > gcloud config set project **elaborate-howl-285701**
- Create a Directory **`terraform`**
  > mkdir **terraform** && cd **terraform**
- Upload **`main.tf`** and **`variables.tf`** to this folder
- Execute follwing commands
  > terraform init
  > terraform apply

![terraform apply](https://i.ibb.co/5FRZ1pL/2022-04-30-1-25-31.png)
`On successfull execution of the above command output will look alike:`
![terraform apply output](https://i.ibb.co/y0rNJXb/2022-04-30-1-59-32.png)
`Host will return the Public IP of the instace created`

> _Note: SSH Key of the instance created will be added to SSH Keys of the Host/gCloud Shell._

- For Ansible configuration the target instance must be added to known host list. For this process ssh to the _target instance_ from the _Host/gCloud Shell_.

`Type "yes" hen asked for continue connecting`
![SSH to Target Instance](https://i.ibb.co/QCtXf51/2022-04-30-2-12-27.png)

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTM3Mjg4MTE3NiwxOTc2Njc5Njk0LDE1Mj
g0ODg4NywtMTMwNTYwNjA0MiwtNzAwMTIwMjk5LDQ3MDMyMzc5
MCwxMTk3ODcyNDE0LC03ODM3MzI4MDcsMTQxNDM0NTc0MSwtMT
k0NDc3NjI4OSwxNTQ0ODgwNDAwXX0=
-->
