Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1009" {
    It "Intune.AV.1009: Ioav Protection is Enabled. See https://maester.dev/docs/tests/Intune.AV.1009" {
        (Get-MpComputerStatus).IoavProtectionEnabled | Should -Be 'True'
    }
}