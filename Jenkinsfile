pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
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
