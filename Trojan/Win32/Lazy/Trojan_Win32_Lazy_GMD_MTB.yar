
rule Trojan_Win32_Lazy_GMD_MTB{
	meta:
		description = "Trojan:Win32/Lazy.GMD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_03_0 = {8a 06 46 89 c0 68 ?? ?? ?? ?? 83 c4 04 32 02 68 ?? ?? ?? ?? 83 c4 04 88 07 83 c7 01 c7 44 24 ?? a0 61 2c ba 68 ?? ?? ?? ?? 83 c4 04 52 ff 04 24 5a ?? 89 c0 83 e9 01 83 ec 04 c7 04 24 ?? ?? ?? ?? 83 c4 04 c7 44 24 ?? 10 ac 81 3b 85 c9 } //10
		$a_01_1 = {6d 75 70 68 61 78 72 74 } //1 muphaxrt
		$a_01_2 = {74 63 70 76 65 79 71 } //1 tcpveyq
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=12
 
}