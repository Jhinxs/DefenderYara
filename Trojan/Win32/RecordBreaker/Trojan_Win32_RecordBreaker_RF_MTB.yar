
rule Trojan_Win32_RecordBreaker_RF_MTB{
	meta:
		description = "Trojan:Win32/RecordBreaker.RF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {fe c3 0f b6 f3 8a 54 34 ?? 02 fa 0f b6 cf 8a 44 0c ?? 88 44 34 ?? 88 54 0c ?? 0f b6 44 34 ?? 8b 4c 24 ?? 0f b6 d2 03 d0 0f b6 c2 8a 44 04 ?? 30 04 0f 47 3b 7c 24 ?? 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}