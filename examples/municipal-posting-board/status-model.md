# Status model (generic)

Values used in this example: `Submitted`, `NeedsRevision`, `Approved`, `Scheduled`, `Posted`, `Unpublished`, `Closed`.

| Status | Meaning | Who sets it | Manual or automated | Public effect |
|---|---|---|---|---|
| Submitted | New request or returned revision | App create (process text) or named flip flow | Mixed; create path Unresolved in app source | None |
| NeedsRevision | Reviewer sent it back | Reviewer | Manual | None |
| Approved | Reviewer accepted it for progression | Reviewer | Manual | None |
| Scheduled | Ready for a later post date | Reviewer | Manual | None |
| Posted | Live | Reviewer and/or named publish flow | Mixed | Copy to Current Openings |
| Unpublished | Withdrawn from the board | Reviewer | Manual | Remove Current Openings row |
| Closed | Ended; retained | Reviewer and/or named close flow | Mixed | Public-row fate Unresolved |

## Supported arrows

```
Submit --> Submitted
Submitted --> NeedsRevision --> Submitted
Submitted --> Approved --> Scheduled --> Posted
Posted --> Unpublished
Posted --> Closed
```

## Unsupported arrows (do not draw them as fact)

Posted back to Scheduled. Closed reopened. Unpublished back to Posted. Submitted directly to Posted. Approved skipped.

A snapshot with zero rows in `Approved` does not prove the stage is optional.
