# Terraform AWS EC2 NGINX

This Terraform project provisions an AWS EC2 instance and installs an NGINX web server using a startup script (`user_data`). It demonstrates how to use Terraform with AWS to automate infrastructure.

## 📦 Project Structure

```
.
├── main.tf                   # Defines EC2 and security group
├── provider.tf               # AWS provider setup
├── variables.tf              # Input variables
├── outputs.tf                # Outputs like instance public IP
├── userdata.sh               # Startup script for installing NGINX
├── terraform.tfvars.example # Example variable values
├── .gitignore                # Prevents sensitive files from being committed
└── README.md                 # Project documentation
```
## 🚀 Features

- AWS EC2 provisioning (mocked)
- Security Group with HTTP & SSH access
- NGINX auto-installation via `user_data`
- Uses input variables for flexibility
- Clean structure, GitHub-ready

## 🧰 Requirements

- Terraform >= 1.3.0
- AWS Account (only for real deployment)

## 📝 Notes

- AMI ID used in `main.tf` is a placeholder.
- To deploy for real, update the AMI ID and provide valid AWS credentials.

## 👨‍💻 Author

Created by [Shalesh Bhat](https://github.com/bhatshalesh)  
Feel free to fork, star, or open issues for feedback!
