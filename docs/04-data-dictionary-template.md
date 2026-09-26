# 04 — Data dictionary template

One block per field. Leave blank rather than guess.

```
Business name:
App control / type:
App DataField / internal name:
List display name:
List internal name:
Data type:
Required in app:
Required on internal list:
Required on public list:
Default:
Validation / choices:
Source (who enters it):
Destination:
Flow use (name only unless definition exists):
Packet / PDF use:
Public exposure (list / page / packet / none):
Archive use:
Evidence label:
Unresolved:
```

## Minimum public/internal split

Document, for every field, whether it is:

- Internal only (requester, reviewer comments, process flags)
- Copied to the public list
- Shown on the site page
- Present only inside the generated packet

A field can exist on the public list and still be omitted from the page view. Record both.
