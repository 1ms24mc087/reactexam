pipeline{
  agent any

  environments{
    DOCKERHUB_CRED=credentials('dockerhub')
    IMAGE_NAME="rohit2686/reactexam"
  }
  stages{
    stage('Branch Checkout'){
      steps{
        git url:"https://github.com/1ms24mc087/reactexam",branch: "master"
      }
    }

    stage('Image Build'){
      steps{
        script{
          DockerImage=docker.build("${IMAGE_NAME}:latest")
        }
      }
    }

    stage("Push Image"){
      steps{
        script{
          docker.withRegistry('https://index.docker.io/v1/','dockerhub')
          {DockerImage.push()}
        }
      }
    }
  }
}
