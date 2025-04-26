
rule Trojan_Win32_Qbot_AG_MSR{
	meta:
		description = "Trojan:Win32/Qbot.AG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 a8 03 45 ac 48 89 45 a4 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b d8 8b 45 d8 8b 00 03 45 a8 03 d8 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 03 d8 8b 45 d8 89 18 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 55 c4 03 55 a4 03 c2 89 45 a0 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b d8 03 5d a0 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 03 d8 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 03 d8 8b 45 d8 33 18 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}
rule Trojan_Win32_Qbot_AG_MSR_2{
	meta:
		description = "Trojan:Win32/Qbot.AG!MSR,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllRegisterServer
		$a_01_1 = {44 6c 6c 55 6e 72 65 67 69 73 74 65 72 53 65 72 76 65 72 } //1 DllUnregisterServer
		$a_01_2 = {62 75 69 6c 64 61 62 6c 65 } //1 buildable
		$a_01_3 = {65 75 6f 72 6e 69 74 68 69 63 } //1 euornithic
		$a_01_4 = {70 61 72 61 6e 69 74 72 6f 73 6f 70 68 65 6e 6f 6c } //1 paranitrosophenol
		$a_01_5 = {70 68 6f 74 6f 73 79 6e 74 68 65 74 69 63 61 6c 6c 79 } //1 photosynthetically
		$a_01_6 = {70 73 65 70 68 6f 6d 61 6e 63 79 } //1 psephomancy
		$a_01_7 = {73 63 79 70 68 6f 73 74 6f 6d 61 } //1 scyphostoma
		$a_01_8 = {50 6c 7a 44 46 44 50 4e 6b 75 57 65 6d 6e 43 49 56 43 42 6e 75 66 59 70 63 4f 66 57 43 48 70 66 41 } //1 PlzDFDPNkuWemnCIVCBnufYpcOfWCHpfA
		$a_01_9 = {4c 4f 48 7a 49 71 4f 6f 49 46 6c 58 55 49 4b 66 69 45 4b 43 6b 67 4c 69 44 70 79 43 70 68 72 } //1 LOHzIqOoIFlXUIKfiEKCkgLiDpyCphr
		$a_01_10 = {76 65 63 74 6f 72 20 74 6f 6f 20 6c 6f 6e 67 } //1 vector too long
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}