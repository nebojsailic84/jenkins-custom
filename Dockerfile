FROM jenkins/jenkins:2.249.3

RUN jenkins-plugin-cli --plugins kubernetes-cd:1.0.0
