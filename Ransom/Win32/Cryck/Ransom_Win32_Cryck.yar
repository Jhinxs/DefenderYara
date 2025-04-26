
rule Ransom_Win32_Cryck{
	meta:
		description = "Ransom:Win32/Cryck,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 68 61 73 20 62 65 65 6e 20 61 74 74 61 63 6b 65 64 20 62 79 20 76 69 72 75 73 2d 65 6e 63 6f 64 65 72 } //1 Your computer has been attacked by virus-encoder
		$a_01_1 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 6e 6f 77 20 65 6e 63 72 79 70 74 65 64 20 75 73 69 6e 67 20 63 72 79 } //1 All your files are now encrypted using cry
		$a_01_2 = {54 4f 20 47 45 54 20 59 4f 55 52 20 44 45 43 4f 44 45 52 20 41 4e 44 20 54 48 45 20 4f 52 49 47 49 4e 41 4c 20 4b 45 59 20 54 4f 20 44 45 43 52 59 50 54 20 59 4f 55 52 } //1 TO GET YOUR DECODER AND THE ORIGINAL KEY TO DECRYPT YOUR
		$a_01_3 = {62 6f 6f 6f 61 6d 40 63 6f 63 6b 2e 6c 69 } //1 boooam@cock.li
		$a_01_4 = {49 74 20 69 73 20 69 6e 20 79 6f 75 72 20 69 6e 74 65 72 65 73 74 20 74 6f 20 72 65 73 70 6f 6e 64 20 61 73 20 73 6f 6f 6e 20 61 73 20 70 6f 73 73 69 62 6c 65 20 74 6f 20 65 6e 73 75 72 65 20 74 68 65 20 72 65 73 74 6f 72 61 74 69 6f 6e 20 6f 66 20 79 6f 75 72 20 66 69 6c 65 73 } //1 It is in your interest to respond as soon as possible to ensure the restoration of your files
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}