# Sanitized field dictionary

Only fields needed to show the method. Production internal names omitted.

| Business name | Entered where | Internal list | Public list | Page | Packet |
|---|---|---|---|---|---|
| Requester Name | App text | Yes | No | No | No |
| Requester Email | App text; domain rule if documented | Yes | No | No | No |
| Office Name | App text | Yes | Yes | No | Title pattern |
| Job Title | App text | Yes | Yes | Inside applicant title | Yes |
| Bargaining Title | App choice | Yes | Yes | Inside applicant title | Yes |
| Pay Type | App choice | Yes | No | No | Maybe |
| Requested Post Date | App date | Yes | As Date Posted | Yes | Maybe |
| Requested Deadline | App text or date | Yes | No | No | No |
| Deadline | Staff or later process | Yes | Yes | Yes | Maybe |
| Work Period | App choice | Yes | Yes | Yes | Maybe |
| Location | App rich text | Yes | No | No | Yes |
| Eligibility | App rich text | Yes | No | No | Yes |
| Selection Criteria | App rich text | Yes | No | No | Yes |
| Duties | App rich text | Yes | No | No | Yes |
| Work Schedule | App rich text | Yes | No | No | Yes |
| Application Instructions | App rich text | Yes | No | No | Yes |
| Supervisor | App text | Yes | No | No | Maybe |
| Primary Contact Email | App email | Yes | No | No | Maybe |
| Status | Not on intake form | Yes | Yes | No | No |
| Revision Comments | Reviewer | Yes | No | No | No |
| Reference Number | Not on intake form | Yes | Yes | Yes | File name |
| Applicant Facing Title | Prepared / calculated | Yes | Yes | Yes | Cover |
| Packet Link | Generated | Yes | Yes | Yes | Self |

Applicant-facing title pattern used in this example:

`FY26 REF #1234: Job Title - Bargaining Title (Office Name)`

Date rules often written as guidance (lead time, posting window) are not the same thing as app validation. Record both.
