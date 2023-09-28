Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A7A7B1232
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Sep 2023 07:39:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15BCE40CEC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 Sep 2023 05:39:37 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 4B7F03F65E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 Sep 2023 05:39:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=oxZVgHpQ;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=U7KRYoCl;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: 4803cbcc5dbf11ee8051498923ad61e6-20230928
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=KHzATrxNbVhJGNGUHLRuEuUYlK2tT1GzmOkWuCTx3ZI=;
	b=oxZVgHpQvNDhH/MPYuPmbaMEQHwANKD/9MSLmxkvZO3w8wSfb5ut5hQAWSYG75Ah9aMiAIvxGtVToQTH0/Oqr+wnyv+beDtzoQNqj+7Cxn4nF1DQemcEespYrOBkD9TjCDCQG1gRxSX2zV4ONDbjpChjcYvizjg/tyvJSXmxJ8o=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.32,REQID:7bdd2a09-637e-4092-aba8-04d06a1ccdd4,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:5f78ec9,CLOUDID:b4043af0-9a6e-4c39-b73e-f2bc08ca3dc5,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 4803cbcc5dbf11ee8051498923ad61e6-20230928
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1638831420; Thu, 28 Sep 2023 13:24:22 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 28 Sep 2023 13:24:21 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 28 Sep 2023 13:24:20 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXzusLHzZOdFVomEc/UsFBVJDDltblCLUs43dJvWo4vJJoBCC78+pYqfyeVhGx9d6x1bttdSi8dCAakBK8OqfIrPFD7YgbAYO4B+/ECx1HP6CsLplE33lnMbq+ahaGFV48LL9Ln5S54vuyqvLVs5803LGmGl1GyDeYC/czNKp0klf5Z6ZQnMJOa26q5SldPmeKYb2Dm3AOi1jeYS7i2R/rJY9Xic1F4y8YD+UpS3k2cyvHPQvdtMXXXJEf9RPQ/4bRkqgg/NnpHKscb5ZrfM00N4jEoa70s/xbSHH5H3UXBe0Z0sZi0jgCY6GEe19nLwXF/xfCA2zWEhWfec6Ptnww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KHzATrxNbVhJGNGUHLRuEuUYlK2tT1GzmOkWuCTx3ZI=;
 b=PjbCD6RI1YCU2Vaep2exT477NJ378+gwtNo2/goNlxYDVnL6juAmd5EFeRhvHIjdePzFLXbTragXq2QptozIH+g0aZHpwFgJSN7rYtbQYb9/j88G66N1W0a0Of8NrTkjAQ4B2nk02epvoKFLgvishjP3fA3yFGLEjOzUFLEjB5f3KHEHwpGBPQaFpT3fOYp1EqGKsFJvTGFmWLZb1TtukFG67Kms+1WGarLgoUkcy2YyXVSqbSdx/XJk7sWdEgj9A6ug2/YT24o2yus38AA/Vmpjk3GI1d7RRILcJEjKh4Ne70UmjlqgxQ/o/l6IyvxIgKsTYLjZSVlE69Pu0swNGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KHzATrxNbVhJGNGUHLRuEuUYlK2tT1GzmOkWuCTx3ZI=;
 b=U7KRYoClVAdBAi3Nf7wlm4r2tuq94dQ3elTrOMz2Q0mI/skjeByR9toPVlpUfQEaR+K7fLw3GPbH0LJjOjMRByXrm+FE29IX7p+uaOQCziivHnZOCIfKKGHb0BLqpp4UZXg6om+X25Q3/c7QakHKSEwn7wtmecWwp+lxMs8gvAU=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 PUZPR03MB6020.apcprd03.prod.outlook.com (2603:1096:301:b7::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.19; Thu, 28 Sep 2023 05:24:18 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::e148:3390:1eb2:28e3]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::e148:3390:1eb2:28e3%7]) with mapi id 15.20.6813.027; Thu, 28 Sep 2023
 05:24:18 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "joakim.bech@linaro.org" <joakim.bech@linaro.org>
