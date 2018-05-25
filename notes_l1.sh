git diff 123 132
git conifg --global color.ui.auto

git log

git diff 4035769377cce96a88d5c1167079e12f30492391 25ede836903881848fea811df5b687b59d962da3

git log --grep=Revert

git checkout b0678b161fcf74467ed3a63110557e3d6229cfa6

git config --global core.editor "subl -n -W"
git config --global push.default upstream

git add lesson_1_reflections.txt 
git status

git reset lesson_2_reflections.txt

git config --global user.email "swysoft@gmail.com"
git config --global user.name "pavan"

git commit -m "adding lessong 2 text"

git diff # comparing working directory and staging area
git diff --staged # comparing staging area and most recent commit
git reset --hard # irriversibly clears changes to staging and working area

git branch easy-mode #create new branch
git branch

git checkout -b new_branch_name # creates and checks out new branch

git show 71d52709ddc4066e7a79a1d0a412e43429a0cdeb #compare commit to its parent

git branch -d coins #deletes branch (label) coin

#merge easy-mode to master and visualise
git checkout master
git branch merge master easy-mode
git log --graph --oneline master easy-mode


#for linux credential caching
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

git remote add origin git@github.com:Pavankn18/reflections.git
git push -u origin master

#Generate ssh key add to ssh agent
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" #provided passphrase Pospass2017
#Add ssh agent to local
eval "$(ssh-agent -s)" #starts ssh agent in background
ssh-add ~/.ssh/id_rsa   #replace id_rsa with private key filename if default name is changed
#add ssh key to github
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
#Add they above by github ->settings -ssh and gpg keys ->add ssh


#to simulate change from sarah, go to versino control root folder and run below command:
bash sarah_changes.sh https://github.com/cbuckey-uda/recipes.git

# git pull is same as git fetch; git merge
git fetch origin
git merge master origin/master #merge master with contents of origin/master

#to simulate change from sarah's pull request and its merge
bash sarah_changes_2.sh https://github.com/cbuckey-uda/recipes.git

#git log for pull request #1
git log -n 1

#to counter path length too long error on windows
git config --system core.longpaths true