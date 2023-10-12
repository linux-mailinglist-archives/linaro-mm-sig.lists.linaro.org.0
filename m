Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BD47C65DE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Oct 2023 08:49:07 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DDCA63F344
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Oct 2023 06:49:05 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2043.outbound.protection.outlook.com [40.107.220.43])
	by lists.linaro.org (Postfix) with ESMTPS id 5798E3EF0D
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Oct 2023 06:49:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=RtRNy4A2;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.43 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GcRhC4D1g3VY55Ij2nI6a1OPENLt2wKtjjDu16WySuohqNBkx432ww8wUVJ01kSltH2Ww/cXZyFpqEme/2bLfQfVd2UH9rGPawS0ouPtjAT7SoF9Njg3he2JbpY1EwkgmxKVIPrCFy4OW84lD2TrCNb0zd7pbPCvuro5RIqu/eS7V3VHjpNWl5CDjJs5f7fiE8njEAqj57q2kCBgN5l3+v0OfMrYPAH4JZMJnZ0EdvH3PGnASa7xuAWvAm07gxctOi76okyZvviIJCWanrIPjIrDJ2rb/9Wsv22GoeMcdXMQADZ9RozJ/80//4VCLP4CKe0KkOSTlAhF3JP04ttb1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0rcKqqRnLr3rgbHxWwdaXYBjoSWRTeCAVTBFXarmrM=;
 b=mp6sDFOorb9RVpUtdK0AGlntv5sSJ5C2swOHVgD9GHq6cSDtzo2MzDu+bEekdVsOHYCkcDaAr4cnvZSL7y88WRSl7t0YaHGTB2uGhJgZ/s/+wEFMOggB0EYKOm5/dTFDHVLLFZwGQxiBdNX9MMuk/NlKrMf1WvsZ9L7hRw7WQ1oPZp2bhC1a+yTcu/Zg5/Gv3I0cry3vsmVIvX00IgBFZ0i5GQWAwyL013gNGy5OxhrXH42iv7wIGVG0hFd99kX8SrdkoqOhHY6EhZkKG59o4gKSSGea3Ro+5foLeHIwIU5NpHU5sL4N+H9SZfyW82SIn80z0YsO1zBR4H/Dp3A0Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0rcKqqRnLr3rgbHxWwdaXYBjoSWRTeCAVTBFXarmrM=;
 b=RtRNy4A2+OW7HoFbxOsXtNMhY2p5eTHSQJAnN7QPieB3Q65MiU3GohCQMwSRk5uNznnfSOQGilZPRyY2A+Df8AXe82eqkkbnCzqGIr6BULjxOxnOqq22O+AZXoG++6SrpWJ0hmp8eDZFUuhUOUFS0C+KMnsob9gxSiRoZb8Bvcw=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CY8PR12MB8216.namprd12.prod.outlook.com (2603:10b6:930:78::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Thu, 12 Oct
 2023 06:48:59 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a7fa:4411:67a3:131d]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::a7fa:4411:67a3:131d%4]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 06:48:59 +0000
