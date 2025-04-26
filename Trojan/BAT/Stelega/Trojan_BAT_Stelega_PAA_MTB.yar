
rule Trojan_BAT_Stelega_PAA_MTB{
	meta:
		description = "Trojan:BAT/Stelega.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {46 78 52 65 73 6f 75 72 63 65 73 2e 53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 2e 50 72 6f 74 65 63 74 65 64 44 61 74 61 } //1 FxResources.System.Security.Cryptography.ProtectedData
		$a_01_1 = {67 65 74 5f 43 72 79 70 74 6f 67 72 61 70 68 79 5f 44 70 41 70 69 5f 50 72 6f 66 69 6c 65 4d 61 79 4e 6f 74 42 65 4c 6f 61 64 65 64 } //1 get_Cryptography_DpApi_ProfileMayNotBeLoaded
		$a_01_2 = {67 65 74 5f 41 72 67 75 6d 65 6e 74 4d 75 73 74 42 65 47 72 65 61 74 65 72 54 68 61 6e 4f 72 45 71 75 61 6c 54 6f } //1 get_ArgumentMustBeGreaterThanOrEqualTo
		$a_01_3 = {67 65 74 5f 41 72 67 75 6d 65 6e 74 4d 75 73 74 42 65 4c 65 73 73 54 68 61 6e 4f 72 45 71 75 61 6c 54 6f } //1 get_ArgumentMustBeLessThanOrEqualTo
		$a_01_4 = {67 65 74 5f 41 72 67 75 6d 65 6e 74 55 72 69 48 61 73 51 75 65 72 79 4f 72 46 72 61 67 6d 65 6e 74 } //1 get_ArgumentUriHasQueryOrFragment
		$a_01_5 = {67 65 74 5f 41 72 67 75 6d 65 6e 74 49 6e 76 61 6c 69 64 48 74 74 70 55 72 69 53 63 68 65 6d 65 } //1 get_ArgumentInvalidHttpUriScheme
		$a_01_6 = {52 65 67 4e 6f 74 69 66 79 43 68 61 6e 67 65 4b 65 79 56 61 6c 75 65 } //1 RegNotifyChangeKeyValue
		$a_01_7 = {48 74 74 70 53 74 79 6c 65 55 72 69 50 61 72 73 65 72 } //1 HttpStyleUriParser
		$a_01_8 = {78 00 58 00 78 00 58 00 78 00 58 00 78 00 58 00 78 00 58 00 78 00 58 00 78 00 58 00 78 00 51 00 } //1 xXxXxXxXxXxXxXxQ
		$a_01_9 = {57 72 69 74 65 42 79 74 65 } //1 WriteByte
		$a_01_10 = {2e 7a 69 70 } //1 .zip
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}