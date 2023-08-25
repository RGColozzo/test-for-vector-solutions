# VECTOR - AUTOMATION TEST 🤖
## Automation tests using Robot Framework and Selenium

<p align="center">
 <a href="#Prerequisite">Prerequisite</a> • 
 <a href="#Configuration">Configuration</a> • 
 <a href="#Execution">Execution</a> • 
 <a href="#Author">Author</a>
</p>

### Prerequisite
---

Before you start automating, I recommend you to install all the frameworks listed bellow on your machine:

- [x] [Python](https://www.python.org)
- [x] [VSCode](https://code.visualstudio.com/)
- [x] [Git Bash](https://git-scm.com/downloads)

First we have to configure our automation frameworks. Let's get started by cloning the repository. For that, use the command line bellow in your Git Bash:

```bash
$ git clone https://github.com/RGColozzo/test-for-vector-solutions.git
```

After doing that you have to run the command bellow to install pyyaml:

```bash
$ pip install pyyaml
```

Now you're seted up can start installing and configuring 🤖 Robot Framework and the Selenium library!

### Configuration
---

✅ *STEP 1* - Open Git Bash to install Robot Framework and the Selenium2Library (you'll need to have python and pip installed for that):

```bash
# Install Robot Framework
$ pip install robotframework

# Install Selenium2Library
$ pip install robotframework-selenium2library
```

✅ *STEP 2* - Now we have to download and save the [Chromedriver](https://chromedriver.chromium.org/downloads), because we'll use Chrome as our testing browser.
**Obs.: Remember to always verify the version of your Chrome browser and e get the compatible driver for it.**

✅ *STEP 3* - Extract the file out of the downloaded file .zip (or .rar).

✅ *STEP 4* - Go to your C: directory and create a new folder called "Automation Drivers".

✅ *STEP 5* - Put the chromedriver.exe file inside that folder.

✅ *STEP 6* - Edit your PATH environment variable and add inside of it the path to your chrome driver (C:\Automation Drivers\chromedriver.exe).

Now that you have all installed and configured, let's run this automations!

### Execution
---

To execute the automations you'll have to execute the command bellow in your projects directory using Git Bash:
```bash
$ make runantomation
```

### Author
---

Made by [Rennan Gimenez](https://www.instagram.com/rennangimenez/)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)
