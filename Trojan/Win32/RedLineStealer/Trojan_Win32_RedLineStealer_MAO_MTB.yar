
rule Trojan_Win32_RedLineStealer_MAO_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MAO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {64 00 69 00 70 00 69 00 6c 00 65 00 79 00 75 00 66 00 75 00 6b 00 65 00 6e 00 69 00 6a 00 61 00 6e 00 69 00 74 00 69 00 6b 00 61 00 72 00 } //1 dipileyufukenijanitikar
		$a_01_1 = {72 00 6f 00 67 00 61 00 6b 00 6f 00 7a 00 67 00 } //1 rogakozg
		$a_01_2 = {77 00 65 00 79 00 65 00 6e 00 6f 00 6b 00 6f 00 6e 00 65 00 7a 00 65 00 66 00 69 00 } //1 weyenokonezefi
		$a_01_3 = {46 61 6b 61 6c 65 } //1 Fakale
		$a_01_4 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_02_5 = {8b 4c 24 18 8b 54 24 14 51 c1 ea 05 03 54 24 2c 8d 4c 24 14 c7 05 ?? ?? ?? ?? b4 02 d7 cb c7 05 ?? ?? ?? ?? ff ff ff ff e8 ?? ?? ?? ?? 52 8d 4c 24 14 e8 ?? ?? ?? ?? 2b 7c 24 10 8d 44 24 20 89 7c 24 1c e8 ?? ?? ?? ?? 4d 0f 85 } //1
		$a_00_6 = {c7 84 24 e4 00 00 00 57 78 d1 51 c7 84 24 e0 00 00 00 0b 4c 1b 7e c7 44 24 18 dd 0b fa 64 c7 44 24 68 cf 72 b2 3d } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_02_5  & 1)*1+(#a_00_6  & 1)*1) >=7
 
}