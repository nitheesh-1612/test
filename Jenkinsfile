pipeline {
    agent any
    environment {
        NEW_VERSION = '1.3.5'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building the Application'
                echo "The Version Number is ${NEW_VERSION}"
            }
        }
        stage('Test') {
            when {
                expression {
                    NEW_VERSION == '1.3.5'
                }
            }
            steps {
                echo 'Testing the Application'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the Application'
            }
        }
    }
    
    post {
        always {
            echo 'Run is completed'
        }
        
        success {
            echo 'Run is successful'
        }
        
        failure {
            echo 'Run is failed'
        }
    }
    
}
