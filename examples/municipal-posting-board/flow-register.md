# Flow register (generic names)

These names are kit names. They are not production titles.

Purpose sentences are what a name-only inventory can support. Every trigger is Unresolved.

| Kit name | Purpose that the name supports | Status effect | Public effect |
|---|---|---|---|
| Send Request Confirmation | Confirm initial submit | None named | None |
| Send Revision Notice | Notice when status becomes NeedsRevision | Reacts | None |
| Return Revised Request to Review | NeedsRevision → Submitted after save | Writes Submitted | None |
| Notify Reviewer of Resubmission | Reviewer told the item is back | Reacts | None |
| Generate Posting Packet | Refresh packet while Approved, Scheduled, or Posted | None named | Link update Unresolved |
| Send Scheduled Notice | Confirm Scheduled; may attach packet | Reacts | None |
| Publish Scheduled Item | Scheduled → Posted by a rule | Writes Posted | May cause sync |
| Send Published Notice | Confirm Posted; may attach packet | Reacts | None |
| Copy Published Item to Openings List | Copy Posted row to Current Openings | Reacts | Create or update row |
| Remove Openings Item on Unpublish | Drop the public row | Reacts | Remove |
| Send Unpublish Notice | Confirm Unpublished | Reacts | None |
| Close Expired Published Items | Posted → Closed after deadline | Writes Closed | Public fate Unresolved |

## Dependency observations (not verified failures)

- Scheduled and published notices that attach a packet depend on Generate Posting Packet finishing first.
- Publish Scheduled Item may also cause Send Published Notice and Copy Published Item if those trigger on Posted.
- Return Revised Request to Review and Notify Reviewer of Resubmission may both fire on the same save.
- Copy and Remove need a stable key (Reference Number is indicated, not proven).
