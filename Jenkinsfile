pipeline {
    agent { dockerfile true }
    stages {
        stage ('Aqua microscanner') {
            steps{
                step { aquaMicroscanner imageName:'alpine:latest' , notCompliesCmd:'exit 1' , onDisallowed:'fail' }
                 }
        }   
    }
}
