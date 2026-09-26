# 03 — Status model template

Copy this section once per status value. Delete rows you cannot support.

## Status: `Submitted`

- Meaning:
- Set by:
- Manual or automated:
- Entry conditions:
- Exit conditions:
- Flows affected:
- Emails:
- Documents:
- Public-list effect:
- Closure effect:
- Unresolved transitions:

## Status: `NeedsRevision`

(same fields)

## Status: `Approved`

(same fields)

## Status: `Scheduled`

(same fields)

## Status: `Posted`

(same fields)

## Status: `Unpublished`

(same fields)

## Status: `Closed`

(same fields)

## Transition map

Write only arrows the sources support.

```
[App submit] --> Submitted
Submitted -- reviewer --> NeedsRevision
NeedsRevision -- requester save / named flip flow --> Submitted
Submitted -- reviewer --> Approved
Approved -- reviewer --> Scheduled
Scheduled -- reviewer and/or named publish flow --> Posted
Posted -- named expiration flow and/or reviewer --> Closed
Posted -- reviewer --> Unpublished
```

Any other arrow is UNRESOLVED until evidence names it.

## Rules

- A status that exists in the choice column but never appears in a snapshot is still a real status.
- A snapshot of zero items in `Approved` does not prove the stage is skipped.
- Built-in SharePoint Approval is a different feature. If it is disabled, say so. Do not call a status column "SharePoint Approval."
