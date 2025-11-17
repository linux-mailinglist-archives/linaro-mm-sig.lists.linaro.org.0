Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C83B2C6360B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 10:57:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9FB5D3F8F1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Nov 2025 09:57:06 +0000 (UTC)
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11012050.outbound.protection.outlook.com [52.101.53.50])
	by lists.linaro.org (Postfix) with ESMTPS id 1FB683F820
	for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Nov 2025 09:56:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b="wY/UDCRX";
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.53.50 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=opMvjPuJhWcmQp0biFOJxfD+ZeQFJTh0R78GtTzP1npXM6NxUysjxVLLtGJRPImRcHxCyIimDzQiZRvNvj5OC5mEP1oBqqp6n94F5o4Jv5oz/kSEzNbe18vRrjLa0qLxQRXrOJmmG877dvUhSM/D6IKQTHFRn+Aza0xjH2Hu+X5YOy43hW0D43vhuMq8CQkgzn7fFdv935ZKSTMNwC2ZYSBRMx3dOkPxKYwyoi3kYCDDj9yssHcQDwb5+fSmqchrgOxOp0LbPIeZEhozh7CerRWuRohHJ2aN/VGlDXhoCLADwyxF4lkFAsUn9VQS8FLmRtjor1CXMf5okIjZhXlsNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bg9KeI0QS6YpRayEK/9OeU5uNFhUzOwEHT2JKCl/klQ=;
 b=TbbmRBt9qyLZE+MA/zPst+MZcRQPahhVLnbS+xDxbmIxIUxUaFvdS9rKmsjyeRBwUI0oTBl00y9ADIwoU4M06sdHHuBWvohXM2LaLY35rz32xU9etgClX2xGJFb5oXHoANpXUJYI84aWlFDjWNF/ZRNhxurS1rFvFVhUlOyDx/6CGo2abng0qF+ruAVZ8tuYd3CmZsLkFLy1bDG4qZpuTjaUJcIgkH9bvjFxVkeSGXHJOx2pm7QmCPn4My3/WVS6HN4+6+PToHV5gg9LWrZ+EUNANEBNfiUSczuv31FJCC614ebioXVXWfbnmJ9eNgeg/JEATMXp60wL0nhx3wF/Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bg9KeI0QS6YpRayEK/9OeU5uNFhUzOwEHT2JKCl/klQ=;
 b=wY/UDCRXv0uqyHDX5Sbs8ljbemuXWuQH/Bri0ECNao38CgktsO644kT/JPTkbW3kmM+3rk5IjxcNvANIksHyi7GlJpZPsxqQepYNpm1J0mf/zRf5ISa0c60JhTKDHViIZZ12GZwZ63Gd+Jm4F5UGDWwMQnQjaeRlREuTEtPZefU=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH3PR12MB8711.namprd12.prod.outlook.com (2603:10b6:610:176::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 09:56:47 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 09:56:47 +0000
Message-ID: <8558c1cf-6a05-429f-80cf-e196ab9ddec1@amd.com>
Date: Mon, 17 Nov 2025 10:56:02 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
 <20251113160632.5889-19-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251113160632.5889-19-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: BN9PR03CA0567.namprd03.prod.outlook.com
 (2603:10b6:408:138::32) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH3PR12MB8711:EE_
X-MS-Office365-Filtering-Correlation-Id: 52a4a523-961b-4cbb-9b9a-08de25bf9f57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Rm5jSWtTUkRoVGhJaXliM2lRUDRPODB3OVYzU3Q0NWVjU2NWd3l6OERNZHhw?=
 =?utf-8?B?QkdxSXRtczZCL29VVGkyTVIvSkJmeFZKbkJqbERNWjQxRUNSMm9sRUtuajE2?=
 =?utf-8?B?U3FqaHVGblVCa0xyMStUdFlJUEZxemFkcjBLbks1d0ZUakZ4VVZxSEFmUnNC?=
 =?utf-8?B?TTFMQVlTYTVSWjVkK0wxUHprQnpMNUZhZE1mU2NPRGtOVjFYWk1EYzloN0Qz?=
 =?utf-8?B?cUtBRjVnWFNQdzVrVDNpU2J4SnViMmh4dHliQktaUzkyZ0F4YnZDaTNsai9F?=
 =?utf-8?B?YTl6ai9VRk1YYmxZZ2pFTC9zM0JCN01ST2ZCM1ZYSHJ4cXcrUUQ1TmZzMzlv?=
 =?utf-8?B?aXZDVU1aZTdPTW1YeU01WVlhZ3hoVlIzd0YwaDlMTDF6VktxS2MrR3hpdlgw?=
 =?utf-8?B?d0oyZFRFeEFrdjRBTXF4Q01lamRVZHA2TE9ySjkrT2NoaVpzdHlyL1V0ZmVm?=
 =?utf-8?B?aEVQY3VHTi83QVQzejltOGQ5eXhpUGxQTXJsayt5dzJsdUtXejVyM1hXdGFB?=
 =?utf-8?B?NTJReDdNRVFyNksxNHVrT0xhYVY3TThaQU5BTHgxVFJlZ1RmVGNoL3RKbU50?=
 =?utf-8?B?am12dnJab3JoUHVpNGlGS2t6MzhocWVZSGhHTGI2N2ZYV2VaY3RaOVFUQ1d4?=
 =?utf-8?B?S2FDdlhLWDlQSGd6OVBYVldZM1JNRm16OTdWeVA5UUhDY0J2NmZvUFp0bTdG?=
 =?utf-8?B?RTlWeUVJaU54QUxZWHZaOUQwYksvYXhEcSs3TEdLeGRDQkdKWVQra3NESkpi?=
 =?utf-8?B?OUhhbE9heEp1WXBwaFQ4R1k2b2gxSDJCRVZlTUp2VXBnZ0VsaVF2V0VsR3Bi?=
 =?utf-8?B?WWEreW5DbHZEc0x5aGdVZDZpUU1CYlgzVkh2SHFkRW9PdnZWWVRHM0h5VXNK?=
 =?utf-8?B?ckJxZk9EQ2cwdzdZRHhyUzdyRGJJdjdrOG4yeldzRlVTZzJ1QTdXUUswbzdS?=
 =?utf-8?B?S0tmNFBvQkVwVUgrNTRXRXBaN0JSRmMzUjlJa1BQZTJsQUpybm5iOENPQ0kr?=
 =?utf-8?B?Zjk3YjZ1MnZ0bVZKZThvRERTU0NnaG1jUDl5ejZDKzA2bnZtY29xTmd2RHBR?=
 =?utf-8?B?ZXJCYTdjN290OS9manA1b1pST3ZqMjh3ejZSQ3pyWFR0T3BSL1FaRnVVdE1D?=
 =?utf-8?B?NnZkS3BqY1JoRktSWjhCblFJelNpQ2o1aVdwM2RKWktOeW8xbmtXdS9qd3Z0?=
 =?utf-8?B?akR4K1pxUTJLdFBSZlB6K0tIblljVWZ5QTV5UVdSNXRKYkFxem5xcVpYd0p5?=
 =?utf-8?B?VTYvUk1SWk4xRXk0UGJUVmZnMERxZDZPL1lkSitxd09teVkwVm0yTUx0d2N1?=
 =?utf-8?B?TXdpKzJ2UmsxcXBsSFkzK1NxYXM1S24rYVVEQ3hKNTJYazdQeHhWeTdvMDAz?=
 =?utf-8?B?cTlUUHlpSDhyZE9FZjducGRqdDRHdjBsaTNwbVJsYWZyaW5vVzhPQ05NZnc5?=
 =?utf-8?B?QWtaVW1ETnM1em9yRW1hVWFqZUdUSVVEOWdPSkhrMnBSc3Q2ZC91VjJOdFpk?=
 =?utf-8?B?QTIrSFhjN2ozRTJHOEkvUlBTRWNaa1dwYkV6dTBlUThGajdMVkovOHZ6R0VO?=
 =?utf-8?B?UjRQWHprcFVGWVVCdW9paEZHelUwLzE2Vm45YnFpbHhQVDUyc0F6Z3dId0Rm?=
 =?utf-8?B?NGJiMXp5UnlydEdOMlpvTnFXWFdGekVZaTY0TmtaOHUvais1V3RGZThRRWhV?=
 =?utf-8?B?dktMQVdaT2RqQW5VbmR2UTRJMkJlcFFHUU9YZjh1czcyWDVWWE1rV2NZMUFk?=
 =?utf-8?B?cXU5ME9GUGwyQ2dpT3prdTFPWE1jTlNJTWpOTGJqeE1ybFpVVDU0eEdaL0FM?=
 =?utf-8?B?WDRldldscGFxd3N4ZUZZWWdRTk4xZ3RlTmZjck1RKzV5b2JxdzNsbkZKamtp?=
 =?utf-8?B?djFJd0NPTjUvZElHaC83QTZLZVBwTDFNeGkyYU9TOHNYejdZYVl4OWhISWVt?=
 =?utf-8?Q?5J+SGTS/yQMZtLabYz3tUlLsbNW3gSeA?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?THdmdEZrY2wwSjVQVERpa0h3RkMzQXFnUGJyQjl1Y0NqbFpGWngyTDlEUGFk?=
 =?utf-8?B?dTh5VmNNbVVVWWpRc3lheGM3UHcxYm9hd2JoSnJkREtCVks0K01hUVlNeHNI?=
 =?utf-8?B?RzRhcEtTbVRnaVpMenBzb0lPMW1uZUZIUkljaGE1bWFTMHo3dlV1L0ZpVWVH?=
 =?utf-8?B?RUFnNnZ6YkFLM3pxWlFDRnNWZkRQVTIyUkZsL3NCN1l2L2VJL3dHRytBY3Ny?=
 =?utf-8?B?QlE5aHQwa0Z3U1JRbHpBWTYwMXArTE1OUi9NYnhyWHlLbVMzTjl4K0RpWGFX?=
 =?utf-8?B?ZW5VNTVpSURveU9OcS9rS1kxODhwSjhWOFZtaWtEdEpMb2pNWnVGcXAwd1l4?=
 =?utf-8?B?SnBJVlluMzBwQk0yRVBTenFzSnBKQnNCeC8wcFhXb3ZBb3pkSUxtZCtIcWZI?=
 =?utf-8?B?QnlTQXdtdHYrZmg1dUo5cU9WRisxbk9raGF1cHA1N2lrOHlVQnVGTEVqcWZt?=
 =?utf-8?B?RDNyYk1mUzU1WGxPYS9iNmNINkJENy90bXhBMEwxS0hnTjhUNi9CUU9lWVpB?=
 =?utf-8?B?Unh2c1VManU3N3ZNS0pnSVNFSHJhZ0hxSXRCeFdiV2JPM0s1QXJybU01WkxC?=
 =?utf-8?B?aGFzVWtkaHJEYnpBNFplT09TNmhUYkx6UjBQcmlLWjNMekdVekFoa0FIc3hr?=
 =?utf-8?B?ZjczTWQvenpVMjdWYnZEMy9hREg5a01neE5WVVA0enVhYVYvRDZTM3pqZXhy?=
 =?utf-8?B?ZU85MFRxQW9hL1BFUEI4czJSTnZyT3dEMm5tdWlYb1VhK2JybEdjRkV3UXRu?=
 =?utf-8?B?dUlxbElXeGt6Rm5yOC9INURKK3NLUmtYUkN0YTcwZ0p1TVkzQXpiN0NVYXRy?=
 =?utf-8?B?UnJCZEVZZmc1MER2YmtRRmIvYndtVmxOWksvODhmeXFWcHA1eHQvSlMrUXZI?=
 =?utf-8?B?a3orZDdpem0zcVlNUERrSWdpVVFObHNuelA4LzV4d0dEUFhKdnhYZVlFYjFC?=
 =?utf-8?B?RUZhVTYxSml6emVUYjlzWG4rakhFSmNGUVVTU0JaMnRnRnYzdmRsNytrMURI?=
 =?utf-8?B?VDZWS0JtMnU5WGp4a3N4cDczQVA2U0YvdXFyMElka0ZGNktiUDlmK1JEZ0JC?=
 =?utf-8?B?ZU5FNDI2SmVuMXdYOG04SjNxai92RGp6eUQvRkdGKzBkeWMxOFhpMktQa2Jj?=
 =?utf-8?B?ejd3bHVsZ0RqVFM2d3pOT0lCYy90YVZTTmlJbjN6TkJaSmtkYjZZRjZiVlov?=
 =?utf-8?B?a1hRdFlzSG4zSFV0a0dIRlA5WEhZR3FVRkR0SE9YMGdlS01kVDhoVkpVM3Ny?=
 =?utf-8?B?eUFWbGJNNktyVGhOSWZxOFUwb1NZZC90eEJwdm9uSG1YRnRUaElYYUhUbE93?=
 =?utf-8?B?RzFQcjFzRkQrM2VZZjZ4NGZZcEhhYVR3eWtCZVE1Um5WWUlZaEJXZDc3ekVB?=
 =?utf-8?B?L3dGZkdmUGVZZ2NWamh1OExpYXQ4NmllOFo2eVZNazFVUXdoeHlCVWI3S3Nr?=
 =?utf-8?B?M1BxS1dHaVVwdDNsMkdxVEJaWTFDb0dCcjdxUHZ0UWplOVFGaGVFUFJqVHND?=
 =?utf-8?B?Wmx1Vm9OcC9LQjMyb2F1eEpYbkEydUR5TmJPQ1h5MWNMWTVMZDlVNjVNRlYr?=
 =?utf-8?B?bGRYb0xNM3EwWFl2VmRrbFJVYURtQjNmc1lEZ3NNM3RmajZTVW40MythNW1R?=
 =?utf-8?B?amRIY3hIY05DVXdZV0EyeVN4cjh4V2k3aXp5Q2hRZXBpUFl5RDZYZGUyUTky?=
 =?utf-8?B?RkZ5ajlXMHRTNGRmSVFEaFlxTzZ5bzJSSTkzSk5pNHJnaW04dG9pdHl4MHcr?=
 =?utf-8?B?RVRhY2JkakpxTURjeFZBL2VJbk4zYkhBSUR3UFNvMDJ4Rm5RMEtqVE5ZUWVN?=
 =?utf-8?B?ZnFIdjhhdVFRTFdNZ05pQ09zZkZrSmQ0MTlHUEl2TzVQL2d6aHdCSTFGL3ZY?=
 =?utf-8?B?OTNqU1B6YjhkaFVvZDVzRzljSlpJdXZzVWZWOTZCMUpjRHhocnMxMm9BaFMv?=
 =?utf-8?B?TUdGMFlneUt4NmZMODFYZ1hTc1NLZDhzR1k3K0Ntbnp6bE1jelIwU2hFYk9x?=
 =?utf-8?B?UERJcWRWMldVbDUvekJKTkV1RUFoczFyWmRuQVhpRE0wY2gvR20wRHZmVWNB?=
 =?utf-8?B?QkxNd0xkQ1VPbGFVTkZVdXZ5dXJxZE53RDB1UjFiYmJlMmx6VFNNa29tZzBu?=
 =?utf-8?Q?At1coK9Yn1Sno6jvt/zBOaH1H?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a4a523-961b-4cbb-9b9a-08de25bf9f57
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2025 09:56:47.7685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HKzQojdqLGrv5UxS9DoNIXf8eAP3bKGr2lsP2q4ny0xnby9G4Fs70PhBYNVMTDAG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB8711
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.53.50:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1FB683F820
X-Spamd-Bar: -----
Message-ID-Hash: S2C3SBTOSFJLNUTY6DOFCTVJABZI5L2F
X-Message-ID-Hash: S2C3SBTOSFJLNUTY6DOFCTVJABZI5L2F
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 18/20] drm/amdgpu: rename amdgpu_fill_buffer as amdgpu_ttm_clear_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S2C3SBTOSFJLNUTY6DOFCTVJABZI5L2F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTMvMjUgMTc6MDUsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiBU
aGlzIGlzIHRoZSBvbmx5IHVzZSBjYXNlIGZvciB0aGlzIGZ1bmN0aW9uLg0KPiANCj4gLS0tDQo+
IHYyOiBhbWRncHVfdHRtX2NsZWFyX2J1ZmZlciBpbnN0ZWFkIG9mIGFtZGdwdV9jbGVhcl9idWZm
ZXINCj4gLS0tDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBQaWVycmUtRXJpYyBQZWxsb3V4LVByYXll
ciA8cGllcnJlLWVyaWMucGVsbG91eC1wcmF5ZXJAYW1kLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9vYmplY3QuYyB8ICA4ICsrKy0tLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyAgICB8IDI2ICsrKysrKysr
KystLS0tLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0u
aCAgICB8IDE1ICsrKysrKy0tLS0tLS0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9u
cygrKSwgMjYgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X29iamVjdC5jDQo+IGluZGV4IDQ0OTBiMTk3NTJiOC4uNGI5NTE4MDk3ODk5IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jDQo+IEBAIC03
MjUsOCArNzI1LDggQEAgaW50IGFtZGdwdV9ib19jcmVhdGUoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYsDQo+ICAJICAgIGJvLT50Ym8ucmVzb3VyY2UtPm1lbV90eXBlID09IFRUTV9QTF9WUkFN
KSB7DQo+ICAJCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlOw0KPiAgDQo+IC0JCXIgPSBhbWRncHVf
ZmlsbF9idWZmZXIoTlVMTCwgYm8sIDAsIE5VTEwsICZmZW5jZSwgTlVMTCwNCj4gLQkJCQkgICAg
ICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9KT0JfSURfVFRNX0NMRUFSX0JVRkZFUik7DQo+ICsJCXIg
PSBhbWRncHVfdHRtX2NsZWFyX2J1ZmZlcihOVUxMLCBibywgTlVMTCwgJmZlbmNlLCBOVUxMLA0K
PiArCQkJCQkgICAgdHJ1ZSwgQU1ER1BVX0tFUk5FTF9KT0JfSURfVFRNX0NMRUFSX0JVRkZFUik7
DQo+ICAJCWlmICh1bmxpa2VseShyKSkNCj4gIAkJCWdvdG8gZmFpbF91bnJlc2VydmU7DQo+ICAN
Cj4gQEAgLTEzMjQsOCArMTMyNCw4IEBAIHZvaWQgYW1kZ3B1X2JvX3JlbGVhc2Vfbm90aWZ5KHN0
cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqYm8pDQo+ICAJaWYgKHIpDQo+ICAJCWdvdG8gb3V0Ow0K
PiAgDQo+IC0JciA9IGFtZGdwdV9maWxsX2J1ZmZlcihOVUxMLCBhYm8sIDAsICZiby0+YmFzZS5f
cmVzdiwgJmZlbmNlLCBOVUxMLA0KPiAtCQkJICAgICAgIGZhbHNlLCBBTURHUFVfS0VSTkVMX0pP
Ql9JRF9DTEVBUl9PTl9SRUxFQVNFKTsNCj4gKwlyID0gYW1kZ3B1X3R0bV9jbGVhcl9idWZmZXIo
TlVMTCwgYWJvLCAmYm8tPmJhc2UuX3Jlc3YsICZmZW5jZSwgTlVMTCwNCj4gKwkJCQkgICAgZmFs
c2UsIEFNREdQVV9LRVJORUxfSk9CX0lEX0NMRUFSX09OX1JFTEVBU0UpOw0KPiAgCWlmIChXQVJO
X09OKHIpKQ0KPiAgCQlnb3RvIG91dDsNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3R0bS5jDQo+IGluZGV4IGRmMDU3NjhjMzgxNy4uMGE1NWJjNGVhOTFmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+IEBAIC00MzMsOSArNDMz
LDkgQEAgc3RhdGljIGludCBhbWRncHVfbW92ZV9ibGl0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVj
dCAqYm8sDQo+ICAJICAgIChhYm8tPmZsYWdzICYgQU1ER1BVX0dFTV9DUkVBVEVfVlJBTV9XSVBF
X09OX1JFTEVBU0UpKSB7DQo+ICAJCXN0cnVjdCBkbWFfZmVuY2UgKndpcGVfZmVuY2UgPSBOVUxM
Ow0KPiAgDQo+IC0JCXIgPSBhbWRncHVfZmlsbF9idWZmZXIoZW50aXR5LA0KPiAtCQkJCSAgICAg
ICBhYm8sIDAsIE5VTEwsICZ3aXBlX2ZlbmNlLCBmZW5jZSwNCj4gLQkJCQkgICAgICAgZmFsc2Us
IEFNREdQVV9LRVJORUxfSk9CX0lEX01PVkVfQkxJVCk7DQo+ICsJCXIgPSBhbWRncHVfdHRtX2Ns
ZWFyX2J1ZmZlcihlbnRpdHksDQo+ICsJCQkJCSAgICBhYm8sIE5VTEwsICZ3aXBlX2ZlbmNlLCBm
ZW5jZSwNCj4gKwkJCQkJICAgIGZhbHNlLCBBTURHUFVfS0VSTkVMX0pPQl9JRF9NT1ZFX0JMSVQp
Ow0KPiAgCQlpZiAocikgew0KPiAgCQkJZ290byBlcnJvcjsNCj4gIAkJfSBlbHNlIGlmICh3aXBl
X2ZlbmNlKSB7DQo+IEBAIC0yNDE4LDExICsyNDE4LDEwIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0
bV9maWxsX21lbShzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQo+ICB9DQo+ICANCj4gIC8qKg0K
PiAtICogYW1kZ3B1X2ZpbGxfYnVmZmVyIC0gZmlsbCBhIGJ1ZmZlciB3aXRoIGEgZ2l2ZW4gdmFs
dWUNCj4gKyAqIGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyIC0gZmlsbCBhIGJ1ZmZlciB3aXRoIDAN
Cj4gICAqIEBlbnRpdHk6IG9wdGlvbmFsIGVudGl0eSB0byB1c2UuIElmIE5VTEwsIHRoZSBjbGVh
cmluZyBlbnRpdGllcyB3aWxsIGJlDQo+ICAgKiAgICAgICAgICB1c2VkIHRvIGxvYWQtYmFsYW5j
ZSB0aGUgcGFydGlhbCBjbGVhcnMNCj4gICAqIEBibzogdGhlIGJvIHRvIGZpbGwNCj4gLSAqIEBz
cmNfZGF0YTogdGhlIHZhbHVlIHRvIHNldA0KPiAgICogQHJlc3Y6IGZlbmNlcyBjb250YWluZWQg
aW4gdGhpcyByZXNlcnZhdGlvbiB3aWxsIGJlIHVzZWQgYXMgZGVwZW5kZW5jaWVzLg0KPiAgICog
QG91dF9mZW5jZTogdGhlIGZlbmNlIGZyb20gdGhlIGxhc3QgY2xlYXIgd2lsbCBiZSBzdG9yZWQg
aGVyZS4gSXQgbWlnaHQgYmUNCj4gICAqICAgICAgICAgICAgIE5VTEwgaWYgbm8gam9iIHdhcyBy
dW4uDQo+IEBAIC0yNDMyLDE0ICsyNDMxLDEzIEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3R0bV9maWxs
X21lbShzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQo+ICAgKiBAa19qb2JfaWQ6IHRyYWNlIGlk
DQo+ICAgKg0KPiAgICovDQo+IC1pbnQgYW1kZ3B1X2ZpbGxfYnVmZmVyKHN0cnVjdCBhbWRncHVf
dHRtX2J1ZmZlcl9lbnRpdHkgKmVudGl0eSwNCj4gLQkJICAgICAgIHN0cnVjdCBhbWRncHVfYm8g
KmJvLA0KPiAtCQkgICAgICAgdWludDMyX3Qgc3JjX2RhdGEsDQo+IC0JCSAgICAgICBzdHJ1Y3Qg
ZG1hX3Jlc3YgKnJlc3YsDQo+IC0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqb3V0X2ZlbmNl
LA0KPiAtCQkgICAgICAgc3RydWN0IGRtYV9mZW5jZSAqZGVwZW5kZW5jeSwNCj4gLQkJICAgICAg
IGJvb2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KPiAtCQkgICAgICAgdTY0IGtfam9iX2lkKQ0K
PiAraW50IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9l
bnRpdHkgKmVudGl0eSwNCj4gKwkJCSAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCj4gKwkJCSAg
ICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+ICsJCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqKm91
dF9mZW5jZSwNCj4gKwkJCSAgICBzdHJ1Y3QgZG1hX2ZlbmNlICpkZXBlbmRlbmN5LA0KPiArCQkJ
ICAgIGJvb2wgY29uc2lkZXJfY2xlYXJfc3RhdHVzLA0KPiArCQkJICAgIHU2NCBrX2pvYl9pZCkN
Cj4gIHsNCj4gIAlzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiA9IGFtZGdwdV90dG1fYWRldihi
by0+dGJvLmJkZXYpOw0KPiAgCXN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlID0gTlVMTDsNCj4gQEAg
LTI0ODYsNyArMjQ4NCw3IEBAIGludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90
dG1fYnVmZmVyX2VudGl0eSAqZW50aXR5LA0KPiAgCQkJZ290byBlcnJvcjsNCj4gIA0KPiAgCQly
ID0gYW1kZ3B1X3R0bV9maWxsX21lbShyaW5nLCAmZW50aXR5LT5iYXNlLA0KPiAtCQkJCQlzcmNf
ZGF0YSwgdG8sIGN1cl9zaXplLCByZXN2LA0KPiArCQkJCQkwLCB0bywgY3VyX3NpemUsIHJlc3Ys
DQo+ICAJCQkJCSZuZXh0LCB0cnVlLCBrX2pvYl9pZCk7DQo+ICAJCWlmIChyKQ0KPiAgCQkJZ290
byBlcnJvcjsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV90dG0uaCBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaA0KPiBpbmRl
eCBlMDFjMjE3M2Q3OWYuLjU4NWFlZTlhMTczYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uaA0KPiBAQCAtMTgxLDE0ICsxODEsMTMgQEAgaW50IGFtZGdwdV9j
b3B5X2J1ZmZlcihzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsDQo+ICAJCSAgICAgICBzdHJ1Y3Qg
ZG1hX3Jlc3YgKnJlc3YsDQo+ICAJCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoqZmVuY2UsDQo+
ICAJCSAgICAgICBib29sIHZtX25lZWRzX2ZsdXNoLCB1aW50MzJfdCBjb3B5X2ZsYWdzKTsNCj4g
LWludCBhbWRncHVfZmlsbF9idWZmZXIoc3RydWN0IGFtZGdwdV90dG1fYnVmZmVyX2VudGl0eSAq
ZW50aXR5LA0KPiAtCQkgICAgICAgc3RydWN0IGFtZGdwdV9ibyAqYm8sDQo+IC0JCSAgICAgICB1
aW50MzJfdCBzcmNfZGF0YSwNCj4gLQkJICAgICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4g
LQkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKipvdXRfZmVuY2UsDQo+IC0JCSAgICAgICBzdHJ1
Y3QgZG1hX2ZlbmNlICpkZXBlbmRlbmN5LA0KPiAtCQkgICAgICAgYm9vbCBjb25zaWRlcl9jbGVh
cl9zdGF0dXMsDQo+IC0JCSAgICAgICB1NjQga19qb2JfaWQpOw0KPiAraW50IGFtZGdwdV90dG1f
Y2xlYXJfYnVmZmVyKHN0cnVjdCBhbWRncHVfdHRtX2J1ZmZlcl9lbnRpdHkgKmVudGl0eSwNCj4g
KwkJCSAgICBzdHJ1Y3QgYW1kZ3B1X2JvICpibywNCj4gKwkJCSAgICBzdHJ1Y3QgZG1hX3Jlc3Yg
KnJlc3YsDQo+ICsJCQkgICAgc3RydWN0IGRtYV9mZW5jZSAqKm91dF9mZW5jZSwNCj4gKwkJCSAg
ICBzdHJ1Y3QgZG1hX2ZlbmNlICpkZXBlbmRlbmN5LA0KPiArCQkJICAgIGJvb2wgY29uc2lkZXJf
Y2xlYXJfc3RhdHVzLA0KPiArCQkJICAgIHU2NCBrX2pvYl9pZCk7DQo+ICANCj4gIGludCBhbWRn
cHVfdHRtX2FsbG9jX2dhcnQoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibyk7DQo+ICB2b2lk
IGFtZGdwdV90dG1fcmVjb3Zlcl9nYXJ0KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqdGJvKTsN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
