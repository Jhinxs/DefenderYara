
rule Trojan_BAT_SpyNoon_MC_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.MC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {0b 07 8e 69 17 da 17 d6 8d ?? ?? ?? 01 0c 07 8e 69 17 da 13 06 16 13 07 2b 30 08 11 07 07 11 07 91 7e ?? ?? ?? 04 11 07 7e ?? ?? ?? 04 6f ?? ?? ?? 0a 5d 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 61 9c 11 07 17 d6 13 07 11 07 11 06 31 } //1
		$a_01_1 = {53 74 61 72 74 54 65 73 74 52 75 6e } //1 StartTestRun
		$a_01_2 = {43 6c 65 61 72 45 78 74 65 6e 73 69 6f 6e 73 } //1 ClearExtensions
		$a_01_3 = {70 72 6f 78 79 44 69 73 63 6f 76 65 72 79 4d 61 6e 61 67 65 72 } //1 proxyDiscoveryManager
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_5 = {47 65 74 4c 6f 67 67 65 72 4d 61 6e 61 67 65 72 } //1 GetLoggerManager
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}