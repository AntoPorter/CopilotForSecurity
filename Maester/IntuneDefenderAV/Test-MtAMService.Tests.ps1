Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1004" {
    It "Intune.AV.1004: AMService is Enabled. See https://maester.dev/docs/tests/Intune.AV.1004" {
        (Get-MpComputerStatus).AMServiceEnabled | Should -Be 'True'
    }
}