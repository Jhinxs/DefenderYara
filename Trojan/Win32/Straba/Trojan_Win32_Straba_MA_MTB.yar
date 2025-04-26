
rule Trojan_Win32_Straba_MA_MTB{
	meta:
		description = "Trojan:Win32/Straba.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 "
		
	strings :
		$a_01_0 = {44 52 43 46 56 54 47 59 2e 44 4c 4c } //3 DRCFVTGY.DLL
		$a_01_1 = {52 64 72 66 76 74 4b 68 62 67 } //3 RdrfvtKhbg
		$a_01_2 = {4f 6a 6d 6e 54 74 67 62 } //3 OjmnTtgb
		$a_01_3 = {52 73 57 73 64 } //3 RsWsd
		$a_01_4 = {47 65 74 43 75 72 72 65 6e 74 54 68 72 65 61 64 49 64 } //1 GetCurrentThreadId
		$a_01_5 = {47 65 74 54 65 6d 70 50 61 74 68 57 } //1 GetTempPathW
		$a_01_6 = {57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //1 WaitForSingleObject
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*3+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=15
 
}