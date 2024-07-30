Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1006" {
    It "Intune.AV.1006: Antivirus is Enabled. See https://maester.dev/docs/tests/Intune.AV.1006" {
        (Get-MpComputerStatus).AntivirusEnabled | Should -Be 'True'
    }
}