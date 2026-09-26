# Security and confidentiality

This repository documents a **method**. It must never become a channel for live-tenant internals.

## Do not commit

- Connection strings, client secrets, certificates, or `.env` files
- Power Automate exports from a production environment
- SharePoint list schema exports from a production list
- App YAML or `.msapp` files from a production app
- Administrator rosters, service-account names, or shared-mailbox addresses
- Applicant data, requester names, or posting content from real items
- Operational counts that identify a live inventory
- Screenshots of a production list, flow, or jobs board
- URLs that resolve to an internal SharePoint site

## If something landed here by mistake

1. Do not make a "delete file" commit and consider it gone. Git history still holds it.
2. Rotate any exposed credential.
3. Remove the file from history (`git filter-repo` or GitHub support guidance).
4. Open a private operations note describing what was exposed and when.

## Public vs private

| Public (this repo) | Private annex |
|---|---|
| Method, templates, generic example | Live MASTER, flow JSON, list schema |
| Evidence-label definitions | Real flow names and owners |
| Privacy checklist | Admin roster and support contacts |
| Test-plan pattern | Environment URLs |

The existence of a private annex is expected. Linking to it from this README is not.
