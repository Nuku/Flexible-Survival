# How To Contribute!

## 1. Register on Github
Flexible Survival is hosted on Github, so you'll have to make an account to push changes.
https://github.com/

## 2. Fork the Flexible-Survival repository
You have to fork the repository (which will duplicate the entire codebase to make a personal version). Click the `Fork` button on the top right of this page:
https://github.com/Nuku/Flexible-Survival/

## 3. Download Git Desktop
This will let you record your changes and send it up to the Github repository for review.
https://desktop.github.com/

## 4. Clone your fork of the Flexible-Survival repository
Click `Clone a repository` and it will show you a list of your forked repositories--click on Flexible-Survival and click `Clone`.

## 4. Download Atom
Atom is a text editor that you can use to edit files. There are a couple of useful packages you can install to make life easier!
https://atom.io/

Install packages by going to: File -> Settings -> Install

### a. add Flexible-Survival as a Project Folder
File -> Add Project Folder -> Select `Documents\Github\Flexible-Survival` (You want to select the folder itself and click `Select Folder`!)

### b. install language-inform7
This will give you syntax highlighting, so you can tell which parts are text that the player can read or commands to make the game move along.

### c. install symbol-gen
This package lets you index the Flexible Survival definitions to make searching easier. Ever wonder what `player is male` is actually defined as? `CTRL+SHIFT+R` and type `male` to find out!

You will have to copy the `.ctags` file in the Flexible-Survival folder into your `Users` folder for this package to work. How do you get to that? Press `WIN+R` (WIN is the windows key) and type `%HOMEPATH%`. Then copy the Flexible-Survival file called `.ctags` into that folder. In Atom, press `CTRL+ALT+G` and the bottom right corner should say `Generating symbols`.

Package Keyboard Shortcuts:
`CTRL+ALT+G`: Regenerate the definitions list. This should happen automatically every time you save a file but you will have to do this when you first install this package and every time you pull changes from the repository that you didn't make in Atom.
`CTRL+R`: Search definitions within the currently opened file
`CTRL+SHIFT+R`: Search definitions within the entire Flexible Survival repository

### d. install symbols-tree-view
This package will show a list of definitions on the right-hand side. Try opening `Sarah.i7x` as an example! Press `CTRL+SHIFT+O` to toggle whether the panel should appear. Check out the package settings if you want to customize some more.

Package Keyboard Shortcuts:
`CTRL+SHIFT+O`: Toggle whether the panel appears.

## 5. Install Inform 7
Install Inform 7! Flexible Survival runs on this game engine.
http://inform7.com/download/

However, Flexible Survival is too big for Inform! We have a custom 64-bit compiler that you will also have to install or else you will not be able to compile the game:
https://drive.google.com/file/d/0BxUh1iVHP4kiM3JjTF8za2V0TG8/view

Move this file to `C:\Program Files (x86)\Inform 7\Compilers` and replace `ni.exe` with this one.

## 6. Set up the Inform project for the first time
Start Inform and set up "Flexible Survival" as a new project with that exact name! Then close Inform. You only have to do this once.

## 7. Install the Flexible Survival game
Install the Flexible Survival game so you have an interpreter that can read the game files without a lot of hassle.
http://blog.flexiblesurvival.com/p/links.html

## 8. Move the Github repository files into your Inform files
You will have to do this step every time you pull new changes from Github!

Move the files in the Github repo:

| Action                      | File/Folder                        | At
| --------------------------- | ---------------------------------- |
| Copy the file from the folder `Github\Inform` | `story.ni` | `Documents\Inform\Projects\Flexible Survival.inform\Source`
| Create a new folder called  | `Flexible Survival.materials` | `Documents\Inform\Projects\`
| Copy the folder from the folder `Github` | `Figures` | `Documents\Inform\Projects\Flexible Survival.materials`
| Copy the folders from the folder `Github` | Every folder that is not `Figures` or `Inform` | `Documents\Inform\Extensions`

## 9. Make your changes!
Now whenever you make changes in Atom, you should open Inform and re-compile the game to test it. You can do it in the Inform editor by clicking `Go`. Compiling takes a very long time! Expect to wait 15 minutes!

If you want to share it with others or test it in a different engine, click `Release` to compile. The file will be produced at `Flexible Survival.materials\Release\Flexible Survival.gblorb`. You can move that to `C:\Program Files (x86)\Silver Games LLC\flexible\Flexible Survival\Release` and replace the existing file if you want to test it outside of the Inform editor. Then open the Start Menu and Play Flexible Survival!

## 10. Record your changes and submit a Pull Request!
Open Github Desktop and review your changes. Write a summary (i.e. title, like `Adding new scenes to Sarah`) and a longer description listing the types of changes you made. Then click `Commit to master` to save it to your local repository.

Click on Branch -> Create pull request. It will open the Github site to compare your local changes to the Github repository. Click on the `Create pull request` button on the Github site.

## Questions?
Join the Discord group and ask questions or just talk about the game in the `fs-singleplayer` channel!
https://discordapp.com/channels/333559467218173953/362740874683219968
