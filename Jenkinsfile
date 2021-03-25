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
                sh 'echo "Running test suites..."'
                sh 'echo "Hello World"'
                sh 'pwd'
                sh 'ls -lah'
            }
        }
    }
}