-- Disable type checking
return {
    settings = {
        python = {
            analysis = {
                useLibraryCodeForTypes = true,
                diagnosticSeverityOverrides = {
                    reportGeneralTypeIssues = 'none',
                    reportOptionalMemberAccess = 'none',
                    reportOptionalSubscript = 'none',
                    reportPrivateImportUsage = 'none',
                }
            }
        }
    }
}
