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

First of all we have to configure our automation frameworks. Let's get started by cloning the repository. For that, use the command line bellow in your Git Bash:

```bash
$ git clone https://github.com/RGColozzo/test-for-vector-solutions.git
```

Now you can start installing and configuring 🤖 Robot Framework to run the tests!

### Configuration
---

✅ *STEP 1* - Let's get started by running the following command in your Git Bash (you'll need to have python and pip installed for that):

```bash
$ pip install -r requirements.txt
```

✅ *STEP 2* - Now we have to download and save the [Geckodriver](https://github.com/mozilla/geckodriver/releases) (for this test we'll use Mozilla Firefox as our testing browser).

✅ *STEP 3* - Extract the file out of the downloaded file .zip (or .rar).

✅ *STEP 4* - Go to your C: directory and create a new folder with the name that you want to, I'm going to call mine as "webdrivers".

✅ *STEP 5* - Put the chromedriver.exe file inside the folder you created.

✅ *STEP 6* - Edit your PATH environment variable and add inside of it the path to your geckodriver (Example: C:\webrivers\geckodriver.exe).

Now we're setted up, so let's run some automation tests!

### Execution
---

Run the command bellow to execute the automation tests:

```bash
$ robot -d logs -i @vector -L debug vector_solutions_test.robot
```

### Author
---

Made by [Rennan Gimenez](https://www.instagram.com/rennangimenez/)!

[![Linkedin Badge](https://img.shields.io/badge/-Rennan-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/rennan-gimenez/)](https://www.linkedin.com/in/rennan-gimenez/)
