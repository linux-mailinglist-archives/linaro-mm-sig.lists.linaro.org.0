Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEA6C64DEE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 16:28:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4BB13F8EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 15:28:33 +0000 (UTC)
Received: from DM5PR21CU001.outbound.protection.outlook.com (mail-centralusazon11011051.outbound.protection.outlook.com [52.101.62.51])
	by lists.linaro.org (Postfix) with ESMTPS id 152923F689
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 15:28:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=XlzsVzoW;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.62.51 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E2uQY17PnqxKn2BgorbHRqXhznl99vHw+aTkjzvf8Mdw9uD/kR425xhFQSv+qrC61KG3mzjcL/aS8F0YuqfpzmVvM8yrmUGG6KyVGZeIYWImkW1H+Fn5D5qhjmZYLEE6LkMlHiIwlW0qGiSv2xlxsZKNdUtzwCCi2q33neRQ9NcWoOA7u+6ry7svm/v1+9QvqGwtgMw2XfTP06wtouPQF4gWOjAxwwfrpObBAEbJdvkU/j4RQZXBmX8qkTma8jLbci6qxh/m+aJj/4PEuvQr023bdYpLSlBOz8PKI5TChXol23batqSjHZLHa5j2Eus62BwS+ucjiedoDrCwFe+sHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nl+OWzJlf5pDhM6Tf/b4leQ/nkSLq2S30Z7FXAa2lX4=;
 b=QcOPzJszwvWpTOvf+IzW+cHste9W6TE8sGZHbOv/bqFB2zL7nz4/qMRKsMM9EKgyetp2dmny9cKtp0EDfp8iC4C78dfxtu68JSN7C3Im3TcTzcJZq1wCctcmVmdvbPknx1dVzIWpzFLvEG7xVCiuJNXybgoT8ryK56j7sGMXnFaA7UVlfZFJPWQmgubwcb19QGg6BeZWNlEVlqBe/oeFgrDOEcfzevODZJN2Un5qr8nz/Cb6Veb7GcokCeTeOPjOH7AX+0mu/kh3ER5i2MsGjt/tnJIPE1DjhYlkw6xpvBBR+aGAeYkgC5hH3qTft2wHsJjiQZZuHWpGuYMi7uPaFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Nl+OWzJlf5pDhM6Tf/b4leQ/nkSLq2S30Z7FXAa2lX4=;
 b=XlzsVzoW/tnPdsG06FS79VzwRZ/ufCvKZPbT1T0ZdVU5jZD/9D2d+WSBA0ARCcsiv/6K1Iaao4XDc554pD23/UJIkP1mCSLvuvL8NmA5gCfqmhr59kudNxsLcplckLgTJWOXgAbdrpv0+Hp/dDMBQrMlw4BOnLzq24cNmMMkkaM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6115.namprd12.prod.outlook.com (2603:10b6:208:3e9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 15:28:12 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 15:28:12 +0000
Message-ID: <2c43d30f-c8b4-4c75-8b2f-331366716552@amd.com>
Date: Mon, 17 Nov 2025 16:28:08 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <26a1379427d97e969654061224fb36d37e87af24.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <26a1379427d97e969654061224fb36d37e87af24.camel@mailbox.org>
X-ClientProxiedBy: FR4P281CA0158.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6115:EE_
X-MS-Office365-Filtering-Correlation-Id: 842bcf60-87f3-4e91-f0bc-08de25edeb92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?b2NUSnJmNEFYaFJVaEFhOGVyRWNVVmh2QWZ6NWZLNFh2VC9hK082eWhHeDNC?=
 =?utf-8?B?MzRMY3J5M3ZwcVVEV2JvSjQwUmpLQ0xDQktueGpNRWo4Sk9LNDllY2ZycVdK?=
 =?utf-8?B?ZEltYWhLVnJncm5ocEhzUC9lWEE4bkloOTdmK0RKdEUwZkR0T0hWT3JMNGlz?=
 =?utf-8?B?N1NqQXhicGgrdVVZQXRqVVozemVacVQzeFdDUDkyd3l2b25GMnhmVmxUQU1V?=
 =?utf-8?B?eTY2bFB6QkYxYmY1UXhaVTVuRnpYU0FwZXJxYXNOL0svanBNeWxkaFBkWE9m?=
 =?utf-8?B?RWlkRjN4MlhNNW56a3pKNXMyY0Y4a2NibkRQUjdLakpIcDhxRUJIN0RrbHNJ?=
 =?utf-8?B?ZmozQWR5d3g4VWIxb05tVkhHWXByQlBwenN0UklyWW9NOTkyTHN4bUdueUd5?=
 =?utf-8?B?cHRjRmw0UWMxRmxKa1MzY2h4QVpjbFdBQTJFeG1rWWhwUmd2Ry9pM29pd1V0?=
 =?utf-8?B?YmRudkI4VFpPRFQ5d1JzS0tzYlhEbDc0N2VydFVBemNJNnpxVlZ2MXQxT3gx?=
 =?utf-8?B?WmdVRlJOQzVVdzF6ZjZ5S3pqdTNvbE1NM1Q4SGlMYzFlN3hSSTJLSW1MUHRz?=
 =?utf-8?B?U1FkbXgvTjRiQ1N3S0JkSkk3aGpBWHN6ODNTbFhLaXloUWZnUHEyM3dKZnhy?=
 =?utf-8?B?eVRqRStvUXhycklpSUFRdytTNnB1cVhrQ1c1T2tuZzcyckJUcjZzbmtyRWRE?=
 =?utf-8?B?WER3VlIxOGc1S0JaTEE3SXU4eC91cCtyT0o5QkphSHUveldLb0pxamdtWEpL?=
 =?utf-8?B?S0pMaHJEYWdQTG1SOVhJWTVEVkV3d2l4NWpyYTVtM2ovVTVXK0dTTDZtaStS?=
 =?utf-8?B?dW1uQjlPbW56YWV0RlJJQWxSWG9NSXREQUtJb0h4NGdKQVVLUXNKUkxyVWlE?=
 =?utf-8?B?TkFQUWdqWXhLM0E0dlE4eFZCd0NVNVV3N1BBcEZDc3htME1DYk5tS0xLOTll?=
 =?utf-8?B?OVYvTFZyaXg3ZmRvY29tS3JVb1hHYUxYUnl5c0FpeEQzSUVabENmN01ZSkUv?=
 =?utf-8?B?U3p2MFN2bStsZUhPbUg5Yk5JYjdMd1gySkk2aHI4SGpLOEtEZXhKVmtSL09M?=
 =?utf-8?B?aFUyQUtGOVR4NkZYTnF5Wkphcno1N29JNjRWUlJmWWQzT3F1UDBLWVF6ZVhr?=
 =?utf-8?B?NVpoa2oxZWFpN0ZFWFR4ZTNhZU9BSmRDZWYvQ0NPRHhhNFcwWGhrVE1CQ0I3?=
 =?utf-8?B?V3lhMFdXTHAwNk4vaTllNkwrbTVUNm9GTTVmUkRiOGRhY1QyNDhoS1A5RnFR?=
 =?utf-8?B?dlAxOWE1MG55U0t0RFFXTW0vRjVtVkJBdU12S2pjcFFobU5QWkM3MjRtdHht?=
 =?utf-8?B?LzZnbzhLK040ZnhHQmJ6V1ExSW5ZZU03TkNoRi9SQmJKOGxtbS9mR0RDbUJj?=
 =?utf-8?B?QjQxUlZ1aUpNZS9TeUdnZWNTUlFGQkNZZEhrNk85RlRSOUxUb0wvK3gybFla?=
 =?utf-8?B?S2pGWGVUeUF3eFdQdnIzUHUwazZvM2Qxb3NEdFpVOFlWWXJyMEhGWUIyMWdk?=
 =?utf-8?B?elJXTnF4OG9WdmF0ZDhqeDlnMk80TlhqczlQR2Q0M2wvTUVpNzUvd0JmRTlC?=
 =?utf-8?B?L2RoY1JMWnlhV3dZbTJJNWRBRTBXb0Rqa3FHQ3k0azBGNlFVU1ZlcVhuZ2tL?=
 =?utf-8?B?ZWMzMnM2bXV5b3FkUDlUd2JYU3BTRDJjT1pWM0V0NHVKV0RlVmo3NzhWeElT?=
 =?utf-8?B?L0hhTldmYVJzZE1xQlZ6byt4YS9OSWhoWWw3UlBVS2pSbmVmeDVEMmJWL0pN?=
 =?utf-8?B?dDN0NldhT0ZacjMxRXdWR085dFJSeXh1VUE2Q2VoYWZ5VkVEdHVMZExWN1dy?=
 =?utf-8?B?UmYxNG9ORUloejYyc3NuOEJ3TDkwNDVCK2ZXY2tQNjlWcVBjYnpIdTgwZCtn?=
 =?utf-8?B?dWNXTi9KanY2cy92T1hNUmJVWFdRbkovTXVBTjdhYUJRbDUxd28xTHNsNFdz?=
 =?utf-8?Q?oFUEF8i+XeXsBxf5HJBWg+Nfp876aP1v?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cFJ1L1N2am53enQzWFVSaTFMdy90Qk9pZ2hJTVZMTE1VVktLM0lPT2NRNkhV?=
 =?utf-8?B?WDQyRmp0M2QxZ2JYMEtGRkt1WVYvRVJKUjlyQVUxcGJEa3BzbUIzNzdlY2RF?=
 =?utf-8?B?R0ptTnEybjJOTEZQbHczamE0VjZYWXpEWkRGajE5VFVkNXpkK1dGT2V5aWQy?=
 =?utf-8?B?bFQ2OTRLNnZQWENSWlYzVm5xblRlaTAzM1VxM1B0dHhZVVFtTDRIN1pzUzhU?=
 =?utf-8?B?ZFNOemR5Mzc4MlV6THA4UEhpWkt2aVllQWVXbjROV0hhOTBZTi9yMlAzeEsr?=
 =?utf-8?B?UnJoZ0Z2RzlIVWFvaHFLUURFa2ZyWmZPYk9yTWNDTGtic2UyalkyREEyN2tp?=
 =?utf-8?B?TEJzVTdyempNN2k4WkZwdFpMWEM5bjliMXFYU3JFV002cExhTW9HOEdNUGRk?=
 =?utf-8?B?NHRpbHpWMGJhUmQ5SVA0OEd6QzRtS2FuRHR5aUJYZkxMeWNReTcySzcyUGRK?=
 =?utf-8?B?a1UxQURyWFhLUHV0VG5Id0RmdUZYWVFTZzd6MkxrZlJpWUo4S3pmT1lQdENC?=
 =?utf-8?B?NEgrWGlLOHphUjZXaTVXV1lCRmNRMHFwdE1YcXVucWRmNEg0ZlpTTStoR1VP?=
 =?utf-8?B?cEhoUmljakhvc3lCczNYb2EwTkNKdk5WQ3dESk5vZVVwcWhvUDNHUEh6eGly?=
 =?utf-8?B?YVd0MUtwc2xtTTdLOSt0czVjeFloT3I3aFpUYXhZZVNhWmQyOXh1RlE5dkxQ?=
 =?utf-8?B?NURaTGlSQ3RiKy9wN2pMWG9uZEU2ekFHU0dwUis4RUYrRUNKM2VpdGluSFBQ?=
 =?utf-8?B?UXJ3dXNVQzRtNTVGMWtmdlhPa25OTGJhdzRKc1kzaTNURE1mUlVJVk8xdGQx?=
 =?utf-8?B?emNxZWM1MXg1U3JPbFlYNjJVdWlhRU9kOTh0MEJmTHEweWtNcXVwSlFsRjhS?=
 =?utf-8?B?NVJ6NTVxRVh2L2VYVFpWcnJCWTRFM3pWK0JNZUo4cTlXN0o1R25HMGdPZDhP?=
 =?utf-8?B?TDlYVU1iMDVlellZUFVBVzBxLzRyckpFMm5KcGRoa2MrdzRPeVIxdy9xL2xZ?=
 =?utf-8?B?cFJGOU5KU3kzTXdHNDVQMnN6MmxjZURIdUxhU1NGM3RyNGp3NzZtRWZwTzVJ?=
 =?utf-8?B?QXpkSmpjZ3gvcUx5Zm1EQUlJL1BEWS9rSE1IdUVLVnB1Yk93QTQydXUwTFU0?=
 =?utf-8?B?MWQ1V21EWXJ1dStKR2JKT2dyMG5LTTkycG1jRDh1L2RSUkFXeWs5QkZ3WGxt?=
 =?utf-8?B?RC9BZXBEdE8vUlVROE1aM1J3MlhZZHo3RXVnL2t2cnUzVVBsd2hwWUdPaVRZ?=
 =?utf-8?B?b0cvT3FaVHp0NHN3S05OajN0eEl4YUNEcjNnVE9scEE1TW85ekhhejFXRVhK?=
 =?utf-8?B?Y0hTbUh6ajJZRWNRN2NhVXo3VG9ObnMxaXNnNEgvU3NvdmRBSXAxNXFtaHhz?=
 =?utf-8?B?bVdjK2dpLzZJWVBtQmU3Um44VmlLTDlIaE5DNzZlR3R1dHlYWWhSQ1FyY1VH?=
 =?utf-8?B?Q25wLzdpaXVFcnhwczA5NnpCU2duVHg2KzNSSmtBczRoSnhrTXJ0TVJEMTNq?=
 =?utf-8?B?R2tpL1Nqc3hvcS9HbjhHcnk5R1BnOWFqUjA1ck9BUVBhd0U5dFZMTXc3dlMy?=
 =?utf-8?B?ckMwT2U3VHFETWJLUzNRNnZqU0ZZM2VON1JSZTZKUGp1MTJtUUwwREYxTVAy?=
 =?utf-8?B?cHRHR2IwREpPSjhCL1FuRW9nODY2RGRuc0hvRFdFVSt3eDlPWkJsT3N2b0hX?=
 =?utf-8?B?ZnY4VHFicjBURmNpTnh3b3padWVHMHcrUDh6WE0rdDkrWDR3VDdzWG81Y2JU?=
 =?utf-8?B?ZFRqTWFrQnAyY0ZDNXkvK3RiNmxva3hQb1Q0SmJQRUFIeWZrN3BsRXR0ZDZS?=
 =?utf-8?B?azZ2SUNnVE9DQjIvVUJhblRoYm03ZTZIbXdFQXdBQkRXTGdBN09YN3h0YXVF?=
 =?utf-8?B?amVZMm9MOVp3cWVOaVpyMDhDaFFjTkFQWk1NMENILzZZUk5RWHlNRzhuNFJv?=
 =?utf-8?B?b05vREpkRytjV3hyNzFGaGt6VEtXN1B3VnpVcnFpa1NGUlFZVy9sSm5BNUtF?=
 =?utf-8?B?VkMvSzIyMGRCaHFzRUt2N00zT0g1Qlpjb0RTbGYxMHNBZkR2N0ViNVZWdTJG?=
 =?utf-8?B?MzNLWXhYNWVla3laUWJtN1Y4aUZQWXgrZi9MbmhOdGVpbjg2WitLSGdFaGYv?=
 =?utf-8?Q?i48BQgPWxE21ESOo+J/AZ7LZB?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 842bcf60-87f3-4e91-f0bc-08de25edeb92
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 15:28:12.6014
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 56gfVXAQwC5ei7e1Kvyp3/E27j2UtqT94ciVrr8aVbWpNanR3o/UZscqkggY/i22
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6115
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.36 / 15.00];
	BAYES_HAM(-2.98)[99.92%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[9];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.62.51:from];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 152923F689
X-Spamd-Bar: ----
Message-ID-Hash: J7SVMV3V4GYMJH6JLMAKM4AORX2VQI7H
X-Message-ID-Hash: J7SVMV3V4GYMJH6JLMAKM4AORX2VQI7H
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Independence for dma_fences! v3
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J7SVMV3V4GYMJH6JLMAKM4AORX2VQI7H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTMvMjUgMTc6MjAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gSGkgZXZl
cnlvbmUsDQo+Pg0KPj4gZG1hX2ZlbmNlcyBoYXZlIGV2ZXIgbGl2ZWQgdW5kZXIgdGhlIHR5cmFu
bnkgZGljdGF0ZWQgYnkgdGhlIG1vZHVsZQ0KPj4gbGlmZXRpbWUgb2YgdGhlaXIgaXNzdWVyLCBs
ZWFkaW5nIHRvIGNyYXNoZXMgc2hvdWxkIGFueWJvZHkgc3RpbGwgaG9sZGluZw0KPj4gYSByZWZl
cmVuY2UgdG8gYSBkbWFfZmVuY2Ugd2hlbiB0aGUgbW9kdWxlIG9mIHRoZSBpc3N1ZXIgd2FzIHVu
bG9hZGVkLg0KPj4NCj4+IFRoZSBiYXNpYyBwcm9ibGVtIGlzIHRoYXQgd2hlbiBidWZmZXIgYXJl
IHNoYXJlZCBiZXR3ZWVuIGRyaXZlcnMNCj4+IGRtYV9mZW5jZSBvYmplY3RzIGNhbiBsZWFrIGlu
dG8gZXh0ZXJuYWwgZHJpdmVycyBhbmQgc3RheSB0aGVyZSBldmVuDQo+PiBhZnRlciB0aGV5IGFy
ZSBzaWduYWxlZC4gVGhlIGRtYV9yZXN2IG9iamVjdCBmb3IgZXhhbXBsZSBvbmx5IGxhenkgcmVs
ZWFzZXMNCj4+IGRtYV9mZW5jZXMuDQo+Pg0KPj4gU28gd2hhdCBoYXBwZW5zIGlzIHRoYXQgd2hl
biB0aGUgbW9kdWxlIHdobyBvcmlnaW5hbGx5IGNyZWF0ZWQgdGhlIGRtYV9mZW5jZQ0KPj4gdW5s
b2FkcyB0aGUgZG1hX2ZlbmNlX29wcyBmdW5jdGlvbiB0YWJsZSBiZWNvbWVzIHVuYXZhaWxhYmxl
IGFzIHdlbGwgYW5kIHNvDQo+PiBhbnkgYXR0ZW1wdCB0byByZWxlYXNlIHRoZSBmZW5jZSBjcmFz
aGVzIHRoZSBzeXN0ZW0uDQo+Pg0KPj4gUHJldmlvdXNseSB2YXJpb3VzIGFwcHJvYWNoZXMgaGF2
ZSBiZWVuIGRpc2N1c3NlZCwgaW5jbHVkaW5nIGNoYW5naW5nIHRoZQ0KPj4gbG9ja2luZyBzZW1h
bnRpY3Mgb2YgdGhlIGRtYV9mZW5jZSBjYWxsYmFja3MgKGJ5IG1lKSBhcyB3ZWxsIGFzIHVzaW5n
IHRoZQ0KPj4gZHJtIHNjaGVkdWxlciBhcyBpbnRlcm1lZGlhdGUgbGF5ZXIgKGJ5IFNpbWEpIHRv
IGRpc2Nvbm5lY3QgZG1hX2ZlbmNlcw0KPj4gZnJvbSB0aGVpciBhY3R1YWwgdXNlcnMsIGJ1dCBu
b25lIG9mIHRoZW0gYXJlIGFjdHVhbGx5IHNvbHZpbmcgYWxsIHByb2JsZW1zLg0KPj4NCj4+IFR2
cnRrbyBkaWQgc29tZSByZWFsbHkgbmljZSBwcmVyZXF1aXNpdGUgd29yayBieSBwcm90ZWN0aW5n
IHRoZSByZXR1cm5lZA0KPj4gc3RyaW5ncyBvZiB0aGUgZG1hX2ZlbmNlX29wcyBieSBSQ1UuIFRo
aXMgd2F5IGRtYV9mZW5jZSBjcmVhdG9ycyB3aGVyZQ0KPj4gYWJsZSB0byBqdXN0IHdhaXQgZm9y
IGFuIFJDVSBncmFjZSBwZXJpb2QgYWZ0ZXIgZmVuY2Ugc2lnbmFsaW5nIGJlZm9yZQ0KPj4gdGhl
eSBjb3VsZCBiZSBzYXZlIHRvIGZyZWUgdGhvc2UgZGF0YSBzdHJ1Y3R1cmVzLg0KPj4NCj4+IE5v
dyB0aGlzIHBhdGNoIHNldCBoZXJlIGdvZXMgYSBzdGVwIGZ1cnRoZXIgYW5kIHByb3RlY3RzIHRo
ZSB3aG9sZQ0KPj4gZG1hX2ZlbmNlX29wcyBzdHJ1Y3R1cmUgYnkgUkNVLCBzbyB0aGF0IGFmdGVy
IHRoZSBmZW5jZSBzaWduYWxzIHRoZQ0KPj4gcG9pbnRlciB0byB0aGUgZG1hX2ZlbmNlX29wcyBp
cyBzZXQgdG8gTlVMTCB3aGVuIHRoZXJlIGlzIG5vIHdhaXQgbm9yDQo+PiByZWxlYXNlIGNhbGxi
YWNrIGdpdmVuLiBBbGwgZnVuY3Rpb25hbGl0eSB3aGljaCB1c2UgdGhlIGRtYV9mZW5jZV9vcHMN
Cj4+IHJlZmVyZW5jZSBhcmUgcHV0IGluc2lkZSBhbiBSQ1UgY3JpdGljYWwgc2VjdGlvbiwgZXhj
ZXB0IGZvciB0aGUNCj4+IGRlcHJlY2F0ZWQgaXNzdWVyIHNwZWNpZmljIHdhaXQgYW5kIG9mIGNv
dXJzZSB0aGUgb3B0aW9uYWwgcmVsZWFzZQ0KPj4gY2FsbGJhY2suDQo+Pg0KPj4gQWRkaXRpb25h
bCB0byB0aGUgUkNVIGNoYW5nZXMgdGhlIGxvY2sgcHJvdGVjdGluZyB0aGUgZG1hX2ZlbmNlIHN0
YXRlDQo+PiBwcmV2aW91c2x5IGhhZCB0byBiZSBhbGxvY2F0ZWQgZXh0ZXJuYWwuIFRoaXMgc2V0
IGhlcmUgbm93IGNoYW5nZXMgdGhlDQo+PiBmdW5jdGlvbmFsaXR5IHRvIG1ha2UgdGhhdCBleHRl
cm5hbCBsb2NrIG9wdGlvbmFsIGFuZCBhbGxvd3MgZG1hX2ZlbmNlcw0KPj4gdG8gdXNlIGFuIGlu
bGluZSBsb2NrIGFuZCBiZSBzZWxmIGNvbnRhaW5lZC4NCj4+DQo+PiBUaGlzIHBhdGNoIHNldCBh
ZGRyZXNzZWQgYWxsIHByZXZpb3VzIGNvZGUgcmV2aWV3IGNvbW1lbnRzIGFuZCBpcyBiYXNlZA0K
Pj4gb24gZHJtLXRpcCwgaW5jbHVkZXMgbXkgY2hhbmdlcyBmb3IgYW1kZ3B1IGFzIHdlbGwgYXMg
TWF0aGV3J3MgcGF0Y2hlcyBmb3IgWEUuDQo+Pg0KPj4gR29pbmcgdG8gcHVzaCB0aGUgY29yZSBE
TUEtYnVmIGNoYW5nZXMgdG8gZHJtLW1pc2MtbmV4dCBhcyBzb29uIGFzIEkgZ2V0DQo+PiB0aGUg
YXBwcm9wcmlhdGUgcmIuIFRoZSBkcml2ZXIgc3BlY2lmaWMgY2hhbmdlcyBjYW4gZ28gdXBzdHJl
YW0gdGhyb3VnaA0KPj4gdGhlIGRyaXZlciBjaGFubmVscyBhcyBuZWNlc3NhcnkuDQo+IA0KPiBO
byBjaGFuZ2Vsb2c/IDooDQoNCk9uIHRoZSBjb3ZlciBsZXR0ZXI/IEZvciBkbWEtYnVmIHBhdGNo
ZXMgd2UgdXN1YWxseSBkbyB0aGF0IG9uIHRoZSBpbmRpdmlkdWFsIHBhdGNoZXMuDQoNCkNocmlz
dGlhbi4NCg0KPiANCj4gUC4NCj4gDQo+Pg0KPj4gUGxlYXNlIHJldmlldyBhbmQgY29tbWVudCwN
Cj4+IENocmlzdGlhbi4NCj4+DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
