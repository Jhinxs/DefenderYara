
rule Trojan_Win32_Zenpak_ASY_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.ASY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {55 89 e5 8a 45 0c 8a 4d 08 c7 05 ?? ?? ?? ?? 5f 06 00 00 c7 05 ?? ?? ?? ?? 97 df ff ff 30 c8 0f b6 c0 5d c3 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}