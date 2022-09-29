Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 092845EFCE8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 20:19:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23BB13F4D1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 18:19:07 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2041.outbound.protection.outlook.com [40.107.236.41])
	by lists.linaro.org (Postfix) with ESMTPS id D79A93F0CB
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 18:18:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXlHo5sBD1qFn7Kzd7p0X1VdiOVqohBtTTc5pbw7RcI1f6mxW4iBJUDV7l1wvE++3mIwPIaTwuAAkhZYHk6xRNYhipEd5TvMwf+7dv8VANY1A7MTcqZQDiO9Yma3YS+f3C/ce6IfqtJgLYnHxrXlsV959zuqihOshk7y4vC8SI7KfIPULf/6+i/kBpeQ2+2aWZLPSy44voSpkULrBNYj4qb4PjnuSxvgHXk9zR3UkthqnIQYQp+ZiDEyko/4AxsFJXNOc4kFNkBoeDXfDSEMII/ZzZukdw+vK9Q8s5GZbupzz9oAudUY6rAvcAcT1VzIfaX0XFOY7UUBLt9cZEE9yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8vpUODqfyU41AYlHfcVwGGHEsGwNY5V2W0mZdYU9LtA=;
 b=QIscmRNjXwvsPGqnK6U7Dg12XUv8HMd1TK3BVPG1/q2dxy7VVVSSDttaG5Axm8fbKNCSZz23dbD2/XXG7rtfOzhyo0FYu2lPcSr10IwJHcX7cDNX1G8PR7e8M8CKI4G9UI0myi9NzPe80Jt4E1ooxtl4Mm0w8QpfZrGv4Af0wg+FXi9E/LgaWhrnvoxuzrggYRAkIVrKeydx/AoXtd0MUYXC6Hfqa9s4jyvxa8sUqy33M05op4Wg3Q+HwurScwLtX9QBF4yPRaMTJLOWPkkQDNYEx04D3qoKEYwWbTGBksyhjNv9v3UrU6jumgNAS5EU/eEFSn+SvFOj1BqCYD2qig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8vpUODqfyU41AYlHfcVwGGHEsGwNY5V2W0mZdYU9LtA=;
 b=dP0W6JjGPFQ7qu3tcNsCPzTP33z1TqB+FNb7XJtKw8aS2EkM5E1+ZmmJ1NJ7HsFXridhXrvq41BtAjas33Fu6tY0KUA4zWjFvAlQHqJE2hL0boqjf4FcfANI9Jvi7ocu+vkArbiFpjBD2kfgr/zD8uHXI/Ql52ass5SsObv9tMw=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH0PR12MB5433.namprd12.prod.outlook.com (2603:10b6:510:e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 18:18:41 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::805b:58b6:1f27:d644%6]) with mapi id 15.20.5676.015; Thu, 29 Sep 2022
 18:18:41 +0000
Message-ID: <59d4d647-f451-061c-79b5-0ffc4e33fc58@amd.com>
Date: Thu, 29 Sep 2022 20:18:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Arvind Yadav <Arvind.Yadav@amd.com>, andrey.grodzovsky@amd.com,
 shashank.sharma@amd.com, amaranath.somalapuram@amd.com,
 Arunpravin.PaneerSelvam@amd.com, sumit.semwal@linaro.org,
 gustavo@padovan.org, airlied@linux.ie, daniel@ffwll.ch,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20220927172409.484061-1-Arvind.Yadav@amd.com>
 <20220927172409.484061-4-Arvind.Yadav@amd.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20220927172409.484061-4-Arvind.Yadav@amd.com>
