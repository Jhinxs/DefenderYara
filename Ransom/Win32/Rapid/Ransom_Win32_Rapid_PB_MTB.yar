
rule Ransom_Win32_Rapid_PB_MTB{
	meta:
		description = "Ransom:Win32/Rapid.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 06 00 00 "
		
	strings :
		$a_01_0 = {2f 43 72 65 61 74 65 20 2f 53 43 20 4d 49 4e 55 54 45 20 2f 54 4e 20 45 6e 63 72 79 70 74 65 72 20 2f 54 52 } //10 /Create /SC MINUTE /TN Encrypter /TR
		$a_01_1 = {2f 43 72 65 61 74 65 20 2f 53 43 20 4f 4e 4c 4f 47 4f 4e 20 2f 54 4e 20 45 6e 63 72 79 70 74 65 72 53 74 20 2f 54 52 } //10 /Create /SC ONLOGON /TN EncrypterSt /TR
		$a_01_2 = {21 44 45 43 52 59 50 54 5f 46 49 4c 45 53 2e 74 78 74 } //5 !DECRYPT_FILES.txt
		$a_01_3 = {76 6d 77 61 72 65 2d 76 6d 78 2e 65 78 65 } //1 vmware-vmx.exe
		$a_01_4 = {74 68 75 6e 64 65 72 62 69 72 64 2e 65 78 65 } //1 thunderbird.exe
		$a_01_5 = {5c 6e 6f 70 75 74 61 6e 61 2e 65 78 65 } //1 \noputana.exe
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=17
 
}