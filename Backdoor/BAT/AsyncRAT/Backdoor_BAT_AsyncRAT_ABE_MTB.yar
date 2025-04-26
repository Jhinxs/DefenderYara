
rule Backdoor_BAT_AsyncRAT_ABE_MTB{
	meta:
		description = "Backdoor:BAT/AsyncRAT.ABE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {16 0c 0f 00 08 20 ?? ?? ?? 00 58 28 01 ?? ?? 2b 07 02 08 20 ?? ?? ?? 00 6f 1a ?? ?? 0a 0d 08 09 58 0c 09 20 ?? ?? ?? 00 2f d8 0f 00 08 28 01 ?? ?? 2b 07 6f 1b ?? ?? 0a de 0a 07 2c 06 07 6f ?? ?? ?? 0a dc } //5
		$a_01_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_2 = {4d 65 6d 6f 72 79 53 74 72 65 61 6d } //1 MemoryStream
		$a_01_3 = {47 5a 69 70 53 74 72 65 61 6d } //1 GZipStream
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=8
 
}