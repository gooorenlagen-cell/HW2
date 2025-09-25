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
                    docker compose up -d
                    '''
                }
            }
        }
        stage("Stop"){
            steps{
                script{
                    sh'''
                    docker compose down
                    docker compose rm
                    '''
                }
            }
        }
    }
    post{
        always{
            cleanWs()
        }
    }
}