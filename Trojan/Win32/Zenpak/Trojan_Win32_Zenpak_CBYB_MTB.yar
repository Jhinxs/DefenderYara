
rule Trojan_Win32_Zenpak_CBYB_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.CBYB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {4a 42 83 ea 08 01 35 ?? ?? ?? ?? 83 ea 07 83 f0 07 b8 03 00 00 00 8d 05 ?? ?? ?? ?? 31 18 e8 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}