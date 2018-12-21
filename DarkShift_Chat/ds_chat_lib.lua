--[[
Addon: DarkShift UI
Module: Chat
Developed by: �Devrak 2k18
]]--


GUILD_LIST = {}
FREND_LIST = {}
EMOJI_LIST = {

	[":seemsgoodman:"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\SeemsGoodMan.tga",
	[":feelsgoodman:"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\FeelsGoodMan.tga",
	[":feelsbadman:"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\FeelsBadMan.tga",
	[":ree:"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Ree.tga",
	[":lul:"] 				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\lul.tga",
	[":omegalul:"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Omega.tga",
	[":monkas:"] 			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\MonkaS.tga",
	[":wesmart:"] 			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\WeSmart.tga",
	[":pogchamp:"] 			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\PogChamp.tga",
	[":poggers:"] 			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Poggers.tga",
	[":pep:"] 				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Pep.tga",
	[":pepehands:"] 		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\PepeHands.tga",
	[":ayy:"]	 			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\ayy.tga",
	[":notlikethis:"]	 	= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\NotLikeThis.tga",
	[":cmonbruh:"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\CmonBruh.tga",
	[":kappa:"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Kappa.tga",
	[":facepalm:"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Facepalm.tga",
	[":wwow:"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Wwow.tga",
	[":pepeez:"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\PepeEz.tga",
	[":thonk:"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Thonk.tga"
}

EMOTE_LIST = {

	["%sseemsgoodman"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\SeemsGoodMan.tga",
	["%sfeelsgoodman"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\FeelsGoodMan.tga",
	["%sfeelsbadman"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\FeelsBadMan.tga",
	["%ssgman"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\SeemsGoodMan.tga",
	["%sfgman"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\FeelsGoodMan.tga",
	["%sfbman"]				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\FeelsBadMan.tga",
	["%s[rR][eE][eE]+"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Ree.tga",
	["%s[lL][uU][lL][zZ]?"] = " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\lul.tga",
	["%somegalul"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Omega.tga",
	["%sOMEGALUL"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Omega.tga",
	["%s[Mm]onka[Ss]"] 		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\MonkaS.tga",
	["%s[Ww]e[Ss]mart"] 	= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\WeSmart.tga",
	["%s[Pp]og[Cc]hamp"] 	= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\PogChamp.tga",
	["%s[Pp]ogg?ers"] 		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Poggers.tga",
	["%sPEP"] 				= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Pep.tga",
	["%s[Pp]epehands"] 		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\PepeHands.tga",
	["%s[Ay][Yy][Yy]+"]	 	= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\ayy.tga",
	["%snotlikethis"]	 	= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\NotLikeThis.tga",
	["%s[Cc]mon[Bb]ruh"]	= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\CmonBruh.tga",
	["%s[Kk]appa"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Kappa.tga",
	["%s[Ff]acepalm"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Facepalm.tga",
	["%s[Ww]wow"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Wwow.tga",
	["%s[Pp]epe[Ee]z"]		= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\PepeEz.tga",
	["%s[Tt]honk"]			= " |TInterface\\AddOns\\DarkShift_Chat\\lib\\emotes\\Thonk.tga"
}

DSC_SKINS_LIST = {

	["Blizzard"] = {
		["SkinName"] = "Blizzard",
		["EditBgTx"] = "Blizzard",
		["EditBgTs"] = {
			["Blizzard"] = {
				["txl"] = "Interface\\ChatFrame\\UI-ChatInputBorder-Left",
				["txm"] = "Interface\\ChatFrame\\UI-ChatInputBorder-Right",
				["txr"] = "Interface\\ChatFrame\\UI-ChatInputBorder-Right",
				["txw"] = 16,
				["txh"] = 32,
				["lpd"] = 7,
				["rpd"] = 8,
				["ins"] = 14,
				["foc"] = true,
				["pdt"] = -2,
				["pdb"] = 2,
				["dmh"] = 27
			},
			["None"] = {
				["txw"] = 0,
				["txh"] = 0,
				["lpd"] = 4,
				["rpd"] = 4,
				["ins"] = 7,
				["foc"] = false,
				["pdt"] = -2,
				["pdb"] = 2,
				["dmh"] = 27
			},
			["Color"] = {
				["txl"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_icl.blp",
				["txm"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_icm.blp",
				["txr"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_icr.blp",
				["col"] = {r = 0, g = 0, b = 0, a = 0.5},
				["txw"] = 16,
				["txh"] = 32,
				["lpd"] = 4,
				["rpd"] = 4,
				["ins"] = 7,
				["foc"] = false,
				["pdt"] = -2,
				["pdb"] = 2,
				["dmh"] = 27
			}
		},
		["EditPosx"] = "BOTTOM",
		["EditFont"] = FONTS_LIST["ARIALN"],
		["EditSize"] = 14,
		["EditShad"] = 0.5,
		["EditPdLn"] = 33,
		["TabDockP"] = "TOP",
		["TabHighL"] = "Interface\\ChatFrame\\UI-Character-Tab-Highlight",
		["TabBgsTx"] = "Blizzard",
		["TabBgsTs"] = {
			["Blizzard"] = {
				["txl"]="Interface\\ChatFrame\\ChatFrameTab",
				["txm"]="Interface\\ChatFrame\\ChatFrameTab",
				["txr"]="Interface\\ChatFrame\\ChatFrameTab",
				["txs"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_transparent.tga"
			},
			["None"] = {},
			["Color"] = {r = 0, g = 0, b = 0,a = 1}
		},
		["TabFoFam"] = FONTS_LIST["FRIZQT"],
		["TabFoCol"] = {r = 0.999, g = 0.819, b = 0, a = 1},
		["TabFoSiz"] = 10,
		["TabFoShd"] = 0.5,
		["TabDPadT"] = 0,
		["TabDPadR"] = 0,
		["TabDPadL"] = 0,
		["TabDPadB"] = 0,
		["TabSvpad"] = 0,
		["TabScrol"] = false,
		["TabAlph1"] = 0.5,
		["TabAlph2"] = 1,
		["TabAlcol"] = {r = 0, g = 0, b = 0},
		["ChatBtns"] = true,
		["ChatFont"] = FONTS_LIST["ARIALN"],
		["ChatSize"] = 14,
		["ChatShad"] = 1,
		["ChatBgTx"] = "Blizzard",
		["ChatBgTs"] = {
			["Blizzard"] = {
				["tlb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["tls"]=16,
				["tlh"]=-2,
				["tlv"]=2,
				["tmb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["tms"]=16,
				["tmh"]=0,
				["tmv"]=0,
				["trb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["trs"]=16,
				["trh"]=2,
				["trv"]=2,
				["lbb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["lbs"]=16,
				["lbh"]=0,
				["lbv"]=0,
				["rbb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["rbs"]=16,
				["rbh"]=0,
				["rbv"]=0,
				["blb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["bls"]=16,
				["blh"]=-2,
				["blv"]=-2,
				["brb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["brs"]=16,
				["brh"]=2,
				["brv"]=-2,
				["bmb"]="Interface\\ChatFrame\\ChatFrameBorder",
				["bms"]=16,
				["bmh"]=0,
				["bmv"]=0,
				["bgg"]="Interface\\ChatFrame\\ChatFrameBackground",
				["bgH"]=-2,
				["bgV"]=3,
				["bgh"]=3,
				["bgv"]=-6,
			},
			["None"] = {
				["bgH"]=-2,
				["bgV"]=3,
				["bgh"]=3,
				["bgv"]=-6,
			}
		},
		["ChatBgCh"] = {
			[1] = "Blizzard",
			[2] = "Blizzard",
			[3] = "Blizzard",
			[4] = "Blizzard",
			[5] = "Blizzard",
			[6] = "Blizzard",
			[7] = "Blizzard",
			[8] = "Blizzard",
			[9] = "Blizzard",
			[10] = "Blizzard"
		},
		["ChatBase"] = 0.25,
		["EmojiPix"] = 41,
		["TimeStmp"] = "Not",
		["TimeColo"] = "ffffff",
		["SelfColo"] = "ace5ee",
		["HlinColo"] = "7a9ae2",
		["GinvColo"] = "ffff00"
	},
	["DarkShift"] = {
		["SkinName"] = "DarkShift",
		["EditBgTx"] = "Texture",
		["EditBgTs"] = {
			["Texture"] = {
				["txl"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_inl.tga",
				["txm"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_inm.tga",
				["txr"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_inr.tga",
				["txw"] = 43,
				["txh"] = 43,
				["lpd"] = 18,
				["rpd"] = 18,
				["ins"] = 20,
				["foc"] = false,
				["pdt"] = 10,
				["pdb"] = 14,
				["dmh"] = 17.5
			},
			["None"] = {
				["txw"] = 0,
				["txh"] = 0,
				["lpd"] = 12.5,
				["rpd"] = 12.5,
				["ins"] = 10,
				["foc"] = false,
				["pdt"] = 7,
				["pdb"] = 13,
				["dmh"] = 21
			},
			["Color"] = {
				["txl"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_icl.blp",
				["txm"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_icm.blp",
				["txr"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_icr.blp",
				["col"] = {r = 0, g = 0, b = 0, a = 1},
				["txw"] = 32,
				["txh"] = 32,
				["lpd"] = 12.5,
				["rpd"] = 12.5,
				["ins"] = 10,
				["foc"] = false,
				["pdt"] = 7,
				["pdb"] = 13,
				["dmh"] = 21
			}
		},
		["EditPosx"] = "TOP",
		["EditFont"] = FONTS_LIST["ARIALN"],
		["EditSize"] = 14,
		["EditShad"] = 0.5,
		["EditPdLn"] = 30,
		["TabDockP"] = "RIGHT",
		["TabHighL"] = "Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_thl.blp",
		["TabBgsTx"] = "None",
		["TabBgsTs"] = {
			["None"] = {
				["txl"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_transparent.tga",
				["txm"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_transparent.tga",
				["txr"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_transparent.tga",
				["txs"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_transparent.tga"
			},
			["Color"] = {r = 0, g = 0, b = 0,a = 1},
		},
		["TabFoFam"] = FONTS_LIST["ARIALN"],
		["TabFoCol"] = {r = 0, g = 0, b = 0, a = 1},
		["TabFoSiz"] = 11,
		["TabFoShd"] = 0,
		["TabDPadT"] = 9.5,
		["TabDPadR"] = 9.5,
		["TabDPadL"] = -9.5,
		["TabDPadB"] = -10,
		["TabSvpad"] = 3,
		["TabScrol"] = true,
		["TabAlph1"] = 0.4,
		["TabAlph2"] = 0.6,
		["TabAlcol"] = {r = 0.64,g = 0.02,b = 0.02 },
		["ChatBtns"] = false,
		["ChatFont"] = FONTS_LIST["ARIALN"],
		["ChatSize"] = 12,
		["ChatShad"] = 0.5,
		["ChatBgTx"] = "TextureL",
		["ChatBgTs"] = {
			["TextureL"] = {
				["tlb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tl.tga",
				["tls"]=10.6,
				["tlh"]=-10.6,
				["tlv"]=10.6,
				["tmb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tt.tga",
				["tms"]=10.6,
				["tmh"]=0,
				["tmv"]=0,
				["trb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tr.tga",
				["trs"]=10.6,
				["trh"]=10.6,
				["trv"]=10.6,
				["lbb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_lb.tga",
				["lbs"]=10.6,
				["lbh"]=-0,
				["lbv"]=-0,
				["rbb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_rb.tga",
				["rbs"]=10.6,
				["rbh"]=0,
				["rbv"]=0,
				["blb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bl.tga",
				["bls"]=21.2,
				["blh"]=-21.2,
				["blv"]=-21.2,
				["brb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_br.tga",
				["brs"]=10.6,
				["brh"]=10.6,
				["brv"]=-10.6,
				["bmb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bt.tga",
				["bms"]=10.6,
				["bmh"]=0,
				["bmv"]=10.6,
				["bgg"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bg.tga",
				["bgH"]=0,
				["bgV"]=0,
				["bgh"]=0,
				["bgv"]=-2
			},
			["TextureR"] = {
				["tlb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tl2.tga",
				["tls"]=10.6,
				["tlh"]=-10.6,
				["tlv"]=10.6,
				["tmb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tt.tga",
				["tms"]=10.6,
				["tmh"]=0,
				["tmv"]=0,
				["trb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tr2.tga",
				["trs"]=10.6,
				["trh"]=10.6,
				["trv"]=10.6,
				["lbb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_lb2.tga",
				["lbs"]=10.6,
				["lbh"]=-0,
				["lbv"]=-0,
				["rbb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_rb2.tga",
				["rbs"]=10.6,
				["rbh"]=0,
				["rbv"]=0,
				["blb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bl2.tga",
				["bls"]=10.6,
				["blh"]=-10.6,
				["blv"]=-10.6,
				["brb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_br2.tga",
				["brs"]=21.2,
				["brh"]=21.2,
				["brv"]=-21.2,
				["bmb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bt.tga",
				["bms"]=10.6,
				["bmh"]=0,
				["bmv"]=0,
				["bgg"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bg.tga",
				["bgH"]=0,
				["bgV"]=0,
				["bgh"]=0,
				["bgv"]=-2
			},
			["TextureM"] = {
				["tlb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tl2.tga",
				["tls"]=10.6,
				["tlh"]=-10.6,
				["tlv"]=10.6,
				["tmb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tt.tga",
				["tms"]=10.6,
				["tmh"]=0,
				["tmv"]=0,
				["trb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_tr.tga",
				["trs"]=10.6,
				["trh"]=10.6,
				["trv"]=10.6,
				["lbb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_lb2.tga",
				["lbs"]=10.6,
				["lbh"]=-0,
				["lbv"]=-0,
				["rbb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_rb.tga",
				["rbs"]=10.6,
				["rbh"]=0,
				["rbv"]=0,
				["blb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bl2.tga",
				["bls"]=10.6,
				["blh"]=-10.6,
				["blv"]=-10.6,
				["brb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_br.tga",
				["brs"]=10.6,
				["brh"]=10.6,
				["brv"]=-10.6,
				["bmb"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bt.tga",
				["bms"]=10.6,
				["bmh"]=0,
				["bmv"]=0,
				["bgg"]="Interface\\AddOns\\DarkShift_Chat\\lib\\img\\ds_chat_bg.tga",		
				["bgH"]=0,
				["bgV"]=0,
				["bgh"]=0,
				["bgv"]=-2
			},
			["None"] = {
				["bgH"]=0,
				["bgV"]=0,
				["bgh"]=0,
				["bgv"]=-2
			},
			["Color"] = {
				["tlb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["tls"]=9.6,
				["tlh"]=-9.6,
				["tlv"]=9.6,
				["tmb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["tms"]=9.6,
				["tmh"]=0,
				["tmv"]=0,
				["trb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["trs"]=9.6,
				["trh"]=9.6,
				["trv"]=9.6,
				["lbb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["lbs"]=9.6,
				["lbh"]=-0,
				["lbv"]=-0,
				["rbb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["rbs"]=9.6,
				["rbh"]=0,
				["rbv"]=0,
				["blb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["bls"]=9.6,
				["blh"]=-9.6,
				["blv"]=-9.6,
				["brb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["brs"]=9.6,
				["brh"]=9.6,
				["brv"]=-9.6,
				["bmb"]="Interface\\ChatFrame\\ChatFrameBackground",
				["bms"]=9.6,
				["bmh"]=0,
				["bmv"]=0,
				["bgg"]="Interface\\ChatFrame\\ChatFrameBackground",			
				["bgH"]=0,
				["bgV"]=0,
				["bgh"]=0,
				["bgv"]=-2
			},
		},
		["ChatBgCh"] = {
			[1] = "TextureL",
			[2] = "TextureL",
			[3] = "TextureL",
			[4] = "TextureL",
			[5] = "TextureL",
			[6] = "TextureL",
			[7] = "TextureL",
			[8] = "TextureL",
			[9] = "TextureL",
			[10] = "TextureL"
		},
		["ChatBase"] = 1,
		["EmojiPix"] = 41,
		["TimeStmp"] = "Not",
		["TimeColo"] = "ffffff",
		["SelfColo"] = "ace5ee",
		["HlinColo"] = "7a9ae2",
		["GinvColo"] = "ffff00"
	}
}

DSC_TEMPLATE = {
	["SkinName"] = "",
	["EditBgTx"] = "",
	["EditBgTs"] = {},
	["EditPosx"] = "",
	["EditFont"] = "",
	["EditSize"] = 0,
	["EditShad"] = 0,
	["EditPdLn"] = 0,
	["TabDockP"] = "",
	["TabHighL"] = "",
	["TabBgsTx"] = "",
	["TabBgsTs"] = {},
	["TabFoFam"] = "",
	["TabFoCol"] = {},
	["TabFoSiz"] = 0,
	["TabFoShd"] = 0,
	["TabDPadT"] = 0,
	["TabDPadR"] = 0,
	["TabDPadL"] = 0,
	["TabDPadB"] = 0,
	["TabSvpad"] = 0,
	["TabAlph1"] = 0,
	["TabAlph2"] = 0,
	["TabAlcol"] = {},
	["ChatBtns"] = false,
	["ChatFont"] = "",
	["ChatSize"] = 0,
	["ChatShad"] = 0,
	["ChatBgTx"] = "",
	["ChatBgTs"] = {},
	["ChatBgCh"] = {
			[1] = "",
			[2] = "",
			[3] = "",
			[4] = "",
			[5] = "",
			[6] = "",
			[7] = "",
			[8] = "",
			[9] = "",
			[10] = ""
		},
	["ChatBase"] = 1,
	["EmojiPix"] = 41,
	["TimeStmp"] = "",
	["TimeColo"] = "",
	["SelfColo"] = "",
	["HlinColo"] = "",
	["applyGrp"] = "",
	["GinvColo"] = ""
}