
rule Trojan_Win64_Lazy_RDD_MTB{
	meta:
		description = "Trojan:Win64/Lazy.RDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {45 72 69 6f 73 61 67 66 6f 69 61 73 64 67 61 73 64 69 6f 68 } //1 Eriosagfoiasdgasdioh
		$a_01_1 = {56 61 69 6f 66 61 65 69 6f 75 66 61 65 75 67 68 75 61 64 } //1 Vaiofaeioufaeughuad
		$a_01_2 = {74 69 6d 65 47 65 74 54 69 6d 65 } //1 timeGetTime
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}