
rule HackTool_Linux_Eggshell_A{
	meta:
		description = "HackTool:Linux/Eggshell.A,SIGNATURE_TYPE_CMDHSTR_EXT,16 00 16 00 03 00 00 "
		
	strings :
		$a_00_0 = {70 00 79 00 74 00 68 00 6f 00 6e 00 } //2 python
		$a_00_1 = {2f 00 74 00 6d 00 70 00 2f 00 65 00 73 00 70 00 6c 00 2e 00 70 00 79 00 } //10 /tmp/espl.py
		$a_00_2 = {65 00 79 00 4a 00 6b 00 5a 00 57 00 4a 00 31 00 5a 00 79 00 49 00 36 00 49 00 } //10 eyJkZWJ1ZyI6I
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10) >=22
 
}