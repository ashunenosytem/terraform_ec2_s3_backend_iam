pipeline {
    agent any

    environment {
        REPO_URL = "https://github.com/ashunenosytem/terraform_ec2_s3_backend_iam.git"
        BRANCH   = "main"
    }

    stages {

        stage('Clean Workspace') {
            steps {
                bat '''
                if exist .git (
                  echo Cleaning existing repo
                  rmdir /s /q .git
                )
                '''
            }
        }

        stage('Clone Repo') {
            steps {
                bat '''
                git clone -b %BRANCH% %REPO_URL% .
                '''
            }
        }

        stage('Verify Files') {
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
                bat 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            input {
                message "Apply Terraform changes to AWS?"
                ok "Apply"
            }
            steps {
                bat 'terraform apply -auto-approve'
            }
        }
    }
}
