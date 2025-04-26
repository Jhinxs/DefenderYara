
rule Trojan_Win64_IcedID_RDD_MTB{
	meta:
		description = "Trojan:Win64/IcedID.RDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {76 63 61 62 } //1 vcab
		$a_01_1 = {74 68 65 6f 72 61 5f 63 6c 65 61 72 } //1 theora_clear
		$a_01_2 = {74 68 5f 69 6e 66 6f 5f 69 6e 69 74 } //1 th_info_init
		$a_01_3 = {74 68 5f 63 6f 6d 6d 65 6e 74 5f 71 75 65 72 79 } //1 th_comment_query
		$a_01_4 = {74 68 5f 67 72 61 6e 75 6c 65 5f 66 72 61 6d 65 } //1 th_granule_frame
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}