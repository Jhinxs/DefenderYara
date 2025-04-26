
rule Backdoor_Linux_Gafgyt_AJ_MTB{
	meta:
		description = "Backdoor:Linux/Gafgyt.AJ!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_00_0 = {62 69 6e 73 2e 73 68 3b 63 68 6d 6f 64 20 37 37 37 20 62 69 6e 73 2e 73 68 3b 73 68 20 62 69 6e 73 2e 73 68 3b 72 6d 20 2d 72 66 20 62 69 6e 73 2e 73 68 3b 68 69 73 74 6f 72 79 20 2d 63 } //3 bins.sh;chmod 777 bins.sh;sh bins.sh;rm -rf bins.sh;history -c
		$a_00_1 = {74 65 6c 6e 65 74 61 64 6d 69 6e } //1 telnetadmin
		$a_00_2 = {76 73 74 61 72 63 61 6d 32 30 31 35 } //1 vstarcam2015
		$a_00_3 = {53 45 4e 44 42 4f 54 53 54 4f } //1 SENDBOTSTO
	condition:
		((#a_00_0  & 1)*3+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1) >=3
 
}