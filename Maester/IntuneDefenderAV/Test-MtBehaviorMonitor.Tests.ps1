Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1008" {
    It "Intune.AV.1008: Behavior Monitor is Enabled. See https://maester.dev/docs/tests/Intune.AV.1008" {
        (Get-MpComputerStatus).BehaviorMonitorEnabled | Should -Be 'True'
    }
}