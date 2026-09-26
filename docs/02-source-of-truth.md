# 02 — Source of truth

Most posting and case-management Power Platform solutions use two lists that share field names. Shared names are not shared authority.

## Default pattern this kit assumes

| Component | Role |
|---|---|
| Internal requests list | Authoritative operational record. Content and status are edited here. |
| Public openings list | Downstream, applicant- or staff-facing subset. |
| Canvas app | Intake surface. Writes new items to the requests list. Not the archive. |
| Flows | React to the requests list. Do not become a second source of truth. |
| Site page | Display surface over the public list and document library. |
| Document library | Packet store. Named by a stable business key. |

## Edit rule

When a published title, deadline, or packet is wrong, correct the **requests** item first. Then confirm the public row and the file match. If a flow is supposed to copy the correction and does not, that is an Unresolved or a test failure — not a reason to edit the public list as if it were master.

## If the sources do not say which list is master

Write UNRESOLVED. Do not assume the internal list wins because that is common.
