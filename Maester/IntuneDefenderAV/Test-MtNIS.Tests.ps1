Describe "Intune: Microsoft Defender AV" -Tag "IntuneScope", "Security", "All", "Intune.AV.1010" {
    It "Intune.AV.1010: NIS is Enabled. See https://maester.dev/docs/tests/Intune.AV.1010" {
        (Get-MpComputerStatus).NISEnabled | Should -Be 'True'
    }
}