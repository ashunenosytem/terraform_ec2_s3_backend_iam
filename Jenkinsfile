pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = "ap-south-1"
    }

    stages {

        stage('Checkout') {
    steps {
        git branch: 'main',
            url: 'https://github.com/ORG/REPO.git',
            credentialsId: 'github-creds'
    }
}


        stage('Terraform Init') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-creds'
                ]]) {
                    bat 'terraform init'
                }
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
