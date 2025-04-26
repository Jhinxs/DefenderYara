
rule Ransom_MSIL_SmijanEcryptor_PAA_MTB{
	meta:
		description = "Ransom:MSIL/SmijanEcryptor.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,27 00 27 00 07 00 00 "
		
	strings :
		$a_81_0 = {75 6e 6c 6f 63 6b 20 79 6f 75 72 20 66 69 6c 65 73 2e 6c 6e 6b } //10 unlock your files.lnk
		$a_01_1 = {62 79 74 65 73 54 6f 42 65 45 6e 63 72 79 70 74 65 64 } //10 bytesToBeEncrypted
		$a_01_2 = {4a 61 73 6d 69 6e 5f 45 6e 63 72 79 70 74 65 72 } //10 Jasmin_Encrypter
		$a_01_3 = {4a 61 73 6d 69 6e 20 45 6e 63 72 79 70 74 6f 72 } //10 Jasmin Encryptor
		$a_01_4 = {56 00 6f 00 6c 00 75 00 6d 00 65 00 53 00 65 00 72 00 69 00 61 00 6c 00 4e 00 75 00 6d 00 62 00 65 00 72 00 } //3 VolumeSerialNumber
		$a_01_5 = {57 00 69 00 6e 00 33 00 32 00 5f 00 4c 00 6f 00 67 00 69 00 63 00 61 00 6c 00 44 00 69 00 73 00 6b 00 } //3 Win32_LogicalDisk
		$a_01_6 = {68 00 61 00 6e 00 64 00 73 00 68 00 61 00 6b 00 65 00 2e 00 70 00 68 00 70 00 } //3 handshake.php
	condition:
		((#a_81_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*3+(#a_01_5  & 1)*3+(#a_01_6  & 1)*3) >=39
 
}