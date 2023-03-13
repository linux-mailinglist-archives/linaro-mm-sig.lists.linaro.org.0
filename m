Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FD96B7026
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Mar 2023 08:32:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F30B33F4CA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Mar 2023 07:32:28 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2057.outbound.protection.outlook.com [40.107.92.57])
	by lists.linaro.org (Postfix) with ESMTPS id 4E7033E8AA
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Mar 2023 07:32:09 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=0JW5bSkJ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.57 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jaiyn75hogGqGlHsL0IkUs7/YUKsavasdTRH3JiHXNWuBydn9UEtxx1XUnoYshv31m4hxay0tFlgdkIfgkdQeB1PdeNQRPm5Ze9UyqnXKlPvGyUQbGopOSHuq6E0Au+r8N4RaMx9giq//+ZDpLCaW3mPL5kpK/qo3bcw/gK2Le5j+JvGBzsRSihVWx9F9htU/LbatenomNrDi1NYrF3I6LWIrkiIdIwE4sTrhpH0YL3acrT3a/IwN0oeHCgwm24K5h4QjsUHNJAfiEZ72qRVE8551taJadQyZXLN+6svsKNxASxnLo/FkNgVABJBGeU/OwOIMGCya8RcMpaOtWc9kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGHUjEy0wmGU2VY7Ceit4780S2UuQsCTuoctvjhPQIA=;
 b=HBv9w2+OENsJTANkJaZjOp+kQyJZjRpimV4JYv9VNRf/WkWPw6hiREgExbsCIQsWo7lf8TlaWacoQou3x5WUnFFkTNiJUuOJS4RNairiL8QjX754KSOSy95t9pZ3XnLjBHX2i+SOPFwVf0rBOUxZfVC95T1Ufh57HrbnwNxp21mZwqRuCewQjB+VCRmexxwey8UFKNbm9GkGUk0yLxf3R+i2EXLlHae2pEEjAQ5AG59vb1RYRk3rcYe6KHKlrY6C1PwUjYl/4oAxf0bjz5g0Ysw/JCwBPEya8mDigJXw9SZSEFghrBi+JfkpKAM9NHMnVG5OfanRtTmFdIc82mWWTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZGHUjEy0wmGU2VY7Ceit4780S2UuQsCTuoctvjhPQIA=;
 b=0JW5bSkJoLEnQllKfmRQYctZdkZw61ocm1SrEyzJGAy8M7GwaEHyHYHL3OebEFnaobof9hXGEvj5Uw9MK3UzRvV+8MyLoHL44cAhKSFiKnpi6uiu/DkiLF8w6QguYp8DmlXNW5nKWLcIfPlMnxtlQs+93oE7ILIMkE4x7bP/IN4=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by PH7PR12MB7236.namprd12.prod.outlook.com (2603:10b6:510:207::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 07:32:07 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 07:32:07 +0000
Message-ID: <2c0cb611-dd9f-13f5-1e55-7b7ee2db468d@amd.com>
Date: Mon, 13 Mar 2023 08:31:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230311173513.1080397-1-robdclark@gmail.com>
 <20230311173513.1080397-2-robdclark@gmail.com>
 <1e3d4830-4797-8cc2-5882-02de44424ec7@amd.com>
In-Reply-To: <1e3d4830-4797-8cc2-5882-02de44424ec7@amd.com>
X-ClientProxiedBy: FR3P281CA0122.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::6) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|PH7PR12MB7236:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b0a3293-7207-4a2d-e608-08db23950c8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GeZXRb9SGsjI8LoeeOL1POHsyCZRTe4Bhb3UZFm8l+CRTqOsFfIW1cQYcEatgxlimXiuHTwVDP3R3cVAaDcfrJjEXBnYTfaZZLoIj5C0eqCZdmdRU/KOejSlN55E+XrB4C3q4xYgHShpeGDX8i/v/8glk0Am5bsvONM59AZ3r7dl7tLFtm+eMqh2FdaqKX+18+SBtoNOfBJwciQV5oChlpHOyDYjWv59aR3VjD0AQ7wMAsgmMYEkbgWIFAzWSMyyoOVkMEpxjIC/Q1ho/D/CA6uZ8wNiw5pvRGkSarehpoi91SPW0cJ2Wb7RVmsKuy+CMT4ygufPAeJqI0Q2OHl32NBkvn1eyw3li9RSJyJ8c8F4p12RHJWWkKB+KZiok58divqMLWAK7eEg6bnHDd2FIzD3YQrEU/j65vg7uXNPVJqrX5wQV1sMMgwVhfmWfjoLq9vDJ3KxMzF0NfSobeSD+9goMCbt/K+djNjMVVftdz2gKRO4FJB3T1zNS97zN7O7dWq7Y7StlLWUf07R9DEgb7Cj72fa6oqIHPR8fBEdycKTXyJLIvjvNEm/Hj81QSn6WFCjL+B1zM7InykZWfGZBnrnQ4MnUO2TI8JBa37XjyzoheO3oLUu85/mIaDcVyyJLK+lyvMyQvZqoUQXFCz5GthMRMZYmSbA6EcHtKluVxMg7LwhehIJmi38c4mBYMsu39M0T2UBci2NXtm/aOxuunDuwWGee7h/DWy8Kslihvk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(451199018)(36756003)(86362001)(31696002)(41300700001)(186003)(26005)(6506007)(6512007)(5660300002)(7416002)(4326008)(2616005)(8936002)(316002)(54906003)(478600001)(8676002)(66476007)(6666004)(66556008)(66946007)(6486002)(38100700002)(2906002)(83380400001)(66574015)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RDJLNGdHVDJHaEt5cTFSYzV0aUtKWmlleFNOUmpUVEdaUnI2ckdvYjdRTXZn?=
 =?utf-8?B?WXo1RGdlQlZwdWw4cEtzbXlGUThQa0ZhZy9HN1dTeHJJT0NkQnlXTFRRaldy?=
 =?utf-8?B?MjUwZVEzVG5KN25SQzZzcDlLS1REcEtzV0d6U2VNdTBVcHpFemxiSzlUeldo?=
 =?utf-8?B?TDZWdERtemcxb3lMUXBTZW9tOEkwY3VvWXV0ZVBWY3N5cjVLTnlPT0JSQ2tO?=
 =?utf-8?B?L3p0OHBIZXYwQURTQ0VmZWJJNm1HbDNQaVI1QVdPQjZNT3JWUE5YemlDQ1Fv?=
 =?utf-8?B?OXloNWxYaHhFZ2N0RzNZWHE5WGZKM0tDekVaTGtNUkdRUVRPdWZKakowVDUr?=
 =?utf-8?B?clFHRDBJcFRQM2xHaUtDckh2OTViNXN6cmZvMnFHT0JUWSsxVi83bDdrZkhH?=
 =?utf-8?B?SjJJbGZ4Y1VkQVpEZVNuZXorQUZOa1NNUVRiMmxsbGZJWHRIcit6bVowRktn?=
 =?utf-8?B?QlAzaCtXSzluNmdIWnp1YjhYVnZKeTMzdFlKTE5pRUZJMnhBSTNLVC9qUzVa?=
 =?utf-8?B?RDJCVnZid0x3M29EVWliODQrdmVHK3NQS3B4Y3dPSm1tb0krdVJudFpWQW9S?=
 =?utf-8?B?NE1oTGpZeVdKeTFub2RBd1I2VFZxYVBYcm1PZ3FWUnZxbklyRjNhb09pdVFB?=
 =?utf-8?B?em9Pbkt3c1lDckQ0d1dXdDRFLzZ5VEk0NHptbkpldWd2QWxCalZkakYvT1d6?=
 =?utf-8?B?T0JzaEpFZjVuOEhPdHBXeHUvVVRVL0tKOWFON1dkMWQwbks3em1BY2QrbXY5?=
 =?utf-8?B?NHlvNkpxWWh0ZTl5eFNPeFI4ZjJ1dTBHbUhsT09Hc1JtbG11blpJaythMUMw?=
 =?utf-8?B?WFJLYUNvUU0waStaNGJsbjluSUpDVDVMOTJLRFhONUUrTmJOTGd4NnNLcXp6?=
 =?utf-8?B?a3ZKOFg5L1hvTzJPVVJUNXVidUZwODlIWUFBZjdLTkJUaFdFb3ZRU3RuU0Vw?=
 =?utf-8?B?N2JhY3FzbnZQa0oyRTNOa2dZYjhvTlpINDBKd0dpa2I5ZmxycDNaOHMyenB4?=
 =?utf-8?B?bkg5dFpiY3RldG4xZ29ia3RoendkWVl4LzdTa0sxbzh3TkcvQlhkbnJhNk9x?=
 =?utf-8?B?NnRyOEdjK0Z3YjAwYnVicVFxamxBczA2VnhRelZLSmcxVmhIbjlKM3JmMkoy?=
 =?utf-8?B?N3JEUjNzZ3Jza21HT1l5NVpHSnVGUlFxeU52ekVxNmVUWFBMQTlhUDZtL2hI?=
 =?utf-8?B?VnM4ZkhMVW5zdUFXakgyZEh0RTZtMUxRZ3dRZDFEYWdsWlRJWnR5RWI5UkhH?=
 =?utf-8?B?S1A0ZzdDWUlWUHlUdVE0Q2xwRmkwbjBRcFlFaTBCdnZlUmR6bmhQaEpGSmJK?=
 =?utf-8?B?SXlLcjZNdmErRlV1ZXVHNmhkR3V0UUlEWjlmYkxEdkdCTElZUG1adERMN012?=
 =?utf-8?B?L2VHdk9nSzJLMFNGemxScHRvaGszZDRoaFJWZGhrOEZ0TFpnSkFwTmpYVGI0?=
 =?utf-8?B?b2FRdjgyYTYwRUxtVjNEU3FxZVhwSUhydXlkalNmbzc4Mml6ZlNidWVNYkF3?=
 =?utf-8?B?S0VWaU9ieWR6dnJ5L0FPOExIQ2hHbzM3TGl2Y3kyY2JOTkFNN0VmdTlIMzFX?=
 =?utf-8?B?T0RXWTlsWnZoVnFFMEJaREFFeXdGMlI3Wlp5Y29ZZzBTL1Q5S25ZVHFUT0Fh?=
 =?utf-8?B?QmZmOHhiTUhKTEFIbm1YbzFJeCtvcU1hUGFNUWx2cjFTbHNTOXRuYXJ6c282?=
 =?utf-8?B?M0VPelA4N1pKZGVTMHBVQVR4R2VHSzVBL0ZWWlNnYlZ5U3pYMkJEOVVpa2o4?=
 =?utf-8?B?dFZESUtzRjZ0c3ZjQ1VYZmVJTkNOQjRCTkxzTjNJZ3h3ODc3ZThLSkJ2S0s1?=
 =?utf-8?B?Z0JJQkZKK1BxNmhNWFc4OW5ReGVJTjNGRDJkd1FnR29Qa0dWNFM2K2JVc3pt?=
 =?utf-8?B?ZUMvcFBhS1pETVF4amJxVW8xeUtZWmdNMDg1NmN1MGNvV2JPMXVkNFRQeVh3?=
 =?utf-8?B?UlovZTdoN0NtU0ZUeE9ndFpNZTR3Q1pCYUtFSjVOVU4xak1GcWVUQWFablE3?=
 =?utf-8?B?N21iM3dzYVJXZFVueVJTV3VMVCtQMG5lUU94MU9HN0dOUi9JWjlRdmtQQVQw?=
 =?utf-8?B?ajNsYlliOE44UnlNcjgyby92MXhOODJyeDM2UDd3RlIvek04TSt3UnRzTWty?=
 =?utf-8?Q?WiOtHIiF2OZGQ28hEetgAOYSo?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0a3293-7207-4a2d-e608-08db23950c8a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 07:32:07.1679
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YS+EMulaVy255QvjJSME4hLozmODoRc7MtHkgonAFvDqgcp9ptbQt5r808Qtxrax
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7236
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4E7033E8AA
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.998];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:dkim,mail-bn7nam10on2057.outbound.protection.outlook.com:rdns,NAM10-BN7-obe.outbound.protection.outlook.com:helo];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_THREE(0.00)[3];
	URIBL_BLOCKED(0.00)[chromium.org:email,mail-bn7nam10on2057.outbound.protection.outlook.com:rdns,amd.com:dkim];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.57:from];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: T6JSJBE3ELN3BT2GTRN5QPHRN5WLPPAT
