Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1673C7D0C77
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Oct 2023 11:59:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D0E5840C10
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Oct 2023 09:59:32 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id 0A7173EF90
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Oct 2023 09:59:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=LwfKxcEg;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=XXlym5KD;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: 57a21f586f2f11eea33bb35ae8d461a2-20231020
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=DWq3sydXgcZWEsu/9Wl3uzVW1tusMXXlLKm5vby17AI=;
	b=LwfKxcEghlFySQn/zTO4eZOhndpIGFtyFw+yOmLKnD8tGyNPc3wCQ80rdmKKVC+LLfAXFsvJCzBE60FIPciJ5xPe9FkrfOWERJr0zhe/W04yqu6GJ5PMVJ2gkpsOiEQsmzZCrnWqrNHUVihksKrHVH9xMfojGWnC5CzK5liT9qM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:fb6493e4-bfee-4142-852c-8b28416297ae,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:10eb1dd7-04a0-4e50-8742-3543eab8cb8e,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 57a21f586f2f11eea33bb35ae8d461a2-20231020
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 575609232; Fri, 20 Oct 2023 17:59:21 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Oct 2023 17:59:20 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Oct 2023 17:59:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AB5on8rQ/MuNZKYbQBgzxUvHAukZL+76pjsDuwAYxRbRGdFtWtuzzSUDOV3ueL7jvzDfMG1Sxe6kFloeCHXgn47GmE/zG9dvMa9s1yIrSLa979jdlMXS6IC50p4SBdlHFitgw8EtZ/RUzrpl+6dwvckQIcRTspD1MI1NNn0PwVp2Oc804WCAin/SE+7dqIMIWQYBICv8aVoeyyCyqYMGsjMc2KRRT3etczEiYbbIzZpNVov9N9uRgMm0gGZIYoVs9/c2hMZnozOAKHZJamGTcaW105hxzANSSUwPsl415HEXvdkpd2uuJveVnzVmPUREHubScfu5UlE6i+KBc12+aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DWq3sydXgcZWEsu/9Wl3uzVW1tusMXXlLKm5vby17AI=;
 b=EQTJUO+VsdBAn/kjGSv6STXqZCetGAwFhaOjJ85Rrj2dzz7Lo/TS/43JvbPlzNFmEuemybT9wz8lp23gSkq9nGTAupaLy7DSAChjXWC1TZTv91y/H7KMSK60QjCZ4Z37kSpX3iiASDNPhbVY63df4LZr/D7up9tE6eEDLQ4/vnmnDgRBbnwRB/ONhsdav+VPL8OzeD8Fhrb8nlB7I4rLHsLSgCd0Ti5FasPN+mng8sfb2GGXJw+cuDYAVqD0ROSIdBY+vSIbnJQOvVIfp/A0/XP9yr4jspEOxkaKe0JIP7SgynIMWK6tRZZi5SZbQlNrNJST+erHkwkyZC1pjhz7KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DWq3sydXgcZWEsu/9Wl3uzVW1tusMXXlLKm5vby17AI=;
 b=XXlym5KDqlSw7zahKSN/0zZ/G3pwNwKKbdyJH9Xa24c7ivilTvgNq3iCtLZ/b0xUTQqpiYFpm7JYlX2JzbSbDPTIYno1MXh6fRqitxyyd/jIthrsPIFIe18ED4fYfbkrEaJeT2dBiS4vX4tmXZT/P7pfByOHiC0bMYGlL+6dn4E=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 SEZPR03MB7471.apcprd03.prod.outlook.com (2603:1096:101:132::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.26; Fri, 20 Oct 2023 09:59:17 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::3dfd:5783:26bf:c189]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::3dfd:5783:26bf:c189%4]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 09:59:17 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>,
	"quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
Thread-Index: AQHZ5FgcsYZL1VMcSUC+/rX+uk2OfbBQxXUAgAHqBgA=
Date: Fri, 20 Oct 2023 09:59:16 +0000
Message-ID: <c8bf01a083182fdc83742de8daad8c5ce8d56d5b.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-5-yong.wu@mediatek.com>
	 <5d806772-a2b4-4304-be45-7c2ed2930fcc@quicinc.com>
