node {
    def app

    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

        app = docker.build("getintodevops/hellonode")
        sh 'echo "image bhuilt succefffully"'
    }

    stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */

   
            aquaMicroscanner imageName: 'getintodevops/hellonode', notCompliesCmd: 'exit 1000', onDisallowed: 'fail',  outputFormat: 'json'
            sh 'echo "Tests passed"'
     
    }
}
