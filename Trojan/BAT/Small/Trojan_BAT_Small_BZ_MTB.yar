
rule Trojan_BAT_Small_BZ_MTB{
	meta:
		description = "Trojan:BAT/Small.BZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_00_0 = {4d 65 6d 52 65 64 75 63 5c 44 72 69 76 65 55 70 64 61 74 65 5c 6f 62 6a 5c 52 65 6c 65 61 73 65 5c 57 69 6e 64 6f 77 73 53 65 61 72 63 68 2e 41 70 70 2e 70 64 62 } //1 MemReduc\DriveUpdate\obj\Release\WindowsSearch.App.pdb
		$a_01_1 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 38 00 } //1 https://cdn.discordapp.com/attachments/8
		$a_81_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_81_3 = {55 52 4c 5a 4f 4e 45 5f 49 4e 54 52 41 4e 45 54 } //1 URLZONE_INTRANET
		$a_81_4 = {53 79 73 74 65 6d 55 57 50 4c 61 75 6e 63 68 65 72 } //1 SystemUWPLauncher
		$a_81_5 = {49 6e 74 72 6e 65 74 } //1 Intrnet
		$a_81_6 = {46 65 74 63 68 46 69 6c 65 73 } //1 FetchFiles
	condition:
		((#a_00_0  & 1)*1+(#a_01_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1) >=7
 
}