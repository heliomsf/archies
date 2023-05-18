Creating a feature branch
Without the git-flow extensions:
git checkout develop
git checkout -b feature_branch

When using the git-flow extension:
git flow feature start feature_branch
Continue your work and use Git like you normally would.

Finishing a feature branch
When you’re done with the development work on the feature, the next step is to merge the feature_branch into develop.

Without the git-flow extensions:
git checkout develop
git merge feature_branch

Using the git-flow extensions:
git flow feature finish feature_branch

https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow

https://danielkummer.github.io/git-flow-cheatsheet/index.html
