Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 918DE753252
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jul 2023 08:56:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A7A403E97E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jul 2023 06:56:46 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2061.outbound.protection.outlook.com [40.107.244.61])
	by lists.linaro.org (Postfix) with ESMTPS id 3FA1A3E97E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jul 2023 06:56:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=hG0dLq99;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bCMuQpJUOn3cF5ymyWfbkBfCw6x66EmPZUzsKvROd9OwDsezHQgd1Vg3WbPt6rI8FYuOS+LR7/yaT8VvImz7mhI8v6xzFiHwykS4ONhJlBIwBO2aAGNeKOWHCARoEP7zXr6Ybqz3G2NZ1U/RHpPQ3e3jWB9JVtAWF+RgZf5oAO+8xzM9ZcG2EJGey+L0T1KqOcGTrT+tQO6XPdSvFBM3dr3qqSuEN+f5FW6K045D/OGuGlWUaTmH/E4sVzPE2RVPN8vK/SbrMkALLB6K6+T5DDcnaCEzbCbAoXZyjoIS6JXHjKfpLxEEPP2AAhWLHnWWKoMs187Gr5Oqc4WrosWToA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3YY9Cu94Q3g2G5osfhDmwLvQiCadQKD2GQg4w0UNp0=;
 b=gnvvk4R7FOV4Y94Ukq6PE/Yjm3g9yJ0IPg+e+LhptpiRQVT+0PyO11kJTl7cro/aAJHwIdV0Jph+jDp+TtrqG7jJWdYyYfElpVk2ST1cM8SVbDDwzFqebCinQccbuC6Uw1fbWkW//siaPSvO6IsCue2dIQRJ1fG+9ymCvyvG1Ue9oqreLxZ5qGJf2UNMQeMp4MB6po3Y/XJnMFs4GXRZdwgEyvajoF9zmXUKkWItkokwjYOKt5QOQqi8VX9IPJFvYsnBV8ftwPwOUDKt4oRLJi+tB4uRyoyRsVpRO4Auvqojwbl/tuQnFR8w10UNJr8huQ0cuXU6gVXMdmt+uDEZjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J3YY9Cu94Q3g2G5osfhDmwLvQiCadQKD2GQg4w0UNp0=;
 b=hG0dLq99bJjcLSuwU6P/fU9l/QAZ4isUJ7YlzHj6n6HyGPTLxajVIhVs7SjK8PDtm8b07Ed42Xj66POEMk250sKH64sJr4OsuAarIacokTKG52Nsu4t+brGns0whhH6+H6wVPPLzgRqn22gUHvrU7gnEtmna3LwnYtq4/MP30Rg=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH3PR12MB8509.namprd12.prod.outlook.com (2603:10b6:610:157::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.24; Fri, 14 Jul
 2023 06:56:21 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::669f:5dca:d38a:9921]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::669f:5dca:d38a:9921%4]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 06:56:20 +0000
