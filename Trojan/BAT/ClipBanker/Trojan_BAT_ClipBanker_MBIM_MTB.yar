
rule Trojan_BAT_ClipBanker_MBIM_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.MBIM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {73 67 66 68 6a 66 66 66 66 67 64 72 66 68 64 64 66 68 66 66 66 61 64 66 73 66 73 73 63 66 67 64 62 } //1 sgfhjffffgdrfhddfhfffadfsfsscfgdb
		$a_01_1 = {67 66 66 73 73 66 64 73 78 } //1 gffssfdsx
		$a_01_2 = {68 6a 66 64 66 68 67 66 61 64 66 66 64 64 63 64 66 66 66 66 73 6b 68 6a } //1 hjfdfhgfadffddcdffffskhj
		$a_01_3 = {66 73 66 66 67 67 66 67 66 61 66 61 64 } //1 fsffggfgfafad
		$a_01_4 = {68 64 66 66 66 61 66 73 66 73 64 6b 66 73 68 } //1 hdfffafsfsdkfsh
		$a_01_5 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
		$a_01_6 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}