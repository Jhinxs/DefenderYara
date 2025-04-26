
rule Trojan_Win32_Sirefef_BW{
	meta:
		description = "Trojan:Win32/Sirefef.BW,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {38 30 30 30 30 30 30 31 2e 40 } //1 80000001.@
		$a_03_1 = {8d 46 0c 50 6a 00 ff 15 ?? ?? ?? ?? 85 c0 74 0e 83 60 08 00 c7 00 01 00 00 00 89 70 04 c3 33 c0 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}