Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1AC79C6BF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 08:16:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94FD03EF33
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 Sep 2023 06:16:22 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id 859183EF33
	for <linaro-mm-sig@lists.linaro.org>; Tue, 12 Sep 2023 06:16:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=CtHnuuc8;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b=CF1rqsu8;
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com;
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
X-UUID: db6e7378513311ee8051498923ad61e6-20230912
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=OxMHJIVg7S3jPS68i+fXcB/3HtQrbW8youfaXydohJE=;
	b=CtHnuuc88tH9nj9e+pXJs9ooraqTLKaQjcScSEWVITFRHsdLMdU/pJi3RBjKLrwEtPqWJH6a0rmRWhZBJIermIeKbn1tLJlYzmRKPfuRuVDRV6RZR6PkTN/tQiq8WOSUHeclp/Vm2GC5v7GeZYGViy8OwsHOoR++Wy9bCmG3TyM=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.31,REQID:d68a967d-0ad7-4b25-aac2-627f41a8ae1e,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:0ad78a4,CLOUDID:9fb4bbbe-14cc-44ca-b657-2d2783296e72,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: db6e7378513311ee8051498923ad61e6-20230912
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1971845868; Tue, 12 Sep 2023 14:16:06 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Tue, 12 Sep 2023 14:16:04 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Tue, 12 Sep 2023 14:16:04 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6ga6BEHFWJjrEFC4ZwW5TlM/9+bkgCoGiu2YK55hB/s0BIxDRwWnNMr517OvsPh+VMa7P5xdvMjKSw1z+bbOYt8gPNR9SU+DYYz8ZV8G+2GnbV+AJNzZcFLVRF5qj3KLJpDnmf/uRbqVqDW15k24JP1YYLHuVWXGorsFXA6daio07HNTEu3HTDzNulEvuOaRBcEsFPO8my4jE53NEm8d47uqYJrjWiO1Tg0oS/OY6SbVrS97Q6p9CwNDH//BdsdwuJXGjiOuYhXgxN+VVlSpdFRvD6UY624M7lAMf9VJQIiiqId0ISsUXhszgaE40EQkDmLru5w8BfUfNpCsHL9Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OxMHJIVg7S3jPS68i+fXcB/3HtQrbW8youfaXydohJE=;
 b=SkTSqfbvYyHYfQuUNe7t4sKiJnJRlpL1gpBIzAKmMnf/BcfeJ2X7bJQrU9ZgJ3DXGr2WIIa4Bbv6GC3nQZG4Pgr1XWMSrmQIsxyVfHtZUlq5FmqZaNnJxoS1ozWmevzeFwFkvvvY0CLePAq6jBwbQsGgegvF42ttyboopIBOscvwtLs6IBVMzlFHNwlF00W/19rlxSjNAq8x7dSgU3bEsxldz8YuLTCPeiAz3eixin8ypKEYC7cSaK1YXO//S6urKlmmRh8K0GtGGz4oz3q58rYueEEC0nIFR1BG1yz8uJZJRJl0y2WGmjC/RQcbhLC9DLYLtsBecrSgz+1o24/0EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OxMHJIVg7S3jPS68i+fXcB/3HtQrbW8youfaXydohJE=;
 b=CF1rqsu87vEHTlnQ+UXWMOFHN4WkXMHNrQDNM6LmSpFfhG9RXDDgLwkeReKuA3llPbPvm5X/hWGOvUycBnCq98NXd6k3HCYe8F2VLZiXjAiJXgFXRIXxkTETwf9gsw9cm26opo1Hb+JyNzqVZ1xCQrCG/a51OfM9+NlhVgH//Nw=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 SEYPR03MB8270.apcprd03.prod.outlook.com (2603:1096:101:1a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Tue, 12 Sep
 2023 06:16:01 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::e148:3390:1eb2:28e3]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::e148:3390:1eb2:28e3%7]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 06:16:00 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "robh@kernel.org" <robh@kernel.org>
Thread-Topic: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved
 memory for SVP
Thread-Index: AQHZ5FgxjegLVruM7kG7VRoFLocLPrAVxRkAgADzaIA=
Date: Tue, 12 Sep 2023 06:16:00 +0000
Message-ID: <c2f1df12cc2dc25b342029e49c6d3f120d380b47.camel@mediatek.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
	 <20230911023038.30649-9-yong.wu@mediatek.com>
	 <20230911154448.GA1279317-robh@kernel.org>
