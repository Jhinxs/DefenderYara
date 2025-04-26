
rule Trojan_Win32_Glupteba_ASI_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.ASI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {81 fe c3 e6 12 00 75 05 e8 ?? ?? ?? ?? 81 3d ?? ?? ?? ?? dc 03 00 00 c7 05 ?? ?? ?? ?? f0 a6 46 8e 75 13 6a 00 6a 00 6a 00 6a 00 6a 00 6a 00 68 ?? ?? ?? ?? ff d7 46 81 fe a5 19 15 00 7c } //4
		$a_01_1 = {72 6f 6c 61 77 69 6a 65 6a 6f 6a 6f 6d 6f 6d 61 64 69 79 6f 63 20 6c 69 6e 6f 6d 69 7a 6f 63 6f 68 75 } //1 rolawijejojomomadiyoc linomizocohu
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}