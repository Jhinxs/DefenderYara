
rule Worm_Win32_Pykse_A{
	meta:
		description = "Worm:Win32/Pykse.A,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0a 00 0d 00 00 "
		
	strings :
		$a_00_0 = {55 53 42 3a 20 75 73 65 72 20 69 6e 74 65 72 61 63 74 69 76 65 20 66 69 6c 65 20 63 6f 70 69 65 64 20 74 6f 20 75 73 62 2e } //1 USB: user interactive file copied to usb.
		$a_00_1 = {55 53 42 3a 20 68 69 64 64 65 6e 20 74 72 6f 6a 61 6e 20 66 69 6c 65 20 63 6f 70 69 65 64 20 74 6f 20 75 73 62 2e } //1 USB: hidden trojan file copied to usb.
		$a_00_2 = {55 6e 6b 6e 6f 77 6e 20 73 65 63 75 72 69 74 79 20 66 61 69 6c 75 72 65 20 64 65 74 65 63 74 65 64 21 } //1 Unknown security failure detected!
		$a_00_3 = {55 53 42 3a 20 61 75 74 6f 72 75 6e 20 66 69 6c 65 20 63 6f 70 69 65 64 20 74 6f 20 75 73 62 2e } //1 USB: autorun file copied to usb.
		$a_00_4 = {4d 75 74 65 78 20 61 6c 72 65 61 64 79 20 65 78 73 69 73 74 2e 20 65 78 69 74 2e } //1 Mutex already exsist. exit.
		$a_00_5 = {53 6b 79 70 65 20 57 6f 72 6d 20 73 65 72 76 65 72 20 6d 75 74 65 78 31 } //1 Skype Worm server mutex1
		$a_00_6 = {52 65 6d 6f 76 69 6e 67 20 61 6c 6c 20 6f 6c 64 20 73 68 69 74 } //1 Removing all old shit
		$a_00_7 = {47 65 74 74 69 6e 67 20 70 72 65 6d 69 73 73 69 6f 6e 73 } //1 Getting premissions
		$a_00_8 = {64 72 69 76 65 72 73 5c 65 74 63 5c 68 6f 73 74 73 } //1 drivers\etc\hosts
		$a_01_9 = {53 6f 66 74 77 61 72 65 5c 50 79 6b 73 65 32 5c } //1 Software\Pykse2\
		$a_00_10 = {63 3a 5c 6c 6f 67 2e 64 6f 63 } //1 c:\log.doc
		$a_00_11 = {7a 6a 62 73 2e 65 78 65 } //1 zjbs.exe
		$a_00_12 = {67 61 6d 65 2e 65 78 65 } //1 game.exe
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_01_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=10
 
}