// Intake screen — btnSubmit.DisplayMode
// Block submit until required fields parse.

If(
    And(
        !IsBlank(txtPositionTitle.Text),
        !IsBlank(cmbOffice.Selected),
        !IsBlank(cmbSeason.Selected),
        Value(txtHours.Text) > 0,
        IsMatch(txtContactEmail.Text, Email)
    ),
    DisplayMode.Edit,
    DisplayMode.Disabled
)

// ---

// txtHours.OnChange — reject non-numeric hours
If(
    IsBlank(txtHours.Text),
    Set(varHoursError, Blank()),
    If(
        IsNumeric(txtHours.Text) && Value(txtHours.Text) > 0,
        Set(varHoursError, Blank()),
        Set(varHoursError, "Enter hours as a number greater than 0.")
    )
)
