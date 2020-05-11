@Library('piper-lib-local') _

node(){
  stage('Prepare')   {
      checkout scm
      setupCommonPipelineEnvironment script:this
  }

  stage('Build')   {
      mtaBuild (
      script:this,
      verbose:'true' )
  }

  stage('Deploy')   {
      cloudFoundryDeploy(
      script:this, 
      verbose:true)
  }
}
