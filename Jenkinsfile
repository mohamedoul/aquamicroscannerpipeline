pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                docker build -t my-app .
                echo "Hello world!"
            }
        }
    }
}
