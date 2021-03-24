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
                echo 'Running test suites...'
            }
        }
    }
}