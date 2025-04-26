
rule Trojan_Win32_LummaStealer_MH_MTB{
	meta:
		description = "Trojan:Win32/LummaStealer.MH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 44 24 10 33 c6 89 44 24 10 8b 44 24 18 31 44 24 10 2b 7c 24 10 81 c5 ?? ?? ?? ?? ff 4c 24 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}