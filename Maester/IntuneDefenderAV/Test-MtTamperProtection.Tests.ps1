Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1003" {
    It "Intune.AV.1003: Tamper Protection is Enabled. See https://maester.dev/docs/tests/Intune.AV.1003" {
        (Get-MpPreference).DisableTamperProtection | Should -Be 'False'
    }
}