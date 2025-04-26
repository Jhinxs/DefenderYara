
rule Ransom_Win32_Robbinhood_A{
	meta:
		description = "Ransom:Win32/Robbinhood.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 2e 65 78 65 20 73 74 6f 70 20 42 61 63 6b 75 70 45 78 65 63 4d 61 6e 61 67 65 6d 65 6e 74 53 65 72 76 69 63 65 } //1 cmd.exe /c sc.exe stop BackupExecManagementService
		$a_01_1 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 2e 65 78 65 20 73 74 6f 70 20 22 53 6f 70 68 6f 73 20 46 69 6c 65 20 53 63 61 6e 6e 65 72 20 53 65 72 76 69 63 65 22 } //1 cmd.exe /c sc.exe stop "Sophos File Scanner Service"
		$a_01_2 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 2e 65 78 65 20 73 74 6f 70 20 4d 53 53 51 4c 46 44 4c 61 75 6e 63 68 65 72 24 53 42 53 4d 4f 4e 49 54 4f 52 49 4e 47 } //1 cmd.exe /c sc.exe stop MSSQLFDLauncher$SBSMONITORING
		$a_01_3 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 2e 65 78 65 20 73 74 6f 70 20 4d 63 41 66 65 65 46 72 61 6d 65 77 6f 72 6b 4d 63 41 66 65 65 46 72 61 6d 65 } //1 cmd.exe /c sc.exe stop McAfeeFrameworkMcAfeeFrame
		$a_01_4 = {63 6d 64 2e 65 78 65 20 2f 63 20 73 63 2e 65 78 65 20 73 74 6f 70 20 52 65 70 6f 72 74 53 65 72 76 65 72 24 53 59 53 54 45 4d 5f 42 47 43 } //1 cmd.exe /c sc.exe stop ReportServer$SYSTEM_BGC
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}