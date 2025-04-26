
rule Trojan_BAT_Bobik_NEAB_MTB{
	meta:
		description = "Trojan:BAT/Bobik.NEAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 06 00 00 "
		
	strings :
		$a_01_0 = {24 32 32 39 65 63 32 63 64 2d 66 36 62 30 2d 34 63 61 37 2d 61 39 33 62 2d 30 61 64 65 38 37 38 35 38 64 36 32 } //5 $229ec2cd-f6b0-4ca7-a93b-0ade87858d62
		$a_01_1 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 2e 6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 2e 72 65 73 6f 75 72 63 65 73 } //5 aR3nbf8dQp2feLmk31.lSfgApatkdxsVcGcrktoFd.resources
		$a_01_2 = {6d 39 4f 49 4f 38 51 30 45 4b } //2 m9OIO8Q0EK
		$a_01_3 = {70 5a 62 6e 68 76 36 59 42 } //2 pZbnhv6YB
		$a_01_4 = {43 33 35 36 41 46 46 31 41 30 31 43 32 42 30 44 41 34 37 } //2 C356AFF1A01C2B0DA47
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1) >=17
 
}