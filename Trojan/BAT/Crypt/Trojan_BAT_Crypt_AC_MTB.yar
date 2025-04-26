
rule Trojan_BAT_Crypt_AC_MTB{
	meta:
		description = "Trojan:BAT/Crypt.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {54 00 52 00 43 00 6f 00 4d 00 61 00 6e 00 61 00 67 00 65 00 6d 00 65 00 6e 00 74 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 65 00 78 00 65 00 } //1 TRCoManagementSystem.exe
		$a_01_1 = {45 00 49 00 43 00 41 00 4e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 } //1 EICANotifications
		$a_81_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_81_3 = {50 72 6f 6a 65 63 74 44 61 74 61 } //1 ProjectData
		$a_81_4 = {5f 74 78 74 50 68 6f 6e 65 } //1 _txtPhone
		$a_81_5 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //1 GetResourceString
		$a_81_6 = {67 65 74 5f 53 74 61 72 74 75 70 50 61 74 68 } //1 get_StartupPath
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}