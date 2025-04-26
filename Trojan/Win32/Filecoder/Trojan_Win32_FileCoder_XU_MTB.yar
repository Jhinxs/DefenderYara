
rule Trojan_Win32_FileCoder_XU_MTB{
	meta:
		description = "Trojan:Win32/FileCoder.XU!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {44 45 43 52 59 50 54 5f 46 49 4c 45 53 2e 54 58 54 } //1 DECRYPT_FILES.TXT
		$a_01_1 = {63 6f 6d 70 69 6c 65 72 5c 4b 6f 6c 2e 70 61 73 } //1 compiler\Kol.pas
		$a_01_2 = {69 66 20 79 6f 75 20 77 61 6e 74 20 74 6f 20 72 65 73 74 6f 72 65 20 66 69 6c 65 73 2c 20 74 68 65 6e 20 70 61 79 } //1 if you want to restore files, then pay
		$a_01_3 = {45 72 69 63 61 20 54 65 73 74 20 42 75 69 6c 64 } //1 Erica Test Build
		$a_01_4 = {65 73 74 6f 72 65 20 25 31 20 66 69 6c 65 73 2e 74 78 74 } //1 estore %1 files.txt
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}