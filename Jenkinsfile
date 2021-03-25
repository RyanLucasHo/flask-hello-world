pipeline {
    agent { docker { image 'python:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
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
                sh 'echo "Running test suites..."'
                sh 'echo "Hello World"'
                sh 'pwd'
                sh 'ls -lah'
            }
        }
    }
}