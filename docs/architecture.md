# Architecture

Two lists, one app, one flow family.

**Posting Requests** is the record. Every request lives here from first submit through Closed. Reviewers edit status on this list.

**Current Openings** is a published subset. The flow writes and deletes rows here. Applicants never see Posting Requests.

**Canvas app** is intake plus a reviewer gallery. It writes new rows. It does not assign the reference number.

**Packet library** holds one HTML/PDF file per published request, named `REF-####-FY-YYYY.html`. Year folders keep prior cycles.

Internal-only on the request row: requester email, reviewer notes, eligibility text, office routing. Public on the openings row: reference number, title, dates, hours, packet link.

Status values the flow keys on:

| Status | Who sets it | Flow |
|---|---|---|
| Submitted | App, on submit | Confirm to requester |
| Needs revision | Reviewer | Send notes, stay off openings |
| Approved | Reviewer | Packet + openings row |
| Unpublished | Reviewer | Drop openings row |
| Closed | Reviewer | Drop openings row; keep request |
