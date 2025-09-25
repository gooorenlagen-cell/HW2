pipeline{
    agent any
    stages{
        stage("Build"){
            steps{
                script{
                    sh'''
                    docker build -t my-py-img .
                    '''
                }
            }
        }
        stage("Deploy"){
            steps{
                script{
                    sh'''
                    docker compose up 
                    '''
                }
            }
        }
    }
}