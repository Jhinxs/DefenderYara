
rule Ransom_Win32_Snafes_A{
	meta:
		description = "Ransom:Win32/Snafes.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 07 00 00 "
		
	strings :
		$a_80_0 = {73 79 6e 61 63 6b 40 73 63 72 79 70 74 6d 61 69 6c 2e 63 6f 6d } //synack@scryptmail.com  1
		$a_80_1 = {73 79 6e 61 63 6b 40 63 6f 75 6e 74 65 72 6d 61 69 6c 2e 63 6f 6d } //synack@countermail.com  1
		$a_01_2 = {59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 } //1 Your files are encrypted
		$a_01_3 = {64 6f 20 6e 6f 74 20 70 61 6e 69 63 20 61 6e 64 20 77 72 69 74 65 20 6f 6e 20 42 69 74 4d 65 73 73 61 67 65 20 28 75 73 69 6e 67 20 73 69 74 65 20 68 74 74 70 73 3a 2f 2f 62 69 74 6d 73 67 2e 6d 65 2f 29 3a } //1 do not panic and write on BitMessage (using site https://bitmsg.me/):
		$a_01_4 = {53 79 6e 41 63 6b 20 54 65 61 6d 2e } //1 SynAck Team.
		$a_01_5 = {53 79 6e 41 63 6b 20 46 45 53 } //1 SynAck FES
		$a_01_6 = {65 78 74 6f 72 74 20 6d 6f 6e 65 79 2c 20 66 69 6c 65 73 20 72 65 73 74 6f 72 65 20 69 73 20 61 6e 20 6f 70 74 69 6f 6e 61 6c 20 73 65 72 76 69 63 65 2e } //1 extort money, files restore is an optional service.
	condition:
		((#a_80_0  & 1)*1+(#a_80_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=2
 
}