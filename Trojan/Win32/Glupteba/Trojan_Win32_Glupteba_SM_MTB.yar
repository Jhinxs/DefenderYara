
rule Trojan_Win32_Glupteba_SM_MTB{
	meta:
		description = "Trojan:Win32/Glupteba.SM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {29 45 70 81 3d ?? ?? ?? 00 b6 0c } //1
		$a_02_1 = {81 c7 47 86 c8 61 ff 8d ?? ?? ?? ?? 0f 85 ?? ?? ?? ?? 8b 85 98 fd ff ff 8b 4d 70 5f 5e 89 58 04 89 08 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}