X-ClientProxiedBy: FR0P281CA0113.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|PH0PR12MB5433:EE_
X-MS-Office365-Filtering-Correlation-Id: 732636f9-3cfb-4825-9040-08daa2470907
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qxNF26cuTMx6m1tLp2pzqy2RELEGMIERyZBPoTvfZrrJc1cSEMxPvSM7/TqRPvRHQLOM5Sv6pIwuZY0OTZjMbG4i+8QP0rGo9vxqiR/DBeS4j/sDhib61mwHod1hQrpnJFEaq9B+OeOkeJFqduajvIMECANPPXpO/brZPe2MjE23H+zPpIv0AMY6EDVgie88FqScalZObk1IVU4pVJ/V3i4KcTRnEzVRKBXrSslNN12DtnUoKOrRnUmkFOucAw6cCSPwmOs9ZFSY4XdR9olIdHJZ+Q55nG64RS0wQfbBHdQRR8WUk+zJC4ZIE1e5QUy6XQc4nyvZgR3dhCgHOjkuYbzJpm5+VHC+8Fgc0zd06BSZCSgg6hxCnEgHQKSiIAQR06zdxKStGxLXgD8iXRpulzneUPVZcSksve4Eyny0BBITs0iPNcRBA0r1WHZIs44hpS8ylrvDRVrb1/G/8e6Cs1hD78Nl/yxyVSyZBiz2PEdW8cf6AEBFaY/OhrNSb/cywJWfnTgdHw5O5PvatmPQXUxv+BRkWUZbOG9GldpWW9KiqMvd4T2XjI9begmCSMa9dgxuN/cx04AUijM451CA15EwXPBbvksCU/pdbfZwNHRPuQkbz+PjtdnnjEQu9KRtWlgfta9mh2ePPsOKSCAgz0tCBLmxjSOJfNKDllmMAGECwuZZPsHvRgDuDDEWtu0L38UfheOxaNmlmshUgpVNQ/TLkzKg/M5uLk9y+HpudVcebVvoRbzywZiLKE2AQkOGQnsA2rTHMKBU1ZhbB5v8KsliFfzzfCVhn9wItKN4VD8DYtiIlrw+ZIwl/6fC4hy3
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(136003)(376002)(366004)(396003)(451199015)(5660300002)(8936002)(41300700001)(316002)(38100700002)(6506007)(6486002)(83380400001)(2906002)(921005)(31686004)(6512007)(6666004)(66556008)(66946007)(31696002)(86362001)(36756003)(8676002)(66476007)(186003)(2616005)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q1J2YzlOR3JVZFB4SEo1RlVBb0d3cVlFNjVuV1MvV0h3Rk1Zb0IwaFhKT3lR?=
 =?utf-8?B?STQrNXdmd0hCTnR3UG5jR2dVWWdhMVh2Z0ZWcjVxOGNmOU1uNVNGQkJmQ29j?=
 =?utf-8?B?dDBnZkxaRmhuQzhWRTBmT3cra3d6dG14a3l3TTRsUWNaRi9Kc1Z5S3R2ckRr?=
 =?utf-8?B?ZlM1THlsVzRjS0pNY1hHdjZOZi8vRUorRGY3UE1rSUJjcHNKSTlSSjZHZnRt?=
 =?utf-8?B?bTMvQWJPMWVwV1FGV0kvaXAyVGx5VC9mblpyNGJMbDdvRzZvbWZUZnQ3LzZZ?=
 =?utf-8?B?OGJHQWFhOENhZHV0K1RyckVoMCt5K1VCVEdaYnVmekJGc1J3QlpDWnhlWHRn?=
 =?utf-8?B?bUx6L000NjkwVm1NN004TjdaQUtUWmM4ZElqODkxaGVmTkxibEJPcW9SbC85?=
 =?utf-8?B?YjRyYkVQbzhiRUk0QnZxMlZTUW9sZGNhMG5jc2NPajYwRDlFZHJ0cHRYVHJM?=
 =?utf-8?B?a1ZaMnpoMktKQjRwWVdzTTlnNStmKzBXa0p5UnRDV3BHdnhJeWpxd0MrYXJ4?=
 =?utf-8?B?Z0ljbFpmUkdRY1JUSW8wa3ZrZ2l5cVg0bTJNalYzVWVZUGZDblZGZGw0clI3?=
 =?utf-8?B?Y29ncGd4bzZiVSs5WHRoMEt3WEs4Q01zOXNnNDdSM2lQazcxUE4vdlhSTGF3?=
 =?utf-8?B?Mkt2dHVNcGVFTEpreWdSM09QQjJyRUc3K05GdkY2Y0FDckxaVVpTV3RjUEVU?=
 =?utf-8?B?UjR1cWszM0Fua1dXZGRiZDViTVIxVSsvUFJyMGQxR0pFU3ZZWTBYMlJVeDdo?=
 =?utf-8?B?eXBuTW1TNFdlQWVUZnJtRE4zMzZ5RHlEUVdGVmFUbGRjS01BcE9mMFNEU3Vt?=
 =?utf-8?B?SUl5QTdyYTZjVWxidUVaWFhwa1RpY1lRSlFTbjVqTEhxOWFpMDBjOUhqaEZE?=
 =?utf-8?B?V2o2cXZ6dWMrcDUraUVjZ0RDdk54cC9GSE93dklWSWJ6OEU3cjFVUDduT1d0?=
 =?utf-8?B?dnNFNlgwRUVsaS96THkvV0NwWkxOcnNRNVRUQkZrQTNZLzd5MEp6QnlSL3RJ?=
 =?utf-8?B?Rjh3UTN0M2pwdDhCdkFaWkVvU25QNHFoc28rRVdCTWczZEc4bVI4dHc4NXM0?=
 =?utf-8?B?Zzc3L0ZnTUFFcmlDNkVpYmpVbXljMzNwZTJ1bGlIZTdDWmdvRWtnQ3gxaDdv?=
 =?utf-8?B?VDAyS2ZwOHJsMEdLQlRLSmRUL0lEdkhwc0FFWFMyaHNsUWpnRllSU01vL0VF?=
 =?utf-8?B?RHBXODZDcnBiRHBYZXd2ajcvdHd4ZzV6QzhLRFkzVVB4cEgrbFZjUHlmMzd4?=
 =?utf-8?B?Vzc1VmRFVmYyWUwxTy80dDJxSHhwT1JINnNnNFBMNEl3aU9MR2ZvMnNsYmVL?=
 =?utf-8?B?QlIwQTd1WjdLbUVydjBNNE9qRE1yaDdhRm53WVRrK05mOTRvNnZxcXc0OERk?=
 =?utf-8?B?MnliVTdqOGQ3emRWOWxUekFYbXErbkhrUWRpUG5QRmtFTlZiYU1SOVRNSGFX?=
 =?utf-8?B?a1VwZDFJMmFHcTQ0dXNJQUtTZnVtNzJ1US9teStTTjA0UmU2V29nRUcyUFdv?=
 =?utf-8?B?V09KZjBDbk92Ym9mVmhpdzFHZnBWaTRuMmZMb0tjNnY1OUd6YTNLbWEycWlj?=
 =?utf-8?B?djBacS83b1N1aDNpdU84L0xZSXZHWmtmdlBMYjdDQ1IzaU91UWF0M0ZwbkJt?=
 =?utf-8?B?SVhwRm1QeTBWZnZwcTBoWk0yN1E3YTZCazZIQ1hZczV1UDJ3VVhacWtwVUhr?=
 =?utf-8?B?VkJhbzJwaTcxV29CMzRKUUd4Q3JDTEFUQTFoQ2lVRTNKNTlldmZ0d0xPdmlS?=
 =?utf-8?B?ZVVlekFaWks3MEdCV3N2YThrR3ZNUE1sTTRkaVlJWlFHcG9zUHkrN00xTjZp?=
 =?utf-8?B?dmlzOHBhTVpOVlRRaDFkU0Nzdkh5RlJ4YVZhaEhNbmIwbGFReEVrOEYwcnBT?=
 =?utf-8?B?enM1RzZrWmkwQXVhdCtjV3I3MmN5VXRqdkZaak45dW9iRXA1OUtZZ1hJYTBx?=
 =?utf-8?B?TW9DRXpaeThGQ01Jc24yWi91WUZpWW1Sb1djTS8vRjZmTEU5MmwwS0V5S2gw?=
 =?utf-8?B?UGpSZDNyUUx4OHBHajJGTlI5VDA0VzNUWnFGUHozaHdRTWZHdkRkOXU5Z0hx?=
 =?utf-8?B?b0tUcXdteTFaUGxYY2drbmdrQ2ZuVnBVTW9YZ3RVMEM5YWxPY1AzenczR0hm?=
 =?utf-8?B?ckdQa0xuelVxVko2V1VIRGN6c2RwM0NTZGh4RVFUMFhoTTAwcEMvVVQwbEVN?=
 =?utf-8?Q?m/BbkvdDHheV1gAtmqgJDhE4wwEbfsPY5uioZ21AzzBL?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 732636f9-3cfb-4825-9040-08daa2470907
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2022 18:18:41.2026
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BLPgZRYhPcnNm3/UMIZs9dPD17e0WYCHQdcS3pt12CYaokOkaTctfVPsMiH7BTUz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5433
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: D79A93F0CB
X-Spamd-Result: default: False [-6.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[40.107.236.41:from];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.959];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.41:from];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=dP0W6JjG;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
Message-ID-Hash: TFAYDBZAFYK3HK36T2G4V7ALXFJKEYA6
X-Message-ID-Hash: TFAYDBZAFYK3HK36T2G4V7ALXFJKEYA6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/3] dma-buf: Check status of enable-signaling bit on debug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TFAYDBZAFYK3HK36T2G4V7ALXFJKEYA6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjcuMDkuMjIgdW0gMTk6MjQgc2NocmllYiBBcnZpbmQgWWFkYXY6DQo+IEZlbmNlIHNpZ25h
bGluZyBtdXN0IGJlIGVuYWJsZWQgdG8gbWFrZSBzdXJlIHRoYXQNCj4gdGhlIGRtYV9mZW5jZV9p
c19zaWduYWxlZF9sb2NrZWQoKSBmdW5jdGlvbiBldmVyIHJldHVybnMgdHJ1ZS4NCj4gU2luY2Ug
ZHJpdmVycyBhbmQgaW1wbGVtZW50YXRpb25zIHNvbWV0aW1lcyBtZXNzIHRoaXMgdXAsDQo+IHRo
aXMgZW5zdXJlc8KgY29ycmVjdCBiZWhhdmlvdXIgd2hlbiBETUFCVUZfREVCVUdfRU5BQkxFX1NJ
R05BTElORw0KPiBpcyB1c2VkIGR1cmluZyBkZWJ1Z2dpbmcuDQo+IFRoaXMgc2hvdWxkIG1ha2Ug
YW55IGltcGxlbWVudGF0aW9uIGJ1Z3MgcmVzdWx0aW5nIGluIG5vdA0KPiBzaWduYWxlZCBmZW5j
ZXMgbXVjaCBtb3JlIG9idmlvdXMuDQoNCkFyZSBhbGwgSUdUIHRlc3RzIG5vdyBwYXNzaW5nIHdp
dGggdGhpcz8gVGhhdCB3b3VsZCBiZSBhIGJpdCB1bmZvcnR1bmF0ZSANCmJlY2F1c2UgaXQgbWVh
bnMgd2Ugc3RpbGwgaGF2ZSBtaXNzZWQgdGhlIGJ1ZyBpbiBkcm1fc3luY29iai4NCg0KQ2hyaXN0
aWFuLg0KDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEFydmluZCBZYWRhdiA8QXJ2aW5kLllhZGF2QGFt
ZC5jb20+DQo+IC0tLQ0KPiAgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmggfCA1ICsrKysrDQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9saW51eC9kbWEtZmVuY2UuaCBiL2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLmgNCj4gaW5k
ZXggNzc1Y2RjMGI0ZjI0Li41MTU2ZGM2YmUwYTYgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvbGlu
dXgvZG1hLWZlbmNlLmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPiBAQCAt
Mzk4LDYgKzM5OCwxMSBAQCB2b2lkIGRtYV9mZW5jZV9lbmFibGVfc3dfc2lnbmFsaW5nKHN0cnVj
dCBkbWFfZmVuY2UgKmZlbmNlKTsNCj4gICBzdGF0aWMgaW5saW5lIGJvb2wNCj4gICBkbWFfZmVu
Y2VfaXNfc2lnbmFsZWRfbG9ja2VkKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQ0KPiAgIHsNCj4g
KyNpZmRlZiBDT05GSUdfRE1BQlVGX0RFQlVHX0VOQUJMRV9TSUdOQUxJTkcNCj4gKwlpZiAoIXRl
c3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmZmVuY2UtPmZsYWdzKSkN
Cj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArI2VuZGlmDQo+ICsNCj4gICAJaWYgKHRlc3RfYml0KERN
QV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCwgJmZlbmNlLT5mbGFncykpDQo+ICAgCQlyZXR1cm4g
dHJ1ZTsNCj4gICANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1s
ZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
