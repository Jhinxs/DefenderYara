
rule VirTool_BAT_DjangoRein_C_MTB{
	meta:
		description = "VirTool:BAT/DjangoRein.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {52 65 63 6f 72 64 53 4f 41 } //1 RecordSOA
		$a_01_1 = {54 58 54 44 4e 41 4d 45 } //1 TXTDNAME
		$a_01_2 = {63 6f 6d 6d 61 6e 64 } //1 command
		$a_01_3 = {75 70 6c 6f 61 64 } //1 upload
		$a_01_4 = {70 6f 73 68 5f 69 6e 5f 6d 65 6d } //1 posh_in_mem
		$a_01_5 = {73 6f 63 6b 73 } //1 socks
		$a_01_6 = {69 6e 74 65 72 61 63 74 69 76 65 } //1 interactive
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}