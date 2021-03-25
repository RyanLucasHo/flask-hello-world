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
                retry(3){
                    sh './script.sh'
                }
                timeout(time:1, unit: 'MINUTES'){
                    sh '.health.sh'
                }
                sh 'echo "Running test suites..."'
                sh 'echo "Hello World"'
                sh 'pwd'
                sh 'ls -lah'
            }
        }
    }
}