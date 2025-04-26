
rule Trojan_BAT_FormBook_FK_MTB{
	meta:
		description = "Trojan:BAT/FormBook.FK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {08 13 09 11 07 13 0a 11 09 11 0a 3d 32 00 00 00 02 08 17 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 09 20 b3 15 00 00 5d 59 13 0b 11 08 11 0b 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 08 08 17 58 0c 2b be } //2
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //1 DownloadData
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_3 = {54 6f 53 74 72 69 6e 67 } //1 ToString
		$a_01_4 = {57 65 62 43 6c 69 65 6e 74 } //1 WebClient
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}