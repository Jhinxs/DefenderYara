
rule Trojan_BAT_CryptInject_PI_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.PI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_81_0 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //1 aR3nbf8dQp2feLmk31.lSfgApatkdxsVcGcrktoFd.resources
		$a_03_1 = {4c 69 6d 65 5f [0-0d] 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //1
		$a_03_2 = {4c 69 6d 65 5f [0-0d] 2e 65 78 65 } //1
		$a_81_3 = {56 69 64 65 6f 4c 41 4e } //1 VideoLAN
	condition:
		((#a_81_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_81_3  & 1)*1) >=4
 
}