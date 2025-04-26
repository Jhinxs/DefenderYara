
rule PWS_BAT_StormKitty_ABV_MTB{
	meta:
		description = "PWS:BAT/StormKitty.ABV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 08 00 00 "
		
	strings :
		$a_01_0 = {57 bd a2 3d 09 0f 00 00 00 00 00 00 00 00 00 00 01 00 00 00 cd 00 00 00 53 00 00 00 0b 02 00 00 2f 04 00 00 4c 02 00 00 } //5
		$a_01_1 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_4 = {52 65 76 65 72 73 65 } //1 Reverse
		$a_01_5 = {46 6c 75 73 68 46 69 6e 61 6c 42 6c 6f 63 6b } //1 FlushFinalBlock
		$a_01_6 = {47 00 61 00 6d 00 65 00 20 00 4f 00 76 00 65 00 72 00 21 00 21 00 32 00 } //1 Game Over!!2
		$a_01_7 = {5a 00 6f 00 6d 00 62 00 69 00 65 00 48 00 75 00 6e 00 74 00 65 00 72 00 24 00 } //1 ZombieHunter$
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=12
 
}