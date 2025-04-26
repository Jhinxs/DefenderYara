
rule Trojan_BAT_SpySnake_MAD_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MAD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_03_0 = {0b 07 0c 2b 00 08 2a 90 0a 3f 00 7e ?? ?? ?? 04 28 ?? ?? ?? 0a 03 6f ?? ?? ?? 0a 6f ?? ?? ?? 0a 0a 7e ?? ?? ?? 04 06 6f ?? ?? ?? 0a 00 7e ?? ?? ?? 04 18 6f ?? ?? ?? 0a 00 02 28 ?? ?? ?? 06 } //1
		$a_01_1 = {4d 69 72 61 72 6d 61 72 } //1 Mirarmar
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 51 75 65 75 65 } //1 DownloadQueue
		$a_01_3 = {53 6c 65 65 70 } //1 Sleep
		$a_01_4 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_01_5 = {55 72 6c 44 65 63 6f 64 65 } //1 UrlDecode
		$a_01_6 = {47 65 74 42 79 74 65 73 } //1 GetBytes
		$a_01_7 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_8 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_9 = {50 00 72 00 6f 00 78 00 79 00 2d 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //1 Proxy-Connection
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}