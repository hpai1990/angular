node('angularnode'){
    
	stage 'Checkout'
 		checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '1ab09c9e-36aa-4285-b73c-7e4d36675372', url: 'https://github.com/tf-poc/angular/']]])

	stage 'Build'
	    sh 'zip -r app.zip .'
  		
  	stage 'Docker Build and Publish'
  	    step([$class: 'DockerBuilderPublisher', cleanImages: false, cleanupWithJenkinsJobDelete: false, cloud: 'Docker Colony 2', dockerFileDirectory: '', pullCredentialsId: '', pushCredentialsId: '', pushOnSuccess: false, tagsString: 'tfangularapp:latest'])
  		
}