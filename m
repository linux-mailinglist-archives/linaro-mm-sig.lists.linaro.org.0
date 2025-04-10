Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 75511A84378
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 14:42:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7E1CC45980
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Apr 2025 12:42:36 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2085.outbound.protection.outlook.com [40.107.94.85])
	by lists.linaro.org (Postfix) with ESMTPS id 28540443A1
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Apr 2025 12:42:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Tg+705ws;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.94.85 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W8WUjnj+FsYRWESXX2KfXIMLi5oimz2IS+i8kdT+pdChfXUg/mvCzpDNG9URwjqau/RBmYuH5ubQYQeGjGUUyWptwsTUO+LspLBy8V7rxOJD2TMOZLP1QZqFWKA0rsjsOGOJG6nWfNweCm2d8g7beiZgMtgMh7DxuUEH5mdQRvEb4q5kgHHRS31o6pgn3zwz1ZRiTHiW9FvBnkEJ/wfNU3cOYzb6HPIyNTiBhz3iDWrjI5qnDljgiNtFiEWjTuW9jPUwzuJwsr1fEylCxwAfobtx0djGzWQ0RR9yudEnbVDj4opDYbuJglzV+LfUdbKl01+CKFzJYaFRpT2QN0mVgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCxzTSKaUUuaPfTNpKXGRt8AJ+4GHhsLWeKDaNWNzpo=;
 b=c7yNaXYB1doCIVdzZJiqcjJJwgcI3hT+9sOtp+V1N4buN8JlczfRCm0ZP5Vn4gMiR/RBYCHiB5oBblTb+p3KsW2ZIkDVZrHgry/lBnSyY/oaGsPoVr6mmIAEDIBavlywrSuHkoSLaPAu+NChrXuh9hjdqoEj+lxcVonzxaK5c2nM+LSgxuBSoXHdwDDAMMgTRSKIfrbMZzQDU474WQbRChqzWnr8uByktXDa8dJT7tT4G5saLDocWlFBNgkCaBIBJBxhyfTPj/lSshLBPXYdx5yidaO/fOKM2Z3zBZZlBskcpSnWtNtRwmX8qa2fU4J38HYSh6enb+Hfpg+DKYI8/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zCxzTSKaUUuaPfTNpKXGRt8AJ+4GHhsLWeKDaNWNzpo=;
 b=Tg+705wsNBfbE0jUaiLUk7NCuUiuwny+zkSwTJkBElf/+v2w9AIlsevxfesb7pD/S0bKitHX/7Bt4W7ryh7+cC/8B0ZZ0Fu5Y5Kq1V+gbZn8EyIgAQF4ywQYQ9g+BGKeuI6AxHR3BrdMO/IQE42pYZuEO0QOjBFPphr0R+zVfFM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB6331.namprd12.prod.outlook.com (2603:10b6:208:3e3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Thu, 10 Apr
 2025 12:42:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.021; Thu, 10 Apr 2025
 12:42:16 +0000
Message-ID: <9583e25e-1abc-458d-8b06-01193368f5fb@amd.com>
Date: Thu, 10 Apr 2025 14:42:10 +0200
User-Agent: Mozilla Thunderbird
To: Danilo Krummrich <dakr@kernel.org>
References: <20250410092418.135258-2-phasta@kernel.org>
 <20250410092418.135258-3-phasta@kernel.org>
 <d03c618e-aa4b-423b-9c50-143b8a197cac@amd.com> <Z_e3uihgYFvwmQ7C@pollux>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <Z_e3uihgYFvwmQ7C@pollux>
X-ClientProxiedBy: FR2P281CA0183.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB6331:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a4bd55b-4600-47f6-2ca0-08dd782d2046
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?T3lyWmRYdlZRZStxZ1p6SGQvR2NFVFA4TEJrMU0zTmJ6WUhNejV0TUIzeHMx?=
 =?utf-8?B?eDNadGtMcE1ERlZaYnFtZmo3RE91NUZob3JLa2RHa041MStMN2l2TnYwVzJM?=
 =?utf-8?B?YWx6cEFudDBsd2JCQU44cFJvL3I5VS9nbGRYOVlGWEc1U2Q0UG9SRHUwM1Iy?=
 =?utf-8?B?d1dFcThMQ3NGK284THV5UXk1Y3pyRHFZSVhwN2RxbzZPTWZETnYxVE9SYmRj?=
 =?utf-8?B?RFFCVEtadnNEV2FhdGhUQ3dIL0ltejJCVGpxdTRIR0VPOWU3QU53QmowV01m?=
 =?utf-8?B?VndVZFQ4MjJ2M1pUQzAwVWpaSWRTZ25QUkZiZWJpUHlsS21yV3dIZ29RalQv?=
 =?utf-8?B?dDVaUTNoT1l3ZlNzK3BZV2VxTHI1YjhxK2xVR3RoL1hsVFQyUlhNaEtqZGdi?=
 =?utf-8?B?WGxsTklQcnMwKzU1UlA0cyt5bnpzSDdpRWVjSi9RTW9iQkpjcFRFSG1ndEV1?=
 =?utf-8?B?b0pSR095SUdaenNlZXFHam1IcTJhbEtTelZ5WVJvVm1jdzIxUTJSS1lnWDcx?=
 =?utf-8?B?TDRCRHRsVW9laTI3Rm1WOHgzZmI0MzNITVlOYW8rOXMwS0RhU2M5M0RJSDJx?=
 =?utf-8?B?QjFldDBtaEtnaGxIQXk0YW10ajFTcmZ6eXlyd2M0V3JpK1paUDVlTXRCYzlB?=
 =?utf-8?B?eFhtM2QrOXAwY3U0RlhGRmhhdEd6UzZ6c0JpQ0dueHVaQ2pHYkFiQkpkMmRH?=
 =?utf-8?B?RDFUTXlXdWtGZ3creFAyMnpqQXN0ekhBL21JYzhEQzlGUmlkci9vSXVlWjI1?=
 =?utf-8?B?eVQ4ZVBvNXQxWEh4YVZiVHdXUUlNZWVGcm9MeGRVbmQ3eGRlazdBUzZLM1hD?=
 =?utf-8?B?MnZnT3d6UytTc3VPTmt1UWJtVUhRYlFoVUZveWcwenVIMC9qOFZYdVQyU240?=
 =?utf-8?B?NmVyVnp5eVNxSGtReGw4VUg2T0xnaC9SeTUzaEE2amR1TXJGUUtkZDc0Qkpy?=
 =?utf-8?B?MVJ4RDkwbDJUaEtNTkFqSHpTZVhwVzBydFJOaWtpNmUyVUx5YWJRWVNJTFdR?=
 =?utf-8?B?SEJHV3dsV2pSb3MySXErQjdFNDhodm9uYkpOb1hiT015YzFzejA1ek5UdklP?=
 =?utf-8?B?UVdjVlVWWjJXQnhmcDdyMDdrWk50NDVvSDNuZGtFT0Vwb0ludDEraEtqSUpl?=
 =?utf-8?B?cHU5bW9aNEliOEpnVHNBeHBEZjZSakhCTWpLeGRaSDFlZ0JNcHp5RkZlbENW?=
 =?utf-8?B?QVhCVzl3ZmZkQjBlYmFvdDNTbTZBdXNBakxZK2NJMlVheDlKVXB2cXpKZjIz?=
 =?utf-8?B?YTFMVlZKTGlZTC9jOWoxNkY4SFByNUp4VGh3UW9yZEVZZE93dmVGVVBSamFa?=
 =?utf-8?B?MzAwQ3FkRHpEWUxHSE9ySXNxcGViVnJ1NUpWWHNsME9qbXo3a2FacVBiclVP?=
 =?utf-8?B?YW4weWh1N0hyWEFBNkhKUTlNVlh4ZzNIdmU4MmhwRkpRMGZSMHlRTHNjMlgv?=
 =?utf-8?B?dldsSUtnS0dtL3VEd051YmxZTDN2N1lIclVzR1VsVkI3QzdhYnU4bytYdUZl?=
 =?utf-8?B?b0lxdFN3Um05bms5SkdRUGE2WWJ1aVFwdUNBd2RoalkzSFpxQzJSSTZWMHhD?=
 =?utf-8?B?ZTlwb1B1ZXJ1ZTl6MWtUOFhyU25SMEwwcEFMWGNJR2ZTR1ZQL1hUQ0lVemNR?=
 =?utf-8?B?ZFRwditHbW5XL056enluc1pLWnN4cWl5T2FZdkFRRzJ4bDUyTFczanh6RUUw?=
 =?utf-8?B?T3Evbm9STEs1endwTW9YWUpEZThZZHZXdWtNODdoT1YxZnl4Wmx0UnJZdjNL?=
 =?utf-8?B?KzN6OEZjMjVaNWZXU0lWVWFxUWVQTjE1ZnVIaDZSYnU2am9uY0FoWXdyeXNS?=
 =?utf-8?B?ajJwTHVsV2d3NUVoOVYvVGFvdlQzcmpLNjBieE5RREZMTEV3Z3UyWFUvbkZ4?=
 =?utf-8?Q?qXVoCCUIpBd7H?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R2tWZ3dFWkQ5bGtNWnF0bVY4U0IrSjIxODVFZW1OZ3FtZEVSS3FWaEF3OXVO?=
 =?utf-8?B?QjRYTGloMSt3eVZSVkV5NkovSU1TSFNuT3d3VkdLc3Q2UkUwUWlzTVZDSTdl?=
 =?utf-8?B?QmVxMHZRbFg1TTA3c2pHYjBqRS9NZzhzTEVFUjdPTWR0VnRjUGZnRnZ6QTUv?=
 =?utf-8?B?L2lyajFqN2hRU29PcVVvdHNRcFhqVDk1SjFFdzhUSHNpeXRmVlA1ZnNjZmVx?=
 =?utf-8?B?ZmF3NTljUkVDbEtLaHBUZHpMb1J5MWNXbFFIU1h0UlNVZWhHcFJvRGovb1Bz?=
 =?utf-8?B?bXp5MXB1RllTWThadGRrbHBqZFIvUFNWd1lYZzRUQy92YlN0R2oza2NFVzNi?=
 =?utf-8?B?d0JiMGRiYUtTU1R3WU9OTVVjNU5nSmpaNWZuWEhXbXl2WmxoOFk2ZHZlSW4z?=
 =?utf-8?B?NHhkUktaSm5XRU9YWHRFQUp3USt0QXMxdkY5amZiNlVWUktzTGN2UDcyOVRk?=
 =?utf-8?B?VkRVM1cyZjJNbVpzRjRlVFdBa2RQUTNkbGZUbXRLdXRYRG1MNEU4bWVERnpi?=
 =?utf-8?B?YmxkYm5pQUd0OVp1Q2JHd0Jralp4WTBSNFU0TDM2NmphSmY5UWdLQWZxdHZL?=
 =?utf-8?B?WGMxUlR2UFVKSFMwc1NqMjBiRnF4dFRkUk1HUlNSUUYrZVhNZDU2bUdNemc2?=
 =?utf-8?B?K2FhYVFUVUdTdVRoaW5JcHNrWUp5MG5wWXJSdEZ0WFU0OWdIM0lQa05aWHl6?=
 =?utf-8?B?djdETWF3cmVuK2pXd2dybmJHQ1d3bG1EZTFrMWZDYkZTN2pma0tsanVwTHBm?=
 =?utf-8?B?K1hrTmZrM040NUJYYk1vUndBR0JjS1QrZ21ZWnIvQXFKTmt1VHdCdW44VXRu?=
 =?utf-8?B?YUNlVkw0NkVJK1dBcW9CMGJzWGVvakx3SklJd2NtK1UxUDBGUkg4bzYzbTgr?=
 =?utf-8?B?b0NMQ2FZU0tBNHgxU2NUK2dFQ1J6d2JyVHBQZUdEY0dUdnhBVktqZXY0ZW5S?=
 =?utf-8?B?TUlqWHlzVWl0MUhwQnN5VVRGYVAwVUJQUi85TUprRnRPV2svV01iZ1huQW9V?=
 =?utf-8?B?RFgvS0tINk9LOUkvRHdmQjlDQXpsL3ZhdGRMYXZ5N1JMcXhUcHdOTktxaVV1?=
 =?utf-8?B?dnNBWGNHZ3JCa3lJUjAxYkJTUzNvaHhKa3J4QVJkQmt0OHQxclM3Q1BJcWZK?=
 =?utf-8?B?cUk5RnUwd21oNnJ5SHlORnhWNDFrWnNFQ1UvTytkcDZNazQvM3d5V3JoZW9S?=
 =?utf-8?B?bG01cVNCam1xeGIrZ3gzQisvUldndkx2R0tkL3VwaEFGa2lPV1I1ZlhxYngy?=
 =?utf-8?B?MlF0Rjk4M2Yvb2hPakhjNm9yNE1JQ3dxVEM1QUNPSVZOejIvaGlMMDBmLzBJ?=
 =?utf-8?B?VmVYU1YxTkNtT2tSMEtkYWhIb3RPMXpoeVFNVDZRaDFQL2trSnRBQXM5WG1I?=
 =?utf-8?B?U0c5OWVjT3drbXowWTl1VHdWQkxodjRWUkJsMk1RRTZQVEE0dWhDZGRYblVx?=
 =?utf-8?B?Qmd4N3RnRmpUWmxobzQ3aUI3V0VVdjRqQjFWZmlMNW51QmhTL2ZLWUVRNFdr?=
 =?utf-8?B?Wkp1WEQ2YTVRQ3JZL2NodHpDeTQvc0djSW1PM3l6Y29URGlWUmY2MzNUYUVN?=
 =?utf-8?B?akxNVGxGRWxMenAzR3lLOUlzMXJlQmxaODVKZHl5UnF3VHR6LytCZzFwY3Zw?=
 =?utf-8?B?MmdRTzdFL3VrREtaM3BaZFg2VUZ4bXVMS2ZTdjB2azJkcjYyMmcvSUtnTXFv?=
 =?utf-8?B?L2JCQnJqYlNyVjVFK2k4bWlrU09DVkFRV3hTa204bS9IZmtoaDQ4aFc1Si9u?=
 =?utf-8?B?ZEd5RDQ0Ty9RZ1c0NEN0YWtxWUd4RElYcy85bHFQbkd2a2xlZ3hBN0NySHkv?=
 =?utf-8?B?UERPRC9VRElJUTZxaVBQVk1aZzYzNVI2NzduS0piYWxNb3ZNaXA1MDI1aHd3?=
 =?utf-8?B?Q1UrNFdaQUZ1ZVlTMEVJSzFROEZMNXhqcmZpbVhNU29SVGE1bVplYUg2ZFdX?=
 =?utf-8?B?dTVteHVkZUxwSHBPR09YbGY0VkQ2ZS9yUFhBa1lMZ1lVRnlrZW1DTVBOOXFE?=
 =?utf-8?B?ZDdzRFo1eXRTZktaYVRXcGprYXhPd2prMEFPNnMwa0Q0dGoyczhySnR2ckdr?=
 =?utf-8?B?NEpheDBDY1IrUk9jeFlGRGxKbjc2Nk1JTXovcHc4bVNGcUpsWmdEMFRQelRh?=
 =?utf-8?Q?zSIBTxpIdEgtDfyhVRnXygeJ6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a4bd55b-4600-47f6-2ca0-08dd782d2046
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 12:42:16.8502
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OkHa2Q2jfFgSTmOQ8l39YfetwBI/uNw8EwNeCKDS2yL4G1CnwSexSDauGErMp9eI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6331
X-Rspamd-Queue-Id: 28540443A1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_7(0.50)[40.107.94.85:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.94.85:from];
	DMARC_POLICY_ALLOW(0.00)[amd.com,quarantine];
	R_SPF_ALLOW(0.00)[+ip4:40.107.0.0/16];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	ARC_ALLOW(0.00)[microsoft.com:s=arcselector10001:i=1];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,queasysnail.net,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	R_DKIM_ALLOW(0.00)[amd.com:s=selector1];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.94.85:from];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 25VYD6TM64WDP3KQHQ2D72YX6HS7KZD4
