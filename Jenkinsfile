pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: "main", url:'https://github.com/ankitkumar5184/SauceDemoRobotFramework.git'
            }
        }
        stage('Test') {
            steps{
                bat 'run.bat'

            }
        }
    }
    post {
        always {
            archiveArtifacts (includes: 'Results2/*.html')
        }
    }
}
