# 00 — Method

Run these steps in order. Do not invent a trigger, expression, field map, owner, template, time zone, or recipient because it would be typical.

## 1. Source inventory

For every input file, record filename, component, scope, what it includes, what it omits, date or snapshot label if present, and whether it is configuration, observed behavior, process guidance, or a mixture.

## 2. Component inventory

List every app, screen, form, list, library, folder, view, page, flow, generated document type, notification type, and configuration list **named in the sources**. If it is not named, it does not go in the inventory as a fact.

## 3. Source-of-truth analysis

Declare which list is authoritative, which datasets are downstream, which fields are generated, which records are retained after publication ends, and which component should be edited when a correction is required. If a source does not establish a point, mark it UNRESOLVED.

## 4. Field-level crosswalk

For each business field, trace as much of this chain as evidence permits:

App screen → control → DataField → list display name → internal name → type → required → default → validation → choices → flow use → generated packet use → public list → page display → notification use → archive use

Do not imply a mapping that is not supported.

## 5. Status and state analysis

For every status value: meaning, who sets it, manual or automated, documented previous status, documented next status, flows affected, emails, documents, public-record effects, closure effects, safeguards, unresolved transitions.

## 6. Flow analysis

When the source supplies only a flow name and a purpose sentence, record exactly that. List the internals that still require a flow export. Do not write a trigger type.

## 7. Conflict reconciliation

When two sources disagree, write both statements, say whether the difference may be timing, scope, terminology, or missing evidence, and leave the disposition open until new evidence arrives.

## 8. Privacy and exposure

Separate internal-only fields from public fields. Do not copy requester, reviewer, or applicant identifiers into a public artifact.

## 9. Validation and business rules

Distinguish rules written as guidance from rules enforced in the app, in SharePoint, in a flow, or only by a human reviewer.

## 10. Second-pass audit

Confirm every source was used, every named component appears, internal and public fields were not swapped, manual and automated actions were not swapped, snapshot counts were not frozen as architecture, and recommendations were not written as current-state fact.
