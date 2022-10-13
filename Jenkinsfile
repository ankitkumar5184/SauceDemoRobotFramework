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
                sh 'docker run -v ${PWD}/reports:/opt/SauceDemoRobotFramework:Z -v ${PWD}/Tests:/opt/SauceDemoRobotFramework/TestCases:Z \
                            -e BROWSER=chrome ppodgorsek/robot-framework:latest'
            }
        }
    }
    post {
        always {
            archive (includes: 'reports/*.html')
        }
    }
}
