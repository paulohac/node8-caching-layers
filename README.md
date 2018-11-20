####################################### CREATE A SUBMODULE ###################################################

git branch release/kubernetes
git checkout release/kubernetes 
git submodule add ssh://<path_to_kubernetes_submodule>.git
git add .
git commit -m"first commit for pipeline"
git push --set-upstream origin release/kubernetes

######################################## UPDATE A SUBMODULE ###################################################
 - After modifying the sumodule project ( at the submodule project's dir ) commit and push

 - Enter the submodule path inside all other projects and "git pull"

 - Go to the root path of all other projects and "git status" will show that there are new commits inside the submodule

 - Then you just need to git add the new contents, git commit and git push 
 
 - Submodule commit hash will be updated
