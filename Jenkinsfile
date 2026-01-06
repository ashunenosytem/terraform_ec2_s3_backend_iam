pipeline {
    agent any
    stages {

        stage('Clone Repo') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/ashunenosytem/terraform_ec2_s3_backend_iam.git'
            }
        }
        stage('List Workspace') {
    steps {
        bat 'dir'
    }
}


        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                bat 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            input {
                message "Apply Terraform changes to AWS?"
                ok "Apply"
            }
            steps {
                bat 'terraform apply tfplan'
            }
        }
    }
}
