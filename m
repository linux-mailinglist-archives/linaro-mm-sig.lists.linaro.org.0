Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C48DFAA9192
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 13:08:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 967B444ACB
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 May 2025 11:08:33 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2077.outbound.protection.outlook.com [40.107.93.77])
	by lists.linaro.org (Postfix) with ESMTPS id F32EA43F65
	for <linaro-mm-sig@lists.linaro.org>; Mon,  5 May 2025 11:08:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=c1N+M7j0;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.77 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nPyylmjwRU6e9p8JxDJgbKGdY6iJUWaoAVx1JlzqsG9zSVLwvR70vJtKHxuWSUCUR8CaoRRpfrxhIg6KCcIsj8NmTf8Dqok3IQ2a9KFAhYOgTuxSt84pAd98owgGgTVd7SpQDevwXPPsgvn/+opsjXhAjAJCy/xOV3AQjDF6K2ca1Y0s4+gGBFs38GSvDiVUQET6n7Kz6c+qy133KRAovjLpc7ZXoRQuO2Xz4Bc6B0VmHPV3XIvYmWVLW6tdIcCXmGcmrPz9SC0yQ6vfT41i6X9l0dfg69jI6bbl1zylilrpE3nxHtPwf/HP2zGUKx+ZBHcCrvDSTLKIfYW6ngyM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jBk8W6PoKBOqdptd8eUmw/fuF6/cXXSYZtLnoa69mWI=;
 b=aPRZLuSQ2u8xUS2eacZZraFonDRN+Z0H2HmGYl6SsmZQvJuK7UAcqhSNNJ4Lp42snxckvSYSd1vJ9/UE/KBzqTuEfgkg/b6xFSBeSnS/ono2HexMfKJ66a5dkrUcBERtZdV6763QuiwGhbIDU3QAKo0Yz13S1H6gNi01KacFlvOYORRs0yOws09WAg59EnVUSNTcdEPbnDc90Lwawq7RJ4GF4xJ/30MfodmRyIYv0yMO7A/dd9BuQV/YuTHscWypLhCCWoEb32PNYVefFWMiSOXi5QfVqMJBKezxdJ0MlWbqiyeUqVmb85AYW5TSXVmuWdkAFOdrA5z2FnUB4ifoTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jBk8W6PoKBOqdptd8eUmw/fuF6/cXXSYZtLnoa69mWI=;
 b=c1N+M7j0FDTnhhfLKhLFBm2J9dKXaw2R8TnPvIZuY4pnAhseB0owjPCsXcsTBcj7Kqk0Z2EXvKsL8h0gUPJIp4qYIsRLH6YIMmUMjaC6f47HoNfDJqZe9Qq1+eNrl44CsXaodU88FYBxCEZAmBPtC1HsoQ1LPLxzUwD+Osq7QrE=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN2PR12MB4143.namprd12.prod.outlook.com (2603:10b6:208:1d0::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 5 May
 2025 11:08:17 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Mon, 5 May 2025
 11:08:15 +0000
Message-ID: <4ecda12a-aa29-43e5-8f3a-2d8b9bd2e852@amd.com>
Date: Mon, 5 May 2025 13:08:04 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>, sumit.semwal@linaro.org,
 ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org,
 martin.lau@linux.dev, skhan@linuxfoundation.org, song@kernel.org,
 alexei.starovoitov@gmail.com
References: <20250504224149.1033867-1-tjmercier@google.com>
 <20250504224149.1033867-2-tjmercier@google.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250504224149.1033867-2-tjmercier@google.com>
X-ClientProxiedBy: FR2P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN2PR12MB4143:EE_
X-MS-Office365-Filtering-Correlation-Id: b2f73f23-ed6c-435b-ab7b-08dd8bc521b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?WnFaMEw0R0tPcWtHV0ZINlZiejZzUklxRFR1Nm1PbmgvVzJZZ3hLekZEbEZj?=
 =?utf-8?B?WTJOQWZoT1lPNHZDcDZYNFBFTlpid01pR09velB5UWhFV2ZMNDFkYmZ5QS9V?=
 =?utf-8?B?UWJ3Q0loNEFyNk9kdmZVdm1ZOVk0SitNRXdlL2NpYjhOUXFxSGpHZ0s5OGR2?=
 =?utf-8?B?MUhFL2NzcVpiRHNmSzNhZGFSajYxb1pDSUF3UGp3Q2MxWkRMOWdERDRmQjdt?=
 =?utf-8?B?aVI4bXNoSUtNZUNLSnZzcXNJMWZxOU40SHcvTUZwL25PQk5pUm5sUCtWVkJM?=
 =?utf-8?B?TmY0b3lyekZsUU92WWV6bEpSZnRXZTBWd2E1MWNpQjlQazZrUmNId05ERERT?=
 =?utf-8?B?WC9OWXNsSGt1eTNvZTlDeDJXZElINVhnVUxwQzJuSVErcllLcUMxN2ROT1Ir?=
 =?utf-8?B?bVVSS0c0bUhXK2hrK0I3RExtYnowUi9GWWtJOWdOZFFJb1l3d0dJY1EvZzRt?=
 =?utf-8?B?WTNDcXJhQWlodlZiVzBCSzlrYS9EQVdKLzlScklUV1MxaEVMYU9LNEd4UHRB?=
 =?utf-8?B?T1VkeGNRTmdQaW5iUFBneW5MQ3dUdG52dmE5aHQyZ0puZzhBNi9ubk9YbmJO?=
 =?utf-8?B?STdYbHM2aWU0MkZxRUhKMnBIV3FCMXF6cWEycEk2eE1QTDhuYUFaNEJRVU5B?=
 =?utf-8?B?dVJJYVVXMkVCcFRvMTcvN0M0cGliejBOSXZrK3NTdmVQWUh3YU1RdWNDb2tn?=
 =?utf-8?B?T0FIUlZjRTFJdkhLTkVLM0NkUERvdjQxbWd0MmRpRXVkMEtqTlA3OUJTRVpz?=
 =?utf-8?B?cGZhVnd5Mmw3L01CMWs1NCtmbExnTC9HVjJiK0NFVy92UVZoU3J3V1dlVVAz?=
 =?utf-8?B?U0pWUE8xa2xVRkc2QUphV2ludXRKVDAxYTVaSEh1dm9KVFBhekdnSExDWnNs?=
 =?utf-8?B?UHVSOWpyRHorQ1RNQk1IZzJ0alcweFoxTmpqMzhGZlBIcTB1T0h0azVLb2k5?=
 =?utf-8?B?Qy9xa25kMXozdDhOSVB0bmZLRlF4eUtvcHhJei9RNitNUTZpeU9YYzEyVXhF?=
 =?utf-8?B?QTM0bDVXOE5hOEdFVDlyRVVpQ3RiQis5MGRrbkhVZzVnZ1BtRkxwVzNvSXpx?=
 =?utf-8?B?eVRDT3J4ajJuK2p1OUQ2Y2VuWDNUYWFVbVVRK21MOFdPeHZiTE1YQkFBMmh0?=
 =?utf-8?B?Tk1lckZZL0VaNEUvTnFpTzVoaFJrZHR3b2VLNkUvMmxkOEVLSERvMGREVTA5?=
 =?utf-8?B?ZllYRmk4Y09VNk1DYzI1ZkVoZStzLzFQMHZ4VHAzMnpaaVYrQkdnUkVVN2d2?=
 =?utf-8?B?RW5yRUNSNjFlUERPNU93cGZEcThsUFk1TjdaZllyczViMVRsS3hHVWEwRmRL?=
 =?utf-8?B?aGN3eDJmZ3RpWUFtWXc5d2J4RkhzK1M5ZVdEa1dqUE5DZTY5RVNURVROWmtz?=
 =?utf-8?B?K0xTKzZrZzZkVXZFaUZPSkxzNjYzN0g2UDAxUDkycVl3NU9MZVVUTFExbEh5?=
 =?utf-8?B?bXoxblU0R3hwWHR4QUtWS21WclNiVXcvOCt6bEdPMnpMZkxWZzMvU0RzY281?=
 =?utf-8?B?SU45Q2hOOUVoMWV3U0ZydWRpUCtLemNhUWcwSzRjamFqaEh6N2FneTRFMGND?=
 =?utf-8?B?YXN2NDhlMUFXKy9rL3pWU3hNaEFFWEprSFlyVG15N3dEVnVuVk9MNG1WbmJw?=
 =?utf-8?B?WXJOdUdBcWlwaXJ3YUI0OGVUSHBLOVBCMW5HRUs0L0tTMUFlK3h6UG1NSWsy?=
 =?utf-8?B?MlowdzFWZmVWeEtqblBDbktjRmVnbGpXZ0VuNXdiNW8yYmZlcjcvM09iNUtn?=
 =?utf-8?B?TGRnb0ZSbERNYWt6Zm8xVW9tUy9NVEIwVzZsSEZIckN0V3pNcG02c0prdUt2?=
 =?utf-8?B?RTZPZmkzd2FVSTVaTWFyV0ZWN1ZKMGFEdzBqU3BxYWtGWVFvMVZnTnVwMFM4?=
 =?utf-8?B?NjhSZUszMWRsRFNiWnpmb1J4WHV3SkkwWVIxUUZMczBFT2p6TTdaWVRHZEpK?=
 =?utf-8?Q?REpNtp4ta54=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(1800799024)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TXdYRkZEU3krUzNJcFBIaExIVkpHS0NHeXlqczhkcEhVSVJsS1Q3OTJXWm9y?=
 =?utf-8?B?d3FMVjZuNFl3OE5FVXh4bE1GV0JDbEJmUVNjT2FZcTNIcEd5Z1lPQ2gwcFFi?=
 =?utf-8?B?WG82ZFkxNWtCOGhjQnNGaW5tRU9keU9KS2JhNkpWZlB2RVdOenU1MzBTTU9P?=
 =?utf-8?B?ZzBqMVV4b3BjODlmTzVBQk9ES2JEVkR1eFg5dWpiamhMNzBtQ3BCamdoMkdu?=
 =?utf-8?B?dDJPRFgxWVJGSHNGazZaVGpsNFlQR2wzYmhzWEZoQUJUcmxYSXcyRnJyMUVn?=
 =?utf-8?B?bFJOWHdOVG5JNUdyMUNSZW5jZlFqYktOTjk0Uk5FNDJCOEJQZ0daSXlWTENL?=
 =?utf-8?B?Q284azBBbDhZbWhjM1RrTFZqMG5WamJiVWU4WGtZY1ZlWVR5Uy83WXZSZXd3?=
 =?utf-8?B?dm8wVW5iQlNmakpRTFRzcnRVN3lKUENCNGlXZmQ4cFJVTkl5L1NhN1NWaTdm?=
 =?utf-8?B?aHQ3S1kyUWE5Mm9PeS9ySG9PS2Q0ejllOWIwRzB5RlI5Wm11b0swRHprdkhr?=
 =?utf-8?B?UXRDZ0FORkNVU1E5YjJBdm9NbTV2TWtXeFZJeFN3YmZiRWhjMS96U2VxRHU3?=
 =?utf-8?B?eXRGbFlvT0FqaTF2WUozZXc0M1o4a0hkYVFjd1QwYnN5Tm1JM1NMbHVrNk5W?=
 =?utf-8?B?UDh3ajFrZWJwU3Jnd3JLTFpUVzhGZXEvUnJ6enhuaHB3RmIvUVFHc1FicG9B?=
 =?utf-8?B?V21oRTZUY0NSRTdmbDI2WEZITE9PU05GU0xib05YclpITUxHM1l4QTd5aXcy?=
 =?utf-8?B?QWMwQVRhU3NBaWR5YVNmb0xhdExKbkczcTFDd2N6SjZsWG9iZ3FYci9kdktF?=
 =?utf-8?B?UHpQbWNhZkZHOFFKQkF2Q3NDOGR1cEo5M05yaDhBOEduWjd0cmpwVnU5b21i?=
 =?utf-8?B?c3BleElqZXhzbTR0eDZ1TkpydzIvckZGTFVGb0xlV0VZTzloaFhyUHJ5YnFh?=
 =?utf-8?B?LzMza3dlNDhYa200ZFhCM3NGb1N6Nkhsd1FFUjFmTkhzMTRva280cEdNajBZ?=
 =?utf-8?B?T1RabDBKbDFZVzV1M2h3L2tiVUZON2dNbk1UaGNTMVd6a3pJZWJNNFBMTC84?=
 =?utf-8?B?R2ZpSHgxN1FSMHM3WWN6UFpCMUpHS09tYTRKWU5UcXN1cXN6eXZlUk1wMVMz?=
 =?utf-8?B?NzRQb1Mvbzc1aHdqaDk3MSt1QmRsMkZEdGNodS9Jdmx4VnlLNkhnemVQcUM2?=
 =?utf-8?B?Z0JDUEJJRkdiaS9GOFEvaFhVTS9FVkl2aG9wR2ZkUjM4bXZDdjdKZGMrL3JZ?=
 =?utf-8?B?cnhQY0UzUlBFV0VPMkdxcDFPVWZCTFlWbkxkVlhpVGtpancwNUY4VXRkZVpT?=
 =?utf-8?B?bGJuMGdBYUZTeVBjempjZ3d4c2FoSE5HK1ZZdDNwZkVNZkdLREZsb05OQUxu?=
 =?utf-8?B?MHdRbXlKWkJDMHVqTDR0RHZpQmh6VkpUSk0vNmlFREVjUHZ1RXZoSnpidjc3?=
 =?utf-8?B?SGlZMDdVOExrbkpBS3ZTQUNKMEJWSlpTT0xnMmdDNTVtQ1hlbHlQaGU3R0I4?=
 =?utf-8?B?ZURJcUFRNG43Um1GZFR3bEdzS2Qvd1BFWEJ0a3RxOVFYZUVwbENmSVJ3TjdU?=
 =?utf-8?B?Um1jYTNMU0R3NE1ZYmt6VTkrSVpqcllLUzYzZisyVlNXMlpUWUJEVUdkNi80?=
 =?utf-8?B?K0ZBWmNpS3cxZWFjb3UydDVOQzFXS1lITnNTNzFHNDh2Yk5idWdIeVlIK2lT?=
 =?utf-8?B?RlhveGJZd2JGd0xsYk10UjVPcTh6cDVEdC9Rb054MjFQNE04R2paL2VQaGR4?=
 =?utf-8?B?MUVnN0dRMFg3bUY3aDMzTnJsTjdsa1p4RUQza1VwU0V1emJMRkd1VGdwZWpX?=
 =?utf-8?B?bEN3dXVxdnlRZTVzbkpwVk1pMDZtcTFZVTc0Wm9IbW9vNnVRWHRjd2ZXWFRz?=
 =?utf-8?B?Tm9HSzFSUUh2dHMvNVRwOHR2Q2lLOGJndnpNN3loaDZqSVBocHA1YzJUb2JW?=
 =?utf-8?B?cmw0NGpQdE80MDA5SmUrV2Uwa0JzVzhmZkFVMHM0a1lEZ05JZ2ZETzNvVUx3?=
 =?utf-8?B?WHU1MnJPMjkzN0JhMCtxV0JOUzZCKy9WWWJUTFBBK0JJMFFiTkdSZlJVUTV4?=
 =?utf-8?B?aTc5aWF2SEpSN2VsOExZQm81ZVo5L1FOZnVjQ1ErTGpDWk92cWgvNk5lZDdm?=
 =?utf-8?Q?wxLlwKr8r5sg3bo3yBKWSb8ea?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2f73f23-ed6c-435b-ab7b-08dd8bc521b7
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2025 11:08:14.9245
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uy/FXkiDud55Z64ZXAyD/s37S6E+fTUxbI9XS7I4ii2nEVvWpCcqEacpMEvGa99o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4143
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F32EA43F65
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.77:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	FREEMAIL_TO(0.00)[google.com,linaro.org,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,lwn.net,gmail.com,linux.dev,kernel.org,fomichev.me,fb.com];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7IRWVKOJB47FX6QSEZZHHI367Z5ZCLAY
X-Message-ID-Hash: 7IRWVKOJB47FX6QSEZZHHI367Z5ZCLAY
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, corbet@lwn.net, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 1/6] dma-buf: Rename and expose debugfs symbols
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7IRWVKOJB47FX6QSEZZHHI367Z5ZCLAY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS81LzI1IDAwOjQxLCBULkouIE1lcmNpZXIgd3JvdGU6DQo+IEV4cG9zZSB0aGUgZGVidWdm
cyBsaXN0IGFuZCBtdXRleCBzbyB0aGV5IGFyZSB1c2FibGUgZm9yIHRoZSBjcmVhdGlvbiBvZg0K
PiBhIEJQRiBpdGVyYXRvciBmb3IgZG1hYnVmcyB3aXRob3V0IHRoZSBuZWVkIGZvciBDT05GSUdf
REVCVUdfRlMuIFJlbmFtZQ0KPiB0aGUgc3ltYm9scyBzbyBpdCdzIGNsZWFyIGRlYnVnZnMgaXMg
bm90IHJlcXVpcmVkLCBhbmQgdGhhdCB0aGUgbGlzdA0KPiBjb250YWlucyBkbWFidWZzIGFuZCBu
b3Qgc29tZSBvdGhlciB0eXBlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVC5KLiBNZXJjaWVyIDx0
am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gdjI6IE1ha2UgdGhlIERNQSBidWZm
ZXIgbGlzdCBpbmRlcGVuZGVudCBvZiBDT05GSUdfREVCVUdfRlMgcGVyIENocmlzdGlhbiBLw7Zu
aWcNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCA0MCArKysrKysrKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5oICAgfCAgNiAr
KysrLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMjcgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gaW5kZXggNWJhYTgzYjg1NTE1Li43MjYwYmRkNzdjNzUg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4gKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KPiBAQCAtMzUsMzUgKzM1LDI1IEBADQo+ICANCj4gIHN0YXRp
YyBpbmxpbmUgaW50IGlzX2RtYV9idWZfZmlsZShzdHJ1Y3QgZmlsZSAqKTsNCj4gIA0KPiAtI2lm
IElTX0VOQUJMRUQoQ09ORklHX0RFQlVHX0ZTKQ0KPiAtc3RhdGljIERFRklORV9NVVRFWChkZWJ1
Z2ZzX2xpc3RfbXV0ZXgpOw0KPiAtc3RhdGljIExJU1RfSEVBRChkZWJ1Z2ZzX2xpc3QpOw0KPiAr
REVGSU5FX01VVEVYKGRtYWJ1Zl9saXN0X211dGV4KTsNCj4gK0xJU1RfSEVBRChkbWFidWZfbGlz
dCk7DQo+ICANCj4gLXN0YXRpYyB2b2lkIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfYWRkKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYpDQo+ICtzdGF0aWMgdm9pZCBfX2RtYV9idWZfbGlzdF9hZGQoc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gIHsNCj4gLQltdXRleF9sb2NrKCZkZWJ1Z2ZzX2xpc3Rf
bXV0ZXgpOw0KPiAtCWxpc3RfYWRkKCZkbWFidWYtPmxpc3Rfbm9kZSwgJmRlYnVnZnNfbGlzdCk7
DQo+IC0JbXV0ZXhfdW5sb2NrKCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KPiArCW11dGV4X2xvY2so
JmRtYWJ1Zl9saXN0X211dGV4KTsNCj4gKwlsaXN0X2FkZCgmZG1hYnVmLT5saXN0X25vZGUsICZk
bWFidWZfbGlzdCk7DQo+ICsJbXV0ZXhfdW5sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQo+ICB9
DQo+ICANCj4gLXN0YXRpYyB2b2lkIF9fZG1hX2J1Zl9kZWJ1Z2ZzX2xpc3RfZGVsKHN0cnVjdCBk
bWFfYnVmICpkbWFidWYpDQo+ICtzdGF0aWMgdm9pZCBfX2RtYV9idWZfbGlzdF9kZWwoc3RydWN0
IGRtYV9idWYgKmRtYWJ1ZikNCj4gIHsNCj4gIAlpZiAoIWRtYWJ1ZikNCj4gIAkJcmV0dXJuOw0K
PiAgDQo+IC0JbXV0ZXhfbG9jaygmZGVidWdmc19saXN0X211dGV4KTsNCj4gKwltdXRleF9sb2Nr
KCZkbWFidWZfbGlzdF9tdXRleCk7DQo+ICAJbGlzdF9kZWwoJmRtYWJ1Zi0+bGlzdF9ub2RlKTsN
Cj4gLQltdXRleF91bmxvY2soJmRlYnVnZnNfbGlzdF9tdXRleCk7DQo+ICsJbXV0ZXhfdW5sb2Nr
KCZkbWFidWZfbGlzdF9tdXRleCk7DQo+ICB9DQo+IC0jZWxzZQ0KPiAtc3RhdGljIHZvaWQgX19k
bWFfYnVmX2RlYnVnZnNfbGlzdF9hZGQoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCj4gLXsNCj4g
LX0NCj4gLQ0KPiAtc3RhdGljIHZvaWQgX19kbWFfYnVmX2RlYnVnZnNfbGlzdF9kZWwoc3RydWN0
IGRtYV9idWYgKmRtYWJ1ZikNCj4gLXsNCj4gLX0NCj4gLSNlbmRpZg0KPiAgDQo+ICBzdGF0aWMg
Y2hhciAqZG1hYnVmZnNfZG5hbWUoc3RydWN0IGRlbnRyeSAqZGVudHJ5LCBjaGFyICpidWZmZXIs
IGludCBidWZsZW4pDQo+ICB7DQo+IEBAIC0xMTUsNyArMTA1LDcgQEAgc3RhdGljIGludCBkbWFf
YnVmX2ZpbGVfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkN
Cj4gIAlpZiAoIWlzX2RtYV9idWZfZmlsZShmaWxlKSkNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+
ICANCj4gLQlfX2RtYV9idWZfZGVidWdmc19saXN0X2RlbChmaWxlLT5wcml2YXRlX2RhdGEpOw0K
PiArCV9fZG1hX2J1Zl9saXN0X2RlbChmaWxlLT5wcml2YXRlX2RhdGEpOw0KPiAgDQo+ICAJcmV0
dXJuIDA7DQo+ICB9DQo+IEBAIC02ODksNyArNjc5LDcgQEAgc3RydWN0IGRtYV9idWYgKmRtYV9i
dWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbykNCj4g
IAlmaWxlLT5mX3BhdGguZGVudHJ5LT5kX2ZzZGF0YSA9IGRtYWJ1ZjsNCj4gIAlkbWFidWYtPmZp
bGUgPSBmaWxlOw0KPiAgDQo+IC0JX19kbWFfYnVmX2RlYnVnZnNfbGlzdF9hZGQoZG1hYnVmKTsN
Cj4gKwlfX2RtYV9idWZfbGlzdF9hZGQoZG1hYnVmKTsNCj4gIA0KPiAgCXJldHVybiBkbWFidWY7
DQo+ICANCj4gQEAgLTE2MzAsNyArMTYyMCw3IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19z
aG93KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQ0KPiAgCXNpemVfdCBzaXplID0g
MDsNCj4gIAlpbnQgcmV0Ow0KPiAgDQo+IC0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxl
KCZkZWJ1Z2ZzX2xpc3RfbXV0ZXgpOw0KPiArCXJldCA9IG11dGV4X2xvY2tfaW50ZXJydXB0aWJs
ZSgmZG1hYnVmX2xpc3RfbXV0ZXgpOw0KPiAgDQo+ICAJaWYgKHJldCkNCj4gIAkJcmV0dXJuIHJl
dDsNCj4gQEAgLTE2MzksNyArMTYyOSw3IEBAIHN0YXRpYyBpbnQgZG1hX2J1Zl9kZWJ1Z19zaG93
KHN0cnVjdCBzZXFfZmlsZSAqcywgdm9pZCAqdW51c2VkKQ0KPiAgCXNlcV9wcmludGYocywgIiUt
OHNcdCUtOHNcdCUtOHNcdCUtOHNcdGV4cF9uYW1lXHQlLThzXHRuYW1lXG4iLA0KPiAgCQkgICAi
c2l6ZSIsICJmbGFncyIsICJtb2RlIiwgImNvdW50IiwgImlubyIpOw0KPiAgDQo+IC0JbGlzdF9m
b3JfZWFjaF9lbnRyeShidWZfb2JqLCAmZGVidWdmc19saXN0LCBsaXN0X25vZGUpIHsNCj4gKwls
aXN0X2Zvcl9lYWNoX2VudHJ5KGJ1Zl9vYmosICZkbWFidWZfbGlzdCwgbGlzdF9ub2RlKSB7DQo+
ICANCj4gIAkJcmV0ID0gZG1hX3Jlc3ZfbG9ja19pbnRlcnJ1cHRpYmxlKGJ1Zl9vYmotPnJlc3Ys
IE5VTEwpOw0KPiAgCQlpZiAocmV0KQ0KPiBAQCAtMTY3NiwxMSArMTY2NiwxMSBAQCBzdGF0aWMg
aW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkN
Cj4gIA0KPiAgCXNlcV9wcmludGYocywgIlxuVG90YWwgJWQgb2JqZWN0cywgJXp1IGJ5dGVzXG4i
LCBjb3VudCwgc2l6ZSk7DQo+ICANCj4gLQltdXRleF91bmxvY2soJmRlYnVnZnNfbGlzdF9tdXRl
eCk7DQo+ICsJbXV0ZXhfdW5sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQo+ICAJcmV0dXJuIDA7
DQo+ICANCj4gIGVycm9yX3VubG9jazoNCj4gLQltdXRleF91bmxvY2soJmRlYnVnZnNfbGlzdF9t
dXRleCk7DQo+ICsJbXV0ZXhfdW5sb2NrKCZkbWFidWZfbGlzdF9tdXRleCk7DQo+ICAJcmV0dXJu
IHJldDsNCj4gIH0NCj4gIA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgg
Yi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiBpbmRleCAzNjIxNmQyOGQ4YmQuLmViY2QyMDgy
NzJiZiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgNCj4gKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtYnVmLmgNCj4gQEAgLTE4LDYgKzE4LDcgQEANCj4gICNpbmNsdWRlIDxs
aW51eC9lcnIuaD4NCj4gICNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPg0KPiAgI2luY2x1
ZGUgPGxpbnV4L2xpc3QuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC9tdXRleC5oPg0KPiAgI2luY2x1
ZGUgPGxpbnV4L2RtYS1tYXBwaW5nLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvZnMuaD4NCj4gICNp
bmNsdWRlIDxsaW51eC9kbWEtZmVuY2UuaD4NCj4gQEAgLTM3MCwxMCArMzcxLDggQEAgc3RydWN0
IGRtYV9idWYgew0KPiAgCSAqLw0KPiAgCXN0cnVjdCBtb2R1bGUgKm93bmVyOw0KPiAgDQo+IC0j
aWYgSVNfRU5BQkxFRChDT05GSUdfREVCVUdfRlMpDQo+ICAJLyoqIEBsaXN0X25vZGU6IG5vZGUg
Zm9yIGRtYV9idWYgYWNjb3VudGluZyBhbmQgZGVidWdnaW5nLiAqLw0KPiAgCXN0cnVjdCBsaXN0
X2hlYWQgbGlzdF9ub2RlOw0KPiAtI2VuZGlmDQo+ICANCj4gIAkvKiogQHByaXY6IGV4cG9ydGVy
IHNwZWNpZmljIHByaXZhdGUgZGF0YSBmb3IgdGhpcyBidWZmZXIgb2JqZWN0LiAqLw0KPiAgCXZv
aWQgKnByaXY7DQo+IEBAIC01NTYsNiArNTU1LDkgQEAgc3RydWN0IGRtYV9idWZfZXhwb3J0X2lu
Zm8gew0KPiAgCXN0cnVjdCBkbWFfYnVmX2V4cG9ydF9pbmZvIG5hbWUgPSB7IC5leHBfbmFtZSA9
IEtCVUlMRF9NT0ROQU1FLCBcDQo+ICAJCQkJCSAub3duZXIgPSBUSElTX01PRFVMRSB9DQo+ICAN
Cj4gK2V4dGVybiBzdHJ1Y3QgbGlzdF9oZWFkIGRtYWJ1Zl9saXN0Ow0KPiArZXh0ZXJuIHN0cnVj
dCBtdXRleCBkbWFidWZfbGlzdF9tdXRleDsNCj4gKw0KPiAgLyoqDQo+ICAgKiBnZXRfZG1hX2J1
ZiAtIGNvbnZlbmllbmNlIHdyYXBwZXIgZm9yIGdldF9maWxlLg0KPiAgICogQGRtYWJ1ZjoJW2lu
XQlwb2ludGVyIHRvIGRtYV9idWYNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJv
LW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
