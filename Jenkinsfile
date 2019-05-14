pipeline {
    agent { dockerfile true }
    stages {
   

    stage('Scan') {
        steps{
            aquaMicroscanner imageName: 'aboullaite', notCompliesCmd: 'exit 4', onDisallowed: 'fail', outputFormat: 'html'
         }
    }  
    }
}
