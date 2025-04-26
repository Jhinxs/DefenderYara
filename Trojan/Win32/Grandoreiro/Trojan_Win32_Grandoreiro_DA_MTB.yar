
rule Trojan_Win32_Grandoreiro_DA_MTB{
	meta:
		description = "Trojan:Win32/Grandoreiro.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 0b 00 00 "
		
	strings :
		$a_01_0 = {54 4d 65 74 68 6f 64 49 6d 70 6c 65 6d 65 6e 74 61 74 69 6f 6e 49 6e 74 65 72 63 65 70 74 } //10 TMethodImplementationIntercept
		$a_01_1 = {64 62 6b 46 43 61 6c 6c 57 72 61 70 70 65 72 41 64 64 72 } //10 dbkFCallWrapperAddr
		$a_01_2 = {5f 5f 64 62 6b 5f 66 63 61 6c 6c 5f 77 72 61 70 70 65 72 } //10 __dbk_fcall_wrapper
		$a_01_3 = {77 77 72 77 72 77 } //1 wwrwrw
		$a_01_4 = {4d 59 50 52 4f 47 52 45 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 53 } //1 MYPROGRESSSSSSSSSSSSSSSSSSSSS
		$a_01_5 = {70 69 72 69 6f 67 6f 73 61 } //1 piriogosa
		$a_01_6 = {43 41 52 4c 4f 53 54 41 4d 42 41 51 55 49 53 55 50 50 4c 59 53 } //1 CARLOSTAMBAQUISUPPLYS
		$a_01_7 = {74 6f 6d 61 63 75 7a 69 6e } //1 tomacuzin
		$a_01_8 = {53 45 4e 54 41 44 41 4c 45 4e 54 41 4e 4f 43 41 50 } //1 SENTADALENTANOCAP
		$a_01_9 = {68 75 61 68 75 73 75 68 61 73 61 6d 6d 6d } //1 huahusuhasammm
		$a_01_10 = {4d 49 4c 4f 52 44 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 } //1 MILORDEEEEEEEEEEEEEEEEEEEEE
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=32
 
}