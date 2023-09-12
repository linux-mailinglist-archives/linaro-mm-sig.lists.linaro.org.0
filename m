Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 381FF79C6C7
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 08:17:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A2DF3EFD9
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 06:17:37 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 84D363EF33
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 06:17:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=WAJODgpU;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=aw0MjNvh;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: 0b75b89c513411ee8051498923ad61e6-20230912
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=1vRhhwOTRiseG5kdq/DHmly5hOHzkotoMCp0W3OYKaM=;
	b=WAJODgpUtTa2zKfIDw+s1xErakWlQsMRfaBIOPuKOi/v3wUXYUj8Hs3ksLPzTp2/247n4GTQjskHsh/npzgQDLBB/XadiIlNKIgb/JLfCmUIvX4oceo4O4gmS4d00ocAn5cVUq3ThUMefidAUeqCAj09P/svG7ss/Pa+8ytvP+s=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:985624d4-a95d-43be-82f5-23599d5a5717,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:0ad78a4,CLOUDID:7d64ecc2-1e57-4345-9d31-31ad9818b39f,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 0b75b89c513411ee8051498923ad61e6-20230912
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 160188933; Tue, 12 Sep 2023 14:17:26 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Sep 2023 14:17:26 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Sep 2023 14:17:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/Ydwy5sRR5YzV6kv9JvwXkAiSv98c5+vJQIc8j1/a08nACd1gN1yzEfzGnpPntZkwxAIRFp3ZFb9w2+goWkO2d1d5UNLOw0fMkbX8+PQUT9BOHiTK5thr4fcm7D1LEyQ4fqGB4vwsaB+co61JKKTwjvUV3nMAKUdULFVwwiGadlSNPuvqs/C8ieeYy6tCZxZ9op4xHqp5AmBr/ayMhGWI4Zx9cjqeLsUnCPI2EThbeo7ZCrypY5lfX9QWHMfYRetdeWA73U98U8x/4EhUmOqv+2l7c5u6qiV66ynxcGtQuYq7PTvCHV6HOkhE6XRzCIeEFbJm74uxHZWlfoqJ075g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1vRhhwOTRiseG5kdq/DHmly5hOHzkotoMCp0W3OYKaM=;
 b=ThAjPX/wkkgW4xoNn1pbkDest1helu08OT2oP93fX6Er5I4DUOH/65s1HDJ+czl1Wjw5l4O9iG7X/dPXiTXpxdNF9JRPEB73MCusAQdCF9rWuMvQ/Gd/rMxEGT1NabqLY5MHIElyUdqtErmfX/dT/CeMjqKUwnEsKPU3uQr0e2+nfonyTlYCV7I8RqoZ7RAkfleJWQemLm5/tSaKIWxQFJRX9I5VqBDQ37NU6bziO5lAV9t/GH7WR2heV3c1/zW+iTgi+WBrwYJ2GtJ7zMqrDdK/fS7I6ur3MAsT14enG6kaSfTPNKgA+IS1RM3t8buI+2qlfLeJh0A2hYW2XclKPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1vRhhwOTRiseG5kdq/DHmly5hOHzkotoMCp0W3OYKaM=;
 b=aw0MjNvhwsVMXVl4dCoAfn6pdz8dHInXs/ELct0SIqemEJE3z45iRjnGnwYFSkjm/73Ic2lqDFC2LXBMXkxLmRV3EDPVbrb+VWKug+6BAG8XiQNHSzmV2t9bKKqbJbFcNo8IiUZE4YPj/i++eHidzQPOSyTRjUaSHVCvXc/MR0g=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 SEYPR03MB6697.apcprd03.prod.outlook.com (2603:1096:101:80::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.38; Tue, 12 Sep 2023 06:17:22 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::e148:3390:1eb2:28e3]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::e148:3390:1eb2:28e3%7]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 06:17:22 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
Thread-Topic: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
Thread-Index: AQHZ5FgkdSQ5OiqhjEmEvtpYDF+5QrAVXDQAgAFcr4A=
Date: Tue, 12 Sep 2023 06:17:22 +0000
Message-ID: <a115a2a5d3ac218e6db65ccdb0a1876f9cfca02b.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-6-yong.wu@mediatek.com>
	 <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
