node{
     
    stage('SCM Checkout'){
        git url:  'https://github.com/gunjannn/BG.git',branch: 'v1'
    }
    
    /*stage(" Maven Clean Package"){
  //    def mavenHome = tool name: "localmaven", type: "maven"
  //    def mavenCMD = "${mavenHome}/bin/mvn"
      sh "mvn clean package"
      
    } */
    
    
    stage('Build Docker Image'){
        sh 'docker rmi -f dockergunn/bg:v1.1'
        /*sh 'docker rmi  dockergunn/bg:v2'*/
        sh 'docker build -t dockergunn/bg:v1.2 .'
        /*sh 'docker build -t dockergunn/bg:v2 .'*/
        
    }
    
    stage('Push Docker Image'){
        withCredentials([string(credentialsId: 'DOKCER_HUB_PASSWORD', variable: 'DOKCER_HUB_PASSWORD')]) {
          sh "docker login -u dockergunn -p ${DOKCER_HUB_PASSWORD}"
        }
        sh 'docker push dockergunn/bg:v1.2'
        /*sh 'docker push dockergunn/bg:v2'*/
        
     }
     
def servicePrincipalId = '0e7f456e-4541-4b36-8691-0eb65c8b697f'
def resourceGroup = 'vm-rg'
def aks = 'k8s-bg'
     stage("Deploy To AKS"){
acsDeploy azureCredentialsId: 'k8s-bg', 
configFilePaths: 'k8s-bg-blue.yml, k8s-bg-service.yml',
containerRegistryCredentials: [[credentialsId: 'dockergunn', url: 'https://hub.docker.com/repository/docker/dockergunn']], 
containerService: 'k8s-bg | AKS', 
dcosDockerCredentialsPath: '', 
resourceGroupName: 'vm-rg', 
secretName: '', sshCredentialsId: ''
}
}
