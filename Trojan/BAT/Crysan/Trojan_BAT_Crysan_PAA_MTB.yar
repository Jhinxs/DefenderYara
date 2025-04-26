
rule Trojan_BAT_Crysan_PAA_MTB{
	meta:
		description = "Trojan:BAT/Crysan.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,23 00 23 00 0a 00 00 "
		
	strings :
		$a_01_0 = {73 67 64 61 66 6a 68 64 66 73 61 6a 64 67 73 6a 61 66 67 64 6b 73 61 67 66 65 75 66 67 65 77 71 74 66 64 75 79 61 74 73 73 66 61 73 61 61 61 61 } //10 sgdafjhdfsajdgsjafgdksagfeufgewqtfduyatssfasaaaa
		$a_01_1 = {46 72 6f 6d 48 74 6d 6c } //10 FromHtml
		$a_01_2 = {54 6f 48 74 6d 6c } //10 ToHtml
		$a_01_3 = {44 69 73 70 6f 73 65 5f 5f 49 6e 73 74 61 6e 63 65 5f 5f } //1 Dispose__Instance__
		$a_01_4 = {43 72 65 61 74 65 5f 5f 49 6e 73 74 61 6e 63 65 5f 5f } //1 Create__Instance__
		$a_01_5 = {67 65 74 5f 57 68 69 74 65 53 6d 6f 6b 65 } //1 get_WhiteSmoke
		$a_01_6 = {67 65 74 5f 46 75 63 68 73 69 61 } //1 get_Fuchsia
		$a_01_7 = {67 65 74 5f 4b 65 79 43 6f 64 65 } //1 get_KeyCode
		$a_01_8 = {48 75 72 61 4d 6f 64 75 6c 65 } //1 HuraModule
		$a_01_9 = {4c 61 74 65 43 61 6c 6c } //1 LateCall
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=35
 
}