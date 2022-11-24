Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB6E63729F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 08:03:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8633A3ED8F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 07:03:31 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2070.outbound.protection.outlook.com [40.107.220.70])
	by lists.linaro.org (Postfix) with ESMTPS id 3AEA73ED8F
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 07:03:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=kkHEdQJs;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RIz/bL07Y2vUvMXqQsYsRRt3qMC9+djbIvaNxIpARICuCMlSBpskmcUgRUhNKLIbHJksoBDewiW6vHbcgw1lbG/gTsVCoKhzAKPuQRtLA9d41ps5Xf49SfHfDE8f1ymTX1CBGlqZMpPpwmmRCpjnFW+VUgh/SvbE/yRE6I1r5uhvf2xMi1pDbmzDo6DVBZpLicq15pCRKHYqI/3MDSwXtXduPM0b2oVj2iA0aIIhwVFubGs641g7ZoJXw2vKYioOrqoDx2l9wzY4zZJ5LDv7aZ+E4jUxVLVucKMnkg43ss3vQ1Z0MwFvavoVH1cAxSTAVYhm+ChQxIG5+3LDTxhB7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yT29+pvl6mykGsjgj4QkIeSGl3UOzj44u8LHVm2FZ9c=;
 b=VUUNElcQmaddZE5R+1cLnxzZc0omSHhwUXqxsA8Jq9JPvCtH9LVTOz+rn/9dQPhNWvO1Y/pCbJeKqmg53V422VTImojC+ahLweQ8DWzSu/lvtUfSXWA4zaBzvm9A76m4rvSDiOj8JnV9I2Fv0ODDBO9YEkkl/ZPZDUZJW2EW+lOhMHvuA6suhM0jAvbVPLoULc+a9tiET/+gzc5KIamCyyt7SiXu9oHb6+X9ZBUVvzhWqlnCjfpHbdwTHDUNXbHPiWnhEIE2xnZyZUS8hDUFS3+D/MrRJjLqQ7ukzgET9vp9/z8wEAopjj3dTIvjRzcT2UEYvEhWaqPKVAvrWqQ1aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yT29+pvl6mykGsjgj4QkIeSGl3UOzj44u8LHVm2FZ9c=;
 b=kkHEdQJshyLopdl0gouPBcqQ+PWpjubELzmLZhbEX2sv1KsO3ihze/ez6pDd0Yh6TN3QhgRDjN2T/9Lo9o+r4Pm4iqM18+BHl5lnxOHxYuKuyMTIXnoklL2RBed0eZdwZxNfDZCdPf0KD+pf3bXwKXL+FHLoSVRny8tkwBknGrA=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by CH2PR12MB4956.namprd12.prod.outlook.com (2603:10b6:610:69::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.19; Thu, 24 Nov
 2022 07:03:19 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5857.019; Thu, 24 Nov 2022
 07:03:16 +0000
Message-ID: <260a86f0-057e-e235-ac38-abeb922d0dc1@amd.com>
Date: Thu, 24 Nov 2022 08:03:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20221123193519.3948105-1-tjmercier@google.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20221123193519.3948105-1-tjmercier@google.com>
X-ClientProxiedBy: FR2P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a::17) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|CH2PR12MB4956:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f57960c-46a9-489d-ae40-08dacde9f5c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zNir58XN0Hya6bdp/xfV9R6FWBEXM8DEXBsAnpsZLf0eQdWJOlrCqJye5Yyhs2W8b84kpk/RwpQzmSiVEyirONgOFkmRO2Brcr9tz4wSRFU/aHSAzKxUdsw2FHOOY+ptrU2R0QCpicVWVsb9vcpoSBzJvKo6btcS4iKsM7jZtmLatnwLAIN74JrAZ4cUdeB40RyE8uR9/+r5hUVib9X25CjOkcMR/45ES7YzFbLgGl4DZmCKwWGuuc8tBLWTt7TwjS/HY0oy4lEBPk+UVL1EpamYLyRSAdyzvP9YZYaQpsDhSbH1dcgZ4SQ/bCFY4+33VN2f7rbLZPTLIETrcf4MlCCeI/zM6+fggfJVPUBPbY+PxJSzKb1PIJWk7hLtWk30WRiLq+bmz4ld6qLJH0+0aAIEe9uqdU12+ldSIOWjgenUr7/oqWnCEDiZgUDJmL5QTimA5UxZrZfrPntkq66/tJ4LyKVLQV31IrDqDbU4mSTjl2W5vUfkh4pkRHhgdGWyLCwupVaGvNCcB3f6oKaJJlr/InslmzFyTKk71+C8RExQ9/R7QELdjU1XRjzfPsjlwLJP14X5Bf88uHfa0LaDYcHIUUg9lMPmVli4Ho1MzAG36UqgFjjwIJ2KaCBHxkxBfBlzZAAi7tJNAJb6622qgnPVw2QraBtcnpfn4Nfy4AWNLtKofxhP0WT0rnizskWTwvJdo5/8SjsMv9oqIhIxjAbA3WXv94GAACwA05Op6rw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199015)(36756003)(86362001)(31696002)(6486002)(110136005)(26005)(6666004)(6506007)(5660300002)(478600001)(8936002)(41300700001)(2906002)(316002)(4326008)(66946007)(66476007)(66556008)(8676002)(38100700002)(186003)(6512007)(2616005)(66574015)(31686004)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Mmt0cThndWlNdWcwN1piNXRnUWNJUS9iTlFaWjRlQzNWMG44bG1YKzhBbTBh?=
 =?utf-8?B?M2FtMUhqWFNXRUZ6ZEpZVHFOTmFMYnFaWHNoQWtVSll1YVJOVVdUMEM3ZHkw?=
 =?utf-8?B?ZVAyQ3RWYnluUjRVN1o3OTVWcXNBV1BLSVR2RFVEaGFSSkRlTTlnRFE3VjVI?=
 =?utf-8?B?QnJtQXZzRmxtT3lKdjVISWFrQi9wdkJpSk5sQjlZYm1ORTErSnVxQWgzdTRD?=
 =?utf-8?B?Z1BMeUUyNjJRZzhGOHFqSXpzYUhRUEg0ODQ1bnhQVTlaOGIzZGFETWcxdGpO?=
 =?utf-8?B?ZTVSN0NEMmx5b2Y0ejRVcnJ3NnkzalJoMDM1bUlIZWhoZ3pTWVZQejg0SkNp?=
 =?utf-8?B?Rm1mVmoyTjc1WUM2aWxHR1NYcm1CTHpENVBsaWYwVmxFTXExczYzQ3lsa1BU?=
 =?utf-8?B?cVh1cWNzSERxQW5sL3pNV05SeUxtWFk3Umk0YVZON3QwK2FuVmdSMVNBbW9Y?=
 =?utf-8?B?di9SUmZWMVNVdDRyc3VHa3ZQdlZOVXppK0JnSmpqT1hsMm5mc29Kbm5pdE1Y?=
 =?utf-8?B?UkZ1ZVBieWt4Q0dKREhacGoxQWpPRmZVRk9kZUlhV200Z0M5cnJlT3ZQOFhO?=
 =?utf-8?B?aDI2Yy9NZGpUdmJLZWsvYlJ6TkFsdVFpbTN0QjRFMDZSN1U5L2lIaFF3RlM2?=
 =?utf-8?B?NXhyTGtOSUgwVnFIYUdyNDk2cEhUNCtXbDJzdGI5YXRvZm0wN3ZQNGRrZGtq?=
 =?utf-8?B?V3UrTmNTeWdhWjdSSFl0bk12R2tOOUdkNCtiVzVzWXQ0aTE4R1FOMnZkcE10?=
 =?utf-8?B?endDRVc5d0R6SDRXcHljS240Y0Y3c0NqK2JIelZYeFVvNnJ0dklWSDNSS0Jp?=
 =?utf-8?B?TUtrSWd5aVZlR2VHZDNJY0xoK1k1ZWFyV0VFYnJnRTJ5THpkeXlkOWg3clRr?=
 =?utf-8?B?WmNZaGFFNUpSamJuT1ZUZTNja3JGNUkrZ3FHbDI1WExRWmhvd29JVWlSZEs0?=
 =?utf-8?B?Y0xUOWp1YmhrREhUSitJamxUeGg4ZVYwYk1za0tyeEQ0eVhKSEh3TW1UbVdU?=
 =?utf-8?B?WXRNczI3YzU2eXV0a2FESXVQV0VtYzNYbHhaK3g4OGFJSHZlMkZqRFVXRElS?=
 =?utf-8?B?WnlPWkpGYk81TGNQMTRaYUltTWVteFJmNk1keEZOaFhNZnBLaUhwQitYS3ZB?=
 =?utf-8?B?bHlsbjdDWE5xT21GNXIyNkRkR08xTDNzek96UkNsSDVFbjFNZHZaNHd0cGdm?=
 =?utf-8?B?NFl3SHVjQzJPRElUZDA3NjZyVkxndCtiWExHOUhxQlprK1VteWZObk16Ymo2?=
 =?utf-8?B?NENTeHFjM0JISnE3M2wrOUZGOTgxUm5HUFZpMVRhVCtxcXZoSjNtSDdLeXBo?=
 =?utf-8?B?a1c0WGpvNUVXdjVNbFYvOUV3OEpmSTVkc0xlVXhIVjZEOEFPMWJFS0lwVzJh?=
 =?utf-8?B?ZDRUeU5RSEJKeUhnQk5uTEZQWjdPdzBIMllnWjRZbWtZWTNIVzA0L0IrdGt3?=
 =?utf-8?B?dnVRQXFVSlN3b1pJV2hYQ0w5VWV4MkJSVHRZVFRxN1VjdXcvaTFOMUd1cXdE?=
 =?utf-8?B?NVJFQnFUbjcrS1pSTCswc09MaCtsQkROYzlLMWF5bmpxcFFlOWM2UnY0dGwz?=
 =?utf-8?B?MmZSOGdOampoT1V6d1Jkd3ljUjZBaE9UOXF0NHdNS1dRZVhNLyt4MVBoTGdF?=
 =?utf-8?B?SGVBZElEUlljSUJSODlQcTRtMmU0dUFSR0RtVHRjemE5OFl4dXRYZVlIUnVv?=
 =?utf-8?B?Q3ZUckhIOHNnN3RReldSNXhxSjFtdS90dHptcFhzVEs2WURJNzZuNTY4ZVNp?=
 =?utf-8?B?Sy9hMU16dzhWSjNwek0xRlZRbGsySy8rS204S0lYaHh4ZXZFMHhnVzNlcWZB?=
 =?utf-8?B?eVhTU3JSVk93aDRkWU56bm5tSkRvcjNQbXB1Rm9vTlo1SDdlWkRwaXNnWW1l?=
 =?utf-8?B?NUZ1ZndISlhJVEVVUEVkT1U1aC9IUUdScmRCZmx4YnNmQWVqSWQzV3VZQUhY?=
 =?utf-8?B?V0lqTXhWa1QzZFdNL1FqNkEvZElTeHdjZ3VCZTNWY0pUb1AwbVhsSWFGV3hu?=
 =?utf-8?B?N1ZpbjJ6WDg5bFM2UWlhWUZXKzJkc1dKUlF6bXlYSFFTUWFjMDN5LzFzWjRK?=
 =?utf-8?B?NUhlUjNnNzJ0RDZLTzE5aDhnNHEzdkxrWTZsc1Npa3dTYnhZekh5UTN0c3R3?=
 =?utf-8?Q?TU4U=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f57960c-46a9-489d-ae40-08dacde9f5c5
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2022 07:03:16.2668
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OH+XlAStvOEv/ytSoTaePhRrQ0FUmwVkSAosALU7QlXCiAsj4Vc+OgeipnX5PZwR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4956
X-Rspamd-Queue-Id: 3AEA73ED8F
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2603:10b6:408:43::13:received];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.70:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[NAM11-CO1-obe.outbound.protection.outlook.com:helo,amd.com:email,amd.com:dkim,mail-co1nam11on2070.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[amd.com:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_THREE(0.00)[3]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: BX7NGYWFMLRBOCTOWWSCW4XYT4RWUXO6
X-Message-ID-Hash: BX7NGYWFMLRBOCTOWWSCW4XYT4RWUXO6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: A collection of typo and documentation fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BX7NGYWFMLRBOCTOWWSCW4XYT4RWUXO6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjMuMTEuMjIgdW0gMjA6MzUgc2NocmllYiBULkouIE1lcmNpZXI6DQo+IEkndmUgYmVlbiBj
b2xsZWN0aW5nIHRoZXNlIHR5cG8gZml4ZXMgZm9yIGEgd2hpbGUgYW5kIGl0IGZlZWxzIGxpa2UN
Cj4gdGltZSB0byBzZW5kIHRoZW0gaW4uDQo+DQo+IFNpZ25lZC1vZmYtYnk6IFQuSi4gTWVyY2ll
ciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxj
aHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNCj4gLS0tDQo+ICAgZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyB8IDE0ICsrKysrKystLS0tLS0tDQo+ICAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmgg
ICB8ICA2ICsrKy0tLQ0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAg
ZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5j
IGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBpbmRleCBkZDBmODNlZTUwNWIuLjYxNGNj
ZDIwOGFmNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiArKysg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+IEBAIC0xMTQxLDcgKzExNDEsNyBAQCBFWFBP
UlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3VubWFwX2F0dGFjaG1lbnQsIERNQV9CVUYpOw0KPiAg
ICAqDQo+ICAgICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgd2hpY2ggaXMgbW92aW5nDQo+ICAgICoN
Cj4gLSAqIEluZm9ybXMgYWxsIGF0dGFjaG1lbnN0IHRoYXQgdGhleSBuZWVkIHRvIGRlc3Ryb3kg
YW5kIHJlY3JlYXRlZCBhbGwgdGhlaXINCj4gKyAqIEluZm9ybXMgYWxsIGF0dGFjaG1lbnRzIHRo
YXQgdGhleSBuZWVkIHRvIGRlc3Ryb3kgYW5kIHJlY3JlYXRlIGFsbCB0aGVpcg0KPiAgICAqIG1h
cHBpbmdzLg0KPiAgICAqLw0KPiAgIHZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmKQ0KPiBAQCAtMTE1OSwxMSArMTE1OSwxMSBAQCBFWFBPUlRfU1lNQk9MX05T
X0dQTChkbWFfYnVmX21vdmVfbm90aWZ5LCBETUFfQlVGKTsNCj4gICAvKioNCj4gICAgKiBET0M6
IGNwdSBhY2Nlc3MNCj4gICAgKg0KPiAtICogVGhlcmUgYXJlIG11dGxpcGxlIHJlYXNvbnMgZm9y
IHN1cHBvcnRpbmcgQ1BVIGFjY2VzcyB0byBhIGRtYSBidWZmZXIgb2JqZWN0Og0KPiArICogVGhl
cmUgYXJlIG11bHRpcGxlIHJlYXNvbnMgZm9yIHN1cHBvcnRpbmcgQ1BVIGFjY2VzcyB0byBhIGRt
YSBidWZmZXIgb2JqZWN0Og0KPiAgICAqDQo+ICAgICogLSBGYWxsYmFjayBvcGVyYXRpb25zIGlu
IHRoZSBrZXJuZWwsIGZvciBleGFtcGxlIHdoZW4gYSBkZXZpY2UgaXMgY29ubmVjdGVkDQo+ICAg
ICogICBvdmVyIFVTQiBhbmQgdGhlIGtlcm5lbCBuZWVkcyB0byBzaHVmZmxlIHRoZSBkYXRhIGFy
b3VuZCBmaXJzdCBiZWZvcmUNCj4gLSAqICAgc2VuZGluZyBpdCBhd2F5LiBDYWNoZSBjb2hlcmVu
Y3kgaXMgaGFuZGxlZCBieSBicmFrZXRpbmcgYW55IHRyYW5zYWN0aW9ucw0KPiArICogICBzZW5k
aW5nIGl0IGF3YXkuIENhY2hlIGNvaGVyZW5jeSBpcyBoYW5kbGVkIGJ5IGJyYWNrZXRpbmcgYW55
IHRyYW5zYWN0aW9ucw0KPiAgICAqICAgd2l0aCBjYWxscyB0byBkbWFfYnVmX2JlZ2luX2NwdV9h
Y2Nlc3MoKSBhbmQgZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcygpDQo+ICAgICogICBhY2Nlc3MuDQo+
ICAgICoNCj4gQEAgLTExOTAsNyArMTE5MCw3IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BMKGRtYV9i
dWZfbW92ZV9ub3RpZnksIERNQV9CVUYpOw0KPiAgICAqICAgcmVwbGFjZSBJT04gYnVmZmVycyBt
bWFwIHN1cHBvcnQgd2FzIG5lZWRlZC4NCj4gICAgKg0KPiAgICAqICAgVGhlcmUgaXMgbm8gc3Bl
Y2lhbCBpbnRlcmZhY2VzLCB1c2Vyc3BhY2Ugc2ltcGx5IGNhbGxzIG1tYXAgb24gdGhlIGRtYS1i
dWYNCj4gLSAqICAgZmQuIEJ1dCBsaWtlIGZvciBDUFUgYWNjZXNzIHRoZXJlJ3MgYSBuZWVkIHRv
IGJyYWtldCB0aGUgYWN0dWFsIGFjY2VzcywNCj4gKyAqICAgZmQuIEJ1dCBsaWtlIGZvciBDUFUg
YWNjZXNzIHRoZXJlJ3MgYSBuZWVkIHRvIGJyYWNrZXQgdGhlIGFjdHVhbCBhY2Nlc3MsDQo+ICAg
ICogICB3aGljaCBpcyBoYW5kbGVkIGJ5IHRoZSBpb2N0bCAoRE1BX0JVRl9JT0NUTF9TWU5DKS4g
Tm90ZSB0aGF0DQo+ICAgICogICBETUFfQlVGX0lPQ1RMX1NZTkMgY2FuIGZhaWwgd2l0aCAtRUFH
QUlOIG9yIC1FSU5UUiwgaW4gd2hpY2ggY2FzZSBpdCBtdXN0DQo+ICAgICogICBiZSByZXN0YXJ0
ZWQuDQo+IEBAIC0xMjY0LDEwICsxMjY0LDEwIEBAIHN0YXRpYyBpbnQgX19kbWFfYnVmX2JlZ2lu
X2NwdV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwNCj4gICAgKiBwcmVwYXJhdGlvbnMu
IENvaGVyZW5jeSBpcyBvbmx5IGd1YXJhbnRlZWQgaW4gdGhlIHNwZWNpZmllZCByYW5nZSBmb3Ig
dGhlDQo+ICAgICogc3BlY2lmaWVkIGFjY2VzcyBkaXJlY3Rpb24uDQo+ICAgICogQGRtYWJ1ZjoJ
W2luXQlidWZmZXIgdG8gcHJlcGFyZSBjcHUgYWNjZXNzIGZvci4NCj4gLSAqIEBkaXJlY3Rpb246
CVtpbl0JbGVuZ3RoIG9mIHJhbmdlIGZvciBjcHUgYWNjZXNzLg0KPiArICogQGRpcmVjdGlvbjoJ
W2luXQlkaXJlY3Rpb24gb2YgYWNjZXNzLg0KPiAgICAqDQo+ICAgICogQWZ0ZXIgdGhlIGNwdSBh
Y2Nlc3MgaXMgY29tcGxldGUgdGhlIGNhbGxlciBzaG91bGQgY2FsbA0KPiAtICogZG1hX2J1Zl9l
bmRfY3B1X2FjY2VzcygpLiBPbmx5IHdoZW4gY3B1IGFjY2VzcyBpcyBicmFrZXRlZCBieSBib3Ro
IGNhbGxzIGlzDQo+ICsgKiBkbWFfYnVmX2VuZF9jcHVfYWNjZXNzKCkuIE9ubHkgd2hlbiBjcHUg
YWNjZXNzIGlzIGJyYWNrZXRlZCBieSBib3RoIGNhbGxzIGlzDQo+ICAgICogaXQgZ3VhcmFudGVl
ZCB0byBiZSBjb2hlcmVudCB3aXRoIG90aGVyIERNQSBhY2Nlc3MuDQo+ICAgICoNCj4gICAgKiBU
aGlzIGZ1bmN0aW9uIHdpbGwgYWxzbyB3YWl0IGZvciBhbnkgRE1BIHRyYW5zYWN0aW9ucyB0cmFj
a2VkIHRocm91Z2gNCj4gQEAgLTEzMDcsNyArMTMwNyw3IEBAIEVYUE9SVF9TWU1CT0xfTlNfR1BM
KGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcywgRE1BX0JVRik7DQo+ICAgICogYWN0aW9ucy4gQ29o
ZXJlbmN5IGlzIG9ubHkgZ3VhcmFudGVlZCBpbiB0aGUgc3BlY2lmaWVkIHJhbmdlIGZvciB0aGUN
Cj4gICAgKiBzcGVjaWZpZWQgYWNjZXNzIGRpcmVjdGlvbi4NCj4gICAgKiBAZG1hYnVmOglbaW5d
CWJ1ZmZlciB0byBjb21wbGV0ZSBjcHUgYWNjZXNzIGZvci4NCj4gLSAqIEBkaXJlY3Rpb246CVtp
bl0JbGVuZ3RoIG9mIHJhbmdlIGZvciBjcHUgYWNjZXNzLg0KPiArICogQGRpcmVjdGlvbjoJW2lu
XQlkaXJlY3Rpb24gb2YgYWNjZXNzLg0KPiAgICAqDQo+ICAgICogVGhpcyB0ZXJtaW5hdGVzIENQ
VSBhY2Nlc3Mgc3RhcnRlZCB3aXRoIGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcygpLg0KPiAgICAq
DQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oDQo+IGluZGV4IDcxNzMxNzk2YzhjMy4uMWQ2MWE0ZjZkYjM1IDEwMDY0NA0KPiAt
LS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2RtYS1i
dWYuaA0KPiBAQCAtMzMwLDcgKzMzMCw3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4gICAJICogQGxv
Y2s6DQo+ICAgCSAqDQo+ICAgCSAqIFVzZWQgaW50ZXJuYWxseSB0byBzZXJpYWxpemUgbGlzdCBt
YW5pcHVsYXRpb24sIGF0dGFjaC9kZXRhY2ggYW5kDQo+IC0JICogdm1hcC91bm1hcC4gTm90ZSB0
aGF0IGluIG1hbnkgY2FzZXMgdGhpcyBpcyBzdXBlcnNlZWRlZCBieQ0KPiArCSAqIHZtYXAvdW5t
YXAuIE5vdGUgdGhhdCBpbiBtYW55IGNhc2VzIHRoaXMgaXMgc3VwZXJzZWRlZCBieQ0KPiAgIAkg
KiBkbWFfcmVzdl9sb2NrKCkgb24gQHJlc3YuDQo+ICAgCSAqLw0KPiAgIAlzdHJ1Y3QgbXV0ZXgg
bG9jazsNCj4gQEAgLTM2NSw3ICszNjUsNyBAQCBzdHJ1Y3QgZG1hX2J1ZiB7DQo+ICAgCSAqLw0K
PiAgIAljb25zdCBjaGFyICpuYW1lOw0KPiAgIA0KPiAtCS8qKiBAbmFtZV9sb2NrOiBTcGlubG9j
ayB0byBwcm90ZWN0IG5hbWUgYWNjZXMgZm9yIHJlYWQgYWNjZXNzLiAqLw0KPiArCS8qKiBAbmFt
ZV9sb2NrOiBTcGlubG9jayB0byBwcm90ZWN0IG5hbWUgYWNjZXNzIGZvciByZWFkIGFjY2Vzcy4g
Ki8NCj4gICAJc3BpbmxvY2tfdCBuYW1lX2xvY2s7DQo+ICAgDQo+ICAgCS8qKg0KPiBAQCAtNDAy
LDcgKzQwMiw3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4gICAJICogICBhbnl0aGluZyB0aGUgdXNl
cnNwYWNlIEFQSSBjb25zaWRlcnMgd3JpdGUgYWNjZXNzLg0KPiAgIAkgKg0KPiAgIAkgKiAtIERy
aXZlcnMgbWF5IGp1c3QgYWx3YXlzIGFkZCBhIHdyaXRlIGZlbmNlLCBzaW5jZSB0aGF0IG9ubHkN
Cj4gLQkgKiAgIGNhdXNlcyB1bmVjZXNzYXJpbHkgc3luY2hyb25pemF0aW9uLCBidXQgbm8gY29y
cmVjdG5lc3MgaXNzdWVzLg0KPiArCSAqICAgY2F1c2VzIHVubmVjZXNzYXJ5IHN5bmNocm9uaXph
dGlvbiwgYnV0IG5vIGNvcnJlY3RuZXNzIGlzc3Vlcy4NCj4gICAJICoNCj4gICAJICogLSBTb21l
IGRyaXZlcnMgb25seSBleHBvc2UgYSBzeW5jaHJvbm91cyB1c2Vyc3BhY2UgQVBJIHdpdGggbm8N
Cj4gICAJICogICBwaXBlbGluaW5nIGFjcm9zcyBkcml2ZXJzLiBUaGVzZSBkbyBub3Qgc2V0IGFu
eSBmZW5jZXMgZm9yIHRoZWlyDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
