Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C837E96B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 07:37:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC7D4410CD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 06:37:43 +0000 (UTC)
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
	by lists.linaro.org (Postfix) with ESMTPS id DF06240C34
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Nov 2023 06:37:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=mediatek.com header.s=dk header.b=agQ142QK;
	dkim=pass header.d=mediateko365.onmicrosoft.com header.s=selector2-mediateko365-onmicrosoft-com header.b="Q1fx/yce";
	dmarc=pass (policy=quarantine) header.from=mediatek.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of yong.wu@mediatek.com designates 210.61.82.184 as permitted sender) smtp.mailfrom=yong.wu@mediatek.com
X-UUID: 180e01ae81ef11ee8051498923ad61e6-20231113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From; bh=7/cDFz8daL0+HbvAFgtGnRav/S6t1IgZ4JezatEACec=;
	b=agQ142QKrI8Is+2YLklskt+QfGjo2ZDYF4b8msO6RGjkZ5XLj4u4170XFTU8jrQU0l/hHk8ApjK0C9/H3PINU0xT5yQ2wTIVRN+sibd5dIKgsCGVXGLnqAHRfYrTgejH0V7liutgYNoVnSZQAlI8W7fpt1dPe+gFrFk83JbkXbk=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.33,REQID:0bd2bcf5-fc3e-4366-9368-75ffb7ecad4b,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:25
X-CID-META: VersionHash:364b77b,CLOUDID:eacb75fc-4a48-46e2-b946-12f04f20af8c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_ULN,TF_CID_SPAM_SNR
X-UUID: 180e01ae81ef11ee8051498923ad61e6-20231113
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw02.mediatek.com
	(envelope-from <yong.wu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 415747343; Mon, 13 Nov 2023 14:37:19 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Mon, 13 Nov 2023 14:37:18 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Mon, 13 Nov 2023 14:37:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=keJD+wVqTiWxsZ0l7tEJDgv/8I+xAcvZSixg+lpTkG9rAGM8tBnRHmNGyYYUZ6+CUPhZad6mrGwqWpjueB+3sS1JslQvuBGzGTssLvLfQhYiI+q+HvhxgqWwO7z5OGvlX6UHzepWfCzfaqYPfRXysWE+4Gu9rbSxo8cbIbEhnFAgy8puOkSH3LZzLDhgpWt4CwDJMobqsoOo4Hmj6Im7LFalg3IwEZydWNrwpI9As9e3nXn49syCUW/dyPXBeCgExDlMleGUF9kdW2ywkyLMniPxu3Bj2ku+DwtXuFBEAxZuRR8wQyYRYsS458X002QguIIeUJSzS6KR2FuTwmL0Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7/cDFz8daL0+HbvAFgtGnRav/S6t1IgZ4JezatEACec=;
 b=nrRxWUmsAsKzLYbqPRJc1XirdtN2pyeAQ8KK8J75S8Q5XAACQoOX+ELWiqimPoX71HkCRV3t0mgL48rOSlyy+FB3qjKTOgEsq5tjOOnG9FG6kk6h7SX6aKkn03O47WPV9ENImjGw02iJIiqoV3aRHSKBQIcbcaCc5te38zBnqtvWAbrwkPCQVuw7OrM5hkvgdm1nh1tw4aw4T09HOOmPv8nqkLxPEJ8WlnqEuglWdQGul3vraiCcNf0LWns4Q5yKs9mZPvdSgPfshPfxY3bw2kwof0KoIPxp1QdWz+tzo+FcJdMtAWf4F8ZJEKWtQINElW9bhCD03XAJI21WC+5XZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mediateko365.onmicrosoft.com; s=selector2-mediateko365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7/cDFz8daL0+HbvAFgtGnRav/S6t1IgZ4JezatEACec=;
 b=Q1fx/yce/RoTgvuG3IqQ7pP8yXy3WhwtcizIhxn0UXM3/KxBzmNXMG0cjbeGDQ3Ed+W6hUWAHmZ0YyVZPN7Czqh72P4+2EQFMXVXKclwURroERaKTvHQMoBYlkjkDpGARZCABLHr3qa16DDOUZDQiqJeEHjjjszLn03Q7q4s0zE=
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com (2603:1096:4:142::7) by
 KL1PR03MB6899.apcprd03.prod.outlook.com (2603:1096:820:9e::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6977.29; Mon, 13 Nov 2023 06:37:14 +0000
Received: from SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::6834:f551:ad97:6f6d]) by SI2PR03MB5885.apcprd03.prod.outlook.com
 ([fe80::6834:f551:ad97:6f6d%6]) with mapi id 15.20.6977.028; Mon, 13 Nov 2023
 06:37:13 +0000
