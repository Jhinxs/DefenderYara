
rule Trojan_Win32_Farfli_BAV_MTB{
	meta:
		description = "Trojan:Win32/Farfli.BAV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_03_0 = {8d 45 98 89 4d fc 56 68 [0-04] 50 ff 15 [0-04] 83 c4 10 8d 45 98 50 6a 00 6a 00 ff 15 [0-04] 8b f8 85 ff 74 } //2
		$a_03_1 = {53 55 56 57 6a 40 bf 58 db 04 00 68 00 30 00 00 33 ed 57 8b d9 55 ff 15 [0-04] 8b f0 57 56 68 } //2
		$a_01_2 = {31 30 33 2e 31 30 30 2e 32 31 30 2e 39 } //1 103.100.210.9
		$a_01_3 = {31 35 34 2e 32 31 31 2e 31 33 2e 31 31 } //1 154.211.13.11
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}