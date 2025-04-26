
rule Trojan_Win32_NSISInject_BC_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.BC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {8b 45 fc 99 b9 0c 00 00 00 f7 f9 8b 45 f0 0f b6 0c 10 8b 55 f8 03 55 fc 0f b6 02 33 c1 8b 4d f8 03 4d fc 88 01 8b 55 fc 83 c2 01 89 55 fc eb } //2
		$a_03_1 = {83 c4 08 89 45 f4 6a 40 68 00 30 00 00 68 [0-04] 6a 00 ff 15 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2) >=4
 
}