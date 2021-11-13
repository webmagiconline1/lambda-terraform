pipeline{
    agent any

    stages{
        stage("build"){
            steps{
                sh "npm install http"
            }
        }

        stage("package"){
            steps{
                sh "zip index.zip index.js node_modules"
            }
        }
		
		stage("init"){
            steps{
                sh "terraform init"
            }
        }
        stage("plan"){
            steps{
                sh "terraform plan -var-file='dev.tfvars'"
            }
        }
        stage("apply"){
            steps{
                sh "terraform apply -var-file='dev.tfvars' -auto-approve"
            }
        }
    }
}