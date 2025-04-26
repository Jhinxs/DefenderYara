
rule Worm_Win32_Dilly_A{
	meta:
		description = "Worm:Win32/Dilly.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //1 SOFTWARE\Borland\Delphi\RTL
		$a_01_1 = {53 68 65 6c 6c 45 78 65 63 75 74 65 } //1 ShellExecute
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 61 67 6e 65 74 5c 48 61 6e 64 6c 65 72 73 } //1 SOFTWARE\Magnet\Handlers
		$a_01_3 = {53 65 74 74 69 6e 67 73 5c 44 63 50 6c 75 73 50 6c 75 73 2e 78 6d 6c } //1 Settings\DcPlusPlus.xml
		$a_01_4 = {3c 44 69 72 65 63 74 6f 72 79 20 56 69 72 74 75 61 6c 3d 22 61 75 74 6f 5f 64 69 73 6b 5f 73 68 61 72 65 5f } //1 <Directory Virtual="auto_disk_share_
		$a_01_5 = {64 65 6c 20 2f 51 20 25 30 } //1 del /Q %0
		$a_01_6 = {63 3a 5c 5f 75 6e 64 6f 5f } //1 c:\_undo_
		$a_01_7 = {2e 57 4d 56 2e 73 63 72 } //1 .WMV.scr
		$a_01_8 = {2e 41 56 49 2e 73 63 72 } //1 .AVI.scr
		$a_01_9 = {2e 4d 50 47 2e 73 63 72 } //1 .MPG.scr
		$a_01_10 = {ff ff ff ff 04 00 00 00 68 61 72 64 00 00 00 00 ff ff ff ff 04 00 00 00 70 6f 72 6e 00 00 00 00 ff ff ff ff 03 00 00 00 61 73 73 00 ff ff ff ff 05 00 00 00 64 69 6c 64 6f 00 00 00 ff ff ff ff 06 00 00 00 69 6e 63 65 73 74 00 00 ff ff ff ff 04 00 00 00 70 65 64 6f 00 00 00 00 ff ff ff ff 06 00 00 00 66 75 63 6b 65 64 00 00 ff ff ff ff 04 00 00 00 70 69 73 73 00 00 00 00 ff ff ff ff 05 00 00 00 6c 65 73 62 69 00 00 00 ff ff ff ff 05 00 00 00 67 69 72 6c 73 00 00 00 ff ff ff ff 06 00 00 00 61 6e 67 65 6c 73 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=11
 
}