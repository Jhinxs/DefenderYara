
rule Trojan_Win32_Lazy_DM_MTB{
	meta:
		description = "Trojan:Win32/Lazy.DM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 e2 05 0b ca 0f b6 45 ?? 33 c8 8b 55 ?? 03 55 ?? 88 0a 8b 45 ?? 83 c0 01 99 b9 0c 00 00 00 f7 f9 89 55 dc eb } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}