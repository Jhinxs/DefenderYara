
rule Trojan_Win32_RedLineStealer_AV_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.AV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c8 8b 45 fc 33 d2 f7 f1 52 8d 4d 10 e8 [0-04] 0f be 10 33 f2 b8 ff 00 00 00 2b c6 03 45 f8 89 45 f8 eb b8 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}