From: =?utf-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>
To: "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"christian.koenig@amd.com" <christian.koenig@amd.com>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>, "sumit.semwal@linaro.org"
	<sumit.semwal@linaro.org>
Thread-Topic: [PATCH v2 6/8] dt-bindings: reserved-memory: Add secure CMA
 reserved memory range
Thread-Index: AQHaFJDH3q0MzKy6jU6noAScabHMm7B1EbIAgAK82IA=
Date: Mon, 13 Nov 2023 06:37:13 +0000
Message-ID: <5d7b2458b8d1896ce575f4ed2d413f4e8eeb92b4.camel@mediatek.com>
References: <20231111111559.8218-1-yong.wu@mediatek.com>
	 <20231111111559.8218-7-yong.wu@mediatek.com>
	 <0ccee72f-98ac-4a08-9253-9c22dad4d95a@linaro.org>
In-Reply-To: <0ccee72f-98ac-4a08-9253-9c22dad4d95a@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SI2PR03MB5885:EE_|KL1PR03MB6899:EE_
x-ms-office365-filtering-correlation-id: 2c289089-6ff4-4e41-b296-08dbe412f8d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZWLA58sZ56tp47K/uGuwCuNwHMXC58U24adoyDsdnMuj/vjDqMy0Q6kE6QnA3gOsKKgNb6ZdCrfoRt+pHFzKGBR5m2QTncGLIXbc21gWbbVwsWJpQtvxUnSj1jQYq4fAauCSE2S0/2OQV9Bvhr5QK4YIijVI6NzTSSH7joyi7X8kHjBTEAqSeWfvzaeyLZZZI7Ia4oumVizzeXl59onkwt63/ju68lZozCcE4tspTSnvQpLylQS0ZAVjPGJU9RBur3RYYdR35WKhDiC1kerl4OhcvbCfzzIfLUXSPMMf7tgvfkctoDVaG6xWD26OuzeOgygajWCxEOEJ2bXkvFbMh2eeMqfJ07/468UeBcgdHz43iz/Ds4bawGfwutXyWAU/kazky8gfeQ2HbuC7kfW0pokZHR2sapGhxafrFspj8DqcQqBCPfmSY25YOjgkTUWuTfpDB55XZJQiJ4C4pHJuFG00et1Xv818zo4zS5MsazW/2ftQImsUO7ExOXF7uVo2W41lU04xnAczvwmn+hQ+YjdRDfRgpqIt3YpL3c4Vtzs61CrfBAH/AMg0nM7nrnifWqfcLB3uTuOw2eH/fG2ppc1Tk0XMj0PSzr5lArQSQ9iMd9b8/DOtrplX0rWSIAkOaHFriFvkGyQtHE6xMabkVxZV0UKSnSY5+sx+tE2hfCNMmJIyb957WHYgj07hnKhCTXQ2zFW5SrWgDvFqv7vHNXaX7IkImlqWmgK0lZ9+AlCge9+ZSsXx6g4TCrXwhimL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR03MB5885.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(346002)(39860400002)(136003)(230273577357003)(230922051799003)(230173577357003)(64100799003)(186009)(1800799009)(451199024)(7416002)(83380400001)(26005)(2906002)(4001150100001)(2616005)(122000001)(38100700002)(86362001)(36756003)(85182001)(38070700009)(41300700001)(8936002)(4326008)(8676002)(71200400001)(54906003)(64756008)(66446008)(66476007)(316002)(478600001)(6486002)(966005)(53546011)(6506007)(66556008)(91956017)(110136005)(66946007)(76116006)(6512007)(5660300002)(99106002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YTRvTWVTeDQ4VkpNVEdBVDRsRm5ML1ZBZkltSXU1N1VVVjNmMXc5RnF2bkt0?=
 =?utf-8?B?V1dwTzN0ZnFLRHZna2VUTE4xZk5kOTYwdjZINFpBSGlpVFliSEJKTGVibm9n?=
 =?utf-8?B?Y004c0VJU3NLYnUvcldqeWl0V0J2ckdnTHNGV1U4eWZZNTdoOWpSbWNvbEFY?=
 =?utf-8?B?ZGNUaGk0c2RnNVcrQnFPeUMzWmwyL3k3V2FlSTNHelZjNUg4ajk2dm5BTWhZ?=
 =?utf-8?B?cVZUbVpEN2VvMVVkNHdTMitpck9La2FqNlQwYWhiMUJVUTJHcGMzM1pDdnJD?=
 =?utf-8?B?MmEyTFJ2MWxlbkdjUXpIbUdVdytRc3hKbGxCd3dXWEhqWmR1dG9ZNi9OeWw2?=
 =?utf-8?B?VGVkSjExbFByMFJ3UWF0MWRadFJlSXFhbVJnc2dkelA4cVpBZVdwVU9Ha1Rx?=
 =?utf-8?B?ZTh6b240blErYW10NmpmYzBOa1JyWnlPeU53bVZkZ2NwMnFSaE5FK0JEb2Yv?=
 =?utf-8?B?bUsreXdBaVBRU2RFL3RrcjZDS1lPT3A5ZURFYUtLUzl5SFRMUXIxQmx5QjlH?=
 =?utf-8?B?OU5CdzdVenZaUXorMlJkQjM4VTNNTnpOVmJ0SXZQNVdIWEhnQ09PTng4VEVG?=
 =?utf-8?B?TUh0THFVS3Rpa3V5UDk4K1VmemFZelphSWQ0MW4zWjhJQlhCWjVaR3N1YnJZ?=
 =?utf-8?B?Wm9FVWFMSmhEYnc3cVZ1RW9SRHVwZzdsTVpPVHJ6QUhmaGdVWjhUK3YvTHpI?=
 =?utf-8?B?M00yMitOc0hHbXJXc21BNjk1NkFMcWErWVM1SThnai9xQkR5TE5hckRuODNs?=
 =?utf-8?B?Q1d1empKOU5Qenk0SkxqNXg0VGdDRWZJNlVNMHZtWkovOGVrVkgvZzlXd1A1?=
 =?utf-8?B?akdzUFl6SXdWV2Y1b2hsRTFTWXd6N2VadHV4SlVyUi9CczVNYVdNL0ZmOExo?=
 =?utf-8?B?RDgvT3NqZlFIK2tGbzNuaDdnT3h4UXRWdEZSdmhjbHZrYlVLTmF1WlJiUHRm?=
 =?utf-8?B?REN6VjR3NWYxTmFmdWx0aStpWVNEa3lEVUxQMnJYeU9hSDNrTkVEeFdkN04v?=
 =?utf-8?B?MURyckRQakVlc01FYVhQYUxWWnFSTkdMTjVLZ3lWSzI3L2VOYTNLanNnSUhI?=
 =?utf-8?B?YUtZdnVXb1JwckhuaUxzeUVZdEwreXhseXhFb2sySEZGVGdtS3pjbFNsaS9s?=
 =?utf-8?B?aDNpRFY2VFVhYzNWNTBsL0l5WHkxTUZkMUVhVW9GWVVrSEUvZmdqQUVweWRQ?=
 =?utf-8?B?eXB3c0E4OTFHT3ExdXFBM3lBMGhkeFl4aUdSNkxzSWFrSkVlRTcvdHhmRFpo?=
 =?utf-8?B?S1FyWGhXclN1eEppSUdxaEtkNTJ0UXB4U3RyakVtVlRkQUt4MTNqb1hqMUd1?=
 =?utf-8?B?NVhwYWRrYzB2WFowR3BxL0JCa3B2NUszUFdmV09BV3hBYTloR2xxS1k5cjg1?=
 =?utf-8?B?S1Rkb3NjYldpTVBhbEYwY1pFRmlvdUt0dzV3RlJrTVZrMG1DQ2M1cmljbERO?=
 =?utf-8?B?c1BENFdlNm5nbG0yeGwzSWM1cGhoMEtkaWVITjF4bjFMVGVQZXBTei92cEZG?=
 =?utf-8?B?YWcxUTRzc2U2ellJWnQyMmNXaWNyaXo4MEo0VFB6UmVKRFBjN3RkNmw3aFRU?=
 =?utf-8?B?VnpadnpzNzFwcTArYTBlUWxYZlRnZGFqRnpYZ3RjRDhFNm1BZm1SMlBzMFNW?=
 =?utf-8?B?Q1VWbzFDVUZEdFJOMmtrekJEc0d4Vzc3L2I0L2pNcERiMlY4bkMzWTFTL3ZQ?=
 =?utf-8?B?alR0K1NPL2YxdXIxdVFITmJQakVqUkE4MHJ1NDAzeGRoYVBnSHVFOFNQSVZz?=
 =?utf-8?B?a2pwaEZXWFc5QlhPcFBYYmNJcWR1WldkdHhqS242YzRrUm5XOC9La1RyZUFO?=
 =?utf-8?B?alF0OW10VVZWdWtzeWQ0RWw5RC9OTXNDYlZvSFUrLzV2Q0VKd3YxTnJXSmtD?=
 =?utf-8?B?VFFNb1RkOWZMZzdTRk1wZjNIYmRERWJmb0p1VWxtaXBuZUc5YnZNeGhKNFlv?=
 =?utf-8?B?aWIrSThaQlRHd0pLWW01MkJiSS80b0MrUHpwVFN4anczV3ZlbEswOTdxcXZI?=
 =?utf-8?B?VU16M2toUitjMGtFNW5ZSURtOGxRMWJiOUh5MHV6WU9ZN3FSVUl2MFhoN1h4?=
 =?utf-8?B?VENtUmJWd3AvYXd0VVNVY3h5MDRjNVc2TG50VUNYYWhnTXRmSTFSNUJCVVJF?=
 =?utf-8?Q?DbKXQA7ocVMiuc+MqfJMDoO8j?=
Content-ID: <188B1C5740DD1D478C571C7081F5CDCC@apcprd03.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SI2PR03MB5885.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c289089-6ff4-4e41-b296-08dbe412f8d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2023 06:37:13.8240
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z2vzzt3nAOiDwH1V2auYQNwXD6Jc+w7gdbKi6oaJHs7d+MqWh4mCK4BwUpX5aBXpsaYXlFYHgeD0EBKXAs5TNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB6899
X-MTK: N
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DF06240C34
X-Spamd-Bar: /
X-Spamd-Result: default: False [-0.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	HFILTER_HOSTNAME_UNKNOWN(2.50)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[mediatek.com,quarantine];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[210.61.82.184:from];
	R_SPF_ALLOW(-0.20)[+ip4:210.61.82.184/32];
	R_DKIM_ALLOW(-0.20)[mediatek.com:s=dk,mediateko365.onmicrosoft.com:s=selector2-mediateko365-onmicrosoft-com];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,amd.com,linaro.org,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,google.com,ndufresne.ca,lists.linaro.org,mediatek.com,quicinc.com,gmail.com,kernel.org,arm.com,collabora.com,linaro.org,lists.freedesktop.org];
	DKIM_TRACE(0.00)[mediatek.com:+,mediateko365.onmicrosoft.com:+];
	ASN(0.00)[asn:3462, ipnet:210.61.0.0/16, country:TW];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: BTNA4LM2JCKJOZMVP4LBCGKZWDU3VFRB
X-Message-ID-Hash: BTNA4LM2JCKJOZMVP4LBCGKZWDU3VFRB
X-MailFrom: yong.wu@mediatek.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, "jstultz@google.com" <jstultz@google.com>, "nicolas@ndufresne.ca" <nicolas@ndufresne.ca>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, =?utf-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?= <Jianjiao.Zeng@mediatek.com>, =?utf-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?= <kuohong.wang@mediatek.com>, "quic_vjitta@quicinc.com" <quic_vjitta@quicinc.com>, "jkardatzke@google.com" <jkardatzke@google.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>, "tjmercier@google.com" <tjmercier@google.com>, "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "dri-devel@lists.freedesktop.org" <dri-de
 vel@lists.freedesktop.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "joakim.bech@linaro.org" <joakim.bech@linaro.org>, "angelogioacchino.delregno@collabora.com" <angelogioacchino.delregno@collabora.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 6/8] dt-bindings: reserved-memory: Add secure CMA reserved memory range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BTNA4LM2JCKJOZMVP4LBCGKZWDU3VFRB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sat, 2023-11-11 at 13:48 +0100, Krzysztof Kozlowski wrote:
