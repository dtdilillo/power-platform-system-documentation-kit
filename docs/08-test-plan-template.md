# 08 — Test plan template

Use this as a checklist. Record pass / fail / blocked / not-built.

## Navigation and intake

- Default launch opens the welcome or start screen
- Disclaimer or acknowledgement gate blocks the form until checked
- Submit control stays disabled until documented app-level checks pass
- Successful submit creates one internal-list item
- Confirmation screen or message appears

## Field rules

- Each required-field condition fails independently
- Requester email rule (if any domain restriction exists) rejects the wrong domain
- Contact email rule accepts or rejects the documented pattern
- Date fields reject blank and past values if the app says they must
- Rich text stores HTML; packet output is then checked separately

## Status and revision

- New item lands in the documented first status
- Reviewer can set NeedsRevision
- Revision notice sends or is logged as Unresolved if untestable
- Requester save returns the item to the review queue by the documented path
- Path itself is a test item when the app source only shows New mode

## Packet, schedule, publish

- Packet generates or refreshes for the documented statuses
- File name contains the business key
- File opens
- Scheduled notice sends
- Manual publish and any named auto-publish are tested as separate paths
- Public list gains exactly one row for that key

## Unpublish and close

- Unpublish removes or hides the public row by the documented rule
- Internal item remains
- Expiration close uses the documented date field
- Time-zone edge at midnight is tested, not assumed

## Failure and permissions

- Packet flow fails: confirm email behavior
- Sync fails: internal list remains authoritative
- Removal fails: look for an orphan public row
- Requester cannot read other requesters' items unless the source says they can

## Rollover

- New year folder
- New file-name prefix
- Page copy
- Prior-year files still resolve or are intentionally archived
