
rule Trojan_Win32_Trickbot_MIB_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.MIB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {bf e0 07 00 00 6a 40 68 00 30 00 00 57 56 ff 75 ?? 89 45 ?? 2b df ff 55 ?? 57 8b 7d ?? 89 45 ?? 8d 0c 1f 51 50 ff 55 ?? 83 c4 0c 56 6a 40 68 00 30 00 00 53 56 ff 75 ?? ff 55 ?? 8b f0 53 57 56 ff 55 ?? 83 c4 0c } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}