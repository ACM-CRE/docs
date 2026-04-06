# Setup

This guide walks through setting up the ACM CRE template on your computer, from creating the GitHub organisation through to running the site locally.

## Before you begin

You will need:

- **GitHub account.** [Create one here](https://github.com/signup) if you don't have one.
- **Text editor.** [VS Code](https://code.visualstudio.com/) works well.

## Step 1: Create a GitHub organisation

Hosting your event in a dedicated GitHub organisation gives you a cleaner URL and lets multiple organisers collaborate. Creating an organisation is free.

From the GitHub home page, click the **+** icon in the top-right toolbar, then choose **New organization**.

Pick the **Free** plan.

Fill in the organisation form:

1. **Organisation name** (this becomes part of your URL, for example `acm-cre-ashoka`)
2. **Contact email**
3. Choose **My personal account** under "This organisation belongs to"
4. Accept the Terms of Service
5. Click **Next**

On the next screen you can invite collaborators or skip and click **Complete setup**.

For more details see [GitHub's guide on creating organisations](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/creating-a-new-organization-from-scratch).

## Step 2: Create your repository from the template

Go to [github.com/ACM-CRE/website-template](https://github.com/ACM-CRE/website-template). Click **Use this template** and choose **Create a new repository**.

In the create-repository form:

1. Open the **Owner** dropdown
2. Pick the organisation you created in Step 1
3. Set **Repository name** to `<your-org>.github.io` (for example `acm-cre-ashoka.github.io`). Using this exact name means GitHub Pages will serve the site at `https://<your-org>.github.io/` with no extra path. If you pick any other name, see [Event Details → Site settings](../customisation/event-details.md#site-settings) later for the `baseurl` adjustment you will need.

Add a short description. Leave visibility set to **Public** — free GitHub accounts can only publish Pages from public repositories.

Click **Create repository** at the bottom.

You now have your own copy of the template. Click the green **Code** button and copy the **HTTPS** clone URL. You will need it in Step 5.

For more details see [GitHub's guide on creating from a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template).

## Step 3: Open Terminal

Press `Cmd + Space` to open Spotlight, type `terminal`, and press `Enter`.

Leave Terminal open. The remaining steps all run inside it.

## Step 4: Install the Xcode Command Line Tools

The Command Line Tools give you `git`, a C compiler, and the system headers that several Ruby gems need to build. On a fresh Mac you almost certainly do not have them yet.

Run:

```bash
xcode-select --install
```

A system dialog appears. Click **Install**, then accept the licence agreement. Wait for the installer to finish — this can take several minutes depending on your connection.

### If `xcode-select --install` fails

On older macOS versions you may see the error `Xcode is not currently available from the software update server`. In that case, download the installer manually:

1. Go to [developer.apple.com/download/all](https://developer.apple.com/download/all/?q=command%20line%20tools%20for%20xcode) and sign in with your Apple ID.
2. Find the **Command Line Tools for Xcode** release that matches your macOS version. The version must match (for example macOS 26.4 needs the 26.4 release).
3. Download the `.dmg`, open it, and run `Command Line Tools.pkg`. Click through the installer.

## Step 5: Clone your repository

Back in Terminal, paste the `git clone` command using the URL you copied in Step 2:

```bash
git clone https://github.com/<your-org>/<your-repo>.git
```

When the clone finishes, change into the project directory:

```bash
cd <your-repo>
```

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

Now install Ruby:

```bash
mise install
```

This downloads a precompiled Ruby 3.4 binary. You may see a warning about a Rekor public key — this warning is harmless and the download completes successfully.

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