Thread-Topic: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call
 for buffer allocating/freeing
Thread-Index: AQHZ5FgqDwsDNAc9xUe5kPjiMIdpmrAu14CAgAD33IA=
Date: Thu, 28 Sep 2023 05:24:17 +0000
Message-ID: <5dec9567716ab4fcd675682157daaeacc7053d98.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-7-yong.wu@mediatek.com>
	 <20230927143709.hrytde34trrdhpwf@pop-os.localdomain>
In-Reply-To: <20230927143709.hrytde34trrdhpwf@pop-os.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|PUZPR03MB6020:EE_
x-ms-office365-filtering-correlation-id: 066fad88-3802-4cca-7bcc-08dbbfe329ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0/yTTJKO2CbztNPZhDWA1bAqWzrzbvkk74qOgS9WMOOM7xJ2pTot/0YkM90nHTYkNd3Le7qLYou2hmlknzHYJImO+bjQUU8TYiGHx5runxtK0n+WhQKRBw2M2kIVhbNjOCQW2GHO5t4CRl1nTTPPVrEZ8LLhqb3hd/EykMXYCFT5tavE1kAQLlKdHFUHWHPzVFHwfQ/h24HOzeS+jbMtQqJ9fXvlrln1jwQTF2DaUFUlSZDgwTw2Q5g+p4iWS/WWESR68iZroI/3e9uKf/qRsCrKkXLIFd9H5k1xnJLBZx+UhjoeyKtCcrrZr4DuvUF+giRltISfw1dbyO+AWttGb5BebMs3HozXOxcA+OgYUeCzUwSkouKw/d1t7PvQcz5P23bEq7mY8fOEJgqQXGXIHDberJoAR2RzmRsa/KB7wbK45ErgrEzRtjWG6p5a9iWrMmZJhFawrIkMrUMZShrJRzjj+ejPd97aDXAx9PIWhMRddGUUKJvPgCEpfK8H6n5C3xXImICOwZvM9832YzzqyRonuqzYUwkouX58mtpaUpl5QPk/Tv0I+r2dGWgw0+QOtVQcdf0sHuMe8YaCmevdCGrS+uksbmvso0WeAiQ1cnqYUQQUGMbwJkonUj+J5XOPtCcopdsu+aZcubr6H8UkgEMh1UhiUIcpCf2cNIpiLamFDCF06DdmGx03E6TSKWf8
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(136003)(366004)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2616005)(38070700005)(85182001)(26005)(5660300002)(2906002)(7416002)(122000001)(36756003)(4326008)(41300700001)(86362001)(38100700002)(8936002)(83380400001)(66946007)(6512007)(6506007)(6486002)(478600001)(6916009)(66446008)(66556008)(8676002)(316002)(66476007)(76116006)(71200400001)(54906003)(64756008)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZnpjcTIza0pzU1FuN2lyZW9ZQlJqNHdYazFoZDNrdTlMeE8yZ3BScTkzSith?=
 =?utf-8?B?YWhUQXBRTXloZXZyZTd4NjQ0TmJYcTFlR0ovdFQ4dGhFRXVsb0ZNbXoyeEtF?=
 =?utf-8?B?bUpwalNwbWZPVlo4Snp1ZE44WVBlUG4vNFYyT25VTHVPY054R2QzamJLMUY2?=
 =?utf-8?B?bGoxaTRMVlB1R3NEdTRqcC9RbWZFUmlFZ0xUSGRiNVRISVFGRXNXZFRsU3ls?=
 =?utf-8?B?KzRaYTlxRWYyY1hDRFBWWmU0TUwxdGxPQnJiVDV3YUp0TVpiWW96aHE4eTFi?=
 =?utf-8?B?cW8yWmxOL25PTTgycDdhcGpHN1RhNEluNkoraCs0WVFJSWVORVZSMVNmeXZs?=
 =?utf-8?B?UXhpeG4razV2em1wQ2RIbkpiMUhXWEM0S3NxNFBVOVpka25sU2wxWk9xYmp1?=
 =?utf-8?B?ZjdBOHFRYU1Ud2NRaHBvc3AxdWg0emJCM1lvNzZNdGZ6Mm1uM1ROTmVaUnJm?=
 =?utf-8?B?anpLUHZVYk51RnhZOHozMzRRZ0hwVlJPMGloL1J5N1VnRG1rV1FLb040eG1S?=
 =?utf-8?B?Q05KN25QTGthYytlT1NJelRINVVIdVowZ3NXZ24wTlpzUGZGNldIRDhBZzk0?=
 =?utf-8?B?Zy9SNFBSU1FhR1dGNDdZY0NDV0toMHlWNTdOK2FZenRjN29GSFZNaDV0UHMz?=
 =?utf-8?B?TmE5WUx3RE04NzlCYjNyQlpxS0RYNEpnOEZWT3VpRE5BckJJUWo4b01Ldm83?=
 =?utf-8?B?M1dkd0kyNCtJV2lOcG1pY0FzcmZOTEJlK1FGSGx4UXk1SlB2bi9LeUxYaE41?=
 =?utf-8?B?R0pNbFBKanl3eXJPZVhmWE1RbDJDN00wd2FGS3RlczJSL2tMdk5NbXJnM1VF?=
 =?utf-8?B?L0xtVzdPK1o1U1RJcDdLSkRFdllDWW4wOXMzMW5mZGJUOUtmdFZXd3h2RTNq?=
 =?utf-8?B?MCtRcEg3clZhY1VOeFhjdzJTSi9Db0ZDTkN5Nm9OeTlaYUlYUmhsdC9yemNp?=
 =?utf-8?B?a1FJQ0ZkZFdHOGJaMHE0OU5LS2hDai9kRWpQTTFQOCs3MnZ6MnQ5Vk81bmc0?=
 =?utf-8?B?azJQdGIrUEEvMXA1ckp6MElQZnVnRnVkM3dITUtUb2tNQklxSHRjVWVqY29p?=
 =?utf-8?B?ZHVQYkl3N3hBZ0NvVmtNLzRLV0FyTUJ6ZXN3RHM2bHRRMnRyME50WFZEMWdL?=
 =?utf-8?B?WHlET1BqQXFWMk5vRE96Qk1tN3BheFgvUjBBMTZVRHhmbkJmMllWREhNajhE?=
 =?utf-8?B?NHlSSnNOTEI2NTVyWjBGV1pVSWVXbUtINW92Z0paRDlZdVIzaGt2SnpNclI4?=
 =?utf-8?B?VTlRVkVWK3dOZUtXRlBWK0VFSEp2eG5NQkVRcU14NzdZbEFJQjhscU1FZS85?=
 =?utf-8?B?WUwyQjViSjVtNFp1VS9nMFRhS0xlS0FsdkF6NFVMN2xqS0hHeG10TkVaZVFh?=
 =?utf-8?B?R3NYUTdveHNlcUJoWXpCNGRUUWRLeXRhRDd6Z1ROZmJldVRXbWhyeE1BS3dU?=
 =?utf-8?B?ejkwRkR2Z1cxQXRqbUF2Qmw2eWc1Wm1uTVdzcExjRUR5Wmd6MktwbDArSFQ4?=
 =?utf-8?B?Wm1aTHZ4Si9raVdaTVREdmRtT1R0WlNXbzIwVW01cU4rdFJEaVhDYVU5aTZD?=
 =?utf-8?B?dXhmdnFWaFFrRDg1Z1pmeG9DbzZrY01rVGlibGZMWnV6ZzN3VjZUc1BpWHBI?=
 =?utf-8?B?VWV5U0Ixb3owNlVjZGtqcE9DVEVIbituOHB1STlhQmkwZGxrMlZHQlBrRDdI?=
 =?utf-8?B?WVBjTTM1ci81MWViWG94QnA1cEduYzlHMS9jbkd3cXljTTRLSXpvZkdBaTJ1?=
 =?utf-8?B?V3dCZXhHcHdWU0FROUp5RjdmRDZwSVFybDRCcXh1ZWxML2hsUzVXK3poY0tm?=
 =?utf-8?B?ZWZCWVNScU1uRVVPbWo1Z29QNnJlYWNzMHZlWW9CYVlJSlB3ZHRZMW9pVW5G?=
 =?utf-8?B?MjhZOHlSSnFnTzF6SXFUaXRTU1d1RlBEdHppZUlEdFI2cWFvWnhRN21JRWhJ?=
 =?utf-8?B?Ry9CVVNnUHF5T0tmSlNseHRGVDVma2NURFNXSnJCSWJHUURjbXFkNmExVzZE?=
 =?utf-8?B?YjRCQiswWGozSGdVYmt4RXVxSmpjZTRCRlU0L3B2RW12K0FFaU1vSnZZalBn?=
 =?utf-8?B?ZGlFeCs0aVNpV3ZXakFDTU52V2o5dHQ2c0dhaUNFUU55S3hRV3Mzajk3MFVa?=
 =?utf-8?Q?xstMABECPPyOPHQp3swTW/VLQ?=