>  	 
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  On 11/11/2023 12:15, Yong Wu wrote:
> > Add a binding for describing the secure CMA reserved memory range.
> The
> > memory range also will be defined in the TEE firmware. It means the
> TEE
> > will be configured with the same address/size that is being set in
> this
> > DT node.
> > 
> > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > ---
> 
> What was the outcome of previous discussion? I don't see any
> references
> to the conclusion and your changelog "Reword the dt-binding
> description"
> is way too generic.
> 
> You must explain what happened here.

I don't think there is a final conclusion yet in v1. Jeff helped
explain that this region also is defined in TEE firmware. I put this a
bit in the commit message above.

Sorry for confusing.

> 
> >  .../reserved-memory/secure_cma_region.yaml    | 44
> +++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-
> memory/secure_cma_region.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/reserved-
> memory/secure_cma_region.yaml
> b/Documentation/devicetree/bindings/reserved-
> memory/secure_cma_region.yaml
> > new file mode 100644
> > index 000000000000..8ab559595fbe
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reserved-
> memory/secure_cma_region.yaml
> > @@ -0,0 +1,44 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: 
> http://devicetree.org/schemas/reserved-memory/secure_cma_region.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Secure Reserved CMA Region

Will change to: Secure Region. Is it ok?

> > +
> > +description:
> > +  This binding describes a CMA region that can dynamically
> transition
> 
> Describe the hardware or firmware, not the binding. Drop first four
> words and rephrase it.

