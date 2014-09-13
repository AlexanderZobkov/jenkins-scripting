import jenkins.model.*

Jenkins jenkinsInstance = jenkins.model.Jenkins.instance

for(job in jenkinsInstance.items){
    println job.name
}
