pipeline {
    agent { dockerfile true }
    stages {
        stage ("Aqua microscanner") {
            aquaMicroscanner imageName:'alpine:latest' , notCompliesCmd:'exit 1' , onDisallowed:'fail'
        }
    }
}
