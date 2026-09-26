# 01 — Evidence labels

Use these labels on material findings. Do not stamp every sentence if the section already states its evidence status.

| Label | Meaning | Allowed in public repo? |
|---|---|---|
| **Verified** | Directly stated or shown in at least one supplied source | Yes, if the source itself is publishable |
| **Cross-verified** | Independently supported by two or more supplied sources | Yes, same rule |
| **Indicated but not fully verified** | Suggested by component relationships or outcomes, not technically established | Yes, if no live identifiers |
| **Unresolved** | Missing, contradictory, incomplete, or not exposed | Yes — unresolved items are a feature |
| **Recommendation** | Proposed test, control, or documentation step | Yes — never written as current-state fact |

## Rules

- A flow **name** is Verified if a source lists that name. The **trigger** is Unresolved until the definition is in hand.
- A snapshot count is Verified as a snapshot, not as architecture. Always keep the date or period label.
- Matching counts on two lists at one moment Indicate a controlled publish model. They do not Verify upsert logic.
- Built-in SharePoint Approvals being disabled is a configuration fact only when a source states it.
