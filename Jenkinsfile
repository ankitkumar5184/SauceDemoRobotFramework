pipeline {
    agent any
    stages {
        stage('git repo & clean') {
            steps {
//                bat "rmdir  /s /q SauceDemoRobotFramework"
                bat "git clone https://github.com/ankitkumar5184/SauceDemoRobotFramework.git"
                bat "mvn clean -f SauceDemoRobotFramework"
            }
        }
        stage('install') {
            steps {
                bat "pip install -f SauceDemoRobotFramework"
            }
        }
        stage('test') {
            steps {
                bat "pip test -f SauceDemoRobotFramework"
            }
        }
        stage('package') {
            steps {
                bat "pip package -f SauceDemoRobotFramework"
            }
        }
    }
}
