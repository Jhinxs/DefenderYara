
rule Trojan_BAT_FormBook_LCN_MTB{
	meta:
		description = "Trojan:BAT/FormBook.LCN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //1 GetFolderPath
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //1 DownloadFile
		$a_01_2 = {52 00 65 00 6c 00 69 00 61 00 62 00 69 00 6c 00 69 00 74 00 79 00 43 00 6f 00 6e 00 74 00 72 00 61 00 63 00 74 00 41 00 74 00 74 00 72 00 69 00 62 00 75 00 74 00 65 00 } //1 ReliabilityContractAttribute
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_5 = {33 00 37 00 2e 00 31 00 33 00 39 00 2e 00 31 00 32 00 39 00 2e 00 31 00 34 00 32 00 } //1 37.139.129.142
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}