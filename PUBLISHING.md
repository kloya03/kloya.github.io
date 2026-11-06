# Publishing Kartik Loya’s website

This guide applies to the current website in the kloya folder. The original theme README describes Jekyll; this version uses the Node.js builder in scripts/build.mjs and the included GitHub Actions workflow.

## 1. Prepare your repository folder

Use your existing GitHub-connected folder, or this kloya working copy. If copying into a different checkout:

- Back up that checkout first and preserve its existing .git folder.
- Replace the old website source with the contents of kloya. Do not copy kloya’s .git folder over the destination’s .git folder.
- Include .github/workflows/pages.yml and .gitignore. These may be hidden in File Explorer.
- Do not merge old theme content into _pages, _publications, or other collections. Old workflows and Jekyll source are not needed for this version.
- _site is generated locally and is excluded from Git. GitHub builds it again.

## 2. Check the website locally

Install Node.js 22 or newer if it is not already installed. Open PowerShell in the website folder and run:

    node scripts/build.mjs
    node scripts/serve.mjs

Open http://127.0.0.1:8001 . If that port is already running the preview, use the existing server. Check About, Publications, CV, the CV download, and Research. Research should display “Coming soon.” Stop the server with Ctrl+C when finished.

No npm install or Ruby/Jekyll setup is required. Rebuild after edits.

## 3. Set up GitHub Pages

Open https://github.com/kloya03/kloya.github.io/settings/pages while signed in. Under **Build and deployment**, set **Source** to **GitHub Actions**. The repository already has a custom workflow named **Publish portfolio**; you do not need a Jekyll starter workflow.

If GitHub Actions is disabled for this fork, open the repository’s Actions tab and enable workflows when prompted.

## 4. Commit and push

In PowerShell, from the website repository folder:

    git remote -v
    git branch --show-current
    git status
    git diff --stat

Confirm the remote is your repository and the publishing branch is main. Review the changed files, then run:

    git add -A
    git commit -m "Update Kartik Loya portfolio; research coming soon"
    git push origin main

Alternatively, use GitHub Desktop to review changes, commit to main, and click Push origin. If Git reports remote changes, fetch and review them before merging; do not force-push.

## 5. Confirm deployment

Open the repository’s **Actions** tab and select **Publish portfolio**. Wait for both **build** and **deploy** to finish successfully. The workflow builds _site, uploads that folder, and deploys it to GitHub Pages. If needed, use **Run workflow** on main to start it manually.

Return to **Settings → Pages** and use the published site URL shown there. For the existing kloya03/kloya.github.io project repository, the expected URL is:

https://kloya03.github.io/kloya.github.io/

The shorter https://kloya03.github.io/ address requires a repository named kloya03.github.io. The address kloya.github.io belongs to the account named kloya, so naming a repository kloya.github.io under kloya03 does not produce that address.

Verify the live homepage, publications, CV download, and “Coming soon” page. A local 127.0.0.1 address only works on your computer and is not the published URL.

## Future edits

Edit the source files described in EDIT_INFORMATION.md, run the build, and push to main. Each push starts the publishing workflow. Keep researchPublished and postsPublished false in _data/site.json until those sections are ready. Draft files are excluded from the website build, but committed source files remain visible in a public repository.

## Troubleshooting

- **404:** Check that the deploy job succeeded, Source is GitHub Actions, and you are using the URL displayed in Settings → Pages.
- **Build failure:** Read the build log. The builder reports missing links, malformed metadata, or missing files.
- **Permission error:** Confirm you are signed in as an account with write access and the repository allows Actions. The workflow declares pages: write and id-token: write.
- **Old content:** Check that the latest commit deployed successfully, then refresh the browser.

## Official references

- [Configure the publishing source](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site)
- [Custom GitHub Pages workflows](https://docs.github.com/en/pages/getting-started-with-github-pages/using-custom-workflows-with-github-pages)

Documentation updated November 6, 2026. No publishing action was performed when these instructions were added.
