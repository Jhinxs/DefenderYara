
rule Trojan_Win64_CobaltStrike_AL_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 29 c0 8b 05 ?? ?? ?? ?? 41 29 c0 44 89 c0 4c 63 c0 48 8b 45 ?? 4c 01 c0 0f b6 00 31 c8 88 02 83 45 ?? ?? 8b 45 ?? 3b 45 ?? 0f 82 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_AL_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.AL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {48 89 5c 24 10 48 89 74 24 18 57 48 83 ec 10 33 c0 33 c9 0f a2 44 8b c1 45 33 db 44 8b ?? 41 81 f0 6e 74 65 6c 41 81 ?? ?? ?? ?? ?? 44 8b ?? 8b f0 33 c9 41 8d 43 01 45 0b } //1
		$a_03_1 = {0f a2 41 81 ?? ?? ?? ?? ?? 89 04 24 45 0b ?? 89 5c 24 04 8b f9 89 4c 24 08 89 54 24 0c 75 ?? 48 83 0d ?? ?? ?? ?? ?? 25 f0 3f ff 0f } //1
		$a_03_2 = {ff ff ff ff 72 62 00 00 00 00 00 00 [0-30] 2e 62 69 6e } //1
		$a_01_3 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //1 VirtualAlloc
		$a_01_4 = {43 72 65 61 74 65 54 68 72 65 61 64 } //1 CreateThread
		$a_01_5 = {66 6f 70 65 6e } //1 fopen
		$a_01_6 = {66 73 65 65 6b } //1 fseek
		$a_01_7 = {66 74 65 6c 6c } //1 ftell
		$a_01_8 = {6d 61 6c 6c 6f 63 } //1 malloc
		$a_01_9 = {66 72 65 61 64 } //1 fread
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}