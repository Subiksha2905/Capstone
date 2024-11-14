pipeline {
    agent any

    stages {
        stage('git') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Subiksha2905/Capstone.git']])
            }
        }
        stage('build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
                }
        }
        stage('deploy') {
            steps {
                 withCredentials([string(credentialsId: 'subiksha29', variable: 'dockerpwd')]) {
               sh 'docker login -u subiksha29 -p ${dockerpwd}'
                sh 'chmod +x ./deploy.sh'
                sh './deploy.sh'
                }
            }    
        }
        
    }
}
