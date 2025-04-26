
rule Trojan_Win32_Qakbot_DR_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.DR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //10 DllRegisterServer
		$a_01_1 = {72 2e 64 6c 6c } //1 r.dll
		$a_01_2 = {43 50 4f 71 69 79 4c 4d 38 54 } //1 CPOqiyLM8T
		$a_01_3 = {43 54 75 50 41 4b 50 4b 4f 50 58 } //1 CTuPAKPKOPX
		$a_01_4 = {43 7a 46 7a 4a 67 5a 41 7a 4a 38 } //1 CzFzJgZAzJ8
		$a_01_5 = {44 37 46 4e 33 75 44 46 37 73 6c } //1 D7FN3uDF7sl
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=15
 
}