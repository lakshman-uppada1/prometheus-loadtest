pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'prometheus-loadtest', url: '
https://github.com/lakshman-uppada1/prometheus-loadtest.git'
            }
        }
        stage('Prepare and Execute') {
            steps {
                // Provide execute permissions to the script
                sh 'chmod +x generate_jobs.sh'
                // Run the generate_jobs.sh script
                sh './generate_jobs.sh'
            }
        }
    }
}