Message-ID: <067ee7e8-6dc3-4e84-84fe-bc00e1193848@amd.com>
Date: Thu, 12 Oct 2023 08:48:54 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <ZSarP0/+hG8/87//@work> <202310110903.FE533CBCD@keescook>
 <0d63e8aa-5836-40e7-8f8a-2be10fbaac4a@embeddedor.com>
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <0d63e8aa-5836-40e7-8f8a-2be10fbaac4a@embeddedor.com>
X-ClientProxiedBy: FR2P281CA0064.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::12) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CY8PR12MB8216:EE_
X-MS-Office365-Filtering-Correlation-Id: fd69f58b-3cc5-43a7-09fa-08dbcaef4ff9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Yz0x1Z0if7U3mtcZIZQyxZtyZUcOgRVjCBzGS9fLCxBw7P4O2gEI9wqKac0P9TEOXr7Yj//D4k64YMhq1oA6muds55a+4AhMCvy3bnEwNkh1FgLx1io+Z6n9aqNU8E+W5fNEP9rGPOH/rYyFVzsbEPGVWCp0zULTJJOGiZ8ahYMLeP6CwwS6xXfebgGoPw3IxICxUV1kB7Sz2OqOoD9dnjRgpTkajM2H8Wi29EGMCXTKhsvq20f6iw9yvXxUwdpp9AwbjBQ38nsShXp69aVI1axFEJBlo11Y1CXLboN3wA7lRW1sKC8pJwrfqigymFEt+vjnzXXBqu4LvzXH5kvq1PcBZqKpp/vTLoDNTmVjsN/1pc+EmycZqjw1MS29XyLyQEpsKnTBHwzhAr5NS1v7MFf943D1g4NNnYziENmaTIwE7rXaWi1TrsTpr6NgTw3ZHo3O2AQNT7RgYcE0GdWiD7GUf02uWs1Ezq1Oo/IW1sbQ3TqigNvcjESaSNs1d1PE83FP0lKGp4vbvix3Q7B/xdD6KaQQ08BIQkxQy0XQ/7n/zYVk3obiPo8Asak2opSV5QgOM+YzvNJyuIH1vZWKZzoS8aH++qM5e6EwLAthFIUwwJ1rIoDbBdVjU7IJ7y8uo9zMvyseW6adccmaTSYZZA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(346002)(396003)(366004)(136003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(6486002)(478600001)(38100700002)(6666004)(8936002)(66556008)(66476007)(54906003)(110136005)(316002)(7416002)(66946007)(2906002)(31696002)(41300700001)(8676002)(36756003)(5660300002)(4326008)(86362001)(26005)(6512007)(2616005)(83380400001)(31686004)(6506007)(53546011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UnNseFdSMVh4SU9vdng3cVB0eHcxdlVNREpySno2elEvVUloT2Frczk0bU1y?=
 =?utf-8?B?QVNHbUNKYUFCTGQyKzFDMEM4VkNGeEorOW1QK0ZRN0ZsRmtNRUlqd0UybFVY?=
 =?utf-8?B?aFdBV200bEJOZjB3bWg1NEV1eDlwTkwwcGM3QXQ1Mm0xOC9qZWQvTnBBMTgr?=
 =?utf-8?B?TjVjR0lZT1hqSGJDcGhGOVVNRkY4bVZpQTc5YXVydFBpSVpTV1Z6c3dpaEtK?=
 =?utf-8?B?Zit0eEkvdW5rMXJNYmo2aGdVajE5V3ptaUhBaFRXc1NXMk1JaGN0YVgrZGE5?=
 =?utf-8?B?b2h1SW9ncFp2dTQ3WnlNdkZObTlaSGJ6VEpYOVJyRFRhcVY4cjNYblpCMksx?=
 =?utf-8?B?NWliQzBpTjVrMkpxLzIzdy9Yd09FamJxREovK1liRWxYa2dmSGptR2RWRVZl?=
 =?utf-8?B?Z3EzZWdMZFgrdG1ReFhFUDBOOHZycDhLV0RZYVBOSDNWbjF1L3hwVVc4Sk1m?=
 =?utf-8?B?VFh6LzY4RmNyaTg0aTBNWVh0aVplU29yNkU5QzhrMWJnRnVWWnc0bW5OWEtW?=
 =?utf-8?B?MWhPdTU2VGFtMHZLRXNqZGc2TUpEZTZ3TUozRTlmZEdGcXpKUlBFMy8vZm1x?=
 =?utf-8?B?QThwdW1lT3lVZS95L0VhdkdrMFJYNDRPU1QzaFlnbXF1TkhqZk1SNXNtckxL?=
 =?utf-8?B?WGNCelNtUkczQ3dvZmtmSHVidEo5S1JVczBISldlanFBajZMYm1nMldZM1Ja?=
 =?utf-8?B?ZlRIbWF2bWpGWnQ5ZWFXU1RyajJGQWdDVHV0YkNPeVVFVFVndElaaHowaXhy?=
 =?utf-8?B?OS9zN0xDMjFmNlFORlNTMWFCbDhWU0RoZEsxWW4yT3VSK2JmbENNKzJwWnRi?=
 =?utf-8?B?Vmg0NXJRTld1a0ZzNk1nNml5Q1lKdU5mNlNsVVdyOWYrdzE1WkZaUkJlaEI5?=
 =?utf-8?B?ZkxmaWIzWWR5K0hsNDZ5Q1VLa2pDZk5Nc01LdDhmaWdYc2JXNndPRldGSTZK?=
 =?utf-8?B?a1dXSzR5cG1ablRseDhxN0d2TWQ4eGs5N1ltR0xqU1NKSkRicUxmNG9JQ3I1?=
 =?utf-8?B?RWpsa0NJWHhESUJKaWx4eUo1bVRtQ0s4MFpIWnd6dEZXUldpQm5mSGE1ZVc0?=
 =?utf-8?B?MGd6eHRLWkRFMGVjZzI5bCtYdjVRVVJ1NWZPWGN3ZjNyVnZONFZMdXMrREdz?=
 =?utf-8?B?dkFGb1JsWW8xVTBta1Q1MXQvaHJ1RENzYXVBcHhOaVYyejV3N0h1WThFS1J1?=
 =?utf-8?B?Y3M1QVNURHFJU2srQzRwUGtxbTZqU3Y0NThMMlk4Y0Y1Vlkxd05PQWQ4am5i?=
 =?utf-8?B?K21WdkdSK3NVNk12ZXFTL3A4MENuaElJME9YK3U3eEpXQWJTZUQxWUFzL0ZO?=
 =?utf-8?B?MVNURWZMaGI3QXFyUTg2S2ZkWURXQWhIMys2OE1Ob1dDODMwOTJjaGJ1LzZX?=
 =?utf-8?B?MEhFRFlsQW1EeDdLRFRTUHE2QnNidWxlZDA4SytkWC9nc0JUMWZ5dko0eXBH?=
 =?utf-8?B?RlZwU3huM0pxMjhwdWlxaE1TS3lLQUxMd212Skp0dlBhNzBndGw2RXdxM1Zp?=
 =?utf-8?B?VEJuY0t0SUczejBZMXE3cStNL1FRd0QvWTNsQ2pjUVV5eDQvSmkyZklUMWN6?=
 =?utf-8?B?dFhZSnk1bkZkRk1VNHdISm9iZS8zZUM5R0VXRitobE9vS0ZJQ3FaNXFXcW1N?=
 =?utf-8?B?bUVReDd6bHJtS2U3K3N4bkVMaGpjeHhBZlRGYWxCdmhWbnkxZmNNWklZZVZu?=
 =?utf-8?B?Slo1T092dzJTTk9zYWVBc0pKUHBIRm5hanoxWVlPSTRXdGNzVVl5cUpBaXVK?=
 =?utf-8?B?VkY3K3p5WVlaU2pCaGFzb2JBTnNpZ0IvZWU5U0d1TCtEL3Nqb1Y5dldxc1ZI?=
 =?utf-8?B?cldRaGROMjErTTAyejJ0dDJza1E5SlN1QTVhUG9ZS3Frd2UwZXFoQkM3clJx?=
 =?utf-8?B?ckl2S0RQQUxnb2U5UUxOaVQySFczOXJhemZkWmpHQmgwbTliUkJqWnRyU0d0?=
 =?utf-8?B?TWdFRXZ1aTVDbmR6akx6Y2lRV3dOQkdVays4SHJYajRUMHN6aWFxTkR5NnJ0?=
 =?utf-8?B?Vnh2YjB3eVlOU3Z2MkNPTmVOWHRDQlNOcGNQMUNLcFlKa3FaQTVsQnBUaTVX?=
 =?utf-8?B?c3JMUjJJVWJyR0VQbXNPV2FnMExjazk2WTRMODhWVGFXbVhHVGh3L1psdkdw?=
 =?utf-8?Q?qLeU=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd69f58b-3cc5-43a7-09fa-08dbcaef4ff9
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 06:48:59.2053
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o5H1w3RP/Cu4mytWgZq5HBboMKLluJOe0gPdqSfxkt3GO0U0Chk1OIeJr5SZKxA2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8216
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,mail-co1nam11on2043.outbound.protection.outlook.com:rdns];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.43:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mail-co1nam11on2043.outbound.protection.outlook.com:rdns,amd.com:dkim,NAM11-CO1-obe.outbound.protection.outlook.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5798E3EF0D
Message-ID-Hash: WWV5ZJQYCM4YTZ3QNEVT7JYSL2OUZANR
X-Message-ID-Hash: WWV5ZJQYCM4YTZ3QNEVT7JYSL2OUZANR
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Arvind Yadav <Arvind.Yadav@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH][next] dma-buf: Fix NULL pointer dereference in dma_fence_enable_sw_signaling()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WWV5ZJQYCM4YTZ3QNEVT7JYSL2OUZANR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQoNCkFtIDExLjEwLjIzIHVtIDE4OjEzIHNjaHJpZWIgR3VzdGF2byBBLiBSLiBTaWx2YToNCj4N
Cj4NCj4gT24gMTAvMTEvMjMgMTA6MDMsIEtlZXMgQ29vayB3cm90ZToNCj4+IE9uIFdlZCwgT2N0
IDExLCAyMDIzIGF0IDA4OjAzOjQzQU0gLTA2MDAsIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6
DQo+Pj4gQ3VycmVudGx5LCBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSB3aWxsIGhhcHBlbiBp
biBmdW5jdGlvbg0KPj4+IGBkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZygpYCAoYXQgbGlu
ZSA2MTUpLCBpbiBjYXNlIGBjaGFpbmANCj4+PiBpcyBub3QgYWxsb2NhdGVkIGluIGBtb2NrX2No
YWluKClgIGFuZCB0aGlzIGZ1bmN0aW9uIHJldHVybnMNCj4+PiBgTlVMTGAgKGF0IGxpbmUgODYp
LiBTZWUgYmVsb3c6DQo+Pj4NCj4+PiBkcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLWNoYWlu
LmM6DQo+Pj4gwqAgODbCoMKgwqDCoMKgwqDCoMKgIGNoYWluID0gbW9ja19jaGFpbihOVUxMLCBm
LCAxKTsNCj4+PiDCoCA4N8KgwqDCoMKgwqDCoMKgwqAgaWYgKCFjaGFpbikNCj4+PiDCoCA4OMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVyciA9IC1FTk9NRU07DQo+Pj4gwqAgODkN
Cj4+PiDCoCA5MMKgwqDCoMKgwqDCoMKgwqAgZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmco
Y2hhaW4pOw0KPj4NCj4+IEluc3RlYWQgb2YgdGhlIGxhcmdlciBwYXRjaCwgc2hvdWxkIGxpbmUg
ODggaGVyZSBqdXN0IGRvIGEgInJldHVybg0KPj4gLUVOT01FTSIgaW5zdGVhZD8NCj4NCj4gTm9w
ZS4gSSB3b3VsZCBoYXZlIHRvIGFkZCBhIGBnb3RvYCB0byBza2lwIA0KPiBgZG1hX2ZlbmNlX2Vu
YWJsZV9zd19zaWduYWxpbmcoY2hhaW4pYC4NCj4NCj4gSSBvcmlnaW5hbGx5IHRob3VnaHQgb2Yg
dGhhdCwgYnV0IGFzIG90aGVyIF9zaWduYWxpbmcoKSBmdW5jdGlvbnMgaGF2ZQ0KPiBzYW5pdHkt
Y2hlY2tzIGluc2lkZSwgSSBkZWNpZGVkIHRvIGdvIHdpdGggdGhhdCBzb2x1dGlvbi4NCj4NCj4g
VGhpcyBidWcgaGFzIGJlZW4gdGhlcmUgc2luY2UgU2VwIDIwMjIuIFNvLCBhZGRpbmcgYSBzYW5p
dHkgY2hlY2sgDQo+IGluc2lkZSB0aGF0DQo+IGZ1bmN0aW9uIHNob3VsZCBwcmV2ZW50IGFueSBv
dGhlciBpc3N1ZSBvZiB0aGlzIHNhbWUga2luZCB0byBlbnRlciB0aGUgDQo+IGNvZGViYXNlDQo+
IGFuZCBzdGF5IHRoZXJlIGZvciB5ZWFycy4NCg0KSSdtIHRyeWluZyB0byByZW1vdmUgdGhvc2Ug
c2FuaXR5IGNoZWNrcyBmb3IgeWVhcnMgc2luY2UgdGhleSBhcmUgaGlkaW5nIA0KcHJvYmxlbXMg
aW5zdGVhZCBvZiBnZXR0aW5nIHRoZW0gZml4ZWQuDQoNCkNhbGxpbmcgZG1hX2ZlbmNlX2VuYWJs
ZV9zd19zaWduYWxpbmcgd2l0aCBhIE5VTEwgcG9pbnRlciBpcyBhIGNvZGluZyANCmVycm9yIGFu
ZCBub3QgYSByZWNvdmVyYWJsZSBydW50aW1lIGVycm9yLg0KDQpUaGUgdGVzdCBjYXNlIHNob3Vs
ZCBiZSBmaXhlZCBpbnN0ZWFkLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IC0tIA0K
PiBHdXN0YXZvDQo+DQo+Pg0KPj4gLUtlZXMNCj4+DQo+Pj4NCj4+PiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmM6DQo+Pj4gwqAgNjExIHZvaWQgZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxp
bmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4gwqAgNjEyIHsNCj4+PiDCoCA2MTPCoMKg
wqDCoMKgwqDCoMKgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+Pj4gwqAgNjE0DQo+Pj4gwqAgNjE1
wqDCoMKgwqDCoMKgwqDCoCBzcGluX2xvY2tfaXJxc2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOw0K
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBeXl5eXl5eXl5eXg0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBOVUxMIHBvaW50ZXIgcmVmZXJlbmNlDQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaWYgZmVuY2UgPT0gTlVMTA0KPj4+DQo+Pj4gwqAgNjE2wqDCoMKgwqDC
oMKgwqDCoCBfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5nKGZlbmNlKTsNCj4+PiDCoCA2MTfC
oMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxvY2ssIGZsYWdz
KTsNCj4+PiDCoCA2MTggfQ0KPj4+DQo+Pj4gRml4IHRoaXMgYnkgYWRkaW5nIGEgTlVMTCBjaGVj
ayBiZWZvcmUgZGVyZWZlcmVuY2luZyBgZmVuY2VgIGluDQo+Pj4gYGRtYV9mZW5jZV9lbmFibGVf
c3dfc2lnbmFsaW5nKClgLiBUaGlzIHdpbGwgcHJldmVudCBhbnkgb3RoZXIgTlVMTA0KPj4+IHBv
aW50ZXIgZGVyZWZlcmVuY2Ugd2hlbiB0aGUgYGZlbmNlYCBwYXNzZWQgYXMgYW4gYXJndW1lbnQg
aXMgYE5VTExgLg0KPj4+DQo+Pj4gQWRkcmVzc2VzLUNvdmVyaXR5OiAoIkRlcmVmZXJlbmNlIGFm
dGVyIG51bGwgY2hlY2siKQ0KPj4+IEZpeGVzOiBkNjJjNDNhOTUzY2UgKCJkbWEtYnVmOiBFbmFi
bGUgc2lnbmFsaW5nIG9uIGZlbmNlIGZvciANCj4+PiBzZWxmdGVzdHMiKQ0KPj4+IENjOiBzdGFi
bGVAdmdlci5rZXJuZWwub3JnDQo+Pj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBTaWx2
YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPg0KPj4+IC0tLQ0KPj4+IMKgIGRyaXZlcnMvZG1hLWJ1
Zi9kbWEtZmVuY2UuYyB8IDkgKysrKysrKystDQo+Pj4gwqAgaW5jbHVkZS9saW51eC9kbWEtZmVu
Y2UuaMKgwqAgfCAyICstDQo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gaW5kZXggOGFhOGY4
Y2I3MDcxLi40ZDJmMTM1NjBkMGYgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1mZW5jZS5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jDQo+Pj4gQEAg
LTYwNywxNCArNjA3LDIxIEBAIHN0YXRpYyBib29sIA0KPj4+IF9fZG1hX2ZlbmNlX2VuYWJsZV9z
aWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpDQo+Pj4gwqDCoCAqIFRoaXMgd2lsbCBy
ZXF1ZXN0IGZvciBzdyBzaWduYWxpbmcgdG8gYmUgZW5hYmxlZCwgdG8gbWFrZSB0aGUgDQo+Pj4g
ZmVuY2UNCj4+PiDCoMKgICogY29tcGxldGUgYXMgc29vbiBhcyBwb3NzaWJsZS4gVGhpcyBjYWxs
cyANCj4+PiAmZG1hX2ZlbmNlX29wcy5lbmFibGVfc2lnbmFsaW5nDQo+Pj4gwqDCoCAqIGludGVy
bmFsbHkuDQo+Pj4gKyAqDQo+Pj4gKyAqIFJldHVybnMgMCBvbiBzdWNjZXNzIGFuZCBhIG5lZ2F0
aXZlIGVycm9yIHZhbHVlIHdoZW4gQGZlbmNlIGlzIA0KPj4+IE5VTEwuDQo+Pj4gwqDCoCAqLw0K
Pj4+IC12b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlKQ0KPj4+ICtpbnQgZG1hX2ZlbmNlX2VuYWJsZV9zd19zaWduYWxpbmcoc3RydWN0IGRt
YV9mZW5jZSAqZmVuY2UpDQo+Pj4gwqAgew0KPj4+IMKgwqDCoMKgwqAgdW5zaWduZWQgbG9uZyBm
bGFnczsNCj4+PiDCoCArwqDCoMKgIGlmICghZmVuY2UpDQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAtRUlOVkFMOw0KPj4+ICsNCj4+PiDCoMKgwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKGZl
bmNlLT5sb2NrLCBmbGFncyk7DQo+Pj4gwqDCoMKgwqDCoCBfX2RtYV9mZW5jZV9lbmFibGVfc2ln
bmFsaW5nKGZlbmNlKTsNCj4+PiDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVu
Y2UtPmxvY2ssIGZsYWdzKTsNCj4+PiArDQo+Pj4gK8KgwqDCoCByZXR1cm4gMDsNCj4+PiDCoCB9
DQo+Pj4gwqAgRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfZW5hYmxlX3N3X3NpZ25hbGluZyk7DQo+
Pj4gwqAgZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggYi9pbmNsdWRlL2xp
bnV4L2RtYS1mZW5jZS5oDQo+Pj4gaW5kZXggZWJlNzhiZDNkMTIxLi4xZTQwMjVlOTI1ZTYgMTAw
NjQ0DQo+Pj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4+ICsrKyBiL2luY2x1
ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4+PiBAQCAtMzk5LDcgKzM5OSw3IEBAIGludCBkbWFfZmVu
Y2VfYWRkX2NhbGxiYWNrKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRtYV9mZW5jZV9mdW5jX3QgZnVuYyk7DQo+Pj4gwqAgYm9v
bCBkbWFfZmVuY2VfcmVtb3ZlX2NhbGxiYWNrKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLA0KPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRtYV9mZW5j
ZV9jYiAqY2IpOw0KPj4+IC12b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+PiAraW50IGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFs
aW5nKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4+PiDCoCDCoCAvKioNCj4+PiDCoMKgICog
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkX2xvY2tlZCAtIFJldHVybiBhbiBpbmRpY2F0aW9uIGlmIHRo
ZSBmZW5jZQ0KPj4+IC0tIA0KPj4+IDIuMzQuMQ0KPj4+DQo+Pj4NCj4+DQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGlu
ZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
