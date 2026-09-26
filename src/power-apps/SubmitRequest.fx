// Intake screen — RequestForm.OnSuccess
// Writes one row to Posting Requests. Status starts at Submitted.
// Reference number is not collected here.

Set(varBusy, true);

Patch(
    'Posting Requests',
    Defaults('Posting Requests'),
    {
        Title:                  txtPositionTitle.Text,
        OfficeName:             cmbOffice.Selected.Value,
        WorkSeason:             cmbSeason.Selected.Value,
        HoursRequested:         Value(txtHours.Text),
        LocationText:           txtLocation.Text,
        EligibilityText:        txtEligibility.Text,      // internal — not copied to openings
        DutiesText:             txtDuties.Text,
        ApplicationProcess:     txtHowToApply.Text,
        SupervisorName:         txtSupervisor.Text,
        ActivityContactEmail:   txtContactEmail.Text,
        Status:                 "Submitted",
        SubmittedBy:            User().Email,
        SubmittedOn:            Now()
    }
);

Set(varLastSubmit, First(Sort('Posting Requests', ID, Descending)));
Set(varBusy, false);
Navigate(scrConfirm, ScreenTransition.Fade);
