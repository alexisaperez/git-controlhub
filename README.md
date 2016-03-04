# Atom git-controlhub

## What

Provides a GUI interface to manage all commonly-used git commands.

This is a fork of the [git-control](https://atom.io/packages/git-control) project by [MarcelMue](https://github.com/MarcelMue) and [Jaco Greeff](https://github.com/jacogr). This fork swaps out git flow functionality for [HubFlow](https://datasift.github.io/gitflow/)

![Git](https://raw.githubusercontent.com/jacogr/atom-git-control/master/screenshots/git-01.png)

## How

- Checkout or switch to any available branch with a click on the local/remote branch
- Select files to commit, either all or with an individual selection
- Compare the current working tree changes to the selected local branch
- Merge any other branch into the current active branch
- Create branches, either by remote selection of local branching
- Reset any file to its previous state with a checkout
- All git commands are logged, the commands used and output is visible
- Command available are activated based on working tree status
- Automatically fetches remote status on activation

## GitFlow

For HubFlow commands to work, you need to [install HubFlow](https://datasift.github.io/gitflow/TheHubFlowTools.html)

then, on mac, do the following:

```
sudo ln -s /usr/local/bin/git-hf /usr/bin/
sudo ln -s /usr/local/bin/git-hf-hotfix /usr/bin/
sudo ln -s /usr/local/bin/git-hf-release /usr/bin
sudo ln -s /usr/local/bin/git-hf-version /usr/bin
sudo ln -s /usr/local/bin/git-hf-support /usr/bin
sudo ln -s /usr/local/bin/git-hf-init /usr/bin
sudo ln -s /usr/local/bin/git-hf-feature /usr/bin
sudo ln -s /usr/local/bin/hubflow-shFlags /usr/bin
sudo ln -s /usr/local/bin/hubflow-common /usr/bin
```
