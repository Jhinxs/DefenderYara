
rule Trojan_Win32_Emotet_CM_MTB{
	meta:
		description = "Trojan:Win32/Emotet.CM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {6a 00 6a 00 ff d6 6a 00 6a 00 ff d6 6a 00 6a 00 ff d6 02 5c 24 ?? 83 c7 01 0f b6 c3 8a 4c 04 1c 8b 44 24 ?? 30 4c 38 ff 3b bc 24 ?? ?? ?? ?? 0f 8c } //1
		$a_00_1 = {8d a4 24 00 00 00 00 8b ff 8b 5c 24 10 83 c5 01 81 e5 ff 00 00 00 0f b6 44 2c 1c 8d 0c 18 81 e1 ff 00 00 00 0f b6 5c 0c 1c 89 4c 24 10 8d 4c 0c 1c 6a 00 88 5c 2c 20 6a 00 89 44 24 1c 88 01 ff d6 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}
rule Trojan_Win32_Emotet_CM_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.CM!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_01_0 = {03 c8 2b 4d f0 2b 4d ec 8b 75 d0 0f af 75 f0 03 4d cc 03 f1 } //10
	condition:
		((#a_01_0  & 1)*10) >=10
 
}