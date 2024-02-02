# Launch your own RocketChat server

## RocketChat
[RocketChat](https://www.rocket.chat/) is an open-source team collaboration platform that offers real-time chat and messaging. It uses a unique threaded conversation model to organize discussions into topics, enhancing communication management within teams. It also supports integrations, file sharing, and powerful search capabilities, making it a comprehensive solution for efficient team communication.

For simplicity, we'll deploy our RocketChat server using an acorn image.


## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/rocketchat-acorn.git`

Next build and run.

`acorn build -t rocketchat`

`acorn run -n rocketchat rocketchat`

Visit your acorn dashboard to see if your deployment was successful.

Click on the RocketChat deployment, and find the endpoint section on the right side panel.  This is your RocketChat instance link.

![rocketchat_acorn_ui](https://github.com/randall-coding/rocketchat-acorn/assets/39175191/90123158-0ad9-4b6b-bcf6-20217132bb59)

![rocketchat_endpoints](https://github.com/randall-coding/rocketchat-acorn/assets/39175191/d1c1aa09-9b20-4831-b78f-ec5a8a789f9f)

## Configure RocketChat

Visit the endpoint URL for your RocketChat server. You'll land on the Admin Creation page for step 1 of the server setup. Fill in the information and go to the next step. Make sure you use a valid email address where RocketChat can send you a verification email.

![rocketchat_step1](https://github.com/randall-coding/rocketchat-acorn/assets/39175191/27c1e113-0845-40d5-ae75-7a0b69200ebc)

Fill in the organization information.

![rocketchat_step2](https://github.com/randall-coding/rocketchat-acorn/assets/39175191/712b76f9-9c92-45e7-877f-13cd69ab959f)

Register your workspace.

![rocketchat_step3](https://github.com/randall-coding/rocketchat-acorn/assets/39175191/17b52517-c785-4ed1-a31b-a5f728802272)

Check your email's inbox and you should receive a verification email from RocketChat. Click on the verification link.

After verification, you should see the dashboard of RocketChat where you can invite new users.

![rocketchat_dashboard](https://github.com/randall-coding/rocketchat-acorn/assets/39175191/1f798ddc-dfe6-47d6-9a99-82dfb4a15a61)

### SMTP Configuration

In order to invite new team members to your chat, we'll need to set up SMTP integration with our SMTP mailer.  Click on the Workspace settings link from the "three dot" dropdown menu.

<img width="400" alt="rocketchat_smtp1" src="https://github.com/randall-coding/rocketchat-acorn/assets/39175191/d812cb2f-0930-422d-946d-b506fe965d2d">


Click on Settings from the left navigation bar and search for SMTP. Open the "Email" Settings.  Then choose "SMTP" and fill in the necessary fields from your existing SMTP server (as your developer if you're a non-technical person).

<img width="914" alt="rocketchat_smtp2" src="https://github.com/randall-coding/rocketchat-acorn/assets/39175191/aa90e03a-bde8-45e9-8a78-612d0c49b10d">

After saving changes (and if all goes right) you should be able to invite your first user to your team chat.

## Conclusion
That's all there is to it.  We've now got a RocketChat server up and running from an acorn image.
For more detailed instructions on working with your RocketChat server see the RocketChat documentation.

## References
* [RocketChat Documentation](https://docs.rocket.chat/)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
