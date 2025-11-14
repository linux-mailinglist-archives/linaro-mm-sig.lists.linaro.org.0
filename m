Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 47396C5D2BD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Nov 2025 13:48:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 519783F841
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Nov 2025 12:48:52 +0000 (UTC)
Received: from CH5PR02CU005.outbound.protection.outlook.com (mail-northcentralusazon11012052.outbound.protection.outlook.com [40.107.200.52])
	by lists.linaro.org (Postfix) with ESMTPS id ECA2B3F7F5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 12:48:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=eyG0KdFz;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.200.52 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z9Dx0TOQjw6bNpZMqwuCiaprdytOU1IONgmIHSFEUztdhO4DIq+c9nNQVFROBrXfWzaCTGTiJZxlskS/Lk+oS03H/oOliUdUD9KVxfNR3EHBDb4FnUVC7BlFGtusznH3FcIg3TYZWswAym/nxdCMcs+QOZRuodv4owmYvn4xUP0b7iG1JJgwudfj7chkkKMG9vG0iP7msVBjcW8P/7iOQzzqDTwsTwnOdlb19irtKiPbpiCbE3AjR7yGcsx8DKqFAC2Day4ckyk5uuzFPVl22Qm2zhLyhV1qNHzL3gpzIxrtcVUqgydfp/lU1lVUY8yvuQeI8vBXJPzt5tfEtYa/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15uxABcUX07m2TCww+P7Q5NrlvDXUvQkTWfmpWM/yfE=;
 b=wK0TduYI+G8G9RxL8aaAYI5RGZsymLm+wWOTzaP6J835FnfvBehs2vMKwO3CMICzXty4K6gvxzX5yu+httK3iYClXuheysjlOP/HskxyXNlXhw5G9gx/c5fMPzwkyxi8kb0W17m3aJYb9g7BcdoEGeiAgRYT5PEisMXH69oHWpFns6Uva3/R8aheBDW5ZCuEBXyYeHcUL9/KtcUF99a6tenx9eD8PnlwyPafksW2a/Gp/A+DBvIdY9lsGufLSMpKJmzgKAMtqiKh2JUHP9L7FJxNSDdjpwOy8Kn+d0O2PReX9XIhxA4WQfW+Zoo3wBjHZJBvTTUWEXqE4dqErcLucA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15uxABcUX07m2TCww+P7Q5NrlvDXUvQkTWfmpWM/yfE=;
 b=eyG0KdFz467BmGfnapOWs/JlL7TpJmrWqz+F2HAhhFm0TkPdQPfNeo9P9z0Uw8ELci0fF25ZaehH3lmJV4ObAuHxnh1x1jweqbkYzLlIebxQzf72j7+roj7splUYprXXERVcc7lAb8IS3ptYCRseg3EBby4fcM5ZZc4GnSD8xAM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA1PR12MB7518.namprd12.prod.outlook.com (2603:10b6:208:419::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Fri, 14 Nov
 2025 12:48:36 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.013; Fri, 14 Nov 2025
 12:48:36 +0000
Message-ID: <0fa6c985-a175-4316-a983-4ce11e4da154@amd.com>
Date: Fri, 14 Nov 2025 13:48:30 +0100
User-Agent: Mozilla Thunderbird
To: Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20251113160632.5889-1-pierre-eric.pelloux-prayer@amd.com>
 <20251113160632.5889-4-pierre-eric.pelloux-prayer@amd.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251113160632.5889-4-pierre-eric.pelloux-prayer@amd.com>
X-ClientProxiedBy: FR4P281CA0119.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:bb::14) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA1PR12MB7518:EE_
X-MS-Office365-Filtering-Correlation-Id: 92f99bf1-eec6-48b3-6954-08de237c20a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZnZ6anpUMW81a0JBUlBUQXRiTDBvUzZkalZPNTlHclAra3hTb1RsdDBZeU1O?=
 =?utf-8?B?MGx4RG1BTjZOckJ4eE56c1pYN0o5bnczNHprMHZRWm5uRFMyN0k5bzVjc1I0?=
 =?utf-8?B?Y0NrOFZJc0ZEeVZ6eEpwR0grZG1GZ3p0NWVBcFJhUUlsUTdQNW03S0NJakc0?=
 =?utf-8?B?SnpMK1JTQjBWSXB2bGZBUU83RWkzUzVpUDNXcC9CbjBPeE1ubitNb1dqNE41?=
 =?utf-8?B?NmZmeHdxczhFUkQ2NDhLaFh5bk0xbEQxclVYNVJZMjhJc2ZHMGJ1QnZKSnZn?=
 =?utf-8?B?dFpoU0lJTTA4UTNqU0JSSGNnRmFXcXdWeXRLbi91VHAxUUxRRmFkVHNlTE1w?=
 =?utf-8?B?ZGtMclRPVzZXNHlGRVFpeEtOVGY3WkgwbjI2MVlvNGRER3o0NnFDeWtScFZ2?=
 =?utf-8?B?VTRCQ25NUnZkbWZkOHRiVXdnanVtQkcxYTNaeUhMUzRHeDVoMFhseHFwbTcw?=
 =?utf-8?B?S3Q3UFlLWk1VS1pvakZxUHRPbU93ek01MWttcEdjdFZqUUJWdjNSN09XUExX?=
 =?utf-8?B?d20xMEpiVzNhQmdIemZxS0xHeXpxbTBkVFNndVRSMkVweEVpajM5MUZTRFpR?=
 =?utf-8?B?WUQ3VmIrOENjZ1NhTmlIQStDVFY4Zi9FSjB0dFBzNVAxalpxRjNiVFBMTlRJ?=
 =?utf-8?B?WHhxbzArclN0MlQ2Z09sWTZubGVzUTFuU3h0clczcDNQKytwSm9BRVlRWEx3?=
 =?utf-8?B?SXA1QmRMYk9ROU1KaEhKQWtTYmdtdXB3M245NC92RXhNeWd1bWRuN1hmMUNl?=
 =?utf-8?B?RlB4OTNwZXU0bFEzU1F0aXdYbHdBVHNtMnV5UENaaGJOc1dGdXhIejd5V2Z6?=
 =?utf-8?B?MVhlRjM3ZFVlYlFHMld0U2JIb1VWZTZzazYwUG4yaWUzUk93YnB6MTcrR0pM?=
 =?utf-8?B?SDlnekhKWFN6MUZtUTNJWFA4MlFLWVRiSUMydzJUdlZuQmpDWUNXZHVnRkxa?=
 =?utf-8?B?NjFTTW5DYmVLdjRRbW14THFia2I2ODJlZWxvcHFONGxrbm1oUmtYeTloZXhv?=
 =?utf-8?B?Zlg0QURUSnhnSENXM3RDUnZuS2NlWk9IanJ1b3RtdElaOTFyNzJCL3BOV2RT?=
 =?utf-8?B?S0ZsanVKdTE3aXpJdjJEMjZsUXpHSTFwekdXZFdEMm5lR2NjaXBrQm1ISklv?=
 =?utf-8?B?UXBONGQ3QVl5VnlZZUM4MTZwQWwyZkYzWXl1ZFZFcFZlSFJxNkpJdGg2SWEr?=
 =?utf-8?B?WUVrRUNSblorMFBhQ3I0OEpVaGFGYzNjZms5eTVNQUllUTFHNER6amtpRFJR?=
 =?utf-8?B?MW02dzBxWHQxOElUZXhsaVhiWmpjd3h0Ujkwd3NmMXBIVzRGSEdXZll3Q2E0?=
 =?utf-8?B?MTdZaGVLaG4zT2RxWUZpK2N3VDFkMERja0FQclJES0xVaXhwL1hycWszNllj?=
 =?utf-8?B?ajk0N3lud1pDZVJuVDllaitqdVJ2TkwrYTNGT3VIMWxVa3JtRHRPN3hKdmdM?=
 =?utf-8?B?YStWRFJNS0lHc0U0VnBZZkd4bXpUSDl2eGo5U2hIRllNTTBxaENrS0loekls?=
 =?utf-8?B?cUxtYm91OEE0WlA5Rk9rZkNxWk1rUDRwUklMZDdVSEt3dERjcERMYTk0SkhP?=
 =?utf-8?B?Njd0WHJUU0lPbnJKWHA4by9oc3Q5T1BXWk5QRjhNcmhkcmlaRzBTTGFGckZW?=
 =?utf-8?B?MHRnWXVrTCtXTEt1TnNSK3I5UnBvZ0xrWlZxTmNFR3drdk95UHd0blFYcHA2?=
 =?utf-8?B?RWV4aFFvYUs3dlQwY3FRRWJwRXVnazZsTHB4aFQya1lOVEgrZ2ovQW54eGRx?=
 =?utf-8?B?c3kvT2xhVG5HNzcrR2RPbGNpSDFjL2sxejFqd1FPclR2eEMzWGxReGdVQUlS?=
 =?utf-8?B?bDdwcXluaXVJZDlPZTRxclBvZldodjBYN2w3amRCekVvVmo1RTFMN1hyYVFY?=
 =?utf-8?B?VkhtUzdQZ3d0TUl1c2Z6U1pmVGhrRTFIdVZzd2EzaUo5S0hYWmo4MHlGMzZL?=
 =?utf-8?Q?U/OG4KS7do9dNFCunGZ8+XQGFmHGYYwn?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NzEyRlNkUmplR3NsdjJvNGNSTWlrUitMWVFUVDQrUS9nOGJRcSt1d0lEcHQv?=
 =?utf-8?B?RE9seGNaM3V4Risxdi9peExRMWpKYyt0eWNhbGRpN0tkeWVOcjNGTjI4TitE?=
 =?utf-8?B?Z0l6TzhrbUsxcHdBY2o2aURydFExNi8vQk1RQ0cvdXVvNURjdlFHTEJKZ1ZU?=
 =?utf-8?B?c0JyTGEzOVhwbm0vUWwybEFDUGxVbnRRRDVicXBjVmpQZ1FkSURDUkFodFp2?=
 =?utf-8?B?dmFYSi9BYnAvVTRtS2VPcHZjcXZLVnZXOVhQc2J6Z0dOejhNK3Rud1lGTjhM?=
 =?utf-8?B?RGlRVzJKN2hFWWFHdGgvTDA5a0Qvd0xTM3haNWh1M3BSTy9ZSlE0anVJVG11?=
 =?utf-8?B?cGZVbFJOZ0YyS2JkWjdqTzAwc253QXV0OE9NYlFQTzFLNGZIQUx4WitYZ0Ez?=
 =?utf-8?B?VlFCeit5SXBUczdYT01uT3ZraHVlcWs2SzM3ZU9PU2ZpODlZb1FMT2ZnWFNp?=
 =?utf-8?B?c1Vka3YrVTNETTVrWmZRaXlBNHN2bzNpK1orN1NmYjNiU1lMMXE0dkxGK0sz?=
 =?utf-8?B?a3I3NGJIeFl0N2cxc1ZITGFyQy9Kbnl3R3AwZmdXcWdkd3FVWnNGYkZsK1Ba?=
 =?utf-8?B?OVdFUU9HeG9uRVliRU5mQkxGUDh0Z216NHlSL2dtcktVa2ZtTlZDaDFUMmtl?=
 =?utf-8?B?S1J5N2pVSEhMdnZrUTBFNkI3MUNjWkJONnpPV1BJOHJkcFRWV3UybTMyQjli?=
 =?utf-8?B?QlRlQ2hCaWhWQ3Bsa2REazlMeHUrSXFFYlNvallyNVNFbGtkVC9aT0VhU04x?=
 =?utf-8?B?T2hVUzlvbE1Kbk1GbGFqcGdNbkRJdnNjcE1kS2JBMVluMExXTGdmL2gvZDFn?=
 =?utf-8?B?QkZnYldCWHRybThRUGwza2I2cHJVdUt1dEl6TGwyTXdpVFIyaUN6R2V2UVZ6?=
 =?utf-8?B?WmM2SHJUaGVIelpibWZUaGhIZVdIdDZEUENHQTZvUkNtQzQ5WWVNNFV4ZmFM?=
 =?utf-8?B?MHpPUnA3NEtCZmZudmN2aTZXRDc0dFliQy9iRE9PWFNhUjgzTTBxVTU1dW9t?=
 =?utf-8?B?end0amdyeXVTMnB2MGxUdE1nQmhYN2FZb09SVmJ2bS9NTjlMN0NWTzlFK3c5?=
 =?utf-8?B?SDVXdTRKKzIrdU4zOHNJWXRhYlI5WTlYdE1PWndSOHRwZk9OYUR2SWpzMVAw?=
 =?utf-8?B?dkltQ0ZUK0orWGUvRkNXV1BFWkdnanFEakpxVlhFTXpyMnRMcmpmbmtYaWx3?=
 =?utf-8?B?WlV4QSt2cXQwVTlQRkdoVkYxSEMwMVp3YlJEeDZrbjJ0Tng0K1lPSGVOeGdw?=
 =?utf-8?B?YUhadnNrekI0VHhwQ3c4M3FQUzdUbHcyN3ZXOFY5eVdGUlhrQkxwdVhpZTlp?=
 =?utf-8?B?SldPSkk4OUI2K3JJNzlXallPaGMycnZVUzh4enVHZGxCK1htd3V0WmtvMTJq?=
 =?utf-8?B?b0kycDM2Yzh2VkZGWkNLSjN5Qk9YeDQ1QjFYRTFFMGhKenBJajVGb0VDNTFN?=
 =?utf-8?B?M2xDYzd5aEtoZ1lEbXlDQVRjK0kxNGNxRkh6Y1lKc3MzanV0aENTQm9nT3Vm?=
 =?utf-8?B?ZU9DS1Q2QmdVZU5jREQzejhQRUdWQmlDdFJyNGlFYmk0dXBpd0pkQlNsNno5?=
 =?utf-8?B?cW8wTUFzcjhudmp2UXk2ODd0TlJKbXpZMHlYdVZwek0vL0Y2MUJsSjhlUWUx?=
 =?utf-8?B?c2dCeFp1NkFuVVV1WWc3WVk3M29sNGpiRm1XeE1sVUw3TGFVNit5eHA4VWR2?=
 =?utf-8?B?cGZMd0trTmpjNHF0TEJHVWRVRTRhQlNuNDFrUjNoazhQZzdoOHZOcDJ6cThU?=
 =?utf-8?B?d2VCNDJrdmxzdCt4RzEwNmN4QnpNZGc4aWxRVTFBb1hjQTV5cnNtN3BEYWFl?=
 =?utf-8?B?VzdUbmxTUlpxcnM1VVpBZmZ1NkgrbnBjQSsvUVd5aUpLeWtuVFVDcENyQU9a?=
 =?utf-8?B?bDAyN3lpR01yQk4yQURITDlBQ3EwYVlPSS9YTWE1Y05tREMwTjVZWDdqY0Nq?=
 =?utf-8?B?VFNQK3VvUTRzZnFJM0Q3bHg1THUrUHFWVU1QNGpCcHB4czFaZGtnRmRwM2FI?=
 =?utf-8?B?Wm5ZM3pBODU0NFZ3WGVGRXBwcm9PaDRocnkyVlFJYUFYYU5QSXBVdnBxSkd2?=
 =?utf-8?B?Y0Q4SlhpbDBHMjdBUG1SWHM2U2laZjQyVTcxaEpPSDk4bVN2amFZRnliVlJi?=
 =?utf-8?Q?pdL17ufrtmLiM7TamqCzK9YLs?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92f99bf1-eec6-48b3-6954-08de237c20a4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2025 12:48:36.5790
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bHEAnccXUIM0GjBLx/iBzVdijhyJJcl2or+FErce1P4U7H0cEXWjjrtlIu8eJo1o
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB7518
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ECA2B3F7F5
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.200.52:from];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[amd.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
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
Message-ID-Hash: DDIJPQIWIXYKWBL2H7VDV4KX4SQUR3XW
X-Message-ID-Hash: DDIJPQIWIXYKWBL2H7VDV4KX4SQUR3XW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 03/20] drm/amdgpu: remove direct_submit arg from amdgpu_copy_buffer
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DDIJPQIWIXYKWBL2H7VDV4KX4SQUR3XW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMTMvMjUgMTc6MDUsIFBpZXJyZS1FcmljIFBlbGxvdXgtUHJheWVyIHdyb3RlOg0KPiBJ
dCB3YXMgYWx3YXlzIGZhbHNlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUGllcnJlLUVyaWMgUGVs
bG91eC1QcmF5ZXIgPHBpZXJyZS1lcmljLnBlbGxvdXgtcHJheWVyQGFtZC5jb20+DQo+IFJldmll
d2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQoNClBs
ZWFzZSBwdXNoIHRvIGFtZC1zdGFnaW5nLWRybS1uZXh0Lg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2JlbmNobWFyay5jIHwgIDIgKy0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyAgICAgICB8IDIwICsrKysrKystLS0tLS0t
LS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uaCAgICAgICB8
ICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jICAgICAg
fCAgMiArLQ0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfYmVuY2htYXJrLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2ht
YXJrLmMNCj4gaW5kZXggMTk5NjkzMzY5YzdjLi4wMmMyNDc5YTg4NDAgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9iZW5jaG1hcmsuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYmVuY2htYXJrLmMNCj4gQEAgLTM5LDcg
KzM5LDcgQEAgc3RhdGljIGludCBhbWRncHVfYmVuY2htYXJrX2RvX21vdmUoc3RydWN0IGFtZGdw
dV9kZXZpY2UgKmFkZXYsIHVuc2lnbmVkIHNpemUsDQo+ICAJZm9yIChpID0gMDsgaSA8IG47IGkr
Kykgew0KPiAgCQlzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9m
dW5jc19yaW5nOw0KPiAgCQlyID0gYW1kZ3B1X2NvcHlfYnVmZmVyKHJpbmcsIHNhZGRyLCBkYWRk
ciwgc2l6ZSwgTlVMTCwgJmZlbmNlLA0KPiAtCQkJCSAgICAgICBmYWxzZSwgZmFsc2UsIDApOw0K
PiArCQkJCSAgICAgICBmYWxzZSwgMCk7DQo+ICAJCWlmIChyKQ0KPiAgCQkJZ290byBleGl0X2Rv
X21vdmU7DQo+ICAJCXIgPSBkbWFfZmVuY2Vfd2FpdChmZW5jZSwgZmFsc2UpOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jDQo+IGluZGV4IDNiNDZhMjRhOGM0OC4uYzk4
NWY1N2ZhMjI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfdHRtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
DQo+IEBAIC0zNTQsNyArMzU0LDcgQEAgc3RhdGljIGludCBhbWRncHVfdHRtX2NvcHlfbWVtX3Rv
X21lbShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwNCj4gIAkJfQ0KPiAgDQo+ICAJCXIgPSBh
bWRncHVfY29weV9idWZmZXIocmluZywgZnJvbSwgdG8sIGN1cl9zaXplLCByZXN2LA0KPiAtCQkJ
CSAgICAgICAmbmV4dCwgZmFsc2UsIHRydWUsIGNvcHlfZmxhZ3MpOw0KPiArCQkJCSAgICAgICAm
bmV4dCwgdHJ1ZSwgY29weV9mbGFncyk7DQo+ICAJCWlmIChyKQ0KPiAgCQkJZ290byBlcnJvcjsN
Cj4gIA0KPiBAQCAtMjIxMSwxNiArMjIxMSwxMyBAQCB2b2lkIGFtZGdwdV90dG1fc2V0X2J1ZmZl
cl9mdW5jc19zdGF0dXMoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsIGJvb2wgZW5hYmxlKQ0K
PiAgfQ0KPiAgDQo+ICBzdGF0aWMgaW50IGFtZGdwdV90dG1fcHJlcGFyZV9qb2Ioc3RydWN0IGFt
ZGdwdV9kZXZpY2UgKmFkZXYsDQo+IC0JCQkJICBib29sIGRpcmVjdF9zdWJtaXQsDQo+ICAJCQkJ
ICB1bnNpZ25lZCBpbnQgbnVtX2R3LA0KPiAgCQkJCSAgc3RydWN0IGRtYV9yZXN2ICpyZXN2LA0K
PiAgCQkJCSAgYm9vbCB2bV9uZWVkc19mbHVzaCwNCj4gIAkJCQkgIHN0cnVjdCBhbWRncHVfam9i
ICoqam9iLA0KPiAgCQkJCSAgYm9vbCBkZWxheWVkLCB1NjQga19qb2JfaWQpDQo+ICB7DQo+IC0J
ZW51bSBhbWRncHVfaWJfcG9vbF90eXBlIHBvb2wgPSBkaXJlY3Rfc3VibWl0ID8NCj4gLQkJQU1E
R1BVX0lCX1BPT0xfRElSRUNUIDoNCj4gLQkJQU1ER1BVX0lCX1BPT0xfREVMQVlFRDsNCj4gKwll
bnVtIGFtZGdwdV9pYl9wb29sX3R5cGUgcG9vbCA9IEFNREdQVV9JQl9QT09MX0RFTEFZRUQ7DQo+
ICAJaW50IHI7DQo+ICAJc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKmVudGl0eSA9IGRlbGF5ZWQg
PyAmYWRldi0+bW1hbi5sb3dfcHIgOg0KPiAgCQkJCQkJICAgICZhZGV2LT5tbWFuLmhpZ2hfcHI7
DQo+IEBAIC0yMjQ2LDcgKzIyNDMsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV90dG1fcHJlcGFyZV9q
b2Ioc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVy
KHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDY0X3Qgc3JjX29mZnNldCwNCj4gIAkJICAg
ICAgIHVpbnQ2NF90IGRzdF9vZmZzZXQsIHVpbnQzMl90IGJ5dGVfY291bnQsDQo+ICAJCSAgICAg
ICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+IC0JCSAgICAgICBzdHJ1Y3QgZG1hX2ZlbmNlICoq
ZmVuY2UsIGJvb2wgZGlyZWN0X3N1Ym1pdCwNCj4gKwkJICAgICAgIHN0cnVjdCBkbWFfZmVuY2Ug
KipmZW5jZSwNCj4gIAkJICAgICAgIGJvb2wgdm1fbmVlZHNfZmx1c2gsIHVpbnQzMl90IGNvcHlf
ZmxhZ3MpDQo+ICB7DQo+ICAJc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYgPSByaW5nLT5hZGV2
Ow0KPiBAQCAtMjI1Niw3ICsyMjUzLDcgQEAgaW50IGFtZGdwdV9jb3B5X2J1ZmZlcihzdHJ1Y3Qg
YW1kZ3B1X3JpbmcgKnJpbmcsIHVpbnQ2NF90IHNyY19vZmZzZXQsDQo+ICAJdW5zaWduZWQgaW50
IGk7DQo+ICAJaW50IHI7DQo+ICANCj4gLQlpZiAoIWRpcmVjdF9zdWJtaXQgJiYgIXJpbmctPnNj
aGVkLnJlYWR5KSB7DQo+ICsJaWYgKCFyaW5nLT5zY2hlZC5yZWFkeSkgew0KPiAgCQlkZXZfZXJy
KGFkZXYtPmRldiwNCj4gIAkJCSJUcnlpbmcgdG8gbW92ZSBtZW1vcnkgd2l0aCByaW5nIHR1cm5l
ZCBvZmYuXG4iKTsNCj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+IEBAIC0yMjY1LDcgKzIyNjIsNyBA
QCBpbnQgYW1kZ3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDY0
X3Qgc3JjX29mZnNldCwNCj4gIAltYXhfYnl0ZXMgPSBhZGV2LT5tbWFuLmJ1ZmZlcl9mdW5jcy0+
Y29weV9tYXhfYnl0ZXM7DQo+ICAJbnVtX2xvb3BzID0gRElWX1JPVU5EX1VQKGJ5dGVfY291bnQs
IG1heF9ieXRlcyk7DQo+ICAJbnVtX2R3ID0gQUxJR04obnVtX2xvb3BzICogYWRldi0+bW1hbi5i
dWZmZXJfZnVuY3MtPmNvcHlfbnVtX2R3LCA4KTsNCj4gLQlyID0gYW1kZ3B1X3R0bV9wcmVwYXJl
X2pvYihhZGV2LCBkaXJlY3Rfc3VibWl0LCBudW1fZHcsDQo+ICsJciA9IGFtZGdwdV90dG1fcHJl
cGFyZV9qb2IoYWRldiwgbnVtX2R3LA0KPiAgCQkJCSAgIHJlc3YsIHZtX25lZWRzX2ZsdXNoLCAm
am9iLCBmYWxzZSwNCj4gIAkJCQkgICBBTURHUFVfS0VSTkVMX0pPQl9JRF9UVE1fQ09QWV9CVUZG
RVIpOw0KPiAgCWlmIChyKQ0KPiBAQCAtMjI4MywxMCArMjI4MCw3IEBAIGludCBhbWRncHVfY29w
eV9idWZmZXIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCB1aW50NjRfdCBzcmNfb2Zmc2V0LA0K
PiAgDQo+ICAJYW1kZ3B1X3JpbmdfcGFkX2liKHJpbmcsICZqb2ItPmlic1swXSk7DQo+ICAJV0FS
Tl9PTihqb2ItPmlic1swXS5sZW5ndGhfZHcgPiBudW1fZHcpOw0KPiAtCWlmIChkaXJlY3Rfc3Vi
bWl0KQ0KPiAtCQlyID0gYW1kZ3B1X2pvYl9zdWJtaXRfZGlyZWN0KGpvYiwgcmluZywgZmVuY2Up
Ow0KPiAtCWVsc2UNCj4gLQkJKmZlbmNlID0gYW1kZ3B1X2pvYl9zdWJtaXQoam9iKTsNCj4gKwkq
ZmVuY2UgPSBhbWRncHVfam9iX3N1Ym1pdChqb2IpOw0KPiAgCWlmIChyKQ0KPiAgCQlnb3RvIGVy
cm9yX2ZyZWU7DQo+ICANCj4gQEAgLTIzMTUsNyArMjMwOSw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X3R0bV9maWxsX21lbShzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHVpbnQzMl90IHNyY19kYXRh
LA0KPiAgCW1heF9ieXRlcyA9IGFkZXYtPm1tYW4uYnVmZmVyX2Z1bmNzLT5maWxsX21heF9ieXRl
czsNCj4gIAludW1fbG9vcHMgPSBESVZfUk9VTkRfVVBfVUxMKGJ5dGVfY291bnQsIG1heF9ieXRl
cyk7DQo+ICAJbnVtX2R3ID0gQUxJR04obnVtX2xvb3BzICogYWRldi0+bW1hbi5idWZmZXJfZnVu
Y3MtPmZpbGxfbnVtX2R3LCA4KTsNCj4gLQlyID0gYW1kZ3B1X3R0bV9wcmVwYXJlX2pvYihhZGV2
LCBmYWxzZSwgbnVtX2R3LCByZXN2LCB2bV9uZWVkc19mbHVzaCwNCj4gKwlyID0gYW1kZ3B1X3R0
bV9wcmVwYXJlX2pvYihhZGV2LCBudW1fZHcsIHJlc3YsIHZtX25lZWRzX2ZsdXNoLA0KPiAgCQkJ
CSAgICZqb2IsIGRlbGF5ZWQsIGtfam9iX2lkKTsNCj4gIAlpZiAocikNCj4gIAkJcmV0dXJuIHI7
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmgNCj4gaW5kZXggNTc3ZWUw
NGNlMGJmLi41MGU0MDM4MGZlOTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV90dG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfdHRtLmgNCj4gQEAgLTE2Niw3ICsxNjYsNyBAQCB2b2lkIGFtZGdwdV90dG1fc2V0X2J1
ZmZlcl9mdW5jc19zdGF0dXMoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsDQo+ICBpbnQgYW1k
Z3B1X2NvcHlfYnVmZmVyKHN0cnVjdCBhbWRncHVfcmluZyAqcmluZywgdWludDY0X3Qgc3JjX29m
ZnNldCwNCj4gIAkJICAgICAgIHVpbnQ2NF90IGRzdF9vZmZzZXQsIHVpbnQzMl90IGJ5dGVfY291
bnQsDQo+ICAJCSAgICAgICBzdHJ1Y3QgZG1hX3Jlc3YgKnJlc3YsDQo+IC0JCSAgICAgICBzdHJ1
Y3QgZG1hX2ZlbmNlICoqZmVuY2UsIGJvb2wgZGlyZWN0X3N1Ym1pdCwNCj4gKwkJICAgICAgIHN0
cnVjdCBkbWFfZmVuY2UgKipmZW5jZSwNCj4gIAkJICAgICAgIGJvb2wgdm1fbmVlZHNfZmx1c2gs
IHVpbnQzMl90IGNvcHlfZmxhZ3MpOw0KPiAgaW50IGFtZGdwdV90dG1fY2xlYXJfYnVmZmVyKHN0
cnVjdCBhbWRncHVfYm8gKmJvLA0KPiAgCQkJICAgIHN0cnVjdCBkbWFfcmVzdiAqcmVzdiwNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9taWdyYXRlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfbWlncmF0ZS5jDQo+IGluZGV4IDQ2Yzg0ZmM2
MGFmMS4uMzc4YWYwYjJhYWE5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGtmZC9rZmRfbWlncmF0ZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tm
ZF9taWdyYXRlLmMNCj4gQEAgLTE1Myw3ICsxNTMsNyBAQCBzdm1fbWlncmF0ZV9jb3B5X21lbW9y
eV9nYXJ0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCBkbWFfYWRkcl90ICpzeXMsDQo+ICAJ
CX0NCj4gIA0KPiAgCQlyID0gYW1kZ3B1X2NvcHlfYnVmZmVyKHJpbmcsIGdhcnRfcywgZ2FydF9k
LCBzaXplICogUEFHRV9TSVpFLA0KPiAtCQkJCSAgICAgICBOVUxMLCAmbmV4dCwgZmFsc2UsIHRy
dWUsIDApOw0KPiArCQkJCSAgICAgICBOVUxMLCAmbmV4dCwgdHJ1ZSwgMCk7DQo+ICAJCWlmIChy
KSB7DQo+ICAJCQlkZXZfZXJyKGFkZXYtPmRldiwgImZhaWwgJWQgdG8gY29weSBtZW1vcnlcbiIs
IHIpOw0KPiAgCQkJZ290byBvdXRfdW5sb2NrOw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