Message-ID: <defcbed9-7cfc-9499-9e08-02a06390cc8f@amd.com>
Date: Fri, 14 Jul 2023 08:56:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
References: <20230713194745.1751-1-ville.syrjala@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230713194745.1751-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: FR2P281CA0169.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::10) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CH3PR12MB8509:EE_
X-MS-Office365-Filtering-Correlation-Id: 9fcd6eff-9ef9-4389-2a63-08db84376d74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Vc2Q4VJO3Zh2jFZzSMHRwnw3XYm7R6MvRAIIL8TtcFExKZYbghT3+xdIV+fAHjbcWWuRRYBb5yoo52NA6NaTaRfMGVUPy2JVojspK1Pkm6WbyH4z9Gr6TQghRmFAAQra104oOGXPu0Hd4xEZK1eCKck19k8gmJirlwF0YkYMKnEhKktxCbWWQb0Rk4ZGxGVySCiZgpBK55sQBUjJqkCrmWC9ONSnIqThkqNRUSokdeRM+2EnGVs3JaV+BEZkln3gbl951HsyJp2Sq+Rxnf5qeyDhl9YX/jC6LFms2YIxVaWpguhM6Sm3IMgWyO1Iw2AMw8kw/hu98/h+nBY3dEHevs79VaWMumI8Od/RsiyJEa6Zzpw7OTQYJzgYscFLreg/f3u2jn5leccFx7VDSLicOlFx/pOJsEzHuRQkwDBwF2qN5jXa0jtE+YUwsDyx8xvKA63DXfGaC0Gu8lFPenfP5t1x0pco+tL2YVRN9z+eUooHyNL5sNhTx9bdKjP5VNnNBFx7dgNn9v1QdXCtRkZtfuXVFqmRC5jzSErZm+lNmbVbkvaHdMLKsLha0bRNsjg59T9HGdELDF96Cl3JTucTJuMq1pqD9BWpSJOAYBv3YLCQ02kIyStnjv7/cKO6FBRiZSmXCQJR9vCTf4Gq07UvDw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199021)(4326008)(66476007)(66946007)(66556008)(41300700001)(316002)(2906002)(478600001)(8676002)(8936002)(5660300002)(31686004)(6666004)(6486002)(6512007)(66574015)(6506007)(186003)(36756003)(83380400001)(2616005)(38100700002)(86362001)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V3g2bnBsSTF6dVhDQVd5YzE0azROOEJnSCtycTZzcmhCYWMwR3UyamxnckVa?=
 =?utf-8?B?eWQ0bUJBQlQ4UjROeEJSRnMrMWVsanZZZjRnYUZoc0h2NG9lVlE2NC9ubnMy?=
 =?utf-8?B?SkIwWXoyK1FoVkR3bURYWkxLeWk5eUdGay9TYncwS0oycTdCME55cDlFV3hT?=
 =?utf-8?B?dnFkS2ZyRisreTRUQVM1TG1jcUd2SUUyMm1lZ3BKZHhUZFJON0pYeE1mQVl1?=
 =?utf-8?B?UGZJQnNxaVhORjdlbGdIWUtvekNSc0hFL1VYS09kV2NPa2dpNWYrNmVwOFJE?=
 =?utf-8?B?RXRvWEFEYkE2RllmWGRHZXJQNnVsZ2M3TWZkYkNJbkhQZFNMUkptKzRveU02?=
 =?utf-8?B?R05mcTVLTHpKL3Bmdnl2Ny9Gc0JqQ2c3UFFsc0VCcmw2YTRmY09WWTl4SGkw?=
 =?utf-8?B?dUZtNEJ1UE5DUnA1eHpjK3RveXFvamUyUXdPbFRxLzFkY0taL3FaQ0FIdmds?=
 =?utf-8?B?ajVNamhOcEx3dE40NEFac0hwQUprazNpdUdQQXl1MVNFak01QTdGcVh4SzNm?=
 =?utf-8?B?WUFQY2Vma2EwL1JnMVo0OXhibzc2QXRuR3RRYnVBaHplbVJ1V2x3MXBnWWIz?=
 =?utf-8?B?UHB1ajh5cS9HWmVRTGkxNDUxZzNvOGRNOWQ3UlNad3hadnJrVG9zVjNNR3Mz?=
 =?utf-8?B?V21KalJydklKbWFMKzg4eWZSOXA5L3lRR1pGNHZzNU1kWnA1WWVSbWp5eUJq?=
 =?utf-8?B?amlXd0N2QW4vaWNFa3o4NE9JQnFFK1dwcHRxdEdrV1Fmb2lKT2ozck1zb3BY?=
 =?utf-8?B?YlEvWVV5d2dWUFBFeVJBRGdHSTVMdHMvZWsrcDlhanFlOHN2Y0NIS2pWNzdk?=
 =?utf-8?B?N3ZFSGtvb3p6TzU5clF1bHJHanNrZndHWmxLWEVDVDdmeG5RR3ZtZi80Qndm?=
 =?utf-8?B?ZWNEUVkxQmtBTzBZTW9ISlVJdFlCeXNEaDdzUm0zNjhsa3gvOTg5SHlNaHJM?=
 =?utf-8?B?aXVNNnVNTmExUXBqOVpxNzZsMytZZWZRb2MrbEpiSFI0TnM0UWhDcG5GUHg3?=
 =?utf-8?B?N3BiN3BsR3dSdnFwQnh6TS9LaDExVmJ6KytQWGx4bHFxZllRODFDMk9tdHVD?=
 =?utf-8?B?Y3dua01xR0tNVU80VVJXNS9VS2tleWRtUWFDSktxRzJ4YUl3L2Y1bzgzaFZk?=
 =?utf-8?B?bFkyUkc1am5hVXErcUZNTmlrYzR0N09qQzlZbk1lRmxqVXRDMVZiZ1A2QTB2?=
 =?utf-8?B?QkxrNG05d3QvYzRNZTIwN0gwMUR0aVBkNk1GdmVlQ0Y3eEkrWDFFTHk4UW8v?=
 =?utf-8?B?aGsyU2VSSjJtejRyR3owOW4wMm55aXVUWDJZb3Q5U0kyNktReGRzRlRCTFNn?=
 =?utf-8?B?WWZ1T0dGUDhXemhWYUdjWG96WXlwckdKb0tMOWxQYzQ3d0tQUHIxUGZrcEFo?=
 =?utf-8?B?WlJNZlRJK012T09BZFA0ZitJQ1VIMVRLYUNXMEp4SkRxUFJjMG1LdCs4K3Bq?=
 =?utf-8?B?V1A1b25iSXlldHhtTkhKbitFa3hya3NvclEyUEd6ZEJOVTRmS0ZOdmQwR1Ez?=
 =?utf-8?B?NVk3UndnZTBKeWhzMWVReUUvQUhkZkExK2JhWUY3R2pFVkR6RFlJMms4MmtR?=
 =?utf-8?B?L1NoVU44bER4Mm55YWVFTGUrT2c4a1dQMDZGbGovei9MSEthSXZEcjJuWFhX?=
 =?utf-8?B?VCszTXhrdGVkeXovcUFieE8wdE9qK0h3N2k0N2hXcUxDK0l6M1lHRXg0TEU4?=
 =?utf-8?B?OWd1WU83Y1FUdW5aS291aFlFOWpQSXBMY001QWZnSGpFNU5QOGJMWlhXZDZk?=
 =?utf-8?B?UnVTbGt4Z0xjakl6YU5JTzcxUE9LTUhzalVhRnk3ZlNLMndjQU5LcW1CTldi?=
 =?utf-8?B?VHJmaG1Qc094aDVqRjE0U05wMGFRZnR5OE5oVjZIWmZqUmtCaTVtNytHekQw?=
 =?utf-8?B?QjZJZENmYjdNbU5mOFp1djBmOHRWY1QzV25PZzVQNXhUbDdPZ1E2Y0d5QzFV?=
 =?utf-8?B?dmN4eTBiWVBaRmZtc2NudS9VK1NFd25iMmJvV1g4ZmFJai9CL0NKeDNRZVlT?=
 =?utf-8?B?bmNVZXNjQStsM3daSi9zbXpZdXorUmYvOTJhZk45eGtzV2NzakVKY0JOY2Y0?=
 =?utf-8?B?TllFTHZDUkM4UnpLcjQ3VDdwTnZWcGh0Vjk3cEErRWxjVWJOL1I5d1BuZDVP?=
 =?utf-8?B?c29NUXIxZytmMDBNbUFxenhGbXdReXVxa1Y3UE16OWgvWjlHbjhHSmNPc0No?=
 =?utf-8?Q?sycgNExlNaYrD1EtEMe7hl61h03YtljnTlD6/fvbeDU1?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fcd6eff-9ef9-4389-2a63-08db84376d74
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 06:56:20.0042
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tCtob62qVWP7L34u8EGY87kifZEZaFMAcqJUcihIIdEJMs4ZrFGn+bIApRvZKaT4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8509
X-Spamd-Result: default: False [-10.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[2603:10b6:408:43::13:received];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	BLOCKLISTDE_FAIL(0.00)[40.107.244.61:server fail,2603:10b6:408:43::13:query timed out];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.244.61:from];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.61:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3FA1A3E97E
X-Spamd-Bar: ----------
Message-ID-Hash: H4EEBMLQFJK72N7NDXZKJIBRHHSJWGGU
X-Message-ID-Hash: H4EEBMLQFJK72N7NDXZKJIBRHHSJWGGU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-resv: Stop leaking on krealloc() failure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H4EEBMLQFJK72N7NDXZKJIBRHHSJWGGU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTMuMDcuMjMgdW0gMjE6NDcgc2NocmllYiBWaWxsZSBTeXJqYWxhOg0KPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPg0KPiBDdXJyZW50
bHkgZG1hX3Jlc3ZfZ2V0X2ZlbmNlcygpIHdpbGwgbGVhayB0aGUgcHJldmlvdXNseQ0KPiBhbGxv
Y2F0ZWQgYXJyYXkgaWYgdGhlIGZlbmNlIGl0ZXJhdGlvbiBnb3QgcmVzdGFydGVkIGFuZA0KPiB0
aGUga3JlYWxsb2NfYXJyYXkoKSBmYWlscy4NCj4NCj4gRnJlZSB0aGUgb2xkIGFycmF5IGJ5IGhh
bmQsIGFuZCBtYWtlIHN1cmUgd2Ugc3RpbGwgY2xlYXINCj4gdGhlIHJldHVybmVkICpmZW5jZXMg
c28gdGhlIGNhbGxlciB3b24ndCBlbmQgdXAgYWNjZXNzaW5nDQo+IGZyZWVkIG1lbW9yeS4gU29t
ZSAoYnV0IG5vdCBhbGwpIG9mIHRoZSBjYWxsZXJzIG9mDQo+IGRtYV9yZXN2X2dldF9mZW5jZXMo
KSBzZWVtIHRvIHN0aWxsIHRyYXdsIHRocm91Z2ggdGhlDQo+IGFycmF5IGV2ZW4gd2hlbiBkbWFf
cmVzdl9nZXRfZmVuY2VzKCkgZmFpbGVkLiBBbmQgbGV0J3MNCj4gemVybyBvdXQgKm51bV9mZW5j
ZXMgYXMgd2VsbCBmb3IgZ29vZCBtZWFzdXJlLg0KPg0KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4NCj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZw0KPiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnDQo+IEZpeGVzOiBkM2M4MDY5OGM5ZjUgKCJkbWEtYnVmOiB1c2UgbmV3IGl0
ZXJhdG9yIGluIGRtYV9yZXN2X2dldF9mZW5jZXMgdjMiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpHb29kIGNhdGNo
LCBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KDQpTaG91bGQgSSBhZGQgYSBDQzogc3RhYmxlIGFuZCBwdXNoIHRvIGRybS1taXNjLWZpeGVz
Pw0KDQpUaGFua3MsDQpDaHJpc3RpYW4uDQoNCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1yZXN2LmMgfCAxMyArKysrKysrKystLS0tDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMNCj4gaW5kZXggYjZmNzFl
YjAwODY2Li4zOGI0MTEwMzc4ZGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
cmVzdi5jDQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jDQo+IEBAIC01NzEsNiAr
NTcxLDcgQEAgaW50IGRtYV9yZXN2X2dldF9mZW5jZXMoc3RydWN0IGRtYV9yZXN2ICpvYmosIGVu
dW0gZG1hX3Jlc3ZfdXNhZ2UgdXNhZ2UsDQo+ICAgCWRtYV9yZXN2X2Zvcl9lYWNoX2ZlbmNlX3Vu
bG9ja2VkKCZjdXJzb3IsIGZlbmNlKSB7DQo+ICAgDQo+ICAgCQlpZiAoZG1hX3Jlc3ZfaXRlcl9p
c19yZXN0YXJ0ZWQoJmN1cnNvcikpIHsNCj4gKwkJCXN0cnVjdCBkbWFfZmVuY2UgKipuZXdfZmVu
Y2VzOw0KPiAgIAkJCXVuc2lnbmVkIGludCBjb3VudDsNCj4gICANCj4gICAJCQl3aGlsZSAoKm51
bV9mZW5jZXMpDQo+IEBAIC01NzksMTMgKzU4MCwxNyBAQCBpbnQgZG1hX3Jlc3ZfZ2V0X2ZlbmNl
cyhzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCj4gICAJ
CQljb3VudCA9IGN1cnNvci5udW1fZmVuY2VzICsgMTsNCj4gICANCj4gICAJCQkvKiBFdmVudHVh
bGx5IHJlLWFsbG9jYXRlIHRoZSBhcnJheSAqLw0KPiAtCQkJKmZlbmNlcyA9IGtyZWFsbG9jX2Fy
cmF5KCpmZW5jZXMsIGNvdW50LA0KPiAtCQkJCQkJIHNpemVvZih2b2lkICopLA0KPiAtCQkJCQkJ
IEdGUF9LRVJORUwpOw0KPiAtCQkJaWYgKGNvdW50ICYmICEqZmVuY2VzKSB7DQo+ICsJCQluZXdf
ZmVuY2VzID0ga3JlYWxsb2NfYXJyYXkoKmZlbmNlcywgY291bnQsDQo+ICsJCQkJCQkgICAgc2l6
ZW9mKHZvaWQgKiksDQo+ICsJCQkJCQkgICAgR0ZQX0tFUk5FTCk7DQo+ICsJCQlpZiAoY291bnQg
JiYgIW5ld19mZW5jZXMpIHsNCj4gKwkJCQlrZnJlZSgqZmVuY2VzKTsNCj4gKwkJCQkqZmVuY2Vz
ID0gTlVMTDsNCj4gKwkJCQkqbnVtX2ZlbmNlcyA9IDA7DQo+ICAgCQkJCWRtYV9yZXN2X2l0ZXJf
ZW5kKCZjdXJzb3IpOw0KPiAgIAkJCQlyZXR1cm4gLUVOT01FTTsNCj4gICAJCQl9DQo+ICsJCQkq
ZmVuY2VzID0gbmV3X2ZlbmNlczsNCj4gICAJCX0NCj4gICANCj4gICAJCSgqZmVuY2VzKVsoKm51
bV9mZW5jZXMpKytdID0gZG1hX2ZlbmNlX2dldChmZW5jZSk7DQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
