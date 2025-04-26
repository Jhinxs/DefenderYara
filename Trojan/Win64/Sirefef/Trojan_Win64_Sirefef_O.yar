
rule Trojan_Win64_Sirefef_O{
	meta:
		description = "Trojan:Win64/Sirefef.O,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {61 00 63 00 74 00 69 00 6f 00 6e 00 63 00 65 00 6e 00 74 00 65 00 72 00 } //1 actioncenter
		$a_03_1 = {f3 0f 7f 00 48 8b 44 24 ?? 48 89 78 04 48 8b 44 24 } //1
		$a_03_2 = {48 8b 16 8b 5f 10 8b 07 48 03 da 48 03 c2 48 8b 08 48 85 c9 0f 84 ?? ?? 00 00 48 bf 00 00 00 00 00 00 00 80 48 85 cf 75 ?? 48 8d 74 0a 02 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule Trojan_Win64_Sirefef_O_2{
	meta:
		description = "Trojan:Win64/Sirefef.O,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {61 00 63 00 74 00 69 00 6f 00 6e 00 63 00 65 00 6e 00 74 00 65 00 72 00 } //1 actioncenter
		$a_03_1 = {f3 0f 7f 00 48 8b 44 24 ?? 48 89 78 04 48 8b 44 24 } //1
		$a_03_2 = {48 8b 16 8b 5f 10 8b 07 48 03 da 48 03 c2 48 8b 08 48 85 c9 0f 84 ?? ?? 00 00 48 bf 00 00 00 00 00 00 00 80 48 85 cf 75 ?? 48 8d 74 0a 02 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}