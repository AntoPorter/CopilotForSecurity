Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1005" {
    It "Intune.AV.1005: Antispyware is Enabled. See https://maester.dev/docs/tests/Intune.AV.1005" {
        (Get-MpComputerStatus).AntispywareEnabled | Should -Be 'True'
    }
}