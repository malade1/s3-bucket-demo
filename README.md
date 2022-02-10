    Used Terraform to create S3 Bucket Modules with Encryption, Tags, and Versioning

- Softwares to install
   -  Install Terraform
   -  Install AWS CLI
   -  Install Boto3 locally using *pip install boto3*
   -  Install Git
    -----
- Configure AWS CLI
   -  aws configure
   -  aws configure set aws_access_key_id <your_access_key_id>
   -  aws configure set aws_secret_access_key <your_secret_access_key>
    -  aws configure set default.region <your_region>
   -----
- Steps to run the script
   -  Clone the repository
   -  CD into the directory
    -  Run the following command
         -  terraform init
         -  terraform validate
         -  terraform plan
         -  terraform apply
            - Confirm resource creation
    -----
    - Steps to run the test script
    -  CD into the s3 test directory
        -  Run the following command
            -  python test.py
    -----
    - Steps to run the destroy script
    -  CD into the main directory (cd ..)
        -  Run the following command
            -  terraform destroy