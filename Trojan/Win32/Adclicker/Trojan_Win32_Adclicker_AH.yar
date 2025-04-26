
rule Trojan_Win32_Adclicker_AH{
	meta:
		description = "Trojan:Win32/Adclicker.AH,SIGNATURE_TYPE_PEHSTR,1b 00 1b 00 1b 00 00 "
		
	strings :
		$a_01_0 = {67 6f 6f 67 6c 65 61 73 71 2c 67 6f 6f 67 6c 65 2e 2c 61 73 5f 71 3d 2c } //1 googleasq,google.,as_q=,
		$a_01_1 = {79 61 68 6f 6f 2c 79 61 68 6f 6f 2e 2c 70 3d 2c } //1 yahoo,yahoo.,p=,
		$a_01_2 = {79 61 68 6f 6f 5f 61 74 61 76 69 73 74 61 2c 79 61 68 6f 6f 2e 2c 71 3d 2c } //1 yahoo_atavista,yahoo.,q=,
		$a_01_3 = {6d 73 6e 2c 6d 73 6e 2e 2c 71 3d 2c } //1 msn,msn.,q=,
		$a_01_4 = {62 61 69 64 75 2c 62 61 69 64 75 2e 63 6f 6d 2c 77 64 3d 2c } //1 baidu,baidu.com,wd=,
		$a_01_5 = {64 6d 6f 7a 2c 64 6d 6f 7a 2e 2c 73 65 61 72 63 68 3d 2c } //1 dmoz,dmoz.,search=,
		$a_01_6 = {6e 65 74 73 63 61 70 65 2c 6e 65 74 73 63 61 70 65 2e 63 6f 6d 2c 73 3d 2c } //1 netscape,netscape.com,s=,
		$a_01_7 = {61 62 6f 75 74 2c 61 62 6f 75 74 2e 63 6f 6d 2c 74 65 72 6d 73 3d 2c } //1 about,about.com,terms=,
		$a_01_8 = {6c 6f 6f 6b 73 6d 61 72 74 2c 6c 6f 6f 6b 73 6d 61 72 74 2e 63 6f 6d 2c 71 74 3d 2c } //1 looksmart,looksmart.com,qt=,
		$a_01_9 = {6e 74 6c 77 6f 72 6c 64 2c 6e 74 6c 77 6f 72 6c 64 2e 2c 71 3d 2c } //1 ntlworld,ntlworld.,q=,
		$a_01_10 = {65 61 72 74 68 6c 69 6e 6b 2c 65 61 72 74 68 6c 69 6e 6b 2e 2c 71 3d 2c } //1 earthlink,earthlink.,q=,
		$a_01_11 = {6d 79 77 65 62 73 65 61 72 63 68 2c 6d 79 77 65 62 73 65 61 72 63 68 2e 2c 73 65 61 72 63 68 66 6f 72 3d 2c } //1 mywebsearch,mywebsearch.,searchfor=,
		$a_01_12 = {6c 69 76 65 2c 6c 69 76 65 2e 63 6f 6d 2c 71 3d 2c } //1 live,live.com,q=,
		$a_01_13 = {61 6c 65 78 61 2c 61 6c 65 78 61 2e 63 6f 6d 2c 71 3d 2c } //1 alexa,alexa.com,q=,
		$a_01_14 = {6a 61 79 64 65 2c 6a 61 79 64 65 2e 2c 71 75 65 72 79 3d 2c } //1 jayde,jayde.,query=,
		$a_01_15 = {64 6f 67 70 69 6c 65 2c 64 6f 67 70 69 6c 65 2e 63 6f 6d 2c 77 65 62 2f 2c 2f } //1 dogpile,dogpile.com,web/,/
		$a_01_16 = {6c 69 62 65 72 6f 2c 6c 69 62 65 72 6f 2e 69 74 2c 71 75 65 72 79 3d 2c } //1 libero,libero.it,query=,
		$a_01_17 = {77 65 62 64 65 2c 77 65 62 2e 64 65 2c 73 75 3d 2c } //1 webde,web.de,su=,
		$a_01_18 = {63 6f 6d 63 61 73 74 2c 63 6f 6d 63 61 73 74 2e 6e 65 74 2c 71 3d 2c } //1 comcast,comcast.net,q=,
		$a_01_19 = {79 6f 75 74 75 62 65 2c 79 6f 75 74 75 62 65 2e 63 6f 6d 2c 73 65 61 72 63 68 5f 71 75 65 72 79 3d 2c } //1 youtube,youtube.com,search_query=,
		$a_01_20 = {73 65 7a 6e 61 6d 2c 73 65 7a 6e 61 6d 2e 63 7a 2c 77 3d 2c } //1 seznam,seznam.cz,w=,
		$a_01_21 = {6f 76 65 72 74 75 72 65 2c 6f 76 65 72 74 75 72 65 2e 63 6f 6d 2c 4b 65 79 77 6f 72 64 73 3d 2c } //1 overture,overture.com,Keywords=,
		$a_01_22 = {62 6c 6f 67 67 65 72 71 2c 73 65 61 72 63 68 2e 62 6c 6f 67 67 65 72 2e 63 6f 6d 2c 61 73 5f 71 3d 2c } //1 bloggerq,search.blogger.com,as_q=,
		$a_01_23 = {63 6e 6e 2c 63 6e 6e 2e 63 6f 6d 2c 71 75 65 72 79 3d 2c } //1 cnn,cnn.com,query=,
		$a_01_24 = {74 65 72 72 61 2c 74 65 72 72 61 2e 63 6f 6d 2e 62 72 2c 71 75 65 72 79 3d 2c } //1 terra,terra.com.br,query=,
		$a_01_25 = {62 62 63 2c 62 62 63 2e 63 6f 2e 75 6b 2c 71 3d 2c } //1 bbc,bbc.co.uk,q=,
		$a_01_26 = {83 c4 f8 c7 04 24 3c 00 00 00 bb 78 15 42 00 8b 35 c4 16 42 00 8b 3d b8 16 42 00 8b 2d 44 17 42 00 a1 d0 16 42 00 89 44 24 04 83 3b 00 74 1e 55 8b 44 24 08 50 8b cf 8b d6 8b 03 e8 50 fe ff ff a1 1c 17 42 00 c7 00 3c 00 00 00 eb 1e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1) >=27
 
}