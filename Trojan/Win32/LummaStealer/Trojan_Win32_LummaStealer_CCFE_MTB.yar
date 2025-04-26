
rule Trojan_Win32_LummaStealer_CCFE_MTB{
	meta:
		description = "Trojan:Win32/LummaStealer.CCFE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 44 24 24 8b 4c 24 ?? 0f b6 04 08 8b 4c 24 ?? 83 e1 1f 0f b6 4c 0c ?? 31 c8 8b 4c 24 0c 8b 54 24 ?? 88 04 11 8b 44 24 ?? 83 c0 01 89 44 24 08 eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}