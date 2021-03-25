pipeline {
    agent { docker { image 'python:latest' } }
	
	environment {
        DISABLE_AUTH = 'true'
        DB_ENGINE    = 'sqlite'
    }
	
    stages {
        stage('build') {
            steps {
                sh 'python --version'
				sh 'echo "Datbase engine is ${DB_ENGINE}"'
				sh 'echo "DISABLE_AUTH is ${DISABLE_AUTH}"'
            }
        }
		stage('test') {
            steps {
                timeout(time:1, unit: 'MINUTES'){
                    retry(3){
						sh 'chmod +x ./script.sh'
                        sh './script.sh'
                    }
                }
            }
        }
    }
	post {
		always {
			echo 'This will always run'
		}
		success {
			echo 'This will run only if successful'
		}
		failure {
			echo 'This will run only if failed'
		}
		unstable {
			echo 'This will run only if the run was marked as unstable'
		}
		changed {
			echo 'This will run only if the state of the Pipeline has changed'
			echo 'For example, if the Pipeline was previously failing but is now successful'
		}
	}
}