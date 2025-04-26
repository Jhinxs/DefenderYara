
rule Trojan_Win32_NSISInject_EE_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.EE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 "
		
	strings :
		$a_01_0 = {6a 40 68 00 30 00 00 50 6a 00 ff 15 } //5
		$a_03_1 = {88 01 41 4e 75 ?? 6a 00 6a 00 57 ff 15 ?? ?? ?? ?? b9 9c c5 00 00 05 3f e4 00 00 81 f9 d3 b7 00 00 74 } //1
		$a_03_2 = {88 01 41 4e 75 ?? 6a 00 6a 00 57 ff 15 ?? ?? ?? ?? f7 d1 81 eb f3 05 01 00 f7 d2 25 9d 35 00 00 c2 54 60 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=6
 
}