
rule Trojan_Win32_NSISInject_DJ_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.DJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 "
		
	strings :
		$a_01_0 = {89 45 dc c7 04 24 00 00 00 00 c7 44 24 04 00 a3 e1 11 c7 44 24 08 00 30 00 00 c7 44 24 0c 04 00 00 00 89 4d d8 ff 55 } //5
		$a_03_1 = {c1 fe 02 0f b6 3d ?? ?? ?? ?? c1 e7 06 89 f0 09 f8 a2 ?? ?? ?? ?? 0f b6 35 90 09 1b 00 88 0d ?? ?? ?? ?? 0f b6 35 ?? ?? ?? ?? 29 f0 a2 ?? ?? ?? ?? 0f b6 35 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_03_1  & 1)*1) >=6
 
}