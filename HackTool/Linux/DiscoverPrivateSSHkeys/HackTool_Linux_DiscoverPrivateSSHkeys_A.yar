
rule HackTool_Linux_DiscoverPrivateSSHkeys_A{
	meta:
		description = "HackTool:Linux/DiscoverPrivateSSHkeys.A,SIGNATURE_TYPE_CMDHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_01_0 = {66 00 69 00 6e 00 64 00 20 00 2f 00 20 00 2d 00 6e 00 61 00 6d 00 65 00 20 00 69 00 64 00 5f 00 72 00 73 00 61 00 } //10 find / -name id_rsa
		$a_01_1 = {2d 00 65 00 78 00 65 00 63 00 20 00 63 00 70 00 20 00 2d 00 2d 00 70 00 61 00 72 00 65 00 6e 00 74 00 73 00 20 00 7b 00 7d 00 } //1 -exec cp --parents {}
		$a_01_2 = {2d 00 65 00 78 00 65 00 63 00 20 00 72 00 73 00 79 00 6e 00 63 00 20 00 2d 00 52 00 20 00 7b 00 7d 00 } //1 -exec rsync -R {}
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=11
 
}