
rule Backdoor_BAT_AsyncRAT_W_MTB{
	meta:
		description = "Backdoor:BAT/AsyncRAT.W!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {0a 2c 15 7e ?? 00 00 04 20 ?? ?? ?? 06 28 ?? 00 00 06 73 ?? 00 00 0a 7a 03 7e ?? 00 00 04 20 50 c3 00 00 73 ?? 00 00 0a 0a 02 06 1f 20 6f ?? 00 00 0a 7d ?? 00 00 04 02 06 1f 40 6f ?? 00 00 0a 7d ?? 00 00 04 de } //2
		$a_01_1 = {58 35 30 39 43 65 72 74 69 66 69 63 61 74 65 32 } //1 X509Certificate2
		$a_01_2 = {67 65 74 5f 4f 53 46 75 6c 6c 4e 61 6d 65 } //1 get_OSFullName
		$a_01_3 = {67 65 74 5f 4d 61 63 68 69 6e 65 4e 61 6d 65 } //1 get_MachineName
		$a_01_4 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 } //1 get_UserName
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}