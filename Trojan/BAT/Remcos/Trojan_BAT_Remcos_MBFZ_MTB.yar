
rule Trojan_BAT_Remcos_MBFZ_MTB{
	meta:
		description = "Trojan:BAT/Remcos.MBFZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {68 66 73 64 6b 66 64 68 67 68 66 66 73 68 73 66 65 67 66 64 61 66 66 66 64 63 68 } //1 hfsdkfdhghffshsfegfdafffdch
		$a_01_1 = {66 68 68 66 67 64 66 66 72 66 66 66 64 6b 64 66 61 64 68 66 67 68 66 64 61 73 64 66 68 } //1 fhhfgdffrfffdkdfadhfghfdasdfh
		$a_01_2 = {73 66 68 6a 66 66 6b 66 68 67 66 64 6a 73 72 66 68 64 66 64 66 68 66 66 66 61 64 73 67 66 61 68 73 73 63 66 66 67 64 62 } //1 sfhjffkfhgfdjsrfhdfdfhfffadsgfahsscffgdb
		$a_01_3 = {64 64 66 64 72 68 6a 66 73 66 66 66 67 68 67 64 66 66 61 66 63 66 64 73 73 66 6b 66 68 67 6a } //1 ddfdrhjfsfffghgdffafcfdssfkfhgj
		$a_01_4 = {6a 67 61 63 66 73 61 66 64 67 68 68 66 66 66 66 72 66 64 73 64 67 6b 66 66 66 } //1 jgacfsafdghhffffrfdsdgkfff
		$a_01_5 = {67 64 67 68 64 66 67 64 73 66 66 68 73 66 64 67 68 } //1 gdghdfgdsffhsfdgh
		$a_01_6 = {66 73 67 66 72 67 66 61 66 64 64 68 64 66 66 66 66 6b 68 73 6a 64 } //1 fsgfrgfafddhdffffkhsjd
		$a_01_7 = {68 73 66 64 6f 68 73 64 } //1 hsfdohsd
		$a_01_8 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
		$a_01_9 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}