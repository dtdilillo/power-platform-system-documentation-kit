# 05 — Flow register template

One subsection per **exact** flow name. If two sources punctuate the same name differently, record both spellings.

## Flow: `<exact name>`

- Verified purpose (quote or paraphrase the source; do not upgrade it):
- Trigger type: UNRESOLVED unless the definition is attached
- Trigger conditions: UNRESOLVED
- Source list:
- Actions / branches / expressions: UNRESOLVED
- Status effects:
- Document effects:
- Public-list effects:
- Notification effects:
- Recipients: UNRESOLVED
- Attachments: named in the flow title or Unresolved
- Error handling / retry / concurrency / owner / connection: UNRESOLVED
- Known name-level dependencies:
- Unresolved configuration: everything the export would show

## Interaction notes (observations, not failures)

Record these as review points when multiple flows share a status change:

- Duplicate-notice risk if two flows fire on the same status
- Ordering risk if a "send with attachments" flow depends on a packet-generation flow
- Sync/removal risk if the public list match key is not documented
- Loop risk if a flow writes Status and another flow triggers on Status

Do not describe a system as broken unless evidence shows a broken run.
