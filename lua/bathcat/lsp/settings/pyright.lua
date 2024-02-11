-- Disable type checking
return {
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
                diagnosticSeverityOverrides = {
                    reportGeneralTypeIssues = 'warning',
                    reportOptionalMemberAccess = 'warning',
                    reportOptionalSubscript = 'warning',
                    reportPrivateImportUsage = 'none',
                }
            }
        }
    }
}
