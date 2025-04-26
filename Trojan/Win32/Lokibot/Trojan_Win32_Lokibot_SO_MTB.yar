
rule Trojan_Win32_Lokibot_SO_MTB{
	meta:
		description = "Trojan:Win32/Lokibot.SO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 "
		
	strings :
		$a_03_0 = {5d c2 08 00 90 0a 50 00 55 8b ec 90 05 10 01 90 eb ?? 90 05 10 01 90 8a 45 08 90 05 10 01 90 30 ?? 90 05 10 01 90 eb ?? 90 05 10 01 90 8b ?? 0c 90 05 10 01 90 eb ?? 90 05 10 01 90 5d c2 08 00 } //3
		$a_03_1 = {8b ca 03 cb 90 05 10 01 90 c6 01 ?? 90 05 10 01 90 43 48 75 } //1
		$a_03_2 = {b9 01 00 00 00 90 05 10 01 90 8b da 03 d9 c6 03 ?? 90 05 10 01 90 41 48 75 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=4
 
}