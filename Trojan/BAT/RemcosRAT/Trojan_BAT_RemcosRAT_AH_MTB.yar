
rule Trojan_BAT_RemcosRAT_AH_MTB{
	meta:
		description = "Trojan:BAT/RemcosRAT.AH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_03_0 = {11 00 74 02 ?? ?? 1b 1e 3a 39 ?? ?? 00 26 38 20 ?? ?? 00 28 17 ?? ?? 06 72 99 ?? ?? 70 7e 08 ?? ?? 04 6f 16 ?? ?? 0a 18 3a 0d ?? ?? 00 26 38 cd ?? ?? ff 11 01 } //1
		$a_03_1 = {8e 69 1e 3a 18 ?? ?? 00 26 26 26 38 0b ?? ?? 00 2a 38 fa ?? ?? ff 38 f5 ?? ?? ff 38 f0 ?? ?? ff 28 01 ?? ?? 0a 38 e7 ?? ?? ff 90 0a 2d 00 02 16 02 } //1
		$a_01_2 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_3 = {48 74 74 70 57 65 62 52 65 71 75 65 73 74 } //1 HttpWebRequest
		$a_01_4 = {54 6f 41 72 72 61 79 } //1 ToArray
		$a_01_5 = {49 6e 76 6f 6b 65 45 76 65 6e 74 } //1 InvokeEvent
		$a_01_6 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //1 get_Assembly
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}