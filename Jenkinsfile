pipeline {
    agent { dockerfile true }
    stages {
        stage ('Aqua microscanner') {
            steps{
                aquaMicroscanner imageName:'alpine:latest' , notCompliesCmd:'exit 1' , onDisallowed:'fail' 
                 }
        }   
    }
}