In-Reply-To: <d0373c02-9b22-661f-9930-ca720053c2a0@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|SEYPR03MB6697:EE_
x-ms-office365-filtering-correlation-id: 4651c811-7acb-4711-5bcf-08dbb357ecee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rsmcIJK3eUdIG89ampRvw102ydXRX1+E2LjPvaGMtR4pTM2ZsoixyoYfJ9r0kKoRiGH+uheDzLcXeyESMyl7xJEXEzWEOz4H+bt4tw/z4ZcK+YF8Hx7gcS6wh41MwRTdO+RJDDujql6tY/o3GqijLs3cOBfHyR9vBMUEe5msONKqiNUBAjkBS2+3KS0bsq/ypOIikZhAeXMXGCGoKvprZXHJ42wQG+Oe+xixR0otXiFFh05NFqhedAz5Fm73EvzMr69dAkg1C3VqJZsDkQis2dquILp9sOxEroYRO883GgY5aPxNHMw5GoIteFyfcTZ6aQIu93eZyxL8R8xLrTH5HXLAe+pb/y8/EbKSzRp1B8+f2/Wc15nsNd2oVDe6i+onjGt2SL95kTaBBXgiRZ9D/Ka2lnF2Ls3G6TUo1GkswX9kfqXc8x1gsyyk/G7jK4GPywOnqd3oC81fgcvd9XukTd+kS3iJ06glHKxBsA6KkMtL0S1RpM7MtFYoN4sJunX62fvVuWw2hKJ6jt2kjS+0qlQMLttnBCJESS18y7kuVlusg451SYElKXjDNgB1iVg6C3iw+nKLAoQ+mygmeiA+K/Gu0OA2tPkk1MOVXGb3FbcfdOpYuU8M5DxtK/gubFHexNO9wluEe2BYo6+XZayJ53+TRaypcl1FDeBtN/MIrTe1g2b4K5V0uuYoECrjcN1a
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(346002)(136003)(39860400002)(376002)(396003)(186009)(1800799009)(451199024)(8676002)(4326008)(2906002)(8936002)(66476007)(66556008)(41300700001)(76116006)(110136005)(66946007)(38070700005)(91956017)(38100700002)(316002)(66446008)(64756008)(54906003)(7416002)(122000001)(5660300002)(478600001)(86362001)(71200400001)(6506007)(6486002)(2616005)(6512007)(85182001)(36756003)(26005)(83380400001)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dTFlMmlPVzB5dzFjV01SZFB2ekVseHloNW11amViTVBxR1RBUjByUVJaaUUx?=
 =?utf-8?B?aDZKbm5nY0p2a1VyWkxpLzNsWUQyVExiSGJpdmpsK3MvMUJoeWhid2ZZamxX?=
 =?utf-8?B?YXlycmxYOHhVNXNZNkk1cFhYUFdkdHlmWFRQaGp2L0d6dWdvRW1nRUdNVWda?=
 =?utf-8?B?VGJqN0ttZ2pwdVlWN2NkZUdGMldkcTI2SDNGK043eVNReU9ZeE1sVmdlMmZN?=
 =?utf-8?B?MVBwdmdiMXZ4K1FhN3RTTkRra2h0dFBCWU1BTjk5a0Y5RXBRclQvWlhRWkM0?=
 =?utf-8?B?UVkwMDMyZGxkeFBvUGxNRXNpQTZERDJ4YkJ6dTNtRnB5THBPbitLWmRueEVM?=
 =?utf-8?B?eGxNZTVkd1ZHUDYwVnA5d3RsaktZZGhueE9TTmJkOWlKRVF1K0pUMWVKNDdt?=
 =?utf-8?B?K242SlZ1UTdnR0dkOTc3SEprQ1NCWE1VTTNDM0RYYlczRmczRGpJNHcrR2p5?=
 =?utf-8?B?UXY3c3ZGWWl0WFowNEdhKzljM014UFcxc2h3M0pkeElvNWNkMmg3Mzc1OHc0?=
 =?utf-8?B?ekRFTjEwZzlhTWxMUStwVFh5aG9QZkFrTms1ekRUSGN0NkpldmFwTG12VU84?=
 =?utf-8?B?aDBXbm0xT3Jia0hwZEJUU2Q1Z2RDbVlRMk1sQzNvQ29DSFNIYi9sZUxyclVT?=
 =?utf-8?B?Mk5BcVJzUVFwemkyeFZsdG85M1ZtZGNrQXNzanB0ZTlycmVJUDErL21qQkFV?=
 =?utf-8?B?eFhlOTZuU2tlaU9zWHpaUFErbnRLRmVjMGtxamZpMjBqVGhjOFl3Rit0VldX?=
 =?utf-8?B?UHZrcWx3Rm9COUE2eGpPRXNPTisvTXdteVdjMEhVa1VOQW5BN2xjWUlYbjMw?=
 =?utf-8?B?S3cvNFRsT0d3TUpSN3FidGROVndiY1prakpHL0Z5SmU0U1FPb09IRERRcUc0?=
 =?utf-8?B?SmE4dUt4dHYvUFMzU05KQnlFOGg2eWg1OStaS0R5dnc5WWxJbFBrdG1JYitQ?=
 =?utf-8?B?dFl0MVRGSjVSMmVoUW5ZT24yU3MrQ3hrWVgyM2UvN28xc3F2TkFuZGwzU093?=
 =?utf-8?B?NkZtdlFZekhEZlNQL1M3QzRrSEw1VklQR1FiOFI1VURWQ3JDUmVXbEE4Z244?=
 =?utf-8?B?eEg0K3N1eFVWMnpJb0NqSlpwdm9qVHZ2azdUbUxNZFR4MVBPTHNaV0MvRDd0?=
 =?utf-8?B?ck1hSThMOGx5SmtJSDRxNys5bEtVdktJYW1oTXpzOVNnY2NHcFkvOTUxN0pD?=
 =?utf-8?B?LytweDBuSlZiblhwL1U3TVV2Syt0VU5pMDJXRUJPUGNYTHpibGpvUGh0cUJo?=
 =?utf-8?B?UTdTTlA4MnpDbUxzSm1uZG1LZ2RpTkM0V3dWb2JjdS9xYzFLY3FUVVJaeXJu?=
 =?utf-8?B?dmpycnBqU1BBZUZNYmlxUFMwVURsb3pEcHcveVpGRTY4QmVpVHEraUlTUXRx?=
 =?utf-8?B?YVJPWXRDRTRjdDZRMFJCczNEVVc2dHVHSm1JTzBBQ3BoK2lvay9LcjJNQWtJ?=
 =?utf-8?B?N2x0TjRrWEQrcU1DeEJRL280T3llRkVlVGs4bGd2YnBQUDBwTjA5eDhmNWpI?=
 =?utf-8?B?LzlMeDFTR2MyN2lOL2V4bWFFTHhhcHBiQVlSMmJvQ0VmTlFWOXEvVzNMYnF6?=
 =?utf-8?B?Q2lkdExOazlIVmRUUG9ZbXl3Qk5tMW00bFMzRmd5TUczaUNISmM1NnlRU2ky?=
 =?utf-8?B?T05WaVdHRVZQQnBUMWdwaGlUZy9GY1h1emdHSURYWEJIaVJYUmRKQlBhWGxM?=
 =?utf-8?B?bWtrUjIrMytkdWNmSWVhRFpwd09ZMWpmZXZqcURlNWcwc2dEUFRSb2R0elR2?=
 =?utf-8?B?WUZkeGoxRWIyd1E3cUxjZnh2V1czalF1c0hxWDVMZUtNYVN5ZVRYcTg5ZmU0?=
 =?utf-8?B?OEtlY1lGUTRuWklCL3BxYTVkY2lrK29UREtkcTUvam5QKzFLMWtDc2JXdDJH?=
 =?utf-8?B?NWVNYnRDd3VEVVA4Ni9XemQ1cjE3d1FaVm0xMDA3bzJFbm1ZNktjdFo2a1F5?=
 =?utf-8?B?blY3cWZBTGF2blV3U2FjUHdyR2FaR0pqejRmYUdoQm9vRjRtcUpQU1U1OVUx?=
 =?utf-8?B?akpORjZOak11TzJUQ2tDSWJKeWlxbnN5aTVkaDVqLzMza0ZPUXlpTHhuc201?=
 =?utf-8?B?Q1RYWEZJTFVFZko3NTBVVW9jU2JjNkc5V0N5KzRGbTRZREZXdmFvU2NwYk5E?=
 =?utf-8?B?ZjJlQ1k3WXdNUy9OVkRRa21rS2dtaWxhK1dja04yN2pPZlcvRWtYV0JhOTNx?=
 =?utf-8?B?QUE9PQ==?=
