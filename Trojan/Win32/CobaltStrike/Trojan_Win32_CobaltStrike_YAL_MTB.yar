
rule Trojan_Win32_CobaltStrike_YAL_MTB{
	meta:
		description = "Trojan:Win32/CobaltStrike.YAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b ec 56 0f b6 45 08 0f b6 c0 0f b6 55 0c 0f b6 d2 33 c2 88 45 fc } //1
		$a_03_1 = {88 45 d0 83 c4 08 b8 ?? ?? ?? ?? 03 45 ec 0f b6 00 0f b6 c0 83 f0 49 ba ?? ?? ?? ?? 03 55 ec 88 02 b8 01 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}