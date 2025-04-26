
rule Trojan_Win32_Dridex_RT_MTB{
	meta:
		description = "Trojan:Win32/Dridex.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {33 d3 c7 05 ?? ?? ?? ?? 00 00 00 00 01 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 08 5b 8b e5 5d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Dridex_RT_MTB_2{
	meta:
		description = "Trojan:Win32/Dridex.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_81_0 = {58 66 75 63 6b 6d 65 73 62 65 6e 55 } //1 XfuckmesbenU
		$a_81_1 = {67 31 73 68 69 74 32 61 73 74 65 73 74 65 64 2c 75 54 } //1 g1shit2astested,uT
		$a_81_2 = {79 66 75 63 6b 6f 66 66 77 70 43 } //1 yfuckoffwpC
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}
rule Trojan_Win32_Dridex_RT_MTB_3{
	meta:
		description = "Trojan:Win32/Dridex.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {4d 61 70 56 69 72 74 75 61 6c 4b 65 79 57 } //1 MapVirtualKeyW
		$a_81_1 = {4c 6f 61 64 4b 65 79 62 6f 61 72 64 4c 61 79 6f 75 74 41 } //1 LoadKeyboardLayoutA
		$a_81_2 = {50 6f 6c 79 6c 69 6e 65 54 6f } //1 PolylineTo
		$a_81_3 = {41 72 63 54 6f } //1 ArcTo
		$a_81_4 = {47 65 74 53 65 63 75 72 69 74 79 44 65 73 63 72 69 70 74 6f 72 47 72 6f 75 70 } //1 GetSecurityDescriptorGroup
		$a_81_5 = {40 73 68 65 6c 6c 33 32 2e 64 6c 6c } //1 @shell32.dll
		$a_81_6 = {6c 33 32 2e 64 6c 6c } //1 l32.dll
		$a_81_7 = {53 43 61 72 64 44 69 73 63 6f 6e 6e 65 63 74 } //1 SCardDisconnect
		$a_81_8 = {6d 69 64 69 53 74 72 65 61 6d 43 6c 6f 73 65 } //1 midiStreamClose
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}
rule Trojan_Win32_Dridex_RT_MTB_4{
	meta:
		description = "Trojan:Win32/Dridex.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {6b c0 5a 03 c6 89 0d ?? ?? ?? ?? 89 44 24 ?? 81 7c 24 ?? cd 05 00 00 75 ?? 66 0f b6 05 ?? ?? ?? ?? 66 03 e8 0f b7 c5 66 89 6c 24 ?? 8d 5c 43 ?? 0f b6 05 ?? ?? ?? ?? 0f b6 35 ?? ?? ?? ?? 03 c6 3d 7c 03 00 00 75 } //1
		$a_81_1 = {63 3a 5c 43 61 75 73 65 5c 34 31 37 5c 4f 72 67 61 6e 5c 4f 75 74 20 76 69 5c 67 72 61 6e 64 2e 70 64 62 } //1 c:\Cause\417\Organ\Out vi\grand.pdb
		$a_81_2 = {47 65 74 53 74 61 72 74 75 70 49 6e 66 6f 41 } //1 GetStartupInfoA
		$a_81_3 = {65 73 73 69 22 65 20 43 32 65 69 31 } //1 essi"e C2ei1
		$a_81_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=5
 
}
rule Trojan_Win32_Dridex_RT_MTB_5{
	meta:
		description = "Trojan:Win32/Dridex.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_81_0 = {51 74 72 61 6e 73 6c 61 74 69 6f 6e 67 69 72 6c 73 79 38 48 64 74 68 61 74 69 6e 66 6f 72 6d 61 74 69 6f 6e 74 6f } //1 Qtranslationgirlsy8Hdthatinformationto
		$a_81_1 = {6f 6e 6c 79 61 6e 64 69 6e 74 72 6f 64 75 63 65 64 47 6f 6f 67 6c 65 69 6d 70 6c 65 6d 65 6e 74 65 64 76 75 6c 6e 65 72 61 62 69 6c 69 74 69 65 73 43 68 72 6f 6d 65 74 65 72 6d 65 64 } //1 onlyandintroducedGoogleimplementedvulnerabilitiesChrometermed
		$a_81_2 = {58 30 4d 6f 7a 69 6c 6c 61 73 6c 61 74 65 72 32 61 75 74 6f 2d 75 70 64 61 74 65 66 77 61 73 38 } //1 X0Mozillaslater2auto-updatefwas8
		$a_81_3 = {6f 7a 31 39 35 31 6d 6f 6e 69 63 61 73 63 6f 72 65 73 70 75 73 73 79 65 70 43 68 72 6f 6d 69 75 6d 36 } //1 oz1951monicascorespussyepChromium6
		$a_81_4 = {67 67 70 6c 6f 65 45 52 2e 64 6c } //1 ggploeER.dl
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1) >=4
 
}