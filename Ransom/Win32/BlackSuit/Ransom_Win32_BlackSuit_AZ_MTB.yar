
rule Ransom_Win32_BlackSuit_AZ_MTB{
	meta:
		description = "Ransom:Win32/BlackSuit.AZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b c2 8d 0c 16 83 e0 1f 42 8a 80 ?? ?? ?? ?? 32 04 0f 88 01 81 fa ?? ?? ?? ?? 72 e4 } //1
		$a_03_1 = {8b c6 8d 0c 37 33 d2 46 f7 74 ?? ?? 8a 82 ?? ?? ?? ?? 32 04 0b 88 01 81 fe ?? ?? ?? ?? 72 e1 } //1
		$a_01_2 = {72 00 65 00 61 00 64 00 6d 00 65 00 2e 00 62 00 6c 00 61 00 63 00 6b 00 73 00 75 00 69 00 74 00 2e 00 74 00 78 00 74 00 } //10 readme.blacksuit.txt
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*10) >=11
 
}