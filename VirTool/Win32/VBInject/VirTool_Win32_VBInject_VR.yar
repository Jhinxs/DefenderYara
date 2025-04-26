
rule VirTool_Win32_VBInject_VR{
	meta:
		description = "VirTool:Win32/VBInject.VR,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 "
		
	strings :
		$a_01_0 = {42 61 73 65 20 64 65 20 44 61 74 6f 73 20 61 20 52 65 73 70 61 6c 64 61 72 2f 52 65 73 74 61 75 72 61 72 3a } //2 Base de Datos a Respaldar/Restaurar:
		$a_01_1 = {52 74 6c 4d 6f 76 65 4d 65 6d 6f 72 79 } //2 RtlMoveMemory
		$a_01_2 = {63 6d 62 44 61 74 61 62 61 73 65 4e 61 6d 65 } //2 cmbDatabaseName
		$a_01_3 = {6f 70 74 53 53 41 75 74 68 } //2 optSSAuth
		$a_01_4 = {44 00 61 00 74 00 61 00 20 00 46 00 69 00 6c 00 65 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 } //2 Data File Name:
		$a_01_5 = {6f 70 74 57 69 6e 4e 54 41 75 74 68 } //3 optWinNTAuth
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*3) >=13
 
}