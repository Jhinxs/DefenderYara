
rule Trojan_BAT_AgentTesla_ZD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ZD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {6d 73 32 6d 7a 2e 4b 65 79 57 72 69 74 65 72 2e 72 65 73 6f 75 72 63 65 73 } //1 ms2mz.KeyWriter.resources
		$a_01_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 41 63 74 69 76 61 74 6f 72 } //1 ApplicationActivator
		$a_01_2 = {67 65 74 5f 55 73 65 43 6f 6d 70 61 74 69 62 6c 65 54 65 78 74 52 65 6e 64 65 72 69 6e 67 } //1 get_UseCompatibleTextRendering
		$a_01_3 = {4d 7a 56 61 6c 75 65 73 50 72 65 63 69 73 69 6f 6e 36 34 62 69 74 } //1 MzValuesPrecision64bit
		$a_01_4 = {63 68 6b 55 73 65 49 6e 70 75 74 46 6f 72 6d 61 74 5f 43 68 65 63 6b 65 64 43 68 61 6e 67 65 64 } //1 chkUseInputFormat_CheckedChanged
		$a_01_5 = {4d 44 35 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //1 MD5CryptoServiceProvider
		$a_01_6 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 20 00 4b 00 65 00 79 00 } //1 Encrypt Key
		$a_01_7 = {4d 00 73 00 32 00 6d 00 7a 00 20 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 66 00 69 00 6c 00 65 00 73 00 7c 00 2a 00 2e 00 32 00 6d 00 7a 00 7c 00 41 00 6c 00 6c 00 20 00 66 00 69 00 6c 00 65 00 73 00 7c 00 2a 00 2e 00 2a 00 } //1 Ms2mz config files|*.2mz|All files|*.*
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}