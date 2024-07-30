Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1007" {
    It "Intune.AV.1007: Real Time Protection is Enabled. See https://maester.dev/docs/tests/Intune.AV.1007" {
        (Get-MpComputerStatus).RealTimeProtectionEnabled | Should -Be 'True'
    }
}