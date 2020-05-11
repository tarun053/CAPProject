@Library('piper-lib-local') _

node(){
  stage('Deploy')   {
      cloudFoundryDeploy(
      script:this, 
      verbose:true)
  }
}