In-Reply-To: <20230911154448.GA1279317-robh@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|SEYPR03MB8270:EE_
x-ms-office365-filtering-correlation-id: 4f5a6265-a57a-45c9-4990-08dbb357bc40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UuZNJruUzC7YAI6Se9zQ1BXh0pYUhea+BNRADLBZP0gxSHpLQhmAbtFv2510qsO6GpnK/j4Eep7X+V7xwmhj/40LxRlsDMABY6UEz0To5D4lJ/plrAOl2zmfZSqu0P6/aV0eD09IgAeBDHcnQsupzZSqGboWrjGi4I2E5xf4FjhG9LjgztVg2CbwPf14S4Q9FIkXewcZeBvAlPTlIqFOGhqZ9ZYM/knq6KJ1AVrYkYZYQ3gjoLKeiinzg6sQ9T4gYjiPA+7clhtivmM1qCl3mzkReFCSGmIJKVri5XK1hF91wlqg2sbpzGY9XcE8eN69xnDMupDZoTBJMtOW/c2HdoZPas/oqCAKgBXr9cHXs2cKli3unBq3DYh2Cdwtv/77F5I3r0nC94FO+R8jyEd3eZS/pM184QaK49N7ubuhapr7D5NPE8BViwug/9iVEnK4YasHBGFmlVPLfDnDIapjqY3GT1nAgZ80DobKK6qp+UJ62NsTgazfbtwRvV/5ruS5PN3bMc+6i16aSQp8D/M5wNrlZHJ6/it6TOlRN0VdL2/JdaxfsMUjlWuwDi6hPfe91fZfTcPct1jcnOIse9OCwXmPVy3doVkKod8LC4JpO90AR0B0Sv9mevRblfOvTFQwY37vi8w7edoEAYo1Dq8VZBQM1y0NXblG2ue/NCvpcUGyX9HQhFdbcPm591j2xgkK5nydcWlYL/hQTlVqSKnfnQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(39860400002)(366004)(376002)(1800799009)(186009)(451199024)(71200400001)(6506007)(6486002)(478600001)(83380400001)(6512007)(76116006)(4326008)(26005)(41300700001)(2616005)(966005)(66556008)(2906002)(54906003)(316002)(64756008)(6916009)(91956017)(66446008)(66946007)(8936002)(5660300002)(8676002)(66476007)(7416002)(36756003)(86362001)(85182001)(38100700002)(38070700005)(122000001)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RE11YngzREhQVDZJWDBhZmFOdXl6aWIyRzJOYzV4QXlGeTYrVWp0ajlsV281?=
 =?utf-8?B?NWxHaUR5cXVRYnFyUEZVS3dUM1FWLzArVVJVL1NLVEtvVm9wMUNESUtZUndr?=
 =?utf-8?B?M0xyOHMrMUV4dU9ETEw3QW5HejZqM3dMREJjT0Z6QVA3bm5HYVFSOHpGTzVJ?=
 =?utf-8?B?Q0pFUmdqbUF5bFpaQ3pwSUJrOVMrc3NvQzFMc0JaazIrMTJPUS9LMEd2UHRN?=
 =?utf-8?B?aXdSYXBiUnhTRjlKTU92NUFkem5jcFVFNkhUeEc5V0hQUnJhUUhRelVRVXdm?=
 =?utf-8?B?SzA4WG5sWDJRTGVpWnpxOEtVUEIyT012Z1NQUUxzUkNXMW9VODEyRFhUMnR5?=
 =?utf-8?B?TlpUVjQ5SEhrYU5MN2xxQ2xCMmhOa1VIWElOY1d6VU9tUnZ0NS9ZbU9sSU95?=
 =?utf-8?B?RXpGbVZGVlprY2N0N0NkaXZRUkhuWkVicjh1QWZDQ3FqeXIvUFhWVzllV1VZ?=
 =?utf-8?B?UkJpOXptSlJPUXdsTlRTQzVVRWVtM0ZuckxZUUo1Yk5NTjBlSnpGZGo2bWRs?=
 =?utf-8?B?MnkrMXJpZGhjUEoyTjAwZWlXSE5mTVc0VmRSQ2Y0K3lnR0R1K1J5aFFITnJG?=
 =?utf-8?B?OUt2U0lKZjBzeHJsMFlIM3JxTkIrNFVMQ284bnlvTStjaUpEdjRxVkRUL2Nj?=
 =?utf-8?B?eFhxZ0Rtb1NLKy82VUdnaEJ2eU5WSi9ncWZzWVhUeWdNejEraEYwRXo1V3Zn?=
 =?utf-8?B?K0I3OWlrY1BWZWFueVdXdVVqUTFlblhMelFkNkUvbjJ0TjJpMU9YUDFGb2Mw?=
 =?utf-8?B?dlF4QWY0R1pHWmlaZUQvNlZhYXRXajdyUDFkWjlyVldaVExtYlJpRkdISjN4?=
 =?utf-8?B?K3I5ckZZeFhHSGgybUtVOFh3NFlFOGtibVh3WDY0aXBiUllyRmViRjFkeUZZ?=
 =?utf-8?B?blRDK0RDZ0REY05oNHRhYnRmdTE5T1Bneis4OXhmQXpOcENRNlFtdUl0TVND?=
 =?utf-8?B?L0lxTjY3RzVMZVZwU0NIbmNvWFMzTE91aE5QZlVGMnlMZE1YckpYZjltdGIw?=
 =?utf-8?B?V21Obit4TG1oYmZTeGpkQmRZb0JVT1I3ZnhOcXhIOFFkRzFrMlFoZDNCbTRv?=
 =?utf-8?B?cS9JQzFkNnFwbnlmUEorSEQ0N05FVWJLQ0hCbHJsdDVqSlRGN0tjRnMvbUpE?=
 =?utf-8?B?czYrWWd0aHpTb040cXBTUG42aU13cGtmRkxKalBobjZpRGFkYXA2REhXbkow?=
 =?utf-8?B?R3A1ZVVLWWdFc2VuZHBpRUFnVWRyREhUZm9DQ2ZtVXVxR05OLzRsUnpCT3N6?=
 =?utf-8?B?em54VUZxd1ZxMTNJVXZJTjVUQ2txRTR5TWdtZDdsV2hyL293eFlrYkVxMUlh?=
 =?utf-8?B?eDYvc0VzaUpFd1lyOWRuSWJCVFhrUUs1N1ZCODFQV1YxK0tiRXA0OWtiK3Rq?=
 =?utf-8?B?ZitqSUNoYkJuUVdac2pHWnlGemxtOWlRejJYY0dab0Y0d3p6dUZNOUorMEN1?=
 =?utf-8?B?a3BzTE4vU01yZUJSbUZ0b0M3M0ZaV1ZHUFdaWmdsdGF6WDhlc3RtVWRLNXNs?=
 =?utf-8?B?YUx5b0IvM2s1ZG1jdjZDTHVWdW9BT0dPaDBzbXk4YmtTMG41Q0lvSnlBOExP?=
 =?utf-8?B?Z1VwSW1lb2ZCREhMcGYyTXdSSmpRL01nTlNLOGw5TlEvOWMrc3VQMURMOXZo?=
 =?utf-8?B?bEt2SDhQalVYTWI4NGVPcmN2UHZINWVkUnlrcWlCRXFlME0ycWtBWm1KREJ4?=
 =?utf-8?B?alNaUEh4TElIV0NVQ3Z2SDRudzBBWWx6djRkbGZVV0RCcGNlN0dMUjJ3aUVN?=
 =?utf-8?B?NUxidEQ3blllclp4TUw3b2ErNEZVSmoxN3lXZ3pRTkgzb0plM0pUTGYxVDdY?=
 =?utf-8?B?MlR4YjkydS9OS2EyczBMQS9iam56K1owNHF2Tk1TN2dtc0pYWFFBY0p1SlF0?=
 =?utf-8?B?cnNGWk1MNzRpK1d2Y2d6YXFuaVovZHFsUTRTQ0hsZXJtVHZYRGswMHhPZGJ5?=
 =?utf-8?B?UmhpSURJdzNrL0E5RDAyRk1hb3JydEhNMFhMTGh3YURBb3BHaXFGajNPL1Ns?=
 =?utf-8?B?Mm95cUpoekc4aEFUQkVORTgwbkVTaWYzT2g2R1FQeGNrVjdwNHdBaEZiWUNW?=
 =?utf-8?B?TUhhcmJVb2l3c3kwSHc4U0JCSGt4ejNleW1ZdGdlRzdFSGRPclM3eUxLZlRZ?=
 =?utf-8?B?dE9OV0g4YmNvM3VDcXJub0lmN1lySHNFUll0b3Q5NzIrS2haUUdWVjRzU0RZ?=
 =?utf-8?B?cXc9PQ==?=
