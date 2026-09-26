# Architecture

## Purpose

Collect, review, packet, publish, unpublish, and close extra-duty or per-session style job postings for current employees of a municipal school system. Separate the internal request record from the public openings board.

## Components

| Component | Role | Source-of-truth status |
|---|---|---|
| Central Posting Request App | Requester intake | Downstream of nothing; writes new rows |
| Posting Requests list | Review, status, content, archive | Authoritative |
| Current Openings list | Applicant-facing published rows | Downstream |
| Openings site page | Discovery and packet links | Display |
| Year-partitioned document library | One packet file per reference number | Packet store |
| Administrators list | Person roster for coverage | Configuration |
| Named flows | Confirm, revise, generate, sync, remove, close | Automation support |

## Map

```
Requester
  -> Central Posting Request App
  -> Posting Requests (first status: Submitted)
  -> Reviewer status decisions
  -> Named flows
  -> Packet file in year folder
  -> Current Openings
  -> Openings page
  -> Unpublished or Closed
  -> Posting Requests retains Closed rows
```

## Business key

A reviewer- or system-assigned **Reference Number**. The app does not collect it. Assignment mechanism: UNRESOLVED.

## Control model

- Requesters submit through the app. One request per submission.
- A designated reviewer makes every substantive status decision.
- Named flows do not approve a posting.
- Built-in SharePoint Approval, when documented as disabled, is not the business process.

## Public vs internal

The page shows reference number, applicant-facing title, date posted, deadline, work period, and packet link.

The page does not show requester identity, revision comments, or the full eligibility text. Those stay on the request record and, where relevant, inside the packet.
