# First time set up!

We're so glad you are setting up your system for AI research.

Disclaimer: Getting everything set up is a bit of a pain. There are a lot of little things to sign up for and connect which can feel overwhelming.

However, do not be discouraged!

We'll get through this together and have a nice workflow going for you to do the fun part (AI research).

**Please make use of LLMs like ChatGPT and GitHub CoPilot to troubleshoot!**
In addition, make use of documentation provided online, like cheat sheets, and reach out to fellow students.

3. (Windows Users only) WSL (Windows Subsystem for Linux) Ubuntu
    - Please follow [this guide](https://canonical-ubuntu-wsl.readthedocs-hosted.com/en/latest/guides/install-ubuntu-wsl2/) to install WSL Ubuntu

1. Git and GitHub
    - Git is a free and open-source "version control" software that allows multiple people to collaborate on a software project
    - GitHub is a company owned by Microsoft that generously hosts your code on their system so that you can edit it from anywhere. Kind of like how Dropbox "hosts your files" so you can access them from any computer.
    1. Install [Git](https://git-scm.com/downloads)
    2. Create a GitHub account **with your school email** (you get free stuff as a student!)
    3. (optional) Install [GitHub Desktop](https://desktop.github.com/) for a GUI (Graphic User Interface) for using Git and GitHub
        - This is optional because you *can* use Git/GitHub from the git CLI (Command Line Interface)
        - I (Sasank) use the git CLI and don't really know how to work the Desktop app
    4. On the GitHub website, create SSH connection to your computer (the one you will be using for research)
        - Use [this guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys) through the "Test your SSH connection" step
        - This is needed for GitHub to know your computer has permission to edit your code on GitHub.
        - Yes, this is confusing. Yes, I apologize for the jargon in the guide above.
        - You also need to do this on every computer you use for sending code to GitHub, including HiPerGator
        - Only need to do this once per computer, though :)
    - Git cheat sheets, [here](https://training.github.com/downloads/github-git-cheat-sheet.pdf), [here](https://education.github.com/git-cheat-sheet-education.pdf), and [here](https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet)
    - Git official [documentation](https://git-scm.com/docs)

2. VSCode
    - Microsoft Visual Studio Code is an Integrated Development Environment (IDE) which has all of the tools to edit code/text and test/run your code. There are other options but I strongly recommend starting with VSCode. It is supported by Microsoft and has a thriving Extension marketplace with every add-on created. It is the [most popular](https://survey.stackoverflow.co/2023/#section-most-popular-technologies-integrated-development-environment)
    - Install from [the website](https://code.visualstudio.com/download)
        - **(Windows) Make sure** to select "Add to PATH" in the Installer.
    - Extensions to install in VSCode:
        - Python
        - Remote Development. Allows awesome remote access to HiPerGator.
        - GitHub Copilot, GitHub CoPilot Chat. CoPilot is an AI LLM code assistant by GitHub. We get free access with our GitHub student account! Please install the CoPilot VSCode extension from the Extension tab.
        - Better Comments by Aaron Bond.
        - indent-rainbow by oderwat.
    - (Windows) [this](https://code.visualstudio.com/docs/remote/wsl-tutorial) seems useful for Windows users (who are using WSL as per above)

4. Conda and Python
    - If you just install Python, you'll be able to write Python code but it won't be easy to use all of the awesome Python software packages that other people have wrote. We need some of these for machine learning.

    - Additionally, for a given project, you may want a specific "environment" where you are using Package A version 2.0, Package B version 1.3, Package C version 2.7, etc. You may want different packages/versions for different projects so it's nice to create a unique "environment" for each project.

    - Conda is a tool which acts as both a package manager and an environment manager.
    - Install conda. The full ["anaconda"](https://www.anaconda.com/download#downloads) comes with a GUI interface to install packages and create environments. I use ["miniconda"](https://docs.anaconda.com/free/miniconda/) because it uses less disk space and I just use the CLI (AKA terminal) anyway.
    - The normal anaconda may be easier to use if you're not familiar with the terminal but I believe you have to use CLI conda on HPG (HiPerGator) anyway.


5. HiPerGator (HPG)
