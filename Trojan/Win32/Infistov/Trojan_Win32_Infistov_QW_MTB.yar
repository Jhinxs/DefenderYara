
rule Trojan_Win32_Infistov_QW_MTB{
	meta:
		description = "Trojan:Win32/Infistov.QW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 "
		
	strings :
		$a_81_0 = {49 6e 73 74 61 6c 6c 65 72 46 69 6c 65 54 61 6b 65 4f 76 65 72 2e 70 64 62 } //3 InstallerFileTakeOver.pdb
		$a_81_1 = {4e 74 43 6f 6d 70 61 72 65 54 6f 6b 65 6e 73 } //3 NtCompareTokens
		$a_81_2 = {43 6f 6e 76 65 72 74 53 74 72 69 6e 67 53 65 63 75 72 69 74 79 44 65 73 63 72 69 70 74 6f 72 54 6f 53 65 63 75 72 69 74 79 44 65 73 63 72 69 70 74 6f 72 57 } //3 ConvertStringSecurityDescriptorToSecurityDescriptorW
		$a_81_3 = {49 73 50 72 6f 63 65 73 73 6f 72 46 65 61 74 75 72 65 50 72 65 73 65 6e 74 } //3 IsProcessorFeaturePresent
		$a_81_4 = {40 41 70 70 48 65 6c 70 54 6f 61 73 74 2e 70 6e 67 } //3 @AppHelpToast.png
		$a_81_5 = {43 3a 5c 46 69 6c 65 5c 54 6f 5c 54 61 6b 65 5c 4f 76 65 72 } //3 C:\File\To\Take\Over
		$a_81_6 = {70 69 70 65 5c 45 78 70 6c 6f 69 74 50 69 70 65 } //3 pipe\ExploitPipe
	condition:
		((#a_81_0  & 1)*3+(#a_81_1  & 1)*3+(#a_81_2  & 1)*3+(#a_81_3  & 1)*3+(#a_81_4  & 1)*3+(#a_81_5  & 1)*3+(#a_81_6  & 1)*3) >=21
 
}