Memory region for TEE usage, which is also defined in the TEE firmware.
When an activity (e.g. secure video playback) requiring usage of this
starts, this region will be protected by MPU (Memory Protect Unit) in
the TEE firmware. After the activity is completed, the region will be
unprotected by the TEE and usable by the non-secure side (i.e. kernel
and userspace).

Does this description make sense for you?

> 
> > +between secure and non-secure states that a TEE can allocate
> memory
> > +from.
> 
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for
> instructions).
> Maybe you need to update your dtschema and yamllint.
> 
> Do not send untested code.

Sorry. I will update them and test this before sending.

> 
> > +
> > +maintainers:
> > +  - Yong Wu <yong.wu@mediatek.com>
> > +
> > +allOf:
> > +  - $ref: reserved-memory.yaml
> > +
> > +properties:
> > +  compatible:
> > +    const: secure_cma_region
> 
> Still wrong compatible. Look at other bindings - there is nowhere
> underscore. Look at other reserved memory bindings especially.
> 
> Also, CMA is a Linux thingy, so either not suitable for bindings at
> all,
> or you need Linux specific compatible. I don't quite get why do you
> evennot
> put CMA there - adding Linux specific stuff will get obvious
> pushback...

Thanks. I will change to: secure-region. Is this ok?

> 
> 
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
> 
> Stray blank line.

Thanks for reviewing so careful. Will fix this and below.

> 
> > +    reserved-memory {
> > +        #address-cells = <1>;
> > +        #size-cells = <1>;
> > +        ranges;
> > +
> > +        reserved-memory@80000000 {
> > +            compatible = "secure_cma_region";
> > +            reusable;
> > +            reg = <0x80000000 0x18000000>;
> 
> reg is second property. Open DTS and check how it is there.
> 
> > +        };
> > +    };
> 
> Best regards,
> Krzysztof
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
