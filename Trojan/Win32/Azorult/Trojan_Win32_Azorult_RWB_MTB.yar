
rule Trojan_Win32_Azorult_RWB_MTB{
	meta:
		description = "Trojan:Win32/Azorult.RWB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {81 ff f9 a8 d5 6a 0f 8c ?? ?? ?? ?? 8b 35 ?? ?? ?? ?? 8b 3d ?? ?? ?? ?? 8b 1d ?? ?? ?? ?? 33 c9 89 4d ?? 81 f9 fa 03 00 00 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}