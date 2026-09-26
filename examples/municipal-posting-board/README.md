# Example: municipal posting board

This is a **generic** case study. It shows how the kit looks when filled. It is not a description of any named employer tenant.

Pattern:

- A canvas app collects one posting request
- An internal list is the system of record
- A reviewer sets status by hand
- Named flows confirm, return revisions, generate a packet, publish, sync, unpublish, and close
- A public list and page show a short applicant view plus a packet link
- Closed internal records are kept

Exact production names, URLs, owners, and counts are omitted on purpose.

Read in this order:

1. [architecture.md](architecture.md)
2. [status-model.md](status-model.md)
3. [sanitized-dictionary.md](sanitized-dictionary.md)
4. [flow-register.md](flow-register.md)
5. [unresolved-register.md](unresolved-register.md)
