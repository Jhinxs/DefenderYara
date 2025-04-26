
rule HackTool_Linux_SAgnt_C_MTB{
	meta:
		description = "HackTool:Linux/SAgnt.C!MTB,SIGNATURE_TYPE_ELFHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {69 6e 74 65 72 63 65 70 74 5f 73 73 68 5f 63 6c 69 65 6e 74 } //1 intercept_ssh_client
		$a_01_1 = {66 69 6e 64 5f 70 61 73 73 77 6f 72 64 5f 77 72 69 74 65 } //1 find_password_write
		$a_01_2 = {73 72 63 2f 73 73 68 5f 74 72 61 63 65 72 2e 63 } //1 src/ssh_tracer.c
		$a_01_3 = {69 6e 74 65 72 63 65 70 74 5f 73 75 64 6f } //1 intercept_sudo
		$a_01_4 = {70 61 73 73 77 64 5f 74 72 61 63 65 72 2e 63 } //1 passwd_tracer.c
		$a_01_5 = {65 78 74 72 61 63 74 5f 72 65 61 64 5f 73 74 72 69 6e 67 } //1 extract_read_string
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}