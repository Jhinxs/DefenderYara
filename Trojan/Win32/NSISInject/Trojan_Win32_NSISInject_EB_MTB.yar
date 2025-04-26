
rule Trojan_Win32_NSISInject_EB_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {6a 40 68 00 30 00 00 8b d8 53 6a 00 ff 15 } //5
		$a_03_1 = {88 04 39 41 3b cb 72 ?? 6a 00 6a 00 57 ff 15 ?? ?? ?? ?? 58 59 81 f2 30 09 00 00 2d 76 d6 00 00 05 0a 1a 00 00 43 c2 } //1
		$a_03_2 = {88 04 39 41 3b cb 72 ?? 6a 00 6a 00 57 ff 15 ?? ?? ?? ?? 49 c2 ?? ?? 4a f7 d1 58 49 81 f3 b6 72 01 00 81 eb 1e 26 01 00 c2 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=6
 
}