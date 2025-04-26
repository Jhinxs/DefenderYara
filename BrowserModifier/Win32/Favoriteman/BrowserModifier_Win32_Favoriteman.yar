
rule BrowserModifier_Win32_Favoriteman{
	meta:
		description = "BrowserModifier:Win32/Favoriteman,SIGNATURE_TYPE_PEHSTR,0c 00 0a 00 0b 00 00 "
		
	strings :
		$a_01_0 = {46 00 61 00 76 00 6f 00 72 00 69 00 74 00 65 00 2e 00 46 00 61 00 76 00 6f 00 72 00 69 00 74 00 65 00 4d 00 61 00 6e 00 2e 00 31 00 } //5 Favorite.FavoriteMan.1
		$a_01_1 = {77 77 77 2e 66 31 6f 72 67 61 6e 69 7a 65 72 2e 63 6f 6d } //1 www.f1organizer.com
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 4f 6e 63 65 } //1 SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_4 = {49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 5c } //1 Internet Account Manager\Accounts\
		$a_01_5 = {4d 69 63 72 6f 73 6f 66 74 5c 4f 75 74 4c 6f 6f 6b 20 45 78 70 72 65 73 73 5c } //1 Microsoft\OutLook Express\
		$a_01_6 = {5c 46 61 76 42 6f 6f 74 2e 64 6c 6c } //1 \FavBoot.dll
		$a_01_7 = {5c 4f 66 72 67 2e 64 6c 6c } //1 \Ofrg.dll
		$a_01_8 = {5c 46 61 76 4d 61 6e 2e 64 6c 6c } //1 \FavMan.dll
		$a_01_9 = {5c 46 61 76 6f 72 69 74 65 2e 64 6c 6c } //1 \Favorite.dll
		$a_01_10 = {48 61 72 61 20 48 61 72 61 20 4d 61 68 61 64 65 76 20 21 21 21 } //1 Hara Hara Mahadev !!!
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1) >=10
 
}