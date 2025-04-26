
rule Trojan_Win32_Emotet_DDX_MTB{
	meta:
		description = "Trojan:Win32/Emotet.DDX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {85 c0 75 33 6a 08 6a 01 6a 00 6a 00 8d 4d ?? 51 ff 15 ?? ?? ?? ?? 85 c0 75 1d 6a 08 6a 01 6a 00 6a 00 8d 55 90 1b 00 52 ff 15 90 1b 01 85 c0 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}