X-Message-ID-Hash: 25VYD6TM64WDP3KQHQ2D72YX6HS7KZD4
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Philipp Stanner <phasta@kernel.org>, Lyude Paul <lyude@redhat.com>, Simona Vetter <simona@ffwll.ch>, Sabrina Dubroca <sd@queasysnail.net>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] drm/nouveau: Prevent signaled fences in pending list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/25VYD6TM64WDP3KQHQ2D72YX6HS7KZD4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTAuMDQuMjUgdW0gMTQ6MjEgc2NocmllYiBEYW5pbG8gS3J1bW1yaWNoOg0KPiBPbiBUaHUs
IEFwciAxMCwgMjAyNSBhdCAwMjoxMzozNFBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPj4gQW0gMTAuMDQuMjUgdW0gMTE6MjQgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+Pj4g
Tm91dmVhdSBjdXJyZW50bHkgcmVsaWVzIG9uIHRoZSBhc3N1bXB0aW9uIHRoYXQgZG1hX2ZlbmNl
cyB3aWxsIG9ubHkNCj4+PiBldmVyIGdldCBzaWduYWxlZCB0aHJvdWdoIG5vdXZlYXVfZmVuY2Vf
c2lnbmFsKCksIHdoaWNoIHRha2VzIGNhcmUgb2YNCj4+PiByZW1vdmluZyBhIHNpZ25hbGVkIGZl
bmNlIGZyb20gdGhlIGxpc3Qgbm91dmVhdV9mZW5jZV9jaGFuLnBlbmRpbmcuDQo+Pj4NCj4+PiBU
aGlzIHNlbGYtaW1wb3NlZCBydWxlIGlzIHZpb2xhdGVkIGluIG5vdXZlYXVfZmVuY2VfZG9uZSgp
LCB3aGVyZQ0KPj4+IGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIChzb21ld2hhdCBzdXJwcmlzaW5n
bHksIGNvbnNpZGVyaW5nIGl0cyBuYW1lKQ0KPj4+IGNhbiBzaWduYWwgdGhlIGZlbmNlIHdpdGhv
dXQgcmVtb3ZpbmcgaXQgZnJvbSB0aGUgbGlzdC4gVGhpcyBlbmFibGVzDQo+Pj4gYWNjZXNzZXMg
dG8gYWxyZWFkeSBzaWduYWxlZCBmZW5jZXMgdGhyb3VnaCB0aGUgbGlzdCwgd2hpY2ggaXMgYSBi
dWcuDQo+Pj4NCj4+PiBJbiBwYXJ0aWN1bGFyLCBpdCBjYW4gcmFjZSB3aXRoIG5vdXZlYXVfZmVu
Y2VfY29udGV4dF9raWxsKCksIHdoaWNoDQo+Pj4gd291bGQgdGhlbiBhdHRlbXB0IHRvIHNldCBh
biBlcnJvciBjb2RlIG9uIGFuIGFscmVhZHkgc2lnbmFsZWQgZmVuY2UsDQo+Pj4gd2hpY2ggaXMg
aWxsZWdhbC4NCj4+Pg0KPj4+IEluIG5vdXZlYXVfZmVuY2VfZG9uZSgpLCB0aGUgY2FsbCB0byBu
b3V2ZWF1X2ZlbmNlX3VwZGF0ZSgpIGFscmVhZHkNCj4+PiBlbnN1cmVzIHRvIHNpZ25hbCBhbGwg
cmVhZHkgZmVuY2VzLiBUaHVzLCB0aGUgc2lnbmFsaW5nIHBvdGVudGlhbGx5DQo+Pj4gcGVyZm9y
bWVkIGJ5IGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIGlzIGFjdHVhbGx5IG5vdCBuZWNlc3Nhcnku
DQo+Pj4NCj4+PiBSZXBsYWNlIHRoZSBjYWxsIHRvIGRtYV9mZW5jZV9pc19zaWduYWxlZCgpIHdp
dGgNCj4+PiBub3V2ZWF1X2ZlbmNlX2Jhc2VfaXNfc2lnbmFsZWQoKS4NCj4+Pg0KPj4+IENjOiA8
c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyA0LjEwKywgcHJlY2lzZSBjb21taXQgbm90IHRvIGJl
IGRldGVybWluZWQNCj4+PiBTaWduZWQtb2ZmLWJ5OiBQaGlsaXBwIFN0YW5uZXIgPHBoYXN0YUBr
ZXJuZWwub3JnPg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1
X2ZlbmNlLmMgfCAyICstDQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1
L25vdXZlYXVfZmVuY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2Uu
Yw0KPj4+IGluZGV4IDdjYzg0NDcyY2VjZS4uMzM1MzU5ODdkOGVkIDEwMDY0NA0KPj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KPj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZmVuY2UuYw0KPj4+IEBAIC0yNzQsNyArMjc0LDcg
QEAgbm91dmVhdV9mZW5jZV9kb25lKHN0cnVjdCBub3V2ZWF1X2ZlbmNlICpmZW5jZSkNCj4+PiAg
CQkJbnZpZl9ldmVudF9ibG9jaygmZmN0eC0+ZXZlbnQpOw0KPj4+ICAJCXNwaW5fdW5sb2NrX2ly
cXJlc3RvcmUoJmZjdHgtPmxvY2ssIGZsYWdzKTsNCj4+PiAgCX0NCj4+PiAtCXJldHVybiBkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoJmZlbmNlLT5iYXNlKTsNCj4+PiArCXJldHVybiB0ZXN0X2JpdChE
TUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZmZW5jZS0+YmFzZS5mbGFncyk7DQo+PiBTZWUg
dGhlIGNvZGUgYWJvdmUgdGhhdDoNCj4+DQo+PiDCoMKgwqDCoMKgwqDCoCBpZiAoZmVuY2UtPmJh
c2Uub3BzID09ICZub3V2ZWF1X2ZlbmNlX29wc19sZWdhY3kgfHwNCj4+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZmVuY2UtPmJhc2Uub3BzID09ICZub3V2ZWF1X2ZlbmNlX29wc191ZXZlbnQpIHsN
Cj4gSSB0aGluayB0aGlzIGNoZWNrIGlzIGEgYml0IHBvaW50bGVzcyBnaXZlbiB0aGF0IGZlbmNl
IGlzIGFscmVhZHkgYSBzdHJ1Y3QNCj4gbm91dmVhdV9mZW5jZS4gOikNCg0KT2gsIGdvb2QgcG9p
bnQuIEkgdG90YWxseSBtaXNzZWQgdGhhdC4NCg0KSW4gdGhpcyBjYXNlIHRoYXQgaW5kZWVkIGRv
ZXNuJ3QgbWFrZSBhbnkgc2Vuc2UgYXQgYWxsLg0KDQooVW5sZXNzIHNvbWVib2R5IGp1c3QgYmxp
bmRseSB1cGNhc3RlZCB0aGUgc3RydWN0dXJlLCBidXQgSSByZWFsbHkgaG9wZSB0aGF0IHRoaXMg
aXNuJ3QgdGhlIGNhc2UgaGVyZSkuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