Content-ID: <C45D0FCAA4826E4E94B3AAAA014C783C@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f5a6265-a57a-45c9-4990-08dbb357bc40
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 06:16:00.4648
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4pGcfpBrZ1zbMsCUYrYiSzGS9ZQ+MtDMx91jn24ky4QEGoT9qsCMSuae9f4m+0BwOKzPc1xMUGY8fwazWpCOGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB8270
X-TM-AS-Product-Ver: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-AS-Result: No-10--24.145900-8.000000
X-TMASE-MatchedRID: xIhOSkOSohXUL3YCMmnG4uYAh37ZsBDC1kqyrcMalqVV1lQ/Hn0TOskU
	hKWc+gwPyGJ1SiZNgOOsXAiB6VK48AbbLE2rYg/9wvqOGBrge3t2esxkSbCUdJ722hDqHosTLIb
	YUWjS7yjbT4dHnV2cQbvrVFvaS3pvaz+0XDplNBbCz1ymGcrCUcMdI0UcXEHz8QkGgrel/G4QIz
	eIWm4OKNYl5+U3IeZnRRqEtlXbEyAEQqIqKFLtThWCVBr+Ay98hV0srjoqtx/4JyR+b5tvoHq1v
	ZPzlqkE9p+FCsxUVBP/WfkXrytReFQhXn0EVdzOSEQN/D/3cG6Zf5btvM85ATPolapMwp0IuHQ5
	SWRKq/1tSym29fvkcsCl/H6Tvsoynuh7s4XRTZaeAiCmPx4NwMFrpUbb72MU1B0Hk1Q1KyL3PDi
	XO/tFSY6HM5rqDwqtlExlQIQeRG0=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--24.145900-8.000000