Content-ID: <227914B193ED3340A02F0A2AC44E8280@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4651c811-7acb-4711-5bcf-08dbb357ecee
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 06:17:22.1055
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: guGMGRvsBE3/7KxMjKLIlH3Hf2RaEZlZmH66oAmT6MVNGaLdHi6fVk7ndo8uUqGRm1rANGHs4QKHK6RwWcGETQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6697
X-MTK: N
X-Rspamd-Queue-Id: 84D363EF33
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,collabora.com,kernel.org,linaro.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.853];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector9901:i=1];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mediatek.com:dkim,mediatek.com:email,mailgw02.mediatek.com:helo,mailgw02.mediatek.com:rdns,mediateko365.onmicrosoft.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: V643RGZZMJCDS4UHARWINCKWOVCVTLII
X-Message-ID-Hash: V643RGZZMJCDS4UHARWINCKWOVCVTLII
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/9] dma-buf: heaps: mtk_sec_heap: Initialise tee session
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V643RGZZMJCDS4UHARWINCKWOVCVTLII/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 2023-09-11 at 11:29 +0200, AngeloGioacchino Del Regno wrote:
> Il 11/09/23 04:30, Yong Wu ha scritto:
> > The TEE probe later than dma-buf heap, and PROBE_DEDER doesn't work
> > here since this is not a platform driver, therefore initialise the
> > TEE
> > context/session while we allocate the first secure buffer.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >   drivers/dma-buf/heaps/mtk_secure_heap.c | 61
> > +++++++++++++++++++++++++
> >   1 file changed, 61 insertions(+)
> > 
> > diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-
> > buf/heaps/mtk_secure_heap.c
> > index bbf1c8dce23e..e3da33a3d083 100644
> > --- a/drivers/dma-buf/heaps/mtk_secure_heap.c
> > +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
> > @@ -10,6 +10,12 @@
> >   #include <linux/err.h>
> >   #include <linux/module.h>
> >   #include <linux/slab.h>
> > +#include <linux/tee_drv.h>
> > +#include <linux/uuid.h>
> > +
> > +#define TZ_TA_MEM_UUID		"4477588a-8476-11e2-ad15-
> > e41f1390d676"
> > +
> 
> Is this UUID the same for all SoCs and all TZ versions?

