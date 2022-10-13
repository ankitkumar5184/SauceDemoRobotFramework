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
             echo 'This will run only if successful'  
         }  
	failure {
        mail to: 'ankit.kumar@infostride.com',
             subject: "Failed Pipeline: ${currentBuild.fullDisplayName}",
             body: "Something is wrong with ${env.JOB_NAME} and   ${env.BUILD_URL}"
    }
}
   	 

}
	