Content-ID: <C2EE14452F0D7D4293D97AE5122B7E7D@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 066fad88-3802-4cca-7bcc-08dbbfe329ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 05:24:18.0185
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8U7uddojnJyGwZ2SuKhiEGkiaQwmjrZBma+N78wg0WypBWwqEkM6NjgLdh+yMy71FUd+cb+/uZ41c4pjtNwPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PUZPR03MB6020
X-MTK: N
X-Spamd-Bar: ++++
X-Spamd-Result: default: False [4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	MIME_BASE64_TEXT(0.10)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,kernel.org,google.com,lists.infradead.org,lists.linaro.org,amd.com,mediatek.com,arm.com,collabora.com,lists.freedesktop.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_HAM(-0.00)[-0.417];
	TAGGED_RCPT(0.00)[dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector9901:i=1];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: add header
X-Rspamd-Server: lists.linaro.org
X-Spam-Level: ****
X-Rspamd-Queue-Id: 4B7F03F65E
Message-ID-Hash: H5MNN3ETXVMPIJNOHPXF6DGY3F3CZE75
X-Message-ID-Hash: H5MNN3ETXVMPIJNOHPXF6DGY3F3CZE75
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>, "jstultz@google.com" <jstultz@google.com>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, =?utf-8?B?QW5hbiBTdW4gKOWtmeWuieWuiSk=?= <Anan.Sun@mediatek.com>, =?utf-8?B?R2F2aW4gTGl1ICjlionlk7Llu7cp?= <Gavin.Liu@mediatek.com>, "jkardatzke@google.com" <jkardatzke@google.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.ga
 ignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/9] dma-buf: heaps: mtk_sec_heap: Add tee service call for buffer allocating/freeing
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H5MNN3ETXVMPIJNOHPXF6DGY3F3CZE75/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spam: Yes

Hi Joakim,

Thanks very much for the reviewing.

On Wed, 2023-09-27 at 16:37 +0200, Joakim Bech wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On Mon, Sep 11, 2023 at 10:30:35AM +0800, Yong Wu wrote:
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
> This is related to the discussion around UUID as well. These numbers
> here are specific to the MediaTek TA. If we could make things more
> generic, then these should probably be 0 and 1. 
> 
> I also find the naming a bit heavy, I think I'd suggest something
> like:
> # define TEE_CMD_SECURE_HEAP_ZALLOC ...
> and so on.

I will check internally and try to follow this. If we can not follow,
I'll give feedback here.

> 
> > +
> >  /*
> >   * MediaTek secure (chunk) memory type
> >   *
> > @@ -29,6 +32,8 @@ enum kree_mem_type {
> The "kree" here, is that meant to indicate kernel REE? If yes, then I
> guess that could be dropped since we know we're already in the kernel
> context, perhaps instead name it something with "secure_heap_type"?
> 
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
> Perhaps not relevant for this patch set, but since this function is
> just
> a pure TEE call, I'm inclined to suggest that this could even be
> moved
> out as a generic TEE function. I.e., something that could be used
> elsewhere in the Linux kernel.

Good Suggestion. I've seen many places call this, and they are
basically similar. Do you mean we create a simple wrap for this?
something like this:
int tee_client_invoke_func_wrap(struct tee_context *ctx,
                                u32 session,
                                u32 func_id,
                                unsigned int num_params,
                                struct tee_param *param,
                                int *invoke_arg_ret/* OUT */)

If this makes sense, it should be done in a separate patchset.

> 
> > +
> > +static int mtk_sec_mem_allocate(struct mtk_secure_heap *sec_heap,
> > +struct mtk_secure_heap_buffer *sec_buf)
> > +{
> > +struct tee_param params[MTK_TEE_PARAM_NUM] = {0};
> > +u32 mem_session = sec_heap->mem_session;
> How about name it tee_session? Alternative ta_session? I think that
> would better explain what it actually is.

Thanks for the renaming. Will change.

> 
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
> > +if (ret)
> > +return -ENOMEM;
> > +
> > +sec_buf->sec_handle = params[2].u.value.a;
> > +return 0;
> > +}
> > +
> > +static void mtk_sec_mem_release(struct mtk_secure_heap *sec_heap,
> > +struct mtk_secure_heap_buffer *sec_buf)
> > +{
> > +struct tee_param params[MTK_TEE_PARAM_NUM] = {0};
> > +u32 mem_session = sec_heap->mem_session;
> > +
> > +params[0].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_INPUT;
> > +params[0].u.value.a = sec_buf->sec_handle;
> > +params[1].attr = TEE_IOCTL_PARAM_ATTR_TYPE_VALUE_OUTPUT;
> Perhaps worth having a comment for params[1] explain why we need the
> VALUE_OUTPUT here?

Will do.

> 
> -- 
> // Regards
> Joakim
> 
> > +
> > +mtk_sec_mem_tee_service_call(sec_heap->tee_ctx, mem_session,
> > +     TZCMD_MEM_SECURECM_UNREF, params);
> > +}
> > +
> >  static struct dma_buf *
> >  mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
> >        unsigned long fd_flags, unsigned long heap_flags)
> > @@ -107,6 +169,9 @@ mtk_sec_heap_allocate(struct dma_heap *heap,
> size_t size,
> >  sec_buf->size = size;
> >  sec_buf->heap = heap;
> >  
> > +ret = mtk_sec_mem_allocate(sec_heap, sec_buf);
> > +if (ret)
> > +goto err_free_buf;
> >  exp_info.exp_name = dma_heap_get_name(heap);
> >  exp_info.size = sec_buf->size;
> >  exp_info.flags = fd_flags;
> > @@ -115,11 +180,13 @@ mtk_sec_heap_allocate(struct dma_heap *heap,
> size_t size,
> >  dmabuf = dma_buf_export(&exp_info);
> >  if (IS_ERR(dmabuf)) {
> >  ret = PTR_ERR(dmabuf);
> > -goto err_free_buf;
> > +goto err_free_sec_mem;
> >  }
> >  
> >  return dmabuf;
> >  
> > +err_free_sec_mem:
> > +mtk_sec_mem_release(sec_heap, sec_buf);
> >  err_free_buf:
> >  kfree(sec_buf);
> >  return ERR_PTR(ret);
> > -- 
> > 2.25.1
> > 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
