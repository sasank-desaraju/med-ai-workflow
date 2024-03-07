# First time set up!

👋 We're so glad you are setting up your system for AI research.

⚠️  Disclaimer: Getting everything set up can feel a little tedious. There are a lot of little things to sign up for and connect which can feel overwhelming.

✨ However, be not discouraged!

🚀 We'll get through this together and have a nice workflow going for you to do the fun part (AI research).

**Please make use of LLMs like ChatGPT and GitHub CoPilot to troubleshoot!**
In addition, make use of documentation provided online, like cheat sheets, and reach out to fellow students.
If you have a question with any part(s) of this guide, please ask ChatGPT! If you still have questions, reach out to Sasank.

We are going to use **the terminal** for many steps.
<details> <summary> <b>Opening the terminal</b> </summary>
The terminal is a fully text-based interface with your computer.
    
To open it up:

- MacOS 🍎 - Hit `CMD+<Spc>` (Command key + Space bar) to open up the finder. Type "terminal" and hit enter to open it up.
- Windows 🪟 - Hit Windows key to open up the finder. Search for PowerShell and open it with administrator privileges
- Windows pt. 2 🪟🐧 - after you install WSL (See below), please use your WSL Linux terminal instead. Please reach out to ChatGPT or Sasank for clarification.
- Linux 🐧 - For Ubuntu, it's `CMD+Alt+t`.
</details>

## Steps!

