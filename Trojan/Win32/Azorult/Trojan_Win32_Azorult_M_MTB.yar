
rule Trojan_Win32_Azorult_M_MTB{
	meta:
		description = "Trojan:Win32/Azorult.M!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 85 ec fd ff ff 83 c0 01 89 85 ec fd ff ff 83 bd ec fd ff ff 14 7d 4b 8b 8d ec fd ff ff 8b 14 8d ?? ?? ?? ?? 81 ea ?? ?? ?? ?? 8b 85 ec fd ff ff 89 14 85 ?? ?? ?? ?? 83 bd ec fd ff ff 13 7d 20 8b 8d ec fd ff ff 8b 14 8d 28 21 41 00 81 ea ?? ?? ?? ?? 8b 85 ec fd ff ff 89 14 85 ?? ?? ?? ?? eb 9d } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}