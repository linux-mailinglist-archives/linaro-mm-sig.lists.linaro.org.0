Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E857CAD3A82
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 16:07:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D5CDA44147
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Jun 2025 14:07:53 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2049.outbound.protection.outlook.com [40.107.220.49])
	by lists.linaro.org (Postfix) with ESMTPS id 116B344147
	for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Jun 2025 14:07:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=P8axhSC0;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.49 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oc5EKZ9Bm2kztAV3LxrBUbzcyGvRCKkemREKluWPZ/JDzV5PxeMLvpPt1gikWo52Az/3WV7pWttBJCyWZX+cOBGoZ+7OO902qXmv6OkMRCSceqjfH+jrUU4/Y86aoIa94Jf+3BvFy7oAFqXP/4buFVayWV1CViVHzZlUrHTi/czqigyhm7qeLoRMNrPGz7wUqZ6gXl7N505Uq4I8CTgcD6dtKVnNBOKLfLZXpoWkNzfBxNisMwh3IjaGgXCG5KFbUPrygJVlRG05GHRax6iX2kD9sRaiP/chCajIb6ehmM7ikBF5DqrQxpJYTWfw/QS0gm0QIsXN1OX3wB2FSzI5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=is+xLEiFIXjoZ73DAzYLDnsbKPWkMkHmvVNbrIJQNZc=;
 b=a78LNvagKCdWCsKTmeILLH6zEk5E4IqopN+EqWfF/Eaqtoni8B/3106J3G6qGHSGhYY1irnXk7Zo4BM7FU6THGXXHh9N4Wphdr5RioQVDDpEJpl+HqtgsNggi3dvI3uVA6ifwmL42mlkLA/g8RoUHxrS7Ak10cwmX5T/+K993134Y/4PSLLAZ7MwSdtJzYegWucJI5dD7PsGu2Jc57rCWbEeOnfehC8Tf7/TpuM3eoSajQ92UYiMazeIvQ19Br1If0MV6gLrk/5ItaNnR/3IcCegrg1YT3jHDSxIiJuctiyyoeMo7RWODh16pUh85IgoDC7QddIoZgCdkri/+TAM0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=is+xLEiFIXjoZ73DAzYLDnsbKPWkMkHmvVNbrIJQNZc=;
 b=P8axhSC0cLWBL/W4XWp+peGxpW5nT941+Q5QhSpZKs1kbz9BePer2WAMTF5eU9c8TH36eHjrxpTtqbFzYVIrdXHpfdnSGF2BLI31l0eN3YWzasmpWgLF6wvS13csI9eBUp1Siaok7x9LBdqOz+TaPpgM2q35wmlhJ/W4f/8y4aU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB9498.namprd12.prod.outlook.com (2603:10b6:208:594::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Tue, 10 Jun
 2025 14:07:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Tue, 10 Jun 2025
 14:07:35 +0000
Message-ID: <e26bc6aa-7ed8-470a-b626-c1e64b084070@amd.com>
Date: Tue, 10 Jun 2025 16:07:29 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dan.carpenter@linaro.org, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Simona Vetter <simona@ffwll.ch>
References: <20250605085336.62156-1-christian.koenig@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250605085336.62156-1-christian.koenig@amd.com>
X-ClientProxiedBy: BL1PR13CA0114.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::29) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB9498:EE_
X-MS-Office365-Filtering-Correlation-Id: e317fc4a-a412-4e20-dbe6-08dda8282635
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z3IvQzFoUG1oSXU1SnU2VGZhWC9tZm1NaVVoWGJsWXpzWEFLdnZJOEhZZzZC?=
 =?utf-8?B?VDQ2VDI5VEJ2ZDh2L1pFOXFmZEkxL3RvTzdib3A3WVh4ZHdJRzBGbFpZL3FF?=
 =?utf-8?B?N0E4SHUxTGxDbTVnWktDUzZINi95eWlFSkMzekdIc2lzeWFEOGtuNzMxT210?=
 =?utf-8?B?T3pLSXdFa0wvTW04dzNjczc3UUgxMTVhcEQzT0pkMlMwWEVOUHVvUU1kOHlT?=
 =?utf-8?B?THkrbmc4ZjBnUXlJQkYwWWFkNE9XY0RZdkxWVm9DT2VNdUkvbHZCRUo4NEk2?=
 =?utf-8?B?TG9kMDE2SmMxMGxIV0VNRVNsTmlrZkJSSDdkLzlRQiswZXRIa0Y1blhFQzVZ?=
 =?utf-8?B?ZndzYklIR1JTNUU5MlFMS1dTR3MxTjF1UCtRZ252b0U3WGlqZHBWbXpyRWRR?=
 =?utf-8?B?RHZhUWJ3czJvVlpLZTVNZzVIaXZIS3FncHhOWlR0RVNjazNMejlPWVpkZWdt?=
 =?utf-8?B?ZmR3emsrTklTOGthNUUwRitlNE80Qjk2dzQrbjE1VDBodCs4RGlsLzVtSmZu?=
 =?utf-8?B?dTBiWjhxT04yaThVWEtnckdCSGNGNnJ4WndDQmYrb3ZjYWk3WFA0a3JqalAx?=
 =?utf-8?B?UXFENEpvdzVGZGpWRmpISnhNS3YyeHJDTSt1NTdDZGtTOTJheHB5aEVZVkhT?=
 =?utf-8?B?TXhEcUFrL0ZnK3BHRVFHdm5wLytPVkI3Ni9KN3A0eVFTYmdNUFNKWCtta1kw?=
 =?utf-8?B?eE12QWtkeWNzVzRvbGtEaWkxenF5V0FyYjZENmFqdHpVaUZzZXpJZVBSRkVB?=
 =?utf-8?B?R2sxLzcyR1hHOHltbkplbEtsK0lqdlVHUG1PdGJYbUlTNTBZeEp6VUZLVG5t?=
 =?utf-8?B?S0phRERSWWprOFJwTjhxR3Bhd1grZjZxNW42Y0xrV2lhM3FOUFJaNlFmT0V4?=
 =?utf-8?B?a2lmVE1tTHk2WlgvTzZ2OVRtOTd4bWZ2VHdxTURNb2gzbXdXeWR0dkN5U04v?=
 =?utf-8?B?WUdBa2dmUU5VRlJkUk9NWVlCRVhISitiTnJsNTRjbStzd0RwUXR4QUxvV1N5?=
 =?utf-8?B?Mk1nMHZpYnY3R29ocmhKWDEzZFpFOURLa2IzWGlqdHl0amJGVkpFNkhQUURh?=
 =?utf-8?B?ZnRnUmlhd1Q2NU1MenNNZnA5MzBXSGc1TC9LeDgyNk1kUktvK0tiSzF6elhW?=
 =?utf-8?B?R0ttcHJVVGROSVA1ZTFtd2JlRUxKZy80M2lIOXlzVU5lZlRqZU10N3JtajVQ?=
 =?utf-8?B?MGxiTThZYnA0MUdQbDlYQml1MXlEQmRwak5JLzB4K2JFekdDUnlndkNFWkQ4?=
 =?utf-8?B?dTY0M09LVUJ4QzlZUDU0S21pclQxbzZYNjlLQXppV1BmK0UvanY1ZHpZc2xT?=
 =?utf-8?B?djc2MEs4cXhhaW5Tb2Yxd3hjdVI2NXR2ZnFELzhYVU9uZWxLbWhmbld1RVVP?=
 =?utf-8?B?VGhsUlFXL1VLOG9HSnNCRHY3b29TaGVjWDdVQ0t4T1ROTDkxTGgxSUhKSE1h?=
 =?utf-8?B?cTRJNXhKWU9VTXdOMVphUlFJMUhLcXc4dVRlblRBbzVUUjYxanhTRksxNGZH?=
 =?utf-8?B?dU1YU25MUmxINXBuN2k4NFJENEx0RjRrUEY5bjBXQVZGTkNQYU5DSE5HUkxO?=
 =?utf-8?B?TUNFc2ZrL2RTVjVEVTBtcHRKZXg4Z2V1cFhLVkRxUlB6dmlHM2tBM3B0Y25B?=
 =?utf-8?B?Qk91ODBwTlhLWVVoRTNiaFowai9ZKzlYSklXekdIanAvZXVTVitFRUlBbTBF?=
 =?utf-8?B?amZiaFlSQUU0RUoxY2hpVFdiYnBDbkJZTVZIaGdTTGs5YURNWHVnQmVLK1VS?=
 =?utf-8?B?aGtuQStYbVZia3YxZUp4aU1FRDhIazdyQkZKRDAwdmkwNmc5Ull3SjhBQVUz?=
 =?utf-8?B?TmpYYnNCbWN1OUpTODhsTXNmYkl2cHVML3FBcDhZaUloVFpTbi95b3BoS1FO?=
 =?utf-8?B?bmYrTFF4bnc3dUhmK2UrU2pOemVvTkpEZXBuaHI2TW9XL2c9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RzRkeVdXbG12bzkrQzRhUUJ4YjdFRVcyaWVEYlgwWktBUzlIbkpua3d5L1RJ?=
 =?utf-8?B?em54VGJCWmRDakpmYlVaVlZydlRDSXlaOW5MUWZRM3o4UFlDcFBqbEtkU0N3?=
 =?utf-8?B?TzFqVkZBRE1kWUQxQTB2RWQ0QWFaNnEzTWZBUWR5SEUrd0FwQ2ZldkpBZnNl?=
 =?utf-8?B?OUVCNSszRXZ2NHhQSU5XS0d0NzdwaXdsU0lXSkVEb0plc1FsSjFKLzhSUHBQ?=
 =?utf-8?B?aExhV2FMbE5aQ0IwaUREMVFwQ01pVVl1d2VTclA0aHJQcEU2RzN5N2V0YXJU?=
 =?utf-8?B?blVmb2tMck5HK2VvUE9FZDdqZzV2SGdqNlhyS0pjQlZZd3ovdHdaVHYxaHJW?=
 =?utf-8?B?eTE0eU51ejhxRlhROWRQU2c1aUpWU1RNK3Q4T3R2Tm44NjhKY2Y1VFprc21P?=
 =?utf-8?B?dFgvL2NvTFp5WmxTZU40dFQvZ0NVWXpZZnBjTS9XMGdiaFBhQ0ZGZnExV3V1?=
 =?utf-8?B?Ym5xQVc1RDYzZU9TSkhVYWtwNXdtbzZZb1J2OGRpS21tOXFpWFdSeGV5dXp2?=
 =?utf-8?B?ZXRJZmMrbGd3cGkzK0FKSnVYbUxWVHRLYTBPU0tMWnoyMzRJNGxIdDBTUUVQ?=
 =?utf-8?B?TC9YTjBlRUpZd09FS1MzdFlyL0l0RWhYaFc0dVVONFBsdnFJM2NjaWVrVjhP?=
 =?utf-8?B?VjBMVHQrRzJhVmg5aUlLOWlHemFjeDlEempUVHFCTEJ1dGpzTm5uTHIzQTFR?=
 =?utf-8?B?NnhiVk5lb01Ea0lWMXlqQjhnNGlGTURUU3IxeHhlNzNvUjBqUnhyS2FUdVRn?=
 =?utf-8?B?Q2hpMFFjcUZFL3RhVjZIUmpUOHVsb3o3TmJxOXFWdGNQY3VlVFRTTVVxeGhS?=
 =?utf-8?B?M1lseEpyZCthNERTOTdncXk1eU9yeWQ3d2VwQWR2Nng2d1NSZ1VYQWlRWWJn?=
 =?utf-8?B?N2E5Nm1OaHNXRFk3M1FsdWw0N2tybkorSEpkczgwOGF3SGJWUFZwc1ZnN2Qv?=
 =?utf-8?B?YUY2NU9WWmFQTTIyejN0VWIyZ3h6ZmNqdlBXOTdsUXdWTmo3aEFmMkwwZ2N0?=
 =?utf-8?B?YVE1QmhqWWc4VTdKZUJ5RWVROU9UMVRqUVBqSkpQODA5WjBEZXpEVUd6MTVW?=
 =?utf-8?B?OG5ONjJBRVNVQ3dGMEZVc2dyN240TndpM0NvUWFGZkIzY0tRdUp4c3VDa0NR?=
 =?utf-8?B?RmNmTWlTb1lwY1FBazhpbjNrbnVydVczZmErczNTY3RuS2ZrY3VPbjlUSFBn?=
 =?utf-8?B?RW9SYlI4MjR0WlJ4aWFkTXRpdll0RzN6QU9CNjNqeWZlemVjbjZEQnpOZlNz?=
 =?utf-8?B?TzBFM1NPNzd1SVdzMFBUYk1qbENTdC9xSUxVWEJUUnRNMWs3SVRKd21haDNF?=
 =?utf-8?B?RTVOMlpmNEtHbXMycXZWRU1nZktHM1ZjM2VYdHNNS2I5OUduSEZkaU1NbmNF?=
 =?utf-8?B?NXNUYVE4cHNCTW5pSUdVdVMwcHp0Q3p6b05yRWFyRURIVXRGb0ltS1N4MEVQ?=
 =?utf-8?B?d0kvSFNxWG9TdVFVOEs1L1RaM1o0cEFuanNhWlVtZ2hWSlg4MUN5eHU1UXY4?=
 =?utf-8?B?Y1o0NmN4THkyTzBaRG16Z3liNHdITGppUC9KcDl2Wkt2NDlNNEd0RXBjbkU2?=
 =?utf-8?B?bk5EVFlzbkhha2N4UHlLcUV6T2djSkVhc0VacTlmazRGZ1hic3ZRUHYzbmNZ?=
 =?utf-8?B?YWlHZklRbTNZT1JVcTBqL2cydENvL3E1RmZqanlaZTIySTVyMEdTMGlWc2ZX?=
 =?utf-8?B?RllaTXl5SWp0SmcxMWVsVmJSR0g4c3lDZ2E5T0p1OUJMdUovVkVIUmFNT21p?=
 =?utf-8?B?eXFBbkxRdGV3OENWZytpcG9VNWhQOHQyNFFkb01CQ0w1ejlpTEpPZFQwdDVD?=
 =?utf-8?B?Y1Q0MFdkTkpSMzRsa2duVk96ckVGejdBdWtSNlRvbWRNVEEwb2dDeStBQTRi?=
 =?utf-8?B?M3VoREgxalhTa1V5d1RVT1ZDMkIvRWdOOGhkMk5vNHlYenFtNS9Od0R3Ky9M?=
 =?utf-8?B?U2NCZ3RnUkgreTFWRGtUcjM4SENoQXBtVkovTnFyMkM2NkVPZSs4MVN5eDNv?=
 =?utf-8?B?VWI5MHdvZncwNks3RE5KSXdTSFZsME00Yk1iMXhvVWd3MVZNQVJWbmdSZEpE?=
 =?utf-8?B?WGFHeEYxWXBXRnhWTzJyc000UUExUWxwN3hCSFFYWm40M3JQTHRUM2FKWUpZ?=
 =?utf-8?Q?KrQYbaDP8IDYfXJSHxAxH4HY7?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e317fc4a-a412-4e20-dbe6-08dda8282635
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 14:07:35.2258
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tN/siWRzjlLsLBRnXSSl03S26A2vQkgYmI2Lywyw5DBhgdA6DMCQFsT9gXpSyEVT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB9498
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-3.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.49:from];
	TAGGED_RCPT(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,ffwll.ch];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 116B344147
X-Spamd-Bar: ---
Message-ID-Hash: JXCC2GFKXMSC2RAZYYJF5UJI5XPSYLSJ
X-Message-ID-Hash: JXCC2GFKXMSC2RAZYYJF5UJI5XPSYLSJ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix compare in WARN_ON_ONCE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JXCC2GFKXMSC2RAZYYJF5UJI5XPSYLSJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R2VudGxlIHBpbmcsIGNhbiBhbnlib2R5IGdpdmUgbWUgYSBxdWljayByYiBmb3IgdGhpcyB0cml2
aWFsIGZpeD8NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQpPbiA2LzUvMjUgMTA6NTMsIENocmlz
dGlhbiBLw7ZuaWcgd3JvdGU6DQo+IFNtYXRjaCBwb2ludGVkIG91dCB0aGlzIHRyaXZpYWwgdHlw
bzoNCj4gCWRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmM6MTEyMyBkbWFfYnVmX21hcF9hdHRhY2ht
ZW50KCkNCj4gCXdhcm46IHBhc3NpbmcgcG9zaXRpdmUgZXJyb3IgY29kZSAnMTYnIHRvICdFUlJf
UFRSJw0KPiANCj4gZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiAgICAgMTExMyAgICAgICAg
IGRtYV9yZXN2X2Fzc2VydF9oZWxkKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsNCj4gICAgIDExMTQN
Cj4gICAgIDExMTUgICAgICAgICBpZiAoZG1hX2J1Zl9waW5fb25fbWFwKGF0dGFjaCkpIHsNCj4g
ICAgIDExMTYgICAgICAgICAgICAgICAgIHJldCA9IGF0dGFjaC0+ZG1hYnVmLT5vcHMtPnBpbihh
dHRhY2gpOw0KPiAgICAgMTExNyAgICAgICAgICAgICAgICAgLyoNCj4gICAgIDExMTggICAgICAg
ICAgICAgICAgICAqIENhdGNoIGV4cG9ydGVycyBtYWtpbmcgYnVmZmVycyBpbmFjY2Vzc2libGUg
ZXZlbiB3aGVuDQo+ICAgICAxMTE5ICAgICAgICAgICAgICAgICAgKiBhdHRhY2htZW50cyBwcmV2
ZW50aW5nIHRoYXQgZXhpc3QuDQo+ICAgICAxMTIwICAgICAgICAgICAgICAgICAgKi8NCj4gICAg
IDExMjEgICAgICAgICAgICAgICAgIFdBUk5fT05fT05DRShyZXQgPT0gRUJVU1kpOw0KPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5eXg0KPiBUaGlzIHdh
cyBwcm9iYWJseSBpbnRlbmRlZCB0byBiZSAtRUJVU1k/DQo+IA0KPiAgICAgMTEyMiAgICAgICAg
ICAgICAgICAgaWYgKHJldCkNCj4gLS0+IDExMjMgICAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIEVSUl9QVFIocmV0KTsNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXl5eDQo+IE90aGVyd2lzZSB3ZSB3aWxsIGV2ZW50dWFsbHkgY3Jhc2guDQo+
IA0KPiAgICAgMTEyNCAgICAgICAgIH0NCj4gICAgIDExMjUNCj4gICAgIDExMjYgICAgICAgICBz
Z190YWJsZSA9IGF0dGFjaC0+ZG1hYnVmLT5vcHMtPm1hcF9kbWFfYnVmKGF0dGFjaCwgZGlyZWN0
aW9uKTsNCj4gICAgIDExMjcgICAgICAgICBpZiAoIXNnX3RhYmxlKQ0KPiAgICAgMTEyOCAgICAg
ICAgICAgICAgICAgc2dfdGFibGUgPSBFUlJfUFRSKC1FTk9NRU0pOw0KPiAgICAgMTEyOSAgICAg
ICAgIGlmIChJU19FUlIoc2dfdGFibGUpKQ0KPiAgICAgMTEzMCAgICAgICAgICAgICAgICAgZ290
byBlcnJvcl91bnBpbjsNCj4gICAgIDExMzENCj4gDQo+IFNpZ25lZC1vZmYtYnk6IENocmlzdGlh
biBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gaW5kZXggMGM0OGQ0MWRkNWViLi40
NTE3MTQwMDhlOGEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtMTA2MCw3ICsxMDYwLDcgQEAg
c3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKmF0dGFjaCwNCj4gIAkJICogQ2F0Y2ggZXhwb3J0ZXJzIG1ha2luZyBidWZmZXJz
IGluYWNjZXNzaWJsZSBldmVuIHdoZW4NCj4gIAkJICogYXR0YWNobWVudHMgcHJldmVudGluZyB0
aGF0IGV4aXN0Lg0KPiAgCQkgKi8NCj4gLQkJV0FSTl9PTl9PTkNFKHJldCA9PSBFQlVTWSk7DQo+
ICsJCVdBUk5fT05fT05DRShyZXQgPT0gLUVCVVNZKTsNCj4gIAkJaWYgKHJldCkNCj4gIAkJCXJl
dHVybiBFUlJfUFRSKHJldCk7DQo+ICAJfQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
