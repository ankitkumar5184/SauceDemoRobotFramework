pipeline {
    agent any
    stages {
        stage('git repo & clean') {
            steps {
               bat "rmdir  /s /q SauceDemoRobotFramework"
                bat "git clone https://github.com/ankitkumar5184/SauceDemoRobotFramework.git"
                bat "mvn clean -f SauceDemoRobotFramework"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f SauceDemoRobotFramework"
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f SauceDemoRobotFramework"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f SauceDemoRobotFramework"
            }
        }
    }
}