
rule Trojan_Win32_NSISInject_EZ_MTB{
	meta:
		description = "Trojan:Win32/NSISInject.EZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 02 00 00 "
		
	strings :
		$a_03_0 = {89 45 e8 6a 40 68 00 30 00 00 68 ?? ?? ?? ?? 50 ff 15 } //10
		$a_03_1 = {8d 4d e4 51 50 ff 15 ?? ?? ?? ?? 31 f6 56 68 80 00 00 00 6a 03 56 6a 01 68 00 00 00 80 ff 70 04 ff 15 } //1
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*1) >=11
 
}