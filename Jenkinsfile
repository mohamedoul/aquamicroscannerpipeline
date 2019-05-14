pipeline {
    agent { dockerfile true }
    stages {
    stage('Package') {
        steps{
            docker.build("aboullaite/sb-app")
         }
    }

    stage('Scan') {
        steps{
            aquaMicroscanner imageName: 'aboullaite/sb-app', notCompliesCmd: 'exit 4', onDisallowed: 'fail', outputFormat: 'html'
         }
    }  
    }
}
