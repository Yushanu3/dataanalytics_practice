# COMP2420/6420 - Introduction to Data Management, Analysis and Security

## COMP2420/6420 Labs Repository

Welcome to the Labs Repository for COMP2420/6420. Each week new labs will be added to this repository. You can **fork** this repository to make changes to your 
personal copy for every week's lab exercises and homework assessments. Refer to the below instructions if you are unsure of how to fork, clone or receive updates 
on your copy of the repo.   

### Steps taken to initally fork a repository

1. In your web browser: https://gitlab.cecs.anu.edu.au/comp2420/2019/comp2420-2019-labs

2. Press the `Fork` button, and select your user to make it your own.

3. Now that it exists in your own account, add your tutor as a Reporter of the repository under the `Members` tab.

### Steps Taken to clone your repository onto a local computer (command line)

1. Open terminal, git bash or equivalent.

2. Change Directory (`cd`) into the location you wish to store the repository.

3. Type `git clone gitlab.cecs.anu.edu.au/YOUR-UNI-ID/comp2420-2019-labs.git`

4. `cd` into the directory.

5. Type `git status` - this will show the current state of the repository.

### Steps taken to push changes to the repository

1. Change Directory (`cd`) into the location of the repository.

2. Type `git status` - will show what files have been edited and need changing. Red means not going up, green means going up.

3. `git add .` - will add (stage) all files to the commit list to be pushed to the repository - you can change "." to a file or folder name as necessary.

4. `git commit -m "YOUR COMMIT MESSAGE HERE" ` - will commit the files ready to be pushed, enter a message in the "YOUR COMMIT MESSAGE HERE" section so you know what you did.

5. `git push` - pushes the commit to the repository.

### Steps taken to add upstream master

#### An upstream master is important as when we release new content, you can receive updates quickly.

1. Change Directory (`cd`) into the directory of your repository.

2. `git remote add upstream https://gitlab.cecs.anu.edu.au/comp2420/2019/comp2420-2019-labs.git` - this will add the original repository as an item.

3. `git remote -v` - you should now see an `origin` link of your repository and a `remote` link of the original repository.

#### Steps taken to receive updates from upstream master

1. Change Directory (`cd`) into the directory of your repository.

2. `git remote -v` - visual confirmation that the original link exists, otherwise do the above again!!

3. `git fetch upstream`

4. `git merge upstream/master`. If a text editor shows up asking for a merge message, just exit, it will merge "automagically"!

5. `git status` - visual confirmation to show any changes that have been made.

6. `git push` - this will push the merged changes.
