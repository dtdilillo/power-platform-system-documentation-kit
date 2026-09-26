// Review screen — galRequests.Items
// Reviewers see every open request. Requesters do not use this screen.

SortByColumns(
    Filter(
        'Posting Requests',
        Status <> "Closed",
        If(
            cmbStatusFilter.Selected.Value = "All",
            true,
            Status = cmbStatusFilter.Selected.Value
        )
    ),
    "SubmittedOn",
    Descending
)

// ---

// Review screen — btnSetApproved.OnSelect
// Status change is the only trigger the flow needs.
// Do not Patch Openings from the app.

If(
    !IsBlank(galRequests.Selected),
    Patch(
        'Posting Requests',
        galRequests.Selected,
        {
            Status:        "Approved",
            ReviewerEmail: User().Email,
            ReviewedOn:    Now(),
            ReviewerNotes: txtReviewerNotes.Text
        }
    )
)