X-TMASE-Version: SMEX-14.0.0.3152-9.1.1006-23728.005
X-TM-SNTS-SMTP: 
	F6E2396F149DA0C0B615F847A136D0584D36E7708AD6B3394D46FEEA4BB7AC762000:8
X-MTK: N
X-Rspamd-Queue-Id: 859183EF33
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	RBL_VIRUSFREE_BOTNET(2.00)[210.61.82.184:from];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	BAD_REP_POLICIES(0.10)[];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,lists.infradead.org,google.com,lists.linaro.org,amd.com,mediatek.com,arm.com,kernel.org,collabora.com,lists.freedesktop.org,gmail.com];
	DMARC_POLICY_ALLOW(0.00)[mediatek.com,quarantine];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.957];
	TAGGED_RCPT(0.00)[dt];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector9901:i=1];
	R_SPF_ALLOW(0.00)[+ip4:210.61.82.184/32];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailgw02.mediatek.com:helo,mailgw02.mediatek.com:rdns,80000000:email,mediatek.com:dkim,mediatek.com:email,mediateko365.onmicrosoft.com:dkim]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: QENLAAH5AUEEJSL4D425QXT32NJPYNVN
X-Message-ID-Hash: QENLAAH5AUEEJSL4D425QXT32NJPYNVN
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "christian.koenig@amd.com" <christian.koenig@amd.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "matthias.bgg
 @gmail.com" <matthias.bgg@gmail.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 8/9] dt-bindings: reserved-memory: MediaTek: Add reserved memory for SVP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QENLAAH5AUEEJSL4D425QXT32NJPYNVN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Rob,

Thanks for your review.

On Mon, 2023-09-11 at 10:44 -0500, Rob Herring wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On Mon, Sep 11, 2023 at 10:30:37AM +0800, Yong Wu wrote:
> > This adds the binding for describing a CMA memory for MediaTek
> SVP(Secure
> > Video Path).
> 
> CMA is a Linux thing. How is this related to CMA?

> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> >  .../mediatek,secure_cma_chunkmem.yaml         | 42
> +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> b/Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> > new file mode 100644
> > index 000000000000..cc10e00d35c4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reserved-
> memory/mediatek,secure_cma_chunkmem.yaml
> > @@ -0,0 +1,42 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: 
> http://devicetree.org/schemas/reserved-memory/mediatek,secure_cma_chunkmem.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MediaTek Secure Video Path Reserved Memory
> 
> What makes this specific to Mediatek? Secure video path is fairly 
> common, right?

Here we just reserve a buffer and would like to create a dma-buf secure
heap for SVP, then the secure engines(Vcodec and DRM) could prepare
secure buffer through it.
 
But the heap driver is pure SW driver, it is not platform device and
we don't have a corresponding HW unit for it. Thus I don't think I
could create a platform dtsi node and use "memory-region" pointer to
the region. I used RESERVEDMEM_OF_DECLARE currently(The code is in 
[9/9]). Sorry if this is not right.

Then in our usage case, is there some similar method to do this? or
any other suggestion?
 
Appreciate in advance.

> 
> > +
> > +description:
> > +  This binding describes the reserved memory for secure video
> path.
> > +
> > +maintainers:
> > +  - Yong Wu <yong.wu@mediatek.com>
> > +
> > +allOf:
> > +  - $ref: reserved-memory.yaml
> > +
> > +properties:
> > +  compatible:
> > +    const: mediatek,secure_cma_chunkmem
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reusable
> > +
> > +unevaluatedProperties: false
> > +
> > +examples:
> > +  - |
> > +
> > +    reserved-memory {
> > +        #address-cells = <1>;
> > +        #size-cells = <1>;
> > +        ranges;
> > +
> > +        reserved-memory@80000000 {
> > +            compatible = "mediatek,secure_cma_chunkmem";
> > +            reusable;
> > +            reg = <0x80000000 0x18000000>;
> > +        };
> > +    };
> > -- 
> > 2.25.1
> > 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