X-Message-ID-Hash: T6JSJBE3ELN3BT2GTRN5QPHRN5WLPPAT
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dma-buf/dma-fence: Add dma_fence_init_noref()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/T6JSJBE3ELN3BT2GTRN5QPHRN5WLPPAT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTMuMDMuMjMgdW0gMDg6MTMgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPiBBbSAxMS4w
My4yMyB1bSAxODozNSBzY2hyaWViIFJvYiBDbGFyazoNCj4+IEZyb206IFJvYiBDbGFyayA8cm9i
ZGNsYXJrQGNocm9taXVtLm9yZz4NCj4+DQo+PiBBZGQgYSB3YXkgdG8gaW5pdGlhbGl6ZSBhIGZl
bmNlIHdpdGhvdXQgdG91Y2hpbmcgdGhlIHJlZmNvdW50LiBUaGlzIGlzDQo+PiB1c2VmdWwsIGZv
ciBleGFtcGxlLCBpZiB0aGUgZmVuY2UgaXMgZW1iZWRkZWQgaW4gYSBkcm1fc2NoZWRfam9iLsKg
IEluDQo+PiB0aGlzIGNhc2UgdGhlIHJlZmNvdW50IHdpbGwgYmUgaW5pdGlhbGl6ZWQgYmVmb3Jl
IHRoZSBqb2IgaXMgcXVldWVkLg0KPj4gQnV0IHRoZSBzZXFubyBvZiB0aGUgaHdfZmVuY2UgaXMg
bm90IGtub3duIHVudGlsIGpvYl9ydW4oKS4NCj4+DQo+PiBTaWduZWQtb2ZmLWJ5OiBSb2IgQ2xh
cmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+DQo+DQo+IFdlbGwgdGhhdCBhcHByb2FjaCB3b24n
dCB3b3JrLiBUaGUgZmVuY2UgY2FuIG9ubHkgYmUgaW5pdGlhbGl6ZWQgaW4gDQo+IHRoZSBqb2Jf
cnVuKCkgY2FsbGJhY2sgYmVjYXVzZSBvbmx5IHRoZW4gdGhlIHNlcXVlbmNlIG51bWJlciBjYW4g
YmUgDQo+IGRldGVybWluZWQuDQoNCkFoLCB3YWl0IGEgc2Vjb25kISBBZnRlciByZWFkaW5nIHRo
ZSBtc20gY29kZSBJIHJlYWxpemVkIHlvdSBhcmUgZ29pbmcgDQp0byB1c2UgdGhpcyBleGFjdGx5
IHRoZSBvdGhlciB3YXkgYXJvdW5kIHRoYXQgSSB0aGluayB5b3UgdXNlIGl0Lg0KDQpJbiB0aGlz
IGNhc2UgaXQgd291bGQgd29yaywgYnV0IHRoYXQgcmVhbGx5IG5lZWRzIGJldHRlciBkb2N1bWVu
dGF0aW9uLiANCkFuZCBJJ20gcHJldHR5IHN1cmUgaXQncyBub3QgYSBnb29kIGlkZWEgZm9yIG1z
bSwgYnV0IGxldCdzIGRpc2N1c3MgdGhhdCANCm9uIHRoZSBvdGhlciBwYXRjaC4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPg0KPiBSZWdhcmRzLA0KPiBDaHJpc3RpYW4uDQo+DQo+PiAtLS0N
Cj4+IMKgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDQzICsrKysrKysrKysrKysrKysr
KysrKysrKysrKystLS0tLS0tLS0NCj4+IMKgIGluY2x1ZGUvbGludXgvZG1hLWZlbmNlLmjCoMKg
IHzCoCAyICsrDQo+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNl
LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IGluZGV4IDc0ZTM2ZjZkMDViMC4u
OTdjMDVhNDY1Y2I0IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5j
DQo+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMNCj4+IEBAIC05ODksMjggKzk4
OSwyNyBAQCB2b2lkIGRtYV9mZW5jZV9kZXNjcmliZShzdHJ1Y3QgZG1hX2ZlbmNlIA0KPj4gKmZl
bmNlLCBzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSkNCj4+IMKgIEVYUE9SVF9TWU1CT0woZG1hX2ZlbmNl
X2Rlc2NyaWJlKTsNCj4+IMKgIMKgIC8qKg0KPj4gLSAqIGRtYV9mZW5jZV9pbml0IC0gSW5pdGlh
bGl6ZSBhIGN1c3RvbSBmZW5jZS4NCj4+ICsgKiBkbWFfZmVuY2VfaW5pdF9ub3JlZiAtIEluaXRp
YWxpemUgYSBjdXN0b20gZmVuY2Ugd2l0aG91dCANCj4+IGluaXRpYWxpemluZyByZWZjb3VudC4N
Cj4+IMKgwqAgKiBAZmVuY2U6IHRoZSBmZW5jZSB0byBpbml0aWFsaXplDQo+PiDCoMKgICogQG9w
czogdGhlIGRtYV9mZW5jZV9vcHMgZm9yIG9wZXJhdGlvbnMgb24gdGhpcyBmZW5jZQ0KPj4gwqDC
oCAqIEBsb2NrOiB0aGUgaXJxc2FmZSBzcGlubG9jayB0byB1c2UgZm9yIGxvY2tpbmcgdGhpcyBm
ZW5jZQ0KPj4gwqDCoCAqIEBjb250ZXh0OiB0aGUgZXhlY3V0aW9uIGNvbnRleHQgdGhpcyBmZW5j
ZSBpcyBydW4gb24NCj4+IMKgwqAgKiBAc2Vxbm86IGEgbGluZWFyIGluY3JlYXNpbmcgc2VxdWVu
Y2UgbnVtYmVyIGZvciB0aGlzIGNvbnRleHQNCj4+IMKgwqAgKg0KPj4gLSAqIEluaXRpYWxpemVz
IGFuIGFsbG9jYXRlZCBmZW5jZSwgdGhlIGNhbGxlciBkb2Vzbid0IGhhdmUgdG8ga2VlcCBpdHMN
Cj4+IC0gKiByZWZjb3VudCBhZnRlciBjb21taXR0aW5nIHdpdGggdGhpcyBmZW5jZSwgYnV0IGl0
IHdpbGwgbmVlZCB0byANCj4+IGhvbGQgYQ0KPj4gLSAqIHJlZmNvdW50IGFnYWluIGlmICZkbWFf
ZmVuY2Vfb3BzLmVuYWJsZV9zaWduYWxpbmcgZ2V0cyBjYWxsZWQuDQo+PiAtICoNCj4+IC0gKiBj
b250ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVu
Y2VzLCANCj4+IGFsbG93aW5nDQo+PiAtICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIg
Ynkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPj4gKyAqIExpa2UgJmRtYV9mZW5j
ZV9pbml0IGJ1dCBkb2VzIG5vdCBpbml0aWFsaXplIHRoZSByZWZjb3VudC7CoCBTdWl0YWJsZQ0K
Pj4gKyAqIGZvciBjYXNlcyB3aGVyZSB0aGUgZmVuY2UgaXMgZW1iZWRkZWQgaW4gYW5vdGhlciBz
dHJ1Y3Qgd2hpY2ggaGFzIA0KPj4gaXQncw0KPj4gKyAqIHJlZmNvdW50IGluaXRpYWxpemVkIGJl
Zm9yZSB0aGUgZmVuY2UgaXMgaW5pdGlhbGl6ZWQuwqAgU3VjaCBhcyANCj4+IGVtYmVkZGluZw0K
Pj4gKyAqIGluIGEgJmRybV9zY2hlZF9qb2IsIHdoZXJlIHRoZSBqb2IgaXMgY3JlYXRlZCBiZWZv
cmUga25vd2luZyB0aGUgDQo+PiBzZXFubw0KPj4gKyAqIG9mIHRoZSBod19mZW5jZS4NCj4+IMKg
wqAgKi8NCj4+IMKgIHZvaWQNCj4+IC1kbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZSwgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMgDQo+PiAqb3BzLA0KPj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgIHNwaW5sb2NrX3QgKmxvY2ssIHU2NCBjb250ZXh0LCB1NjQgc2Vxbm8pDQo+
PiArZG1hX2ZlbmNlX2luaXRfbm9yZWYoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IHN0
cnVjdCANCj4+IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3BpbmxvY2tfdCAqbG9jaywgdTY0IGNvbnRleHQsIHU2NCBzZXFubykNCj4+IMKgIHsNCj4+
IMKgwqDCoMKgwqAgQlVHX09OKCFsb2NrKTsNCj4+IMKgwqDCoMKgwqAgQlVHX09OKCFvcHMgfHwg
IW9wcy0+Z2V0X2RyaXZlcl9uYW1lIHx8ICFvcHMtPmdldF90aW1lbGluZV9uYW1lKTsNCj4+ICvC
oMKgwqAgQlVHX09OKCFrcmVmX3JlYWQoJmZlbmNlLT5yZWZjb3VudCkpOw0KPj4gwqAgLcKgwqDC
oCBrcmVmX2luaXQoJmZlbmNlLT5yZWZjb3VudCk7DQo+PiDCoMKgwqDCoMKgIGZlbmNlLT5vcHMg
PSBvcHM7DQo+PiDCoMKgwqDCoMKgIElOSVRfTElTVF9IRUFEKCZmZW5jZS0+Y2JfbGlzdCk7DQo+
PiDCoMKgwqDCoMKgIGZlbmNlLT5sb2NrID0gbG9jazsNCj4+IEBAIC0xMDIxLDQgKzEwMjAsMjgg
QEAgZG1hX2ZlbmNlX2luaXQoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGNvbnN0IA0KPj4gc3Ry
dWN0IGRtYV9mZW5jZV9vcHMgKm9wcywNCj4+IMKgIMKgwqDCoMKgwqAgdHJhY2VfZG1hX2ZlbmNl
X2luaXQoZmVuY2UpOw0KPj4gwqAgfQ0KPj4gK0VYUE9SVF9TWU1CT0woZG1hX2ZlbmNlX2luaXRf
bm9yZWYpOw0KPj4gKw0KPj4gKy8qKg0KPj4gKyAqIGRtYV9mZW5jZV9pbml0IC0gSW5pdGlhbGl6
ZSBhIGN1c3RvbSBmZW5jZS4NCj4+ICsgKiBAZmVuY2U6IHRoZSBmZW5jZSB0byBpbml0aWFsaXpl
DQo+PiArICogQG9wczogdGhlIGRtYV9mZW5jZV9vcHMgZm9yIG9wZXJhdGlvbnMgb24gdGhpcyBm
ZW5jZQ0KPj4gKyAqIEBsb2NrOiB0aGUgaXJxc2FmZSBzcGlubG9jayB0byB1c2UgZm9yIGxvY2tp
bmcgdGhpcyBmZW5jZQ0KPj4gKyAqIEBjb250ZXh0OiB0aGUgZXhlY3V0aW9uIGNvbnRleHQgdGhp
cyBmZW5jZSBpcyBydW4gb24NCj4+ICsgKiBAc2Vxbm86IGEgbGluZWFyIGluY3JlYXNpbmcgc2Vx
dWVuY2UgbnVtYmVyIGZvciB0aGlzIGNvbnRleHQNCj4+ICsgKg0KPj4gKyAqIEluaXRpYWxpemVz
IGFuIGFsbG9jYXRlZCBmZW5jZSwgdGhlIGNhbGxlciBkb2Vzbid0IGhhdmUgdG8ga2VlcCBpdHMN
Cj4+ICsgKiByZWZjb3VudCBhZnRlciBjb21taXR0aW5nIHdpdGggdGhpcyBmZW5jZSwgYnV0IGl0
IHdpbGwgbmVlZCB0byANCj4+IGhvbGQgYQ0KPj4gKyAqIHJlZmNvdW50IGFnYWluIGlmICZkbWFf
ZmVuY2Vfb3BzLmVuYWJsZV9zaWduYWxpbmcgZ2V0cyBjYWxsZWQuDQo+PiArICoNCj4+ICsgKiBj
b250ZXh0IGFuZCBzZXFubyBhcmUgdXNlZCBmb3IgZWFzeSBjb21wYXJpc29uIGJldHdlZW4gZmVu
Y2VzLCANCj4+IGFsbG93aW5nDQo+PiArICogdG8gY2hlY2sgd2hpY2ggZmVuY2UgaXMgbGF0ZXIg
Ynkgc2ltcGx5IHVzaW5nIGRtYV9mZW5jZV9sYXRlcigpLg0KPj4gKyAqLw0KPj4gK3ZvaWQNCj4+
ICtkbWFfZmVuY2VfaW5pdChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwgY29uc3Qgc3RydWN0IGRt
YV9mZW5jZV9vcHMgDQo+PiAqb3BzLA0KPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5sb2Nr
X3QgKmxvY2ssIHU2NCBjb250ZXh0LCB1NjQgc2Vxbm8pDQo+PiArew0KPj4gK8KgwqDCoCBrcmVm
X2luaXQoJmZlbmNlLT5yZWZjb3VudCk7DQo+PiArwqDCoMKgIGRtYV9mZW5jZV9pbml0X25vcmVm
KGZlbmNlLCBvcHMsIGxvY2ssIGNvbnRleHQsIHNlcW5vKTsNCj4+ICt9DQo+PiDCoCBFWFBPUlRf
U1lNQk9MKGRtYV9mZW5jZV9pbml0KTsNCj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2Rt
YS1mZW5jZS5oIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UuaA0KPj4gaW5kZXggZDU0YjU5NWEw
ZmUwLi5mNjE3Yzc4YTJlMGEgMTAwNjQ0DQo+PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS5oDQo+PiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5jZS5oDQo+PiBAQCAtMjc5LDYgKzI3
OSw4IEBAIHN0cnVjdCBkbWFfZmVuY2Vfb3BzIHsNCj4+IMKgwqDCoMKgwqAgdm9pZCAoKnNldF9k
ZWFkbGluZSkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIGt0aW1lX3QgZGVhZGxpbmUpOw0KPj4g
wqAgfTsNCj4+IMKgICt2b2lkIGRtYV9mZW5jZV9pbml0X25vcmVmKHN0cnVjdCBkbWFfZmVuY2Ug
KmZlbmNlLCBjb25zdCBzdHJ1Y3QgDQo+PiBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc3BpbmxvY2tfdCAqbG9jaywgdTY0IGNvbnRleHQsIHU2NCBz
ZXFubyk7DQo+PiDCoCB2b2lkIGRtYV9mZW5jZV9pbml0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNl
LCBjb25zdCBzdHJ1Y3QgDQo+PiBkbWFfZmVuY2Vfb3BzICpvcHMsDQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBzcGlubG9ja190ICpsb2NrLCB1NjQgY29udGV4dCwgdTY0IHNlcW5vKTsN
Cj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3Jn
ClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0
cy5saW5hcm8ub3JnCg==
