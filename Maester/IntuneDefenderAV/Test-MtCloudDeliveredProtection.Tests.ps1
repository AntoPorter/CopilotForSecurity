Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1001" {
    It "Intune.AV.1001: Cloud-Delivered Protection is Enabled. See https://maester.dev/docs/tests/Intune.AV.1001" {
        (Get-MpPreference).MAPSReporting | Should -Be '0'
    }
}