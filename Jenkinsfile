pipeline {
    agent any

    environment {
        REPO_URL = "https://github.com/ashunenosytem/terraform_ec2_s3_backend_iam.git"
        BRANCH   = "main"
    }
    
    stages {

        stage('Clean Workspace') {
            steps {
                bat 'rmdir /s /q . 2>nul || exit 0'
            }
        }

        stage('Clone Repo') {
            steps {
                bat 'git clone https://github.com/ashunenosytem/terraform_ec2_s3_backend_iam.git .'
            }
        }

        stage('List Files') {
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



    // stages {
        

    //     stage('Verify Files') {
    //         steps {
    //             bat 'dir'
    //         }
    //     }

    //     stage('Terraform Init') {
    //         steps {
    //             bat 'terraform init'
    //         }
    //     }

    //     stage('Terraform Validate') {
    //         steps {
    //             bat 'terraform validate'
    //         }
    //     }

    //     stage('Terraform Plan') {
    //         steps {
    //             bat 'terraform plan'
    //         }
    //     }

    //     stage('Terraform Apply') {
    //         input {
    //             message "Apply Terraform changes to AWS?"
    //             ok "Apply"
    //         }
    //         steps {
    //             bat 'terraform apply -auto-approve'
    //         }
    //     }
    // }
}