### 1. (Windows Users only 🪟) Install WSL (Windows Subsystem for Linux) using Ubuntu
Please follow [this guide](https://canonical-ubuntu-wsl.readthedocs-hosted.com/en/latest/guides/install-ubuntu-wsl2/) to install WSL Ubuntu.

The rest of this guide will assume you are using WSL!

### 2. Git and GitHub :octocat:
Git is a free and open-source "version control" software that allows multiple people to collaborate on a software project

GitHub is a company owned by Microsoft that generously hosts your code on their system so that you can edit it from anywhere. Kind of like how Dropbox "hosts your files" so you can access them from any computer.

1. Install [Git](https://git-scm.com/downloads)
    <details> <summary> <b>MacOS 🍎</b> </summary>
        
    - If you do not have homebrew installed (more likely):
        submit ```xcode-select --install``` in the terminal.
        Here's a [video tutorial](https://www.youtube.com/watch?v=Mf3l8z6oxQ0)

    - If you have homewbrew installed:
        Check by submitting `brew` in the terminal.
        If it prints out the version of homebrew, you have it.
        If it vomits an error about "command not found", you do not have homebrew
        If homebrew installed, submit ```brew install git``` and hit enter when it asks for permission to do stuff.
        Here's a [video tutorial](https://www.youtube.com/watch?v=B4qsvQ5IqWk). You don't have to do the email bit at the end of this video.
    </details>

    <details> <summary> <b>Windows WSL 🪟🐧</b> </summary>
    I will assume you are using WSL (Windows Subsystem for Linux) with Ubuntu.
    In this case, you already have Git installed on your WSL terminal. Since you now interact with your computer using Linux commands, you can use `sudo apt install git` to update your git if you wish.
    </details>
    Please confirm your git install by entering `git --version` into your terminal and checking that it outputs the version of your Git (something like 2.39 or so).
### 3. Create a [GitHub :octocat: account](https://github.com/) **with your school email** (you get free stuff as a student!)
### 4. (optional) Install [GitHub :octocat: Desktop](https://desktop.github.com/) for a GUI (Graphic User Interface) for using Git and GitHub
This is optional because you *can* use Git/GitHub from the git CLI (Command Line Interface)

You *may* have to use Git from the CLI on HPG. Maybe there are some VSCode plugins you can use...

I (Sasank) use the git CLI and don't really know how to work the Desktop app
### 5. On the GitHub :octocat: website, create SSH connection to your computer (the one you will be using for research)
This is needed for GitHub to know your computer has permission to edit your code on GitHub.
This step requires following multiple steps of terminal commands and can be confusing.
Use [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). Make sure you use the "Generate new SSH key" section.

- 😳👉👈 pls try to follow the above guide pls
- MacOS 🍎, [here](https://www.youtube.com/watch?v=45YCxPnBj-w) is a video that follows along the above guide. You can stop the video at 4:00 as you do not need to create a repo to test the connection.
- Windows WSL 🪟🐧, [here](https://www.youtube.com/watch?v=Xi_2Cu8z2d0) and [here](https://www.youtube.com/watch?v=EoLrCX1VVog) are some walkthrough videos I found but neither is super great.
- You also need to do this on every computer you use for sending code to GitHub, including HiPerGator
- Only need to do this once per computer, though :)

Git/GitHub resources:
    
- Git cheat sheets, [here](https://training.github.com/downloads/github-git-cheat-sheet.pdf), [here](https://education.github.com/git-cheat-sheet-education.pdf), and [here](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
- Git official [documentation 📓](https://git-scm.com/docs)

### 6. VSCode
Microsoft Visual Studio Code is an Integrated Development Environment (IDE) which has all of the tools to edit code/text and test/run your code. There are other options but I strongly recommend starting with VSCode. It is supported by Microsoft and has a thriving Extension marketplace with every add-on created. It is the [most popular](https://survey.stackoverflow.co/2023/#section-most-popular-technologies-integrated-development-environment)

Installation:
<details> <summary> <b>MacOS 🍎</b> </summary>
Install from [the website](https://code.visualstudio.com/download)
</details>
<details> <summary> <b>Windows WSL 🪟🐧</b> </summary>
[This](https://code.visualstudio.com/docs/remote/wsl-tutorial) seems useful for Windows WSL users
</details>
<details> <summary> <b>Linux 🐧</b> </summary>
Install from [the website](https://code.visualstudio.com/download)
</details>

Extensions to install in VSCode:
    - Python
    - Remote Development.
        - Allows awesome remote access to HiPerGator.
    - GitHub Copilot, GitHub CoPilot Chat.
        - CoPilot is an AI LLM code assistant by GitHub. We get free access with our GitHub student account! Please install the CoPilot VSCode extension from the Extension tab.
    - Better Comments by Aaron Bond.
    - indent-rainbow by oderwat.

### 7. Conda and Python 🐍
If you just install Python, you'll be able to write Python code but it won't be easy to use all of the awesome Python software packages that other people have wrote. We need some of these for machine learning.

Additionally, for a given project, you may want a specific "environment" where you are using Package A version 2.0, Package B version 1.3, Package C version 2.7, etc. You may want different packages/versions for different projects so it's nice to create a unique "environment" for each project.

Conda is a tool which acts as both a package manager and an environment manager:

- Install conda. The full ["anaconda"](https://www.anaconda.com/download#downloads) comes with a GUI interface to install packages and create environments. I use ["miniconda"](https://docs.anaconda.com/free/miniconda/) because it uses **way** less disk space and I just use the CLI (AKA terminal) anyway.
- The normal anaconda may be easier to use if you're not familiar with the terminal but I believe you have to use CLI conda on HPG (HiPerGator) anyway.
- Windows WSL 🪟🐧 - [here](https://www.youtube.com/watch?v=MEbtOanQGZs) is a video that might help. This is showing how to install it into your WSL Linux operating system. Notice it is has you download the Linux download option instead of the Windows download option from the anaconda site.
    - The key point is to download the Linux installer file to your computer, find where it is in the terminal (perhaps by using the `cd` command), and then execute that file using ```bash Anaconda3-2023.09-0-Linux-x86_64.sh``` (I think that's the file name that should have been downloaded but please check).

### 8. HiPerGator (HPG)
Pls have a HPG account.
Then, see the [HPG page](hpg.md).
