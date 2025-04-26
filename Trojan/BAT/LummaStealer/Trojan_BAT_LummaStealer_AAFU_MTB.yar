
rule Trojan_BAT_LummaStealer_AAFU_MTB{
	meta:
		description = "Trojan:BAT/LummaStealer.AAFU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 "
		
	strings :
		$a_01_0 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_01_2 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //1 TransformFinalBlock
		$a_01_3 = {61 30 66 37 65 32 32 64 2d 38 34 32 33 2d 34 36 35 66 2d 39 64 34 66 2d 37 32 37 34 61 62 39 62 61 34 31 34 } //2 a0f7e22d-8423-465f-9d4f-7274ab9ba414
		$a_01_4 = {43 00 4c 00 2e 00 52 00 65 00 67 00 41 00 73 00 6d 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //2 CL.RegAsm.Properties.Resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=7
 
}