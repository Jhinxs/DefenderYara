
rule Trojan_Win32_Emotet_PSO_MTB{
	meta:
		description = "Trojan:Win32/Emotet.PSO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {0f b6 4c 24 ?? 89 84 24 ?? ?? ?? ?? 8b 44 24 ?? 0f b6 84 04 ?? ?? ?? ?? 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8b 84 24 ?? ?? ?? ?? 8a 8c 14 ?? ?? ?? ?? 30 08 } //1
		$a_81_1 = {50 66 64 4a 77 5a 50 45 50 56 6d 52 4d 38 4f 44 63 45 76 65 74 67 36 39 72 49 66 6c 41 37 4c 6d 6d 47 5a 77 6c 45 64 72 4a 50 41 } //1 PfdJwZPEPVmRM8ODcEvetg69rIflA7LmmGZwlEdrJPA
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1) >=1
 
}