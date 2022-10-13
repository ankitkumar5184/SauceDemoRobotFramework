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
	    stage('Email') {
		    failure{
			    mail to: 'ankit.kumar@infostride.com',
             		    subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
                     	    body: "Build number ${env.BUILD_NUMBER} has been failed. Track the issues by visiting the url  ${env.BUILD_URL}"
            }
	    
	    
    }
   post {
        	always {
		        script {
		          step(
			            [
			              $class              : 'RobotPublisher',
			              outputPath          : 'Results2',
			              outputFileName      : '**/output.xml',
			              reportFileName      : '**/report.html',
			              logFileName         : '**/log.html',
			              disableArchiveOutput: false,
			              passThreshold       : 50,
			              unstableThreshold   : 40,
			              otherFiles          : "**/*.png,**/*.jpg",
			            ]
		          	)

		        }
	  	}
	   success {  
             echo 'Build successfully executed'
         }  
    failure {
        mail to: 'ankit.kumar@infostride.com',
             subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
             body: "Build number ${env.BUILD_NUMBER} has been failed. Track the issues by visiting the url  ${env.BUILD_URL}"
	    }
    }
}
	


