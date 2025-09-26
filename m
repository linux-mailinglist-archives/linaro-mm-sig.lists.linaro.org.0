Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 99800BA44AD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 16:51:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7C4FD45D8E
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 26 Sep 2025 14:51:41 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011040.outbound.protection.outlook.com [40.93.194.40])
	by lists.linaro.org (Postfix) with ESMTPS id ADC1A3F729
	for <linaro-mm-sig@lists.linaro.org>; Fri, 26 Sep 2025 14:51:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=btnJ4iMu;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.40 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TmzC2FrmSDjnezgAtkzLwHRFrrUrHHWpRcnxu5Wrukrva5elzUuOjOjZ3h4+Miuiczx0DY5pA407nq6wuGCKwDyDAEPXfb7WcfSF9m9upVJ/0t8yDHxpR36povpp+C17cparAN5UL/kHy91GubeN18aJQhMsZZWwZjpHIbzrpP7XdoZPCDGRS11lNQs+hDUWlsYIR97K9/h0dTAKpEBdJ8AB0gfQNNvs8WQOV6sdy65vtVpxfXAprVcfGvXMpIi59/MZKKQJERFFhIcM482pCEdh3bI6Bht86Du0PGwM3/mlzAUyWlJoC/hWGIFpRv2mdUMAXRV2L4G7BcEq+M/+yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NTgfWCvJ5eulNcLgHjwfQ72QSBCUWrukbFzDw57vVhY=;
 b=wZ9H9IuiNqRc6KMx101f+ucP3JMfo1rOmkhM5dK5DA88Bh02AOS/zsRF+RPgvMpQGrcMA1vM/asn8PKJK/yDcfTs+fjUXMiImcBgHY5vrqHfs7ZDTkmku5AqyuAN8DwZRZV69m+g8qWAC7jSD67eugVcNcSAC59W5/J0Y2tip0j2493I6VcmuEO0c6Fthg/D0T7i2Iegbl0f16mjUPLeWgutOjb01m15jDHTPWGVimEfEbNZ5q1LoZfB56t4eZ9JHfPiylhjS+UfBQXAjj9XaCdpTI/Uom4LT2N5DjzqxHEphcUoHmGwq5Z0k0LYlVOdsgQ4VzKbZjHZLcw87v1ISA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NTgfWCvJ5eulNcLgHjwfQ72QSBCUWrukbFzDw57vVhY=;
 b=btnJ4iMudP7K7LubxkV193H6c0axa8FeSeRMDiuoqkqjtYGzNilJVVlJ0v+wdhpEZXWgfrucKJDp/DDet+GU5UNfuev0dWQRfDwYrlZruajFBWrZAo53ZyaoPB6RhzEAU+96vOROcwE0z7FIk0XTVqxpRpO1BpABTkr5ZMfw7Ak=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW6PR12MB8897.namprd12.prod.outlook.com (2603:10b6:303:24a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Fri, 26 Sep
 2025 14:51:35 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9160.010; Fri, 26 Sep 2025
 14:51:35 +0000
Message-ID: <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
Date: Fri, 26 Sep 2025 16:51:29 +0200
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250926144128.GD2617119@nvidia.com>
X-ClientProxiedBy: FR4P281CA0175.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b7::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW6PR12MB8897:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dc0008f-f226-4f45-8eda-08ddfd0c303c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RUlET2RuWk0way9NcmxIQjVSYUM0R2RYSmMyVlFPc3RRYVgwZ0k1dDBaV1lF?=
 =?utf-8?B?YlExUFgwU2h4RUd1K24xcUFTaDBaUUdOUkFzUStxZThWTGw4TVYxaElCSDJN?=
 =?utf-8?B?bG9mY0FRZ0Y3NHBMZCtEbEhZNmlHM0ZRR1VhZnk3UGFqeDRUNHJub2VBL1JW?=
 =?utf-8?B?L3c1YkJaaFJPNXVQa0dNa0lGMGZaYkJiMjhGTERDeGg3K013djhuZ3JLR2FW?=
 =?utf-8?B?eE90THlsa2hwaTdJdmlvSjQ2Q2NUUnk1NDVjTHhRNGpUNDlxT1BnQ2huTk1C?=
 =?utf-8?B?RWFreGlwTmJpUlRRZk0wTGJCMDFaRDhQWUE1WTZqQkhmbGRXenJwT3IySjB6?=
 =?utf-8?B?SzZwekRXa3Fpd041aEV2ZjBiRXptRjRrZmFTWGovN2lYdjQzbjRkMXloaC9q?=
 =?utf-8?B?SXZybk9XV2pHeHpoS2J6djdCaGNuTXpMUGJpNFhqM3Rwd0t0VUxOSjB4MldB?=
 =?utf-8?B?aU9rSitZSk9RdnpWQ2dUQnBBODQyYXhVZGpWSUFpblo0M0FQaEZ0Nk5kSjB1?=
 =?utf-8?B?RVd2RDBuQU9xY2RMWGk1eEROL3FSNDBrOVM0Z0NmVnRKTHdqVVd3K3VoTnMr?=
 =?utf-8?B?Q09WMmRmQkREWjh0MFpVQU9lcjBRN3FWWGdEM3JGR0hvOTBWcnRWeXgwMUxn?=
 =?utf-8?B?cERhcWtrOHVJOFhzekh2VTFCa2JEaGdKVmJscjgvK0JuTzFPSGgxSktGMVRP?=
 =?utf-8?B?dkl3c1JBa1crbEtMVzRXdXRnR09obE5wRm12cXZYaTFPMFNFTVVnYkFiRWJh?=
 =?utf-8?B?QVZjbnpqSkNiNWtrTkY0NXYrTFZUWUZ5VzhreDRwUytQSVdqMkg3VXNmOUhr?=
 =?utf-8?B?K1VETENIV1Z1SlNPM1h4b0tWdjNXaHFlcCt2UEpHR3RCcS9jWWhkSWt6Vzlh?=
 =?utf-8?B?QWZUYzN4ekhRTkphZ2txMm55ZVJEMTJxTkltSkdpRUs1bXgvK3cremNyQ2l4?=
 =?utf-8?B?VUVTU1U4Y3hqaExJbUZULzBwdHpWcnF5TmNJY3NzOVhJUElpSXRlTXR0aTFK?=
 =?utf-8?B?WWJTREtPakZlWkwwVWxJeWg4QW9HNC9IL1JJamRHZ0NmOXUzZWtHUjlBQ3Jq?=
 =?utf-8?B?UHVqdEFzYlJpb0gyZExMeFZ0aE9XMzhnNU5BVUgwL1VFcE00TGVkZzlwQXlZ?=
 =?utf-8?B?aG9nSzh4allUUzhFN2V4bHVTYmN1eTVJQjROYVhWR1E1bnl3L25aQUg1Y1NM?=
 =?utf-8?B?clp5c0lTeXIvTEh3QVNSN2RCc1RxeXdYbEdRbzRZY3krb1VCd2pWcVlHWEZH?=
 =?utf-8?B?cHBMZFlsaTBNT1I2RWdTWnBRZFV2YW1XWExWRm0ybUpabjFpbmlsVkwxak9B?=
 =?utf-8?B?bFhJRU5HWmxDNVcrTEsySENneThiZ05xVE5wd3hNRXRHT2NxWE13eW1hc0xU?=
 =?utf-8?B?U0hYODcwdkprdUdObm82LytLNDdtUElkUFFwa09iTEJGQ21pYWNGeTVWKzhz?=
 =?utf-8?B?U3hvRUloWGxhbnM5OXhHK0p4UGZPaEJrWDMwNFNXVTJJVUF5WkZSSk9CYktx?=
 =?utf-8?B?NFVrSkFIVmZGNjRHWVJDcmcxci8zNVpjR3M4RTJJSnJmWjgrcCthTGw2QlE0?=
 =?utf-8?B?RENocE5xWjNZWVIybGdTajJQQ0xZaTZXZnE3Nm5kZXJSR2hJMHBFa1VkRG1w?=
 =?utf-8?B?cWtyS0N2RXNUZzNrUFg1U0g0cm03TU1sT0l1UTV1MnF4bmEwMDhUdUV2OEFC?=
 =?utf-8?B?dWpObjRGVnd4aUkzNUpoaEpCWUdJdzZBZThTWTQ4dCtlVXdxZjM2QW9Dakp4?=
 =?utf-8?B?VWpNL3pLenJIVysveFNkdzhmOXo4VExWeHZoVmM4c25KRFJwMmNXaGVxejdZ?=
 =?utf-8?B?cUxQUHN3V0FuM2xsdjNINks5cjNUUDRNY3hzc0ZPYkRjcHVFV1FOeDlDZ2M0?=
 =?utf-8?B?ZHl0QjV6MWlvR1R1WGJtTTJBMFFVOGlaV0NhNzltMjlhbVpwcFE3NTBFQzNt?=
 =?utf-8?Q?OnAdF865Y0bxhBUDVH6KrrcwYaIvTVc9?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QlI3MFVlOFUyZERyR3QzdFVNeDhLYVR4V2FlQWE3ZWttZ2ZzRU9SZGFhNWdv?=
 =?utf-8?B?clE3dTRqVWNxbkhUcmxIZWdDTTl4Z29kVkNXT2tEOEJmM20wd1hnQ1pqQm0r?=
 =?utf-8?B?ZTgvdjdEQzBXSUhBaUNmb1AwbHVrci91TmlZZHU2YUhpT2h4aEcwSkJFV1oz?=
 =?utf-8?B?bmlkQ0h2cC91T3hYWGprKzVkdngzQ0pGYkYyd29NcTRocmFwdG96VkhiZldZ?=
 =?utf-8?B?cmc3Y2t3UVRKaUk2a3hPNU9YUUJrUkliM1NSWHp1MUt3bjd4ZVorWjUxSlNV?=
 =?utf-8?B?VERMVi9sQ0pDWDFmTTIzOHFUQ0hkcXdQOThkWk1EQjlscEhOZTk4ZXRuRWNx?=
 =?utf-8?B?L0FUNnFqQ1prSUpjWDJoWSttNzZoNVBWSFN3NkxFQWliQ3NGcTJ1SmpNU3Rs?=
 =?utf-8?B?RnY2RThLM0tGVk9NMWZHUHQyRWhWSzBncENlOGREcnhkeWxvblZGbnZZUWFI?=
 =?utf-8?B?ckNFcng0NnZWL3ZXTVhnNjVmSitpU3IrNWU4bGpHSER1QURLUkxtZE1rcHZN?=
 =?utf-8?B?ZnNZSnhFQmljQTE0VVNhOWxqN3dPa1ZHcWU3YUVWUS9UdG12Yk5ldnVaajJ3?=
 =?utf-8?B?bnBQdk9aMjVhZU9zLzk2dWxzZ0pBRGNFd1FNR1BNcWI3QmVYQVhiMmdiUS9X?=
 =?utf-8?B?dC9ZS2hvbjh6UVhLVjZmSTJESjM3TklRZ3p2dW0yVGM4cjc3UHNnR1IvMFlx?=
 =?utf-8?B?Q3ZKKy9zUDcwa3dUbjZ5RnBuQ3ZzSlhoQ2FKRmhqVmJJRGoxRldSYmlsQjBk?=
 =?utf-8?B?MU5mTEQ2ajlKaHNVZllEUUt1WUZDblZHWGlqTXZzdHdDUXpheFVzK0tBbDB2?=
 =?utf-8?B?dDNLSG5mbUIzQk5taHIyKy9mdkhlWEhVYThkNUNGS1VPZWtJc096UU9va1BH?=
 =?utf-8?B?MjVaMEtsbW8vWDFrbUlMaWFNdVZjb1Y1bWJNZENVbmNOM0dtRHFCZnV3Vkxs?=
 =?utf-8?B?NkNDME05dG04MU94S0RZVjFoYUl3cUQwZGoyc1hnaW5LdG5RcWNiZHJLZ0t0?=
 =?utf-8?B?MzFTV200T2hjdDB6U1c2ZE15eEo3b3RUTHh3U2xpYVc2V0ZNTmFnRG1HK1FJ?=
 =?utf-8?B?dkZ4aEMvUTRjTHVDclRHSk43cmJSSHF1cHZIS3JlWW5TcjV6dWZ4OEMwNVlM?=
 =?utf-8?B?L09kZ1FBN2lQcnYzd2RUVTBTUVNySGYrcEdyekM2WVA0c2N1d0R4Wkl5MmY2?=
 =?utf-8?B?aXBaSGFKaEtjQlBBVFg2VlhTSTRyVVNYMjdSdGlxL0tEWXkwdWxVUENXMENQ?=
 =?utf-8?B?OEdnMytQbmx0YUpETnR4YnB4akYyRGU4ODVHMCtaUVFQOVZMMGl3b2xyamJl?=
 =?utf-8?B?RHZ1ZEJlZEFKeWxPa3N1dnhJNTR6MHlUUlo3bFo3eFZ3cEYrRDc4V2ZmR3lF?=
 =?utf-8?B?SXR3TzJOcDJRWmdDdnM3ek1zalRpK3dycW9XSmprc1dud2YxNG9FRnIrdjFl?=
 =?utf-8?B?U1N5bW9zMXgrWXR3RXRKUFNNY2xsTDAvenBlaXFnb216aW9qc25QTVRXZnJK?=
 =?utf-8?B?bGN3UGRlc1BSNkV3VTgvUXp0RzljN3IxS3NYSG5VZCtRemg2RzdsNUUxR3VL?=
 =?utf-8?B?eXNMZXlYc1o0bXEzeDFaenhiMk5HOXQrRldFSGdocHhVVDR1bnlHVG9SeHlS?=
 =?utf-8?B?cThHSWxCTnA3MzlVSDNmdXFSS1VCTWJNVzhuTlFMQmFjcVlZSUMwSHJacnN2?=
 =?utf-8?B?Z2NoRDlvNytVWGZXRysvKytoZUdnZk9Mc3pDUUVaV3UwTE5FN2xXeWUxcHB5?=
 =?utf-8?B?WVBpSnMrMGFtelBTZlhZa3NoRy9hdHNCSGVMd252a2FmTUtZZVRXQW9HbEw0?=
 =?utf-8?B?a1VGeUJBRytxOFYvckExQXQxZ28wSDlkZVIrdUxMd0t6SjRYMUJoaVJOaHZ2?=
 =?utf-8?B?Vmg0N0R3VjRHMncweHFMdjh3K3RQMmNheG02YmxQR1Z1eURaY2hWRHoyRmVj?=
 =?utf-8?B?V0FFOEl6Z09hWThTcjJuMWVkTUFWYWZVdlJCVHI1SmhyNDA5dThoQVVuZVRs?=
 =?utf-8?B?Nkc5SGU4clJRWnM1N3JsdWdpOFF5TE5ZcTdPc3RCTzlmclJwRjVNdUM0bmNQ?=
 =?utf-8?B?U3IzbmVXQm85OEdHcnVicUtSaHNES2wzL0N3UjUzNTZncmRONlY2K2h2dHRC?=
 =?utf-8?Q?ciak=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dc0008f-f226-4f45-8eda-08ddfd0c303c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 14:51:35.0044
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oBkM96PN6TgM8GcxcTWw7BycAczxiA5OeG/oQCBWMBw2rss/nbsb48q2fYHRgohl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR12MB8897
X-Rspamd-Queue-Id: ADC1A3F729
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.40:from];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DQ4EI5BCITRQL7LOSW2242YCC4ZKDPOU
X-Message-ID-Hash: DQ4EI5BCITRQL7LOSW2242YCC4ZKDPOU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DQ4EI5BCITRQL7LOSW2242YCC4ZKDPOU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjYuMDkuMjUgMTY6NDEsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4gT24gRnJpLCBTZXAg
MjYsIDIwMjUgYXQgMDM6NTE6MjFQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6DQo+
IA0KPj4gV2VsbCBib3RoIGV4cG9ydGVyIGFuZCBleHBvcnRlciBoYXMgc3BlY2lmaWMgaW5mb3Jt
YXRpb24gV1JUIHRoaXMuIFRoZQ0KPj4gdWx0aW1hdGUgZGVjaXNpb24gaXMgZG9uZSBpbiB0aGUg
ZXhwb3J0ZXIgYXR0YWNoKCkgY2FsbGJhY2ssIGp1c3QgbGlrZQ0KPj4gcGNpZV9wMnAuIEFuZCB0
aGUgZXhwb3J0ZXIgYWNrbm93bGVkZ2VzIHRoYXQgYnkgc2V0dGluZyB0aGUNCj4+IGRtYV9idWZf
YXR0YWNobWVudDo6aW50ZXJjb25uZWN0X2F0dGFjaCBmaWVsZC4gSW4gYW5hbG9neSB3aXRoIHRo
ZQ0KPj4gZG1hX2J1Zl9hdHRhY2htZW50OjpwZWVyMnBlZXIgbWVtYmVyLg0KPiANCj4gSGF2aW5n
IGEgc2luZ2xlIG9wdGlvbiBzZWVtcyB0b28gbGltaXRlZCB0byBtZS4uDQoNClllYWgsIGFncmVl
Lg0KDQo+IEkgdGhpbmsgaXQgd291bGQgYmUgbmljZSBpZiB0aGUgaW1wb3J0ZXIgY291bGQgc3Vw
cGx5IGEgbGlzdCBvZg0KPiAnaW50ZXJjb25uZWN0cycgaXQgY2FuIGFjY2VwdCwgZWc6DQo+IA0K
PiAgLSBWUkFNIG9mZnNldCB3aXRoaW4gdGhpcyBzcGVjaWZpYyBWUkFNIG1lbW9yeQ0KPiAgLSBk
bWFfYWRkcl90IGZvciB0aGlzIHN0cnVjdCBkZXZpY2UNCj4gIC0gIklPVkEiIGZvciB0aGlzIGlu
aXRpYXRvciBvbiBhIHByaXZhdGUgaW50ZXJjb25uZWN0DQo+ICAtIFBDSSBiYXIgc2xpY2UNCj4g
IC0gcGh5c19hZGRyX3QgKHVzZWQgYmV0d2VlbiB2ZmlvLCBrdm0sIGlvbW11ZmQpDQoNCkkgd291
bGQgcmF0aGVyIHNheSB0aGF0IHRoZSBleHBvcnRlciBzaG91bGQgcHJvdmlkZSB0aGUgbGlzdCBv
ZiB3aGF0IGludGVyY29ubmVjdHMgdGhlIGJ1ZmZlciBtaWdodCBiZSBhY2Nlc3NpYmxlIHRocm91
Z2guDQoNCkhhdmluZyB0aGUgcDJwIGZsYWcgc2V0IGJ5IHRoZSBpbXBvcnRlciB3YXMgYmFzaWNh
bGx5IGp1c3QgdGhlIGVhc2llc3QgYXBwcm9hY2ggdG8gaW1wbGVtZW50IHRoZSBmbG93LCB0aGF0
IGlzIG5vdCBuZWNlc3NhcmlseSBhIGRlc2lnbiBwYXR0ZXJuIGhvdyB0byBhcHByb2FjaCBhIGdl
bmVyYWwgc29sdXRpb24uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IFRoZSBleHBv
cnRlciBoYXMgYSBmdW5jdGlvbiB0byBydW4gZG93biB0aGUgbGlzdCBhbmQgcmV0dXJuIHRoZSBm
aXJzdA0KPiBjb21wYXRpYmxlLiBNYXliZSBzb21ldGhpbmcgbGlrZQ0KPiANCj4gICAgIHN0cnVj
dCBkbWFfYnVmX2ludGVyY29ubmVjdF9uZWdvdGlhdGlvbiB7DQo+ICAgICAJICAgc3RydWN0IGRt
YV9idWZfaW50ZXJjb25uZWN0ICppbnRlcmNvbm5lY3QsDQo+IAkgICB2b2lkICppbnRlcmNvbm5l
Y3RfYXJncywNCj4gICAgIH07DQo+IA0KPiAgICAgc3RydWN0IGRtYV9idWZfaW50ZXJjb25uZWN0
X25lZ290aWF0aW9uIGltcG9ydGVyX29mZmVyWzJdID0geyAvLyBPbiBzdGFjaw0KPiAgICAgICAg
IFswXSA9IHsuaW50ZXJjb25uZWN0ID0gbXlzZWxmLT54ZV92cmFtfSwNCj4gICAgICAgICBbMV0g
PSB7LmludGVyY29ubmVjdCA9ICZkbWFidWZfZ2VuZXJpY19kbWFfYWRkcl90LCAuaW50ZXJjb25u
ZWN0c19hcmdzID0gZGV2fSwNCj4gICAgIH07DQo+ICAgICBpZHggPSBkbWFfYnVmX25lZ290aWF0
ZShkbWFidWYsIGltcG9ydGVyX29mZmVyLCBBUlJBWV9TSVpFKGltcG9ydGVyX29mZmVyKSk7DQo+
ICAgICBpZiAoaWR4IDwgMCkNCj4gICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7DQo+IA0KPiBU
aGVuIHlvdSdkICdpbnRlcmNvbm5lY3QgYXR0YWNoJyB3aXRoIHRoYXQgY29tcGF0aWJsZSBpdGVt
IGFuZCBnZXQNCj4gYmFjayBhbiBhdHRhY2guIFVzaW5nIGNvbnRhaW5lcl9vZiB0byBnZXQgdGhl
IHNwZWNpZmljIG9wcyB3aGljaCB0aGVuDQo+IGhhcyBhIGZ1bmN0aW9uIHRvIGdldCB0aGUgYWRk
cmVzcyBsaXN0Lg0KPiANCj4gICAgYXR0YWNoID0gZG1hX2J1Zl9hdHRhY2hfaW50ZXJjb25uZWN0
KGRtYWJ1ZiwgaW1wb3J0ZXJfb2ZmZXJbaWR4XSwgICZkbWFfYnVmX2F0dGFjaF9vcHMpOw0KPiAN
Cj4gICAgaWYgKGlkeCA9PSAwKSB7DQo+ICAgICAgICAgICB4ZV92cmFtX29wcyA9IGNvbnRhaW5l
cl9vZihhdHRhY2gtPm9wcywgLi4pOw0KPiAgICAgICAgICAgc3RydWN0IGRldmljZV9wcml2YXRl
X2FkZHJlc3MgKmFkZHJzID0geGVfdnJhbV9vcHMtPm1hcChhdHRhY2gpOw0KPiAJICBbLi5dDQo+
IAkgIHhlX3ZyYW1fb3BzLT51bm1hcChhdHRhY2gpOw0KPiAgICB9DQo+ICAgIGRtYV9idWZfZGV0
YWNoX2ludGVyY29ubmVjdChhdHRhY2gpOw0KPiANCj4gSSBjYW4gaW1hZ2luZSBzb21lIHNjaGVt
ZSB3aGVyZSBpZiB0aGUgZXhwb3J0ZXIgZG9lcyBub3Qgc3VwcG9ydA0KPiBpbnRlcmNvbm5lY3Qg
dGhlbiB0aGUgY29yZSBjb2RlIHdpbGwgYXV0b21hdGljYWxseSBsb29rIGZvcg0KPiBkbWFidWZf
Z2VuZXJpY19kbWFfYWRkcl90LCBzZWxlY3QgaXQsIGFuZCBzdXBwbHkgc29tZSBvcHMgdGhhdCBj
YWxsDQo+IGV4aXN0aW5nIGRtYV9idWZfZHluYW1pY19hdHRhY2goKS9kbWFfYnVmX21hcF9hdHRh
Y2htZW50KCkNCj4gdHJhbnNwYXJlbnRseS4NCj4gDQo+PiBTbyB0aGUgYWJvdmUgZnVuY3Rpb24g
bWltaWNzIHRoZSBkbWFfYnVmX2F0dGFjaF9vcHM6OmFsbG93X3BlZXIycGVlcg0KPj4gYm9vbCwg
ZXhjZXB0IGl0J3Mgbm90IGEgc2luZ2xlIGludGVyY29ubmVjdCBzbyB3ZSdkIGVpdGhlciB1c2Ug
YSBzZXQgb2YNCj4+IGJvb2xzLCBvbmUgZm9yIGVhY2ggcG90ZW50aWFsIGludGVyY29ubmVjdCwg
b3IgYSBmdW5jdGlvbiBsaWtlIHRoaXMuDQo+PiBBIGZ1bmN0aW9uIGhhcyB0aGUgYmVuZWZpdCB0
aGF0IGl0IGNhbiBhbHNvIHByb3ZpZGUgYW55IGFkZGl0aW9uYWwNCj4+IGF0dGFjaCBvcHMgdGhl
IGludGVyY29ubmVjdCBtaWdodCBuZWVkLg0KPiANCj4gYWxsb3dfcGVlcjJwZWVyIHNlZW1zIHRv
IGluZGljYXRlIGlmIHNnX3BhZ2UoKSBjYW4gYmUgdXNlZCBvbiB0aGUNCj4gc2d0PyBJdCBkb2Vz
bid0IGhhdmUgYW55IG1lYW5pbmcgZm9yIGFuIGltcG9ydGVyIG9ubHkgdXNpbmcNCj4gZG1hX2Fk
ZHJfdD8NCj4gDQo+IEluIHRoZSBhYm92ZSBsYW5ndWFnZSBpdCB3b3VsZCBiZSBhbiBpbnRlcmNv
bm5lY3QgZXhjaGFuZ2luZyAnc3RydWN0DQo+IHBhZ2UgKicuLiBJJ20gYSBsaXR0bGUgY29uZnVz
ZWQgYnkgdGhpcyBJIHRob3VnaHQgdG91Y2hpbmcgdGhlIHN0cnVjdA0KPiBwYWdlIHdhcyBmb3Ji
aWRkZW4/DQo+IA0KPj4gSXMgdGhpcyB0byBub3Qgb3ZlcmxvYWQgdGhlIG1hcF9hdHRhY2htZW50
KCkgYW5kIHVubWFwX2F0dGFjaG1lbnQoKQ0KPj4gZnVuY3Rpb25zIHRoYXQgb3RoZXJ3aXNlIGNv
dWxkIGJlIHVzZWQ/IElzIGl0IGJlY2F1c2UgdGhleSByZXR1cm4gYW4NCj4+IHNnX3RhYmxlPw0K
PiANCj4gSXQgd291bGQgYmUgZ29vZCB0byBhdm9pZCBnb2luZyB0aHJvdWdoIEFQSXMgdGhhdCB1
c2Ugc2dfdGFibGUgaW4gdGhlDQo+IGRlc2lnbi4uDQo+IA0KPiBKYXNvbg0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