Yes. It is the same for all SoCs and all TZ versions currently.

> 
> Thanks,
> Angelo
> 
> 
> > +#define MTK_TEE_PARAM_NUM		4
> >   
> >   /*
> >    * MediaTek secure (chunk) memory type
> > @@ -28,17 +34,72 @@ struct mtk_secure_heap_buffer {
> >   struct mtk_secure_heap {
> >   	const char		*name;
> >   	const enum kree_mem_type mem_type;
> > +	u32			 mem_session;
> > +	struct tee_context	*tee_ctx;
> >   };
> >   
> > +static int mtk_optee_ctx_match(struct tee_ioctl_version_data *ver,
> > const void *data)
> > +{
> > +	return ver->impl_id == TEE_IMPL_ID_OPTEE;
> > +}
> > +
> > +static int mtk_kree_secure_session_init(struct mtk_secure_heap
> > *sec_heap)
> > +{
> > +	struct tee_param t_param[MTK_TEE_PARAM_NUM] = {0};
> > +	struct tee_ioctl_open_session_arg arg = {0};
> > +	uuid_t ta_mem_uuid;
> > +	int ret;
> > +
> > +	sec_heap->tee_ctx = tee_client_open_context(NULL,
> > mtk_optee_ctx_match,
> > +						    NULL, NULL);
> > +	if (IS_ERR(sec_heap->tee_ctx)) {
> > +		pr_err("%s: open context failed, ret=%ld\n", sec_heap-
> > >name,
> > +		       PTR_ERR(sec_heap->tee_ctx));
> > +		return -ENODEV;
> > +	}
> > +
> > +	arg.num_params = MTK_TEE_PARAM_NUM;
> > +	arg.clnt_login = TEE_IOCTL_LOGIN_PUBLIC;
> > +	ret = uuid_parse(TZ_TA_MEM_UUID, &ta_mem_uuid);
> > +	if (ret)
> > +		goto close_context;
> > +	memcpy(&arg.uuid, &ta_mem_uuid.b, sizeof(ta_mem_uuid));
> > +
> > +	ret = tee_client_open_session(sec_heap->tee_ctx, &arg,
> > t_param);
> > +	if (ret < 0 || arg.ret) {
> > +		pr_err("%s: open session failed, ret=%d:%d\n",
> > +		       sec_heap->name, ret, arg.ret);
> > +		ret = -EINVAL;
> > +		goto close_context;
> > +	}
> > +	sec_heap->mem_session = arg.session;
> > +	return 0;
> > +
> > +close_context:
> > +	tee_client_close_context(sec_heap->tee_ctx);
> > +	return ret;
> > +}
> > +
> >   static struct dma_buf *
> >   mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
> >   		      unsigned long fd_flags, unsigned long heap_flags)
> >   {
> > +	struct mtk_secure_heap *sec_heap = dma_heap_get_drvdata(heap);
> >   	struct mtk_secure_heap_buffer *sec_buf;
> >   	DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
> >   	struct dma_buf *dmabuf;
> >   	int ret;
> >   
> > +	/*
> > +	 * TEE probe may be late. Initialise the secure session in the
> > first
> > +	 * allocating secure buffer.
> > +	 */
> > +	if (!sec_heap->mem_session) {
> > +		ret = mtk_kree_secure_session_init(sec_heap);
> > +		if (ret)
> > +			return ERR_PTR(ret);
> > +	}
> > +
> >   	sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
> >   	if (!sec_buf)
> >   		return ERR_PTR(-ENOMEM);
> 
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
