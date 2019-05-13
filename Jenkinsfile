pipeline {
    agent { dockerfile true }
    stages {
        stage ('Aqua microscanner') {
            steps{
                aquaMicroscanner imageName:'' , notCompliesCmd:'exit 1' , onDisallowed:'fail' 
                 }
        }   
    }
}
