pipeline {
    agent { dockerfile true }
    stages {
    stage('Package') {
        steps{
            docker.build ('aboullaite')
         }
    }

    stage('Scan') {
        steps{
            aquaMicroscanner imageName: 'aboullaite', notCompliesCmd: 'exit 4', onDisallowed: 'fail', outputFormat: 'html'
         }
    }  
    }
}
