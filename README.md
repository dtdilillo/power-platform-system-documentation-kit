# Extra-duty posting pipeline (redacted)

Canvas app → SharePoint (system of record) → reviewer status change → Power Automate → packet file + public openings list.

This is a stripped copy of the pattern I run for central extra-duty / per-session job postings. Environment URLs, list GUIDs, connection names, mailboxes, and live field internal names are replaced with placeholders.

```
Requester
    │  canvas app (SubmitForm / Patch)
    ▼
Posting Requests list          ← system of record
    │  reviewer sets Status
    ▼
Cloud flow (item created or modified)
    ├─ Submitted  → confirmation email to requester
    ├─ Needs revision → email with reviewer notes
    ├─ Approved   → write packet HTML, create Openings row, stamp ReferenceNumber
    ├─ Unpublished → remove Openings row, keep request
    └─ Closed     → remove Openings row, keep request
```

Reviewers decide status. The flow does not approve anything.

## What’s in here

| Path | What it is |
|---|---|
| [`src/power-apps/`](src/power-apps/) | Power Fx from the intake and review screens |
| [`src/sharepoint/`](src/sharepoint/) | Column specs for the two lists |
| [`src/power-automate/`](src/power-automate/) | Status-change flow skeleton + packet HTML template |
| [`docs/architecture.md`](docs/architecture.md) | Component map and what stays internal |

## Run it yourself

1. Create the two lists from the JSON in `src/sharepoint/`.
2. Point a canvas app at `Posting Requests`. Paste the formulas.
3. Import the flow skeleton and reconnect the SharePoint and Outlook actions to your environment.
4. Replace every `[REDACTED]` value before you turn the flow on.

Do not paste a live tenant export into this repo.

David Di Lillo · [linkedin.com/in/daviddilillo](https://linkedin.com/in/daviddilillo)
