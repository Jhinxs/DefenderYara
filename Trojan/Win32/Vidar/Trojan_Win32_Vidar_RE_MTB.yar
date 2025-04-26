
rule Trojan_Win32_Vidar_RE_MTB{
	meta:
		description = "Trojan:Win32/Vidar.RE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 4d fc 8b 15 ?? ?? ?? ?? 80 34 11 ?? 8d 04 11 8d 45 fc 50 ff 15 ?? ?? ?? ?? 8b 4d fc 3b 0d ?? ?? ?? ?? 72 db } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}