
rule Trojan_BAT_AsyncRat_NEI_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.NEI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 04 00 00 "
		
	strings :
		$a_03_0 = {28 2f 00 00 0a 06 28 30 00 00 0a 6f 31 00 00 0a 72 ?? ?? 00 70 6f 32 00 00 0a 72 ?? ?? 00 70 6f 33 00 00 0a } //5
		$a_01_1 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 44 00 6f 00 6e 00 65 00 2e 00 76 00 62 00 73 00 } //4 C:\ProgramData\Done.vbs
		$a_01_2 = {52 00 65 00 67 00 41 00 73 00 6d 00 2e 00 65 00 78 00 65 00 } //4 RegAsm.exe
		$a_01_3 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //4 powershell.exe
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*4+(#a_01_2  & 1)*4+(#a_01_3  & 1)*4) >=17
 
}