
rule Trojan_Win32_Strab_CCEH_MTB{
	meta:
		description = "Trojan:Win32/Strab.CCEH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8a 02 88 45 fe 0f b6 4d ff c1 f9 ?? 0f b6 55 ff c1 e2 ?? 0b ca 0f b6 45 fe 33 c8 8b 55 f8 88 8a ?? ?? ?? ?? 8b 45 f0 83 c0 ?? 99 b9 ?? ?? ?? ?? f7 f9 89 55 f0 eb } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}