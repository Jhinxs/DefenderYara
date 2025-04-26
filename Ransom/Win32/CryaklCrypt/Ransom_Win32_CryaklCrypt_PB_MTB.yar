
rule Ransom_Win32_CryaklCrypt_PB_MTB{
	meta:
		description = "Ransom:Win32/CryaklCrypt.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74 00 } //1 README.txt
		$a_01_1 = {7b 45 4e 43 52 59 50 54 53 54 41 52 54 7d } //1 {ENCRYPTSTART}
		$a_01_2 = {50 61 79 20 66 6f 72 20 64 65 63 72 79 70 74 } //1 Pay for decrypt
		$a_01_3 = {2f 52 75 6e 20 2f 74 6e 20 56 73 73 44 61 74 61 52 65 73 74 6f 72 65 } //1 /Run /tn VssDataRestore
		$a_01_4 = {76 73 73 61 64 6d 69 6e 20 64 65 6c 65 74 65 20 73 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //1 vssadmin delete shadows /all /quiet
		$a_01_5 = {62 69 6e 3a 63 6f 6d 3a 65 78 65 3a 62 61 74 3a 70 6e 67 3a 62 6d 70 3a 64 61 74 3a 6c 6f 67 3a 69 6e 69 3a 64 6c 6c 3a 73 79 73 3a } //1 bin:com:exe:bat:png:bmp:dat:log:ini:dll:sys:
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}