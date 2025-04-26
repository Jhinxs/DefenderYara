
rule Ransom_MSIL_Revilcrypt_PAB_MTB{
	meta:
		description = "Ransom:MSIL/Revilcrypt.PAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {4c 6f 63 6b 49 54 } //1 LockIT
		$a_01_1 = {45 76 69 6c 4e 6f 6d 69 6e 61 74 75 73 4c 6f 63 6b 65 72 } //1 EvilNominatusLocker
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 69 00 6d 00 20 00 74 00 61 00 73 00 6b 00 6d 00 67 00 72 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 } //1 taskkill /im taskmgr.exe /f
		$a_01_3 = {4f 6f 70 73 20 79 6f 75 72 20 43 6f 6d 70 75 74 65 72 20 4c 6f 63 6b 65 64 } //1 Oops your Computer Locked
		$a_01_4 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 7b 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 7d 00 } //1 bcdedit /delete {current}
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}