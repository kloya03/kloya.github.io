# Information about this website edit

This site uses the familiar folder organization of the original AcademicPages site, with a small dependency-free Node.js builder. It is not a Jekyll theme: HTML content and shared templates are built into a static website. No Ruby or package installation is needed. Use Node.js 22 or newer.

## Where to edit

| Folder/file | What to edit |
| --- | --- |
| _pages/about.html | Homepage biography, interests, highlights |
| _pages/cv.html | CV summary and experience |
| _pages/research.html | Public Research page (currently Coming soon) |
| _pages/publications.html | Publications introduction |
| _publications/ | One file per paper; authors, venue, paper/PDF/code links |
| _research/ | Nine individual research project pages, all unpublished |
| _drafts/research-gallery.html | Animated research-card gallery, not public |
| _drafts/example-post.html | Example blog post to copy and edit |
| _posts/ | Blog posts; disabled until postsPublished is true |
| _layouts/default.html | Overall page layout |
| _layouts/post.html | Blog-post wrapper |
| _includes/ | Shared head, header, profile sidebar, footer |
| _data/navigation.json | Menu labels and destinations |
| _data/site.json | Site name, description, research/posts publication switches |
| assets/css/styles.css | Colors, spacing, layout and responsive styling |
| assets/js/ | Theme switch and interactions |
| images/ | Profile photo, diagrams, favicon |
| files/Kartik_Loya_CV.pdf | Downloadable CV; replace this file to update it |
| videos/ | Research videos, copied into the build only when research is enabled |
| scripts/ | Build and preview tools |
| _site/ | Generated website. Do not edit this folder directly. |

## Build and preview

Open a terminal in this folder and run:

    node scripts/build.mjs
    node scripts/serve.mjs

Open http://127.0.0.1:8001 . Run the build command again after editing source files, then refresh the browser. Stop the server with Ctrl+C.

## Publication files

Each HTML file starts with metadata between two lines containing three hyphens. Use double-quoted strings, numbers, or true/false values. The publication order field controls its order. The body contains the visible title, authors, venue and links. Manuscripts have manuscript: true.

## Research drafts

Research is currently Coming soon. _research and _drafts are excluded from the website output. They remain editable source files (and would be visible as source in a public GitHub repository). Do not put confidential text in them.

To publish the full gallery later, finish every card's linked project page, set published: true in the corresponding _research files, and set researchPublished to true in _data/site.json. The builder checks that every linked page exists. Video previews honor reduced-motion preferences and have a pause button.

## Blog posts

Copy _drafts/example-post.html into _posts, give it a unique permalink and title, set published: true, and enable postsPublished in _data/site.json. Posts use _layouts/post.html. Add a link to the post from a page or from navigation; no empty Blog menu is published automatically.

## Copying into D:/kloya.github.io

1. Back up that original folder first.
2. Keep its .git folder: this holds its existing repository connection and history. Do not copy the .git folder from this working copy over it.
3. Replace the old website source files with this folder's source files, including _pages, _data, scripts, package.json and .github/workflows/pages.yml. Do not merge old Prashanth content into these collections. _site is generated and does not need to be committed.
4. Run node scripts/build.mjs in the destination and inspect the output.
5. In GitHub Settings → Pages, choose GitHub Actions as the source. Commit and push to main. The included workflow builds and deploys only _site.

The existing repository is kloya03/kloya.github.io. Its project Pages URL is normally https://kloya03.github.io/kloya.github.io/ . This reorganization does not publish anything or alter D:/kloya.github.io.

## Backup

Older website copies were moved to the Windows Recycle Bin on 2026-11-06 after verification. This kloya folder is the retained working copy, including Git history. The cleanup record is in ../00_Catalog/Cleanup_2026-11-06.json.

## Documentation

- README.md: original AcademicPages theme documentation, recovered from Git history.
- PUBLISHING.md: publishing instructions for the current version.