In-Reply-To: <5d806772-a2b4-4304-be45-7c2ed2930fcc@quicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|SEZPR03MB7471:EE_
x-ms-office365-filtering-correlation-id: 6bb8d399-21ef-4496-fdf4-08dbd15338e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Jl4Zd4fjdkl53OpSfm1e8fk/p29HXCzT0PNW/r1UZ53ObBf+ci0Wl0mASrpntplqMeCq6/W7D/ise/NnNxj37ySdQ3pFeF7Mq1T+mut2j98yKQarxiughoK/ZmOopbYg8f9KJtOdE59LE2iwFrjD3pPIa+YbojD9c00MO1F3sqn8SkCIkug6TY7Xu9GAcjrqOJ+UloYQJ6Qb5mPNSd243IjMvm+T24LZS44W6fXDmjbIlWHcjKeD6OVBCdB3u7x7I0T+D93sinP0xhcuW8jed0ShEBMRm8O2rjqGDr2obD0da6PZ7Y+P/XFJ1vMNDkx+2A3+jdZL0GlxggbitE1c1XhODN7v9xDsrXKeoBap3/u/69vTXibksapZ/B+LzemtYvORv8RaG+hswUaa1VJGZ+1UNaIMJ6i3FM5XnqHO7DPMlvk/14YYhQVC6tAjGq//LbJScKHpCV/zDmbl1rycGPXQurW+7hgDpawIONv26rKPDYu6vH/GOE6phvVi3NRTnQ5zMqMZGIGyEVPlDd75DxNaN1wUHoUuP1Z59ZY/X8r40RCtZ3SzWKu5glkPnLkfbXdiHycOe28JMLjYSnwNM5uPoHFJdXNmq1oBcFLNd+b8UnGcE6NZC+fbl8FnHzbvRdMy2S04fWTgHK4rKPEHUQ//xPoimhElLg36uYb1cugTkZ1l/gM+B7SBIZ1vVyHo
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(136003)(366004)(39860400002)(346002)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(7416002)(2906002)(316002)(66946007)(76116006)(66476007)(66556008)(110136005)(66446008)(54906003)(64756008)(71200400001)(478600001)(6486002)(8676002)(8936002)(4001150100001)(41300700001)(5660300002)(36756003)(4326008)(6506007)(38100700002)(85182001)(2616005)(53546011)(86362001)(26005)(83380400001)(6512007)(122000001)(38070700009)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WjY5NDhZdjYwcENyS3hhNEFiVWZCUm5DUU0zSDdsTFh3ZVIxenlMVzBJUVJ0?=
 =?utf-8?B?KzczMnBVemZpcmIwTW94ZDUyay9UeDVIWkNOdzNXS0NDL21DZXNoenlObnVv?=
 =?utf-8?B?OERzL1Q4NTc5bkNhNDlSTnRta2RHMzdVTHJrbkdCa1laclRnVVhpbXhjMUxO?=
 =?utf-8?B?QW1md2xwTTFoMy90VDZqbFhDSU5TQ1lTUll3SGNMNXMwUEtnUEtXOW5sOXRx?=
 =?utf-8?B?b1V1L05BTjJ4NHhvVXl5cU9qN012TXB4RkJNdFFLT3VlVDlZNjFOTXNRWTht?=
 =?utf-8?B?N0tkeUVWSVRWMlc4dkoyT2llMktrUnAwNUhTZCtMdlhJcTl5SDIwQ0U5eUMz?=
 =?utf-8?B?NzhvQ1ZIUm5HNnMxbi9aWWJuK2V2UEMvWCtmTEN4SUJZSlBZZWE4Uy85VG5N?=
 =?utf-8?B?YnQ5eFBaenM3UWR2Q3FCTklkZHFPeEY5YlhKMFRsN2l6MnNYWHgweVZDMTJI?=
 =?utf-8?B?NGRCSUhJV2F0aU1HS3JvU1NYTUVWVFR3MDd6aVFMYmE5N1hDN0J4NmJ6YmJU?=
 =?utf-8?B?NWVjWTMraUo3UDMvODVNSmxpQWNyK2pNc1gwcnFkTHlTYml4QkFqbE1GdGlZ?=
 =?utf-8?B?QmZNM25DNVhxTlB0WmZsclA2OWdiRmlyZHlTMGhvb2tvUUlEdSt3QmQ3ZmJB?=
 =?utf-8?B?aDY3VDBFazVGN2lkL3RSQ0NNM1ByN0ljRjBicnhsQ285YzNMUDRrU0E2RVBw?=
 =?utf-8?B?ZGMwdjkwb2tSN0FmVjFhZmMwYzJUK08xWVE0Y1g1dDVoclpxSDlzL2g4dTQ5?=
 =?utf-8?B?SmVUVnU3WFp4b3crL1YrK2ZjUUE1WGMreDliaUF2VC9pM3FBWHJZUlFncDZt?=
 =?utf-8?B?V05IbWVaY0JTZmxVQmFlUGsxZTZvUTVkVVMySHArWHU0YTRCZmRsc3FERzdw?=
 =?utf-8?B?Z3JBUnZhZUhTMkRPOU9HVkRBVHNROER4US8xSkQ5SmEzVzFJVGRYVURWRGlW?=
 =?utf-8?B?dkpEUmFLMnVEdHVMbWo2cUs2WlJMTGp1R2xtWkJ0QVRrcy9obk1Xbk41SWlM?=
 =?utf-8?B?dWptTlZtWjk3Q0RwU0svSWVYSGsyTWlwSjVzV0x3dUVkL0d1L3VBdjVjRlUx?=
 =?utf-8?B?Tmc0N3I2L0lMdER1R1FKbDc4NVgrMmlkR0pvdnV5UDI3K21VRFZ0NjNCNytn?=
 =?utf-8?B?QWppeEpzbHltTFV4VlpkbU9vc0c5TTZsS1cySXYrSWNtQmVPTFp6Z2Z4NnNo?=
 =?utf-8?B?T2dkeTArUTlvSVpHaWFldXVxTFp2L0lJZDRlSXNpaGV4MCtxcE5Ea01tTWNz?=
 =?utf-8?B?U1MvWUNoTU5Na2ZZd2JWMEhCWWdkUlE0Nk5IU0xjWWg2eWVKNjRlMCtUMFdi?=
 =?utf-8?B?UjRxZUk1ZVhaOHBVTzBOZURFQVByNmFnWVhmSWRmUU5SVUg1SWx6MUF2Z3Yw?=
 =?utf-8?B?WEMrVnFXR1NsalNCVFhwWGo2Qkp5WUxPbG0wdlVTRmFnRlRZOExTUXNYVGdH?=
 =?utf-8?B?MlNPdzFmeTZmQ1BudkRyazh6bFFPKzBneTZ3YjNBN2dPT2svaE54NFFoUXly?=
 =?utf-8?B?Qk5RaGoycm8wbkJyWVRXY2Z5MXVuOFR5RytkZ0dCYUdBcWVyTEMwSGNicXhK?=
 =?utf-8?B?bGtVd21DQXhTcXZyZmdYL2plKzkzZnZiZVhPQ0doUlpuYXlvNFloTkJlTExi?=
 =?utf-8?B?ZWs3VlEyRTUrZXlNQWx3VE9HQksycTFxMlY2MFBrejlvdGNNWXRQM2RuMjUr?=
 =?utf-8?B?S1VUS3JnVGpTN29xT054WXk1eWJDMW5lZ0xPR0RnVjBhL00xTHJHei9sbmZC?=
 =?utf-8?B?blJmaytHVStnTkdsaTlJV2dzcU1CcjM0SCtYUlNkRzdab3M3aklDRDV0MUZj?=
 =?utf-8?B?Vk1idUZUbHdhUEczajgzUngyVENyZE5GUEk5K2F6eXRGMmRzc2JkZ3JNdXAz?=
 =?utf-8?B?S01jbjF5a0NrTFhyemFVcG9zS250Q1BJTThWNmJvWUpoUVA0YU53Z1F5Z0Vy?=
 =?utf-8?B?Zld6UFlONFE2QnFPK3V0bmdHWEVibXdsNkRneEtaK3ZXeXIrcXpmREhxRFFq?=
 =?utf-8?B?T1R0VXF0cE1aVFc4eW5uVk5Ic0tnTlNoZ0xCZTBEd0x3UW1Dd0M0UFJydVc5?=
 =?utf-8?B?ZU9WVGkzci9zcjZUWEVCNzM2NDF0Qk5aTFRsQnRMbndjZVpwWDVOVTcrY05x?=
 =?utf-8?B?MWJQT3JXSG8rZkdhN0RuUk1DMy9aZDNlVHV0d0J5TEtQakpVaTNtNXhzdXJF?=
 =?utf-8?B?TWc9PQ==?=
Content-ID: <88D3B3ABEF2C774E920E6FAACDB76493@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb8d399-21ef-4496-fdf4-08dbd15338e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 09:59:16.9942
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +JXKrpkP1bZwOrPUy5cWt/VYR+MEeRrSCk6+Loi1GoYi71yX4hVz72oM2wypvHFlhTDQGH4BbDyfBw6rg5vWJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7471
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--18.732000-8.000000
X-TMASE-MatchedRID: UWn79NfEZzbUL3YCMmnG4ia1MaKuob8PCJpCCsn6HCHBnyal/eRn3gzR
	CsGHURLuwpcJm2NYlPAF6GY0Fb6yCifZYRtbOr2tXP5rFAucBUHljSRvSGpq3PdsGrGaOKdNMKw
	CZ7huGiG36SL29gBZ5rBuXDodorqao27xiIuUglANiHVTPrO/oy4tncCojEfcVz8J52OVy+Qh9u
	bLG9wIkLtIN7DxycS/PsyXYoMXngjyvEPF1PTYC6DH6drx3JPVxKAxBgoYewnrVro3qcqd85c1q
	CkooZMTJRbAnoNOMbBSVSlfR6k3DMpFJHzzp4rSr9nDy1FvnfnSde/CNbaZJYzZ6FNX6KaL/lA8
	xyitUkIhJ/ufappeEpGTpe1iiCJq0u+wqOGzSV1WdFebWIc3VsRB0bsfrpPIqxB32o9eGcm/84a
	JNDeaGfa3cADtQ6Vc1QDhOKg6hXrz/YOv/xf/1VK++zmwxPem
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--18.732000-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	82004C9708EAEE39D91FA415D93B04B129D828E93C2EFD5B5EEEECDFDD889BFB2000:8
X-MTK: N
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[60.244.123.138:from];
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,quicinc.com,kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns,mediatek.com:email,mediatek.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	ASN(0.00)[asn:24154, ipnet:60.244.123.0/24, country:TW];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:email,mediatek.com:dkim,mediateko365.onmicrosoft.com:dkim,mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0A7173EF90
Message-ID-Hash: XNHBAPZVS26OIIVX2QZ2OZQJV5Z6A7ZU
X-Message-ID-Hash: XNHBAPZVS26OIIVX2QZ2OZQJV5Z6A7ZU
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" 
 <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XNHBAPZVS26OIIVX2QZ2OZQJV5Z6A7ZU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 2023-10-19 at 10:15 +0530, Vijayanand Jitta wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  
> 
> On 9/11/2023 8:00 AM, Yong Wu wrote:
> > Initialise a mtk_svp heap. Currently just add a null heap, Prepare
> for
> > the later patches.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/dma-buf/heaps/Kconfig           |  8 ++
> >  drivers/dma-buf/heaps/Makefile          |  1 +
> >  drivers/dma-buf/heaps/mtk_secure_heap.c | 99
> +++++++++++++++++++++++++
> >  3 files changed, 108 insertions(+)
> >  create mode 100644 drivers/dma-buf/heaps/mtk_secure_heap.c
> > 
> > diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-
> buf/heaps/Kconfig
> > index a5eef06c4226..729c0cf3eb7c 100644
> > --- a/drivers/dma-buf/heaps/Kconfig
> > +++ b/drivers/dma-buf/heaps/Kconfig
> > @@ -12,3 +12,11 @@ config DMABUF_HEAPS_CMA
> >    Choose this option to enable dma-buf CMA heap. This heap is
> backed
> >    by the Contiguous Memory Allocator (CMA). If your system has
> these
> >    regions, you should say Y here.
> > +
> > +config DMABUF_HEAPS_MTK_SECURE
> > +bool "DMA-BUF MediaTek Secure Heap"
> > +depends on DMABUF_HEAPS && TEE
> > +help
> > +  Choose this option to enable dma-buf MediaTek secure heap for
> Secure
> > +  Video Path. This heap is backed by TEE client interfaces. If in
> > +  doubt, say N.
> > diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-
> buf/heaps/Makefile
> > index 974467791032..df559dbe33fe 100644
> > --- a/drivers/dma-buf/heaps/Makefile
> > +++ b/drivers/dma-buf/heaps/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0
> >  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)+= system_heap.o
> >  obj-$(CONFIG_DMABUF_HEAPS_CMA)+= cma_heap.o
> > +obj-$(CONFIG_DMABUF_HEAPS_MTK_SECURE)+= mtk_secure_heap.o
> > diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-
> buf/heaps/mtk_secure_heap.c
> > new file mode 100644
> > index 000000000000..bbf1c8dce23e
> > --- /dev/null
> > +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> > @@ -0,0 +1,99 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * DMABUF mtk_secure_heap exporter
> > + *
> > + * Copyright (C) 2023 MediaTek Inc.
> > + */
> > +
> > +#include <linux/dma-buf.h>
> > +#include <linux/dma-heap.h>
> > +#include <linux/err.h>
> > +#include <linux/module.h>
> > +#include <linux/slab.h>
> > +
> > +/*
> > + * MediaTek secure (chunk) memory type
> > + *
> > + * @KREE_MEM_SEC_CM_TZ: static chunk memory carved out for
> trustzone.
> > + */
> > +enum kree_mem_type {
> > +KREE_MEM_SEC_CM_TZ = 1,
> > +};
> > +
> > +struct mtk_secure_heap_buffer {
> > +struct dma_heap*heap;
> > +size_tsize;
> > +};
> > +
> > +struct mtk_secure_heap {
> > +const char*name;
> > +const enum kree_mem_type mem_type;
> > +};
> > +
> > +static struct dma_buf *
> > +mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
> > +      unsigned long fd_flags, unsigned long heap_flags)
> > +{
> > +struct mtk_secure_heap_buffer *sec_buf;
> > +DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> > +struct dma_buf *dmabuf;
> > +int ret;
> > +
> > +sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
> 
> As we know, kzalloc can only allocate 4MB at max. So, secure heap has
> this limitation.
> can we have a way to allocate more memory in secure heap ? maybe
> similar to how system heap does?

This is just the size of a internal structure. I guess you mean the
secure memory size here. Regarding secure memory allocating flow, our
flow may be different with yours.

Let me explain our flow, we have two secure buffer types(heaps).
a) mtk_svp
b) mtk_svp_cma which requires the cma binding.

The memory management of both is inside the TEE. We only need to tell
the TEE which type and size of buffer we want, and then the TEE will
perform and return the memory handle to the kernel. The
kzalloc/alloc_pages is for the normal buffers.

Regarding the CMA buffer, we only call cma_alloc once, and its
management is also within the TEE.

> 
> Thanks,
> Vijay
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
