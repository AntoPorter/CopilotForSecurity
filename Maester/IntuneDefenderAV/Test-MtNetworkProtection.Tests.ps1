Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1002" {
    It "Intune.AV.1002: Network Protection is Enabled. See https://maester.dev/docs/tests/Intune.AV.1002" {
        (Get-MpPreference).EnableNetworkProtection | Should -Be '1'
    }
}