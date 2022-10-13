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
                sh 'python3 -m robot.run TestCases'

            }
        }
    }
    post {
        always {
            archive (includes: 'reports/*.html')
        }
    }
}
