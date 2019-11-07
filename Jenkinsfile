pipeline {
    agent { label 'node' }
    environment {
    // trust known_hosts
    GIT_SSH_COMMAND = "ssh -o StrictHostKeyChecking=no"
  }
    stages {
      stage('1st stage') {
        steps {
            sh '''
              cd /home/cloud_user/chef-repo/
              knife ssh 'name:develop' 'sudo chef-client' -x cloud_user -P "${PASS_NODE}"
              cat "/home/cloud_user/prueba.txt"
            '''
        }
      }
    stage('sending email') {
        steps {
            sh '''
             echo 'sending email'
            '''
        }
      }
    stage('Approval to Production?') {
        steps {
            timeout(time: 24, unit: 'HOURS') {
            input 'Continue to Deploy Production?'
            }
        }
      }
    stage('move to production branch') {
        steps {
            sshagent(['mitzi-git']) {
                sh '''
                git remote add upstream https://github.com/mitzivelez/demo-base-spring-petclinic.git
                git checkout master
                git fetch --all
                git merge upstream/master
                git push -f
                echo 'git merge to production .'
                pwd
                ls
                '''
          }
        }
      }
    stage('run in production') {
        steps {
            sh '''
             knife ssh 'name:production' 'sudo chef-client' -x cloud_user -P "${PASS_NODE}"
            '''
        }
      }
    }
}
