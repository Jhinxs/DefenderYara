
rule Backdoor_Win32_Zeprox_B{
	meta:
		description = "Backdoor:Win32/Zeprox.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {8b 00 8b f0 85 f6 7e 38 c7 45 ?? 01 00 00 00 8b 45 ?? 8b 55 ?? 0f b6 44 10 ff 83 e8 20 8b df 33 d8 83 c3 20 8d 45 ?? 8b d3 e8 ?? ?? ff ff 8b 55 ?? 8d 45 ?? e8 ?? ?? ff ff 47 ff 45 ?? 4e 75 cf } //2
		$a_01_1 = {53 76 63 32 64 6c 6c } //1 Svc2dll
		$a_01_2 = {23 6a 6e 64 } //1 #jnd
		$a_01_3 = {5c 41 70 70 6c 69 63 61 74 69 6f 6e 20 44 61 74 61 5c 4d 61 63 72 6f 6d 65 64 69 61 5c 46 6c 61 73 68 20 50 6c 61 79 65 72 5c 23 53 68 61 72 65 64 4f 62 6a 65 63 74 73 } //1 \Application Data\Macromedia\Flash Player\#SharedObjects
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}