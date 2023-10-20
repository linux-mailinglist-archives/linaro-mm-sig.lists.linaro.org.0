Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 794F27D0C9E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Oct 2023 12:02:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7EBA240C10
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Oct 2023 10:02:35 +0000 (UTC)
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	by lists.linaro.org (Postfix) with ESMTPS id C7D673F352
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Oct 2023 10:02:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b="C/MM9gfx";
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=ldfAOyeE;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 60.244.123.138 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: c4f6dbac6f2f11eea33bb35ae8d461a2-20231020
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=ukCOhZTg1cMbzr0HUQZWo5sBjxxbqsjmw4GQljFbAf0=;
	b=C/MM9gfxSZo7/iQmz1JV+kPgv5JAnBkXVfGeffIi2hXAhyk8aV/Sv7O4QM+KG5hX6E4rEV59SH3PgQ6CXGDvYUNfHhuTmpwaP8aYpES696uEqO+qPj8JnG7vkzEN7Z/0X47p2wti+QOJ0Ub6MWIJ2A2cgkQBVtwnzfrykBulrCw=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:c4f1c5e8-5e68-4052-ac40-28168dc75209,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:ead7393b-9667-4160-9f3e-e63ef4a1118c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: c4f6dbac6f2f11eea33bb35ae8d461a2-20231020
Received: from mtkmbs14n2.mediatek.inc [(172.21.101.76)] by mailgw01.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1308785481; Fri, 20 Oct 2023 18:02:25 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 20 Oct 2023 18:02:24 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 20 Oct 2023 18:02:23 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N9iMnYSlu82fO0BiSGBjSaKx41XCjpeiKqTGbCdYuIWq/kIB2tU9wHV2kyJYn05ZUnu0J7l8j8nagmmZN9sYTP8zQh+pdLd5U8DhO/ssy87xPxxpV3xBeDx6K00dTw57c2UEMlKPjJzrSAqqFS/gky2LReNXtWUkgImcRdxSAOkGGKW5J9GAwSm9rlQNJSGu8TemlA8xZqtIYHvO/p0SbBBojzvYqV0FrXTtK4KAXSgDY1YKVEGWd5/FKdHgc8ujHrJdPGyVeQE/Vz+PjX/akPYVFcGvewIL3HezZ3saQ7nRVgF5n7h3Uf4obqhSnpLyiO0bADfRA4FXABDYq9qgAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ukCOhZTg1cMbzr0HUQZWo5sBjxxbqsjmw4GQljFbAf0=;
 b=F0JqFuXypzlwiA+cuZXut0ZgiZtRvvdGGx4my5KlyTcCWQHlG2HkVF6USVOu22KxVtDmXlbp9PAUkmECggZ8jpOm3xGM3QAY6iPFQfjeVa8NpjD0QIRnXGrzbO25irCP8Gx81rIBFt8JTehnJCCRXT62MvhFgcrxih0qy/T0saK8NrlYynQjzCqG0wi6XKJoD3gN8oOD89UVf5XfWjnWK5mySTDRp6j2anFTPGy7/P3L9c6L2FY9QwGt03xNlK/urNj9ngtE0mbjJlwpP4fiwy4Ks88Aq6PQD5lslhcfAJJMOT1bTQMhr2e2FtHH73T9Ef6WYOO8IheErEvwSMXkkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ukCOhZTg1cMbzr0HUQZWo5sBjxxbqsjmw4GQljFbAf0=;
 b=ldfAOyeElrv5A8lvELaRSknQif1sKwYz055hwDvjD6Db4YSPPtmNRlQkvBAwg4IlLN2XnN7cowg3SVOpUBSaiHuE27p4dtgxtOrgLmTjWmzChuLG46cXCfUr/FaOSXJG4PyiSZKjPPAGvDPffGtEXNcBPwau1vmCDJ7cOMNvML4=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 TYZPR03MB5408.apcprd03.prod.outlook.com (2603:1096:400:35::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.24; Fri, 20 Oct 2023 10:01:19 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::3dfd:5783:26bf:c189]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::3dfd:5783:26bf:c189%4]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 10:01:19 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>,
	"quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call
 for buffer allocating/freeing
Thread-Index: AQHZ5FgqDwsDNAc9xUe5kPjiMIdpmrBQxZ0AgAHqcIA=
Date: Fri, 20 Oct 2023 10:01:19 +0000
Message-ID: <7a2995de23c24ef22c071c6976c02b97e9b50126.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-7-yong.wu@mediatek.com>
	 <e7d72a94-4804-4297-8d3a-2191e2886bfc@quicinc.com>
In-Reply-To: <e7d72a94-4804-4297-8d3a-2191e2886bfc@quicinc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|TYZPR03MB5408:EE_
x-ms-office365-filtering-correlation-id: 7fbe873a-6f36-4e7a-66d9-08dbd1538209
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UhV2OQ1f9P8KvOVJmY6XdSUV5JVZKXws4dvA6WU/wj8WY9kDkhu3TPDA8sjGjL/+des78qj7D6LOBiXtI87Qj8nKXlGcLwqerWxjUiM/uRxKvDjpbJwnOFqkQVkazr6SlflHW5bPzFOeSQlqncXtAeqTvxM+m7d2tbQcApRy7W6R2WZBIN4Nu27um/w1w7WK0qxCTWHqWRC+FPKF9KRAky51l6e/5LgSluJwCGFCjWC57QHTKrfZyNhvGUjLsgFTaeYvN5CqnahjGrpeN+b3JeIDuHbP2cKok84UgtMQbsmfh9JEsllO5MEhcrT7L6VMPkXO5yQkGqggM2gepcMcCVtK5K1ergA0Qe6SSXOMex3kofM/toBw0Iqc3xgbmbOiRRhYYG5DSFRRCkVm3tk80cJCVUTTN4AbLfgfXbiHfvBaFWjCAA7u3skk6iKVpQU8DrB4gB/wQWsSL9oy30OORDxSaqMoU9o05jjiRQnBBxIDuphZifdDjnt8Ns4wuYp9DAm5wBsn1OtzoDOfDAyGMvEjI1pE3RbxQXTMYSHeNtrCP58+VieZjtrhv4bXpmWKkYBk8oWaDkeSdeV4Dcb/NgcGLHRu0x6OxoQtScLPsSCPoyVuvYpOnwqDOlz7AjVHQV+AP/pzzzyxMipkifRJ4+Ax00UPAiYtzmunagIgLd12sAEZ7MmJVvuOickIwtsh
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(366004)(376002)(39860400002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(76116006)(66946007)(64756008)(66476007)(66446008)(54906003)(66556008)(110136005)(6486002)(478600001)(83380400001)(6512007)(53546011)(71200400001)(6506007)(122000001)(316002)(36756003)(85182001)(4001150100001)(38100700002)(38070700009)(7416002)(2906002)(86362001)(4326008)(8936002)(26005)(8676002)(41300700001)(2616005)(5660300002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGpoRnVYYW52SloxQnpXRk91WFZLY1o2dzc0N3ZOZ3Z0QVNtMWIrVzBHMUNx?=
 =?utf-8?B?eWZPd21TREVXczI4Y0I2SkM5aXQyUmVZL0tHV0xnL3lnWFpTNlJsUDlnR05V?=
 =?utf-8?B?MGt5K3lHWWRLc2ZMUEZDTmlOWG9taXhkMkM4bXFBY0NzWUwxMVdnZ2toMUR6?=
 =?utf-8?B?djNqbTUwL3Jkb0FCYXpCUnFyYWVRNVpsMEdkOHJKZUpWWVVXclYxb1k2WEF0?=
 =?utf-8?B?ZzVwZjcxcTRhdlZwVE5xWkpqTlFTTEJ4a2V0YVEyTUIyb2t1S3VMTUhhV0E2?=
 =?utf-8?B?NTNzVkJYRHV0cGxnc2xidmZtZ1pMRlNIUDZuMjd6NGJRQkxtZlBpVVRTK2V1?=
 =?utf-8?B?ekk4czFPRmEraThEM3NFZlNjSEUxdStmT3JlUWdwSURRS2xUZXFrYjJnQnJm?=
 =?utf-8?B?amNCZ3U4Qm5RZVlYalJxMkxIQ0NJelh2MDI2YzVoMGlZcVdEdm9FMXljTkFs?=
 =?utf-8?B?Q2lrS0hGWjBHK0dXcml6OWVKL1lXa3ZoN0pBZFJoWGNNOE0rckx3Y05peTJE?=
 =?utf-8?B?NVdGcFRRcEFUT0psdktFTStVRFZmYWRQSmVxaTZCclFJV3ZJOEZHSkUvT05J?=
 =?utf-8?B?VDFUS1FRbVJjL1dKRzdRS09mREdxVFdnb0JKVnF2VW0vSlYwbkJaMFhJWW5G?=
 =?utf-8?B?d0ZqUGhmLzBSSTFMQUh0ZStWaWR0dnlsaUU0QjNyK21BT2RaOXoyN2ZDS25q?=
 =?utf-8?B?YUFkclFIWDFud2x6bjMzL2YxY084T0ZmWWJvYXp6UzVEeit1d1VZZmZwOVZ6?=
 =?utf-8?B?L2ZIbHIxVTRlSGFHM2ZTbUcrZTNmcEc5U0ZlYWd3Q1E0aFNaTUlJWFNBYUE3?=
 =?utf-8?B?ajJDREpPeFpjMk9LajJvU3FuZld6Y2IvejMram9ta2ZzajZBY0VUOFczMWhv?=
 =?utf-8?B?Umt3TTIwSEM1L2VBbjJkbGNld2lCb2t4NUZkU0QrRVNwT1MxUXVnc3IveHNI?=
 =?utf-8?B?czh4U2JYdks1TmdxNSt3VVM4VU9UNHRWejU4bjNKNWNrYmFNRGU3eCttVWhD?=
 =?utf-8?B?S29QM21sSmhsTnZYd3hjYndGeWZDT3V5MmdiT0MyNVJ4T2dNU1ZoZ2Q3eEZX?=
 =?utf-8?B?RUFPa0RpdGg2NVR2UjFkNkZldFR5bEJXWTN0VDRPZjNlbGs2dnI3bVUvSzFm?=
 =?utf-8?B?TGNqZjRRN25DUDg2NGlWRStpL2JzS3RBZHNtb2lNMXEyS3VBSXFCbGhmbTQ0?=
 =?utf-8?B?TG41STJ4ckdISUFiVmxaaitiVnVoZWZWblR3QTdzZGpMeVo5bWc0NTVuTitC?=
 =?utf-8?B?QlJTWW5kQWxmbFYwazZmb3laR3VVK0d5SXFYL2tpWkpCV3R5ai9CNExTZnBa?=
 =?utf-8?B?WFphRWJYdzkrSHlLbUlHRis0Y3QrbDBZYWRqalFYYlUrVGY4QUFTL2NldDJJ?=
 =?utf-8?B?dlFLUTRQQlpTWmU4SlZMOVlOb1FCV2o0cVliR01STUhaRklPMTlKVVhOK1g5?=
 =?utf-8?B?UWllMDVFMU5XRHo1ekFhWkczNVBhNjZFSC9NM25kVGJzOUVGSjFVc0hOMEpG?=
 =?utf-8?B?QWpKK2RLaTRzMWZjQk13bksrZGtIU2ZPaGlPQ0h0bjFuYlBxL3cyek9NSlhY?=
 =?utf-8?B?TVpkR2swWXFZQlBKSUlVRSswM1VRaTR0b2ZKaVN0T2pXK3FkeE4wb1ZnY3FB?=
 =?utf-8?B?TXg5YStnalJPd3dqSllxbm05aDBVNTlkOVEvNTgyS05qWlRVZlhvTmIycVZO?=
 =?utf-8?B?TVVOT1NrUDVBN2NyNHcyUVV4dU8xR0JTZk5zWVkrZVZOWnRieUtJcXEwYTd1?=
 =?utf-8?B?UnRKY1BqZnlCTEZlTUl5bldzTi9SUVEwcUFoOU0zY0x0TEpSdlhPc3BLMTBw?=
 =?utf-8?B?OUpaenFtOGZNdGNZNVVJY3RLaFltS1FaOXlIdSt5SlFZejZsVnFvMUZRVEJ0?=
 =?utf-8?B?WU4rSkxidWhjbVo5dTgrTUdBRHo4MWFKOGxkQ2lxbEphbFVHTXZCRkR3ME1B?=
 =?utf-8?B?akZjRDBsZlUxRjRuR0w5Y1JkTGx2d1lJMEFXSFc2aW5jV2U5TEo5VzNzTmVX?=
 =?utf-8?B?eWlEek1uWHU3b1AybHNHTnpFQ3FKZzJoaCtYVDdud24vY1pKVTJ4WjY2K0RX?=
 =?utf-8?B?YUJkb2NyWmo5VGQxNXkrM0Rna09lZjZJTUFQeXE2YmlYQisxS0QrQWhlMzF1?=
 =?utf-8?B?OWxjd3VEeTh4aENUeWVmckNwZ0hEWjh1WWhxMnNnSWFROFhiSnNoTjV6NE9U?=
 =?utf-8?B?aEE9PQ==?=
Content-ID: <A120DE4D9B11BB4E9A25C442F4B6D15B@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fbe873a-6f36-4e7a-66d9-08dbd1538209
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 10:01:19.7163
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7MeeWuS896n1WsAm/I6sioC0+v6q86WcZnmRcnpskzhqOTMCDaZOS5Y1UJ4XRce68EGX9DykS6qTfL4xiH6UqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5408
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--24.656400-8.000000
X-TMASE-MatchedRID: gIwa0kWWszLUL3YCMmnG4uYAh37ZsBDC1kqyrcMalqUNcckEPxfz2DEU
	xl1gE1bkfdd9BtGlLLzx1uczIHKx54/qvvWxLCnegOqr/r0d+Cx+Mk6ACsw4JlwpnAAvAwazCS6
	IUmxCo5HtLocRZnnK+tsIe/TXUbL1idh40yl3wZCVOwZbcOalS4fsPVs/8Vw6CqIJhrrDy28bOO
	kcH9zseSrlq6rYWJgzqYoaR830XIVxzwb0rKc346ngbqTYC4GHmGSSol4Uei26pZ/o2Hu2YZ/ih
	Jrtaz9W4vM1YF6AJbY9l7H+TFQgdbew1twePJJB3QfwsVk0Ubv+efAnnZBiLyF6bSSak9kx
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--24.656400-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	7A2BC4B9017573CE1F2DA9D4E1799009D5A7FD0A1250DB93FFCAA19CCFA931152000:8
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
	R_SPF_ALLOW(-0.20)[+ip4:60.244.123.128/27:c];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,quicinc.com,kernel.org,linaro.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediateko365.onmicrosoft.com:dkim,mediatek.com:email,mediatek.com:dkim,mailgw01.mediatek.com:helo,mailgw01.mediatek.com:rdns]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C7D673F352
Message-ID-Hash: H5TAIIH2YOLISG5GBPXRLQDYJZ4Y6T4R
X-Message-ID-Hash: H5TAIIH2YOLISG5GBPXRLQDYJZ4Y6T4R
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, =?utf-8?B?QW5hbiBTdW4gKOWtmeWuieWuiSk=?= <Anan.Sun@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kerne
 l@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call for buffer allocating/freeing
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H5TAIIH2YOLISG5GBPXRLQDYJZ4Y6T4R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Vijayanand,

Thanks very much for your review.

On Thu, 2023-10-19 at 10:15 +0530, Vijayanand Jitta wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  
> 
> On 9/11/2023 8:00 AM, Yong Wu wrote:
> > Add TEE service call for secure memory allocating/freeing.
> > 
> > Signed-off-by: Anan Sun <anan.sun@mediatek.com>
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  drivers/dma-buf/heaps/mtk_secure_heap.c | 69
> ++++++++++++++++++++++++-
> >  1 file changed, 68 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-
> buf/heaps/mtk_secure_heap.c
> > index e3da33a3d083..14c2a16a7164 100644
> > --- a/drivers/dma-buf/heaps/mtk_secure_heap.c
> > +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> > @@ -17,6 +17,9 @@
> >  
> >  #define MTK_TEE_PARAM_NUM4
> >  
> > +#define TZCMD_MEM_SECURECM_UNREF7
> > +#define TZCMD_MEM_SECURECM_ZALLOC15
> > +
> >  /*
> >   * MediaTek secure (chunk) memory type
> >   *
> > @@ -29,6 +32,8 @@ enum kree_mem_type {
> >  struct mtk_secure_heap_buffer {
> >  struct dma_heap*heap;
> >  size_tsize;
> > +
> > +u32sec_handle;
> >  };
> >  
> >  struct mtk_secure_heap {
> > @@ -80,6 +85,63 @@ static int mtk_kree_secure_session_init(struct
> mtk_secure_heap *sec_heap)
> >  return ret;
> >  }
> >  
> > +static int
> > +mtk_sec_mem_tee_service_call(struct tee_context *tee_ctx, u32
> session,
> > +     unsigned int command, struct tee_param *params)
> > +{
> > +struct tee_ioctl_invoke_arg arg = {0};
> > +int ret;
> > +
> > +arg.num_params = MTK_TEE_PARAM_NUM;
> > +arg.session = session;
> > +arg.func = command;
> > +
> > +ret = tee_client_invoke_func(tee_ctx, &arg, params);
> > +if (ret < 0 || arg.ret) {
> > +pr_err("%s: cmd %d ret %d:%x.\n", __func__, command, ret,
> arg.ret);
> > +ret = -EOPNOTSUPP;
> > +}
> > +return ret;
> > +}
> > +
> > +static int mtk_sec_mem_allocate(struct mtk_secure_heap *sec_heap,
> > +struct mtk_secure_heap_buffer *sec_buf)
> > +{
> > +struct tee_param params[MTK_TEE_PARAM_NUM] = {0};
> > +u32 mem_session = sec_heap->mem_session;
> > +int ret;
> > +
> > +params[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
> > +params[0].u.value.a = SZ_4K;/* alignment */
> > +params[0].u.value.b = sec_heap->mem_type;/* memory type */
> > +params[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
> > +params[1].u.value.a = sec_buf->size;
> > +params[2].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INOUT;
> > +
> > +/* Always request zeroed buffer */
> > +ret = mtk_sec_mem_tee_service_call(sec_heap->tee_ctx, mem_session,
> > +   TZCMD_MEM_SECURECM_ZALLOC, params);
> 
> I see here optee calls are being used to secure memory.
> 
> For a secure heap, there can be multiple ways on how we want to
> secure memory,
> for eg : by using qcom_scm_assign_mem.
> 
> This interface restricts securing memory to only optee calls.
> can we have a way to choose ops that we want to secure memory ? 

Thanks for this suggestion. So it looks like there are four operations
in the abstract ops. Something like this?

struct sec_memory_ops {
   int (*sec_memory_init)()   //we need initialise tee session here.
   int (*sec_memory_alloc)()
   int (*sec_memory_free)()
   void (*sec_memory_uninit)()
}
   
Do you also need tee operation like tee_client_open_session and
tee_client_invoke_func?
if so, your UUID and TEE command ID value are also different, right?
   
We may also need new macros on how to choose different sec_memory_ops
since we don't have different bindings.

> 
> Thanks,
> Vijay
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
