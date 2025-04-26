
rule Trojan_Win32_Ursnif_AV_MSR{
	meta:
		description = "Trojan:Win32/Ursnif.AV!MSR,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {81 c5 c0 82 5e 01 89 28 0f b7 15 ?? ?? ?? ?? 8d 04 09 2b c7 03 c6 3b d0 73 12 8b d1 2b d0 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}