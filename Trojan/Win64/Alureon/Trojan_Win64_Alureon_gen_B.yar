
rule Trojan_Win64_Alureon_gen_B{
	meta:
		description = "Trojan:Win64/Alureon.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 "
		
	strings :
		$a_03_0 = {b8 43 46 00 00 66 39 03 74 ?? b8 43 44 00 00 66 39 03 75 } //1
		$a_03_1 = {48 b8 14 00 00 00 80 f7 ff ff 8b 00 48 89 0d ?? ?? ?? ?? 48 8d 0d ?? ?? ?? ?? 89 05 ?? ?? ?? ?? ff 15 } //1
		$a_03_2 = {49 8b 40 18 48 8d 35 ?? ?? ?? ?? 48 8b f8 b9 00 02 00 00 f3 a4 48 8b 03 48 85 c0 74 ?? 4c 8b 43 08 } //1
		$a_01_3 = {49 00 4e 00 20 00 4d 00 49 00 4e 00 54 00 } //1 IN MINT
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=2
 
}