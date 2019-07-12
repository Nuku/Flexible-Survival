# How To Contribute!

## 1. Register on Github
Flexible Survival is hosted on Github, so you'll have to make an account to push changes.

https://github.com/

## 2. Fork the Flexible-Survival repository
You have to fork the repository (which will duplicate the entire codebase to make a personal version). Click the `Fork` button on the top right of this page:

https://github.com/Nuku/Flexible-Survival/

## 3. Download Github Desktop
This will let you record your changes and send it up to the Github repository for review.

https://desktop.github.com/

## 4. Clone your fork of the Flexible-Survival repository
Click `Clone a repository` and it will show you a list of your forked repositories - click on Flexible-Survival and click `Clone`.

## 5. Download Atom
Atom is a text editor that you can use to edit files. There are a couple of useful packages you can install to make life easier!

https://atom.io/

### a. add Flexible-Survival as a Project Folder
File -> Add Project Folder -> Select `Documents\Github\Flexible-Survival` (You want to select the folder itself and click `Select Folder`!)

### b. install the Atom package `language-inform7`
This will give you syntax highlighting, so you can tell which parts are text that the player can read or commands to make the game move along.

Install packages by going to: File -> Settings -> Install

### c. install the Atom package `atom-ctags`
This package lets you index the Flexible Survival definitions to make searching easier. Ever wonder what `player is male` is actually defined as? `CTRL+SHIFT+R` and type `male` to find out!

You will have to copy the `.ctags` file in the Flexible-Survival folder into your `Users` folder for this package to work. How do you get to that? Press `WIN+R` (WIN is the windows key) and type `%HOMEPATH%`. Then copy the Flexible-Survival file called `.ctags` into that folder. If you want to do this automatically, run the `sync.bat` script (described below) and you can ignore this part.

Package Keyboard Shortcuts:
`CTRL+SHIFT+P`: and type `Atom Ctags: Rebuild` to rebuild the symbols for your project. You will have to do this periodically to update the list (if you cannot find a symbol, try this first)
`CTRL+R`: Search definitions within the currently opened file
`CTRL+SHIFT+R`: Search definitions within the entire Flexible Survival repository

### d. install the Atom package `symbols-tree-view`
This package will show a list of definitions on the right-hand side. Try opening `Sarah.i7x` as an example! Press `CTRL+SHIFT+O` to toggle whether the panel should appear. Check out the package settings if you want to customize some more.

Package Keyboard Shortcuts:
`CTRL+ALT+O`: Toggle whether the panel appears.

### e. install the Atom packages `linter`, `linter-flexible-survival` and their dependencies
Start by adding the linter plugin. It'll ask you to install some dependencies as well, so go ahead and click yes on all of them that come up. Then install the linter specifically for Flexible Survival. This will help you make sure your code and writing is stylistically correct and it will catch a good number of common coding errors.

## 6. Install Inform 7
Install Inform 7! Flexible Survival runs on this game engine.

http://inform7.com/downloads/

However, Flexible Survival is too big for Inform! We have a custom 64-bit compiler that you will also have to install or else you will not be able to compile the game:

https://drive.google.com/file/d/0BxUh1iVHP4kiM3JjTF8za2V0TG8/view

Move this file to `C:\Program Files (x86)\Inform 7\Compilers` and replace `ni.exe` with this one.

## 7. Set up the Inform project for the first time
Start Inform and set up "Flexible Survival" as a new project with that exact name! Then close Inform. You only have to do this once.

## 8. Install the Flexible Survival game
Install the Flexible Survival game so you have an interpreter that can read the game files without a lot of hassle.

https://blog.flexiblesurvival.com/p/links.html

## 9. Run the `sync.bat` script
You will have to do this step every time a new folder is introduced (either pulled from Github or if you add a new folder yourself).

It will make a symlink from your Inform project to the Github repo, so that the Inform engine knows where the files are stored for compilation.

Here are the manual mapping of files if you do not want to use the script:

| Action                      | File/Folder                        | At  |
| --------------------------- | ---------------------------------- | --- |
| Copy the file from the folder `Documents\Github\Inform` | `story.ni` | `Documents\Inform\Projects\Flexible Survival.inform\Source` |
| Create a new folder called  | `Flexible Survival.materials` | `Documents\Inform\Projects\` |
| Copy the folder from the folder `Documents\Github` | `Figures` | `Documents\Inform\Projects\Flexible Survival.materials` |
| Copy the folders from the folder `Documents\Github` | Every folder that is not `Figures` or `Inform` | `Documents\Inform\Extensions` |
| Copy the file from the folder `Documents\Inform\Projects\Flexible Survival.materials\Release` | `Flexible Survival.gblorb` | `C:\Program Files (x86)\Silver Games LLC\flexible\Flexible Survival\Release` |

## 10. Make your changes!
Now whenever you make changes in Atom, you should be able to then open Inform and re-compile the game to test it. You can do it in the Inform editor by clicking `Go` or to export it to another interpreter with `Release`. Compiling takes a very long time! Expect to wait 5-20 minutes! If you used the `sync.bat` script above, you will be able to use your `Play Flexible Survival` shortcut in the start menu to access your latest Release build (NOT Go!).

## 11. Record your changes and submit a Pull Request!
Open Github Desktop and review your changes. Write a summary (i.e. title, like `Adding new scenes to Sarah`) and a longer description listing the types of changes you made. Then click `Commit to master` to save it to your local repository. Click `Push origin` to move your changes from your local repository to your online fork.

Click on Branch -> Create pull request. It will open the Github site to compare your fork changes to the official Flexible Survival repository. Click on the `Create pull request` button on the Github site.

Then just wait for one of the maintainers to accept your pull request! If it gets accepted, you likely won't have to do anything and you'll see your changes in the next push.

## Questions?
Join the Discord group and ask questions or just talk about the game in the `fs-singleplayer` channel!

https://discordapp.com/channels/333559467218173953/362740874683219968
