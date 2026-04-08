# Setup

This guide walks through setting up the ACM CRE template on your computer, from creating the GitHub organisation through to running the site locally.

## Before you begin

You will need:

- **GitHub account.** [Create one here](https://github.com/signup) if you don't have one.
- **Text editor.** [VS Code](https://code.visualstudio.com/) works well.

## Step 1: Create a GitHub organisation

Hosting your event in a dedicated GitHub organisation gives you a cleaner URL and lets multiple organisers collaborate. Creating an organisation is free.

From the GitHub home page, click the **+** icon in the top-right toolbar, then choose **New organization**.

<img src="../images/setup/01_setup_neworg.png" alt="GitHub home page with the + menu open and New organization highlighted" width="600">

Pick the **Free** plan.

<img src="../images/setup/02_setup_freeplan.png" alt="GitHub plan picker with Create a free organization highlighted" width="600">

Fill in the organisation form:

1. **Organisation name** (this becomes part of your URL, for example `acm-cre-ashoka`)
2. **Contact email**
3. Choose **My personal account** under "This organisation belongs to"
4. Accept the Terms of Service
5. Click **Next**

<img src="../images/setup/03_setup_orgname.png" alt="GitHub organisation setup form with five numbered fields highlighted" width="600">

On the next screen you can invite collaborators or skip and click **Complete setup**.

<img src="../images/setup/04_setup_complete.png" alt="GitHub Welcome screen with Complete setup button highlighted" width="600">

For more details see [GitHub's guide on creating organisations](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/creating-a-new-organization-from-scratch).

## Step 2: Create your repository from the template

Go to [github.com/ACM-CRE/website-template](https://github.com/ACM-CRE/website-template). Click **Use this template** and choose **Create a new repository**.

<img src="../images/setup/template_repo_01.png" alt="website-template repo page with Use this template menu open" width="600">

In the create-repository form:

1. Open the **Owner** dropdown
2. Pick the organisation you created in Step 1
3. Set **Repository name** to `<your-org>.github.io` (for example `acm-cre-ashoka.github.io`). Using this exact name means GitHub Pages will serve the site at `https://<your-org>.github.io/` with no extra path. If you pick any other name, see [Event Details → Site settings](../customisation/event-details.md#site-settings) later for the `baseurl` adjustment you will need.

<img src="../images/setup/template_repo_02.png" alt="Create repository form with Owner and Repository name fields highlighted" width="600">

Add a short description. Check the visibility (4) and leave it set to **Public** (5). Free GitHub accounts can only publish Pages from public repositories, so picking Private here will block you from enabling Pages later when you deploy.

<img src="../images/setup/template_repo_03.png" alt="Create repository form scrolled to Description and Visibility fields" width="600">

Click **Create repository** at the bottom.

<img src="../images/setup/template_repo_04.png" alt="Create repository form with the Create repository button highlighted" width="600">

You now have your own copy of the template. Click the green **Code** button and copy the **HTTPS** clone URL. You will need it in Step 5.

<img src="../images/setup/template_repo_05.png" alt="New repository page with the Code dropdown open and HTTPS clone URL highlighted" width="600">

For more details see [GitHub's guide on creating from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

## Step 3: Open Terminal

Press `Cmd + Space` to open Spotlight, type `terminal`, and press `Enter`.

<img src="../images/setup/spotlight_terminal_search.png" alt="macOS Spotlight search showing the Terminal app" width="400">

Leave Terminal open. The remaining steps all run inside it.

## Step 4: Install the Xcode Command Line Tools

The Command Line Tools give you `git`, a C compiler, and the system headers that several Ruby gems need to build. On a fresh Mac you almost certainly do not have them yet.

Run:

```bash
xcode-select --install
```

<img src="../images/setup/terminal_05_xcode-select.png" alt="Terminal with the xcode-select --install command typed" width="600">

A system dialog appears. Click **Install**.

<img src="../images/setup/terminal_06_xcode-select.png" alt="macOS dialog asking to install the command line developer tools, with Install button" width="500">

Accept the licence agreement to start the download.

<img src="../images/setup/terminal_07_accept_xcode_tnc.png" alt="Command Line Tools licence agreement dialog with Agree button" width="500">

Wait for the installer to finish. This can take several minutes depending on your connection.

### If `xcode-select --install` fails

On older macOS versions you may see the error `Xcode is not currently available from the software update server`. In that case, download the installer manually:

1. Go to [developer.apple.com/download/all](https://developer.apple.com/download/all/?q=command%20line%20tools%20for%20xcode) and sign in with your Apple ID.
2. Find the **Command Line Tools for Xcode** release that matches your macOS version. The version must match (for example macOS 26.4 needs the 26.4 release).

<img src="../images/setup/terminal_08_alternative_cmd_line_tools_download_option.png" alt="Apple Developer downloads page showing Command Line Tools for Xcode 26.4 highlighted" width="600">

3. Download the `.dmg`, open it, and run `Command Line Tools.pkg`. Click through the installer.

<img src="../images/setup/cmd_line_tools_pkg_install.png" alt="Mounted DMG showing Command Line Tools.pkg installer" width="500">

## Step 5: Clone your repository

Back in Terminal, paste the `git clone` command using the URL you copied in Step 2:

```bash
git clone https://github.com/<your-org>/<your-repo>.git
```

<img src="../images/setup/terminal_01.png" alt="Terminal with a git clone command typed" width="600">

When the clone finishes, change into the project directory:

```bash
cd <your-repo>
```

<img src="../images/setup/terminal_02.png" alt="Terminal showing successful git clone followed by cd into the project directory" width="600">

## Step 6: Install mise

mise manages programming language versions per project. The template uses it to pin Ruby to the version it was tested with.

Install mise:

```bash
curl https://mise.run | sh
```

Activate mise in your shell by adding it to your zsh configuration, then sourcing the file so the change takes effect immediately:

```bash
echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
source ~/.zshrc
```

## Step 7: Trust mise and install Ruby

Tell mise that this project's config is safe:

```bash
mise trust
```

<img src="../images/setup/terminal_03_mise_trust.png" alt="Terminal showing mise trust succeeding" width="600">

Now install Ruby:

```bash
mise install
```

This downloads a precompiled Ruby 3.4 binary. You may see a warning about a Rekor public key — this warning is harmless and the download completes successfully.

<img src="../images/setup/terminal_04_mise_install.png" alt="Terminal showing mise install with a precompiled Ruby binary being extracted" width="600">

Verify the install:

```bash
mise doctor
```

You should see "No problems found".

## Step 8: Install dependencies and run the site locally

Install the project's Ruby gems:

```bash
bundle install
```

Then start the local Jekyll server:

```bash
bundle exec jekyll serve
```

Open [http://localhost:4000](http://localhost:4000) in your browser. You should see the example event website.

To stop the server, press `Ctrl + C`.

## Next steps

- [Customise your event details](../customisation/event-details.md)
- [Deploy your site](../deployment.md)

## Having issues?

See the [Troubleshooting](../troubleshooting.md) guide for solutions to common problems.
