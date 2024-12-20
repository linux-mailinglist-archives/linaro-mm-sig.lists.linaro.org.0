Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DB99F9294
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Dec 2024 13:53:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 83EAA43F02
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Dec 2024 12:53:56 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2041.outbound.protection.outlook.com [40.107.95.41])
	by lists.linaro.org (Postfix) with ESMTPS id 7E80143F02
	for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Dec 2024 12:53:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=bQAvTPTp;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.41 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g/Yt+ebsbWHofRSV7BBiJOATrTTj9X5g1joy3xSg3GcONDrPew2OsWvj+5A6BhoyDZ6teYLIXz8+h5RSxk2ydWEF6onXGHVYuaxt6Ghbv20GEyekxny/mMMlxZEgI+kyFK97tg70Yh7CrxdeE2PjQs2yFYuRSY/1ss5y98zGe5bQpAcwM01aCn0m7oZHDs5n6sIgPVqoiW0HPFwNKyBFVoGHUK8sp6NNVV346dQ7jFZANo0yoh/8PZxlBw3xoVjh5s92etgdLYoAEhXV3O+L+93lsMuQBYeunW7PZnKEg8mhctsFa3ri6F5Dl39a6NYTCyLoU4av943tptS75gkaZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l4s/HuIjGFN+7xY9+zqPzQJq+nzJFzj6gap+bng7oO4=;
 b=NBoZn91EZ9c+YezT17JZ47kX/XKNy679WixHF9JzHzqi2phVcNGwJv/mCLDWSHqfjuMFfs7ir7qe27H1dupDUQa3wX+j9xaDF7fVGhHjWcB22LmysELVcFt0zQtpWYahlOMKSnyDWQWpe++S7B/ar8U5wjogqb5frFwm5m0NDXcvCgI/9tjXAfF8/ZSVVDEge3DU+eG310PwZyy95uwTRF3zJWbdHv48pXeLL+tc1tBaLd1PQkuodFuhu2M5OL7EOu0qIOSNTbMpJUtne2/SIc4TbLqFuy+H7M63MbWTOURQj+ghf/CjiAvkflEBwnWqBaSGgRVfH9DxDvDFJyN65w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l4s/HuIjGFN+7xY9+zqPzQJq+nzJFzj6gap+bng7oO4=;
 b=bQAvTPTphZ/MyUWYY93MnAG50adQuq3bmH6ktq9aVENBC3pK8LLmoAQQxCviPKc9iDqbSE6TWuofbVOkOvI+O0da7WPJ15rdKp6K9RVZ2QY0vzFP77TRO6Ie/ZzeYr7tiAu2NB8Tbc4qhH2XNTxrCa26vsIh3B5eR9q2DGW2j2w=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB7143.namprd12.prod.outlook.com (2603:10b6:303:222::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Fri, 20 Dec
 2024 12:53:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 12:53:45 +0000
Message-ID: <5c4c610e-26ec-447c-b4db-ad38e994720b@amd.com>
Date: Fri, 20 Dec 2024 13:53:34 +0100
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>, Luben Tuikov <ltuikov89@gmail.com>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 Philipp Stanner <pstanner@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20241220124515.93169-2-phasta@kernel.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20241220124515.93169-2-phasta@kernel.org>
X-ClientProxiedBy: FR0P281CA0084.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::23) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB7143:EE_
X-MS-Office365-Filtering-Correlation-Id: c3ce36f4-e534-408d-d455-08dd20f556ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?THRIdDNUTkdXeG9KNXliQk1DWUh3TTdVNGFrMmhPeXFYVVpyTkhDWTk4Qk1W?=
 =?utf-8?B?eUxwb2FPRFhtdVNoRXFtZmtYNDRMaEZXODFua0hWSy9qZ2QxR2lEU3oyb1Iy?=
 =?utf-8?B?UnBTYmlYOWRnRC9nWG45REdienVSVUhlZnRZZUFsZlRHckYxam1EblNEQ2NQ?=
 =?utf-8?B?dmprMStqeGdhZnNGSEw0WWREcUdXZWJ0UEZLdjdLd05FaS9xYXA1Ym9RV290?=
 =?utf-8?B?QjMxSjhwRWoyRnBFZjQ0eU5VVzJnV0EvNGtBSkluOFlnRUE0bC9vU3dkaVl6?=
 =?utf-8?B?cjZ0dTBNcnQvZE55Nm15ZVh5aTU0Rk5haFNQc01KWmJwNU9zZ3pieXp4MVdD?=
 =?utf-8?B?SWtqY3d0cWNYYW84Y1pwZnJkNjlDSFZXcHRrWmJhREdhanIyM3htd2g3ZFI4?=
 =?utf-8?B?YmdFd3FxRVFlT0JwK1pCL2VoTkd6NEF1djU2SXcrUERwa2srY0RwMi90enpY?=
 =?utf-8?B?R3VhNFFZcFVDUXhSa1JqR0duK3pKTDBYSXNTQ05rSjF4QWFxUkxCNEtTNnlG?=
 =?utf-8?B?Q01GVDNkd1oxNGVOU1VYMmtJRHRzaGQ3VE14NG1jdGV4N0M3bEZ2UGxPb1Vr?=
 =?utf-8?B?V2IwUHhzSi81WHBnYzh3YUZoeG5NQlNXYWNtMDlEcThJMWdnOHRUdkVJbFhZ?=
 =?utf-8?B?M056UEs5MzdISytYUTY5WjhGNytLN29KTXhFWWZQZG5OQ1dtK0ZRSkswVWgr?=
 =?utf-8?B?QWtJOG03Zlp0d0FrSzE1aE9POFRKdUpnU3ZPdlQwS3VlYkxiWmdoZy9tcU01?=
 =?utf-8?B?ekhnN3BkZkRDOVRKOWIrY3hFcFJCcHZwd3hvMHZ5WmpJV09qUTFhc0YydHMx?=
 =?utf-8?B?UGpEOTdiTTFaNnpYZVRNMGpvWTlXdnBXVjBGTXh5NnZKakFjVVZycTNQZTFP?=
 =?utf-8?B?N09vQ3pCMUcyNUd0czZRcVp3TGxLdWNGVXgxMkN3NVhyWVdoU055OFFkRVhy?=
 =?utf-8?B?ZTlBa2hUV1N2c1ViMWlFc3BKSUN5NXVSN1I1Y2k4eHZwSVMzcGdBd1hpcXIv?=
 =?utf-8?B?cEM1NTVGUHYyK0xIWSs0YTJMVUtQRUx0QU9Ca0l0MWI1NWF4TEVwWEQycjJr?=
 =?utf-8?B?SklHSnJuaVlOZ0hTb0lVUkZkc2NNNngzbFlRMWE3dFdXU3d5RlZTeUM0UU1Z?=
 =?utf-8?B?K0g3V01pZ3ZGV1RYUVpKTVFieDVZME85M1hlVjJIRFJBOUl1cEJWVm1EbFFJ?=
 =?utf-8?B?UXI4c3NlTXVlWVlKZlMwcmh5V1haRGtsdGxCbjBxYWdCMHA5bzlrQmFZMzF6?=
 =?utf-8?B?d1liU2lKSGJzbHRVS1ZxcWY1OWVENHVuRXpRSUhETkVwdGh3VnY5UmVMdkZG?=
 =?utf-8?B?Y2FLR1BlNGZ2L2JQbURZMlJjbzdyS3V3V04xTElicHZsWmF1RURwclpZdk40?=
 =?utf-8?B?RkpyNERpeUtDS0NXcWF2RnRVWUQ0aWNIS2l3V2QwZjdjL3k2YzRQSTg5USt5?=
 =?utf-8?B?cERoSWt3cDRVT29aMGhZVVJndmhNa3BJL292UkJGZnFBUnBkbndCRzZLa1NM?=
 =?utf-8?B?N1duTDJRWHFHOGQyNUxHOUdvQVgwVjUzQ3BEbXJJQVltNkdwT2VvakV6RlI5?=
 =?utf-8?B?cVpZKys4UjNmZGNNcmh5anVnZHJ3Rnh2ZitIUzNLNmNmZzZLR1dXZGt3QUJm?=
 =?utf-8?B?blFCcGZzVHB2aUlPVG0xTXN6c2VPaHZKbDN2K1hINzVMRHh3aTJsLzM4bXVK?=
 =?utf-8?B?dE9wK0p2akFaRkFQdXN1d3dKYjJ4MDVObUFFMG1PNVI4WlhpVGZSWFpFeVZK?=
 =?utf-8?B?VVVlNm1UTjg1bnR2ejlsaDEzM1p0a3crZ3k1SkduL1RpU0hhMmRqT25KZ29n?=
 =?utf-8?B?Y3ZEU2tibnA3b1lpVzUxekROR1NhUnpGR2lOanpvVTNyZnRWWDR4YXBEaUFY?=
 =?utf-8?B?K2E2WGVycDNhS0hCNUpDVTJwaW9pOVk4MUFmRkJobmRmLzhBWjV5N1hNaXV4?=
 =?utf-8?Q?KYNLY9N7NuA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UmdwbUk4RUtQV2RjS2o2LzdJY0JxelRUKy9kMWdGMEFWc0JyTmtWcklPR1pw?=
 =?utf-8?B?MTdUbkhoYjNtaWJHcTNKalRDZE5kNUxaTFQwY1p1TWd3c1M1dlVCVHZvdWk4?=
 =?utf-8?B?emFqaGE2andvOXdWaFVKdDRGaUtGc3F0WldwdUFXQ1ZKWGRlU2JzOHVEZ3k1?=
 =?utf-8?B?S3ZlRWlHeTZSZW5WMStlSW0zR1pxMXpmWDAvcjFrUW9rV0RiakQ3MytURWNn?=
 =?utf-8?B?ajd4eThIVy8yK0I2cFgxWVlod0x1aThNTjZnNmRUM3pseC8vU1ZBTUNiOFdJ?=
 =?utf-8?B?b3d0V2hsOWgwbi96SjJoUU55ZjVkTGozVVFtOElka3g0YjlWZGVleFVrRjRk?=
 =?utf-8?B?Misrd3pyMm44WG90TGtza3Axc3dWbUdLMGlmK01UeHBCWm1ZTitWamR0QXRG?=
 =?utf-8?B?ZCtBWExhVTFuVDlpdW1wdGdZYk9oQkRiTVhoTnBhNDc5WC91Sm5waDN5V1cy?=
 =?utf-8?B?MFU1YkpoMHpOeDNRUVkzNUpTK2E2cUg3Q0tKWFBiSTQvZ3F2NnZjdytVVWdm?=
 =?utf-8?B?VEhVR1hJQ2k3amc1bUhkeXRvTU9qUE5EaEcvUnJvV1RYQjkyWm5xWlRnMlRF?=
 =?utf-8?B?MW1PaCtENnlkZ0ZIcGx6dEJIMFFqOVhhbmVBZ0FRQ09sdW9WM3ZOLzlkQ2JI?=
 =?utf-8?B?Q09nbGxsaitRMjdqRnJ2ZUJvRG90YzhDU2wzcFVGNE9WM0Y3RURMTXp0eUcv?=
 =?utf-8?B?TC9ZVjZuYnZLV1JnWXM2YlhZY0pqTW4yZW0yVFlKbHEycTBVMWptK0FuNjR4?=
 =?utf-8?B?U1hIQ0dTMENmanJxSEVQYW9FQUJDYVRKZmpvT0lRd3Nxc095UUtGTHF3Nk5W?=
 =?utf-8?B?U1pxVlo5bS9MamZJTWVFUHUrNnhCdStYdlI0ME05aTlUMnkzYkZzZENIQklK?=
 =?utf-8?B?b3lvUndhL3hOSGxjd2huV0JybzF0VUE3REhXV3ByckNXckV3RFRCVGN2RzZn?=
 =?utf-8?B?bkk0OERGOFV3eHhuc3JJZk5uVitXemMyYyt6UU1hU2xNOVJ0OEU3WFNvcUJ4?=
 =?utf-8?B?TE1ENzdvMFRQWWE4RUtLQ29YVm1rYjVGbDJ3ak1qbE5BSHFXaFgrWFg5YzZn?=
 =?utf-8?B?N3RYcjlnZ0E2cm9vVzEwNVZKYUo4dExIRzB2YkNoWUVVNDBlUnB0dXJLNnNH?=
 =?utf-8?B?NENqQ3I5WnJ5L2VFMG5FSHgrcjAySTRlbUplVnJPa0RhVDRVWEd1NmFJNnBj?=
 =?utf-8?B?NUQyTWZHSXJhK3M5ZWVuM3FuR3BMbUFBZDk5RVpVMTNEWEdVVXYvYW5GaFFW?=
 =?utf-8?B?ZGhkVCtZWThxUUp2dndLUVJWMXRyYTlsMHFYMkZXUHBkTU8rMUFYZndFU0JX?=
 =?utf-8?B?M3BsSDcvcHowdGFLaXRTSklUVHJkbmFTT0dpY3NadTVtUFJPbjN6dGZydFAz?=
 =?utf-8?B?Sk90cVB4TVBSNHlDWWh3MHZPMUc3L1FXazhob0UyVjRLN2NnQ0RTcDZjMkJN?=
 =?utf-8?B?MGtIL201bzZZdXNpWG5MQXhVelRsUGcrb0ZXckpaL2xtK0VWZ0pnN2Jzdm9r?=
 =?utf-8?B?cjNlek12N0FTQmtlU1ExUkRwNytmbThFUDZBajlHNTJoT2dvajk4VTFTS2xn?=
 =?utf-8?B?eG0wbHVMOUJJVkExUllXR0NTQVVkRmxtMUt4eGlvZnhiejYvV3dKeTZJcFlF?=
 =?utf-8?B?VlloTWhzYU5FS002cEkyaDMrVHJXWGpha2xJL1NncHIxakR2SnNUNWN6NmVY?=
 =?utf-8?B?bVFRNnFrQTE1c1VFNlFOdTJOVmk1dWw5ZnVwWUJlYmNNMHd2Zng0cVVFMU9k?=
 =?utf-8?B?ZkZKc1BRRGNiWDFOSGdVTE4yR0krYitKNXlYWE14SXM0OTU2alhWNVg0T3FF?=
 =?utf-8?B?c3hUT0NHWVEwN3pOTk5YQzFSUElYdGVjcFM5MEVHcU84VjdoWXIxTUlpWWpk?=
 =?utf-8?B?VjdOWUVCT29VRmtYR0dqZTRaYVBqZ2RkaHl1VlVRc1FkRGdsZ3RxWEhhTWtk?=
 =?utf-8?B?anhhdmZKbzRqMmVldnhkMXoycVM3SVZUajZjK01OZnRET1R1RUk0MjdFc0pW?=
 =?utf-8?B?Zk9melFCNWhodjZ6eE9ETnl5TVJmTkQ5cFZUdVJGT082aVg5TC8rMWRFRGVM?=
 =?utf-8?B?dEpLVTRsYTJXcXp4RzQzT2hWdEJoRDRxOCtYZStmTGl6dGFSbGs3NjA5T2ti?=
 =?utf-8?Q?VF4Rl8b5nmOYA6zhY0a468uC1?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ce36f4-e534-408d-d455-08dd20f556ee
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 12:53:45.5960
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: negLWwIEwVIG/BbMWdWzAnV9QUUPBL2EQEREp18M3a7L00cACUovcg/MT3vCTDrU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7143
X-Rspamd-Queue-Id: 7E80143F02
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.95.41:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,redhat.com,linux.intel.com,suse.de,ffwll.ch,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.41:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[ursulin.net:email,NAM02-DM3-obe.outbound.protection.outlook.com:helo,mail-dm3nam02on2041.outbound.protection.outlook.com:rdns];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: MGSIGZPWCCGGFEHGZG2QM3HWB4N43HV7
X-Message-ID-Hash: MGSIGZPWCCGGFEHGZG2QM3HWB4N43HV7
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Tvrtko Ursulin <tursulin@ursulin.net>, Andrey Grodzovsky <andrey.grodzovsky@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/sched: Document run_job() refcount hazard
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MGSIGZPWCCGGFEHGZG2QM3HWB4N43HV7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjAuMTIuMjQgdW0gMTM6NDUgc2NocmllYiBQaGlsaXBwIFN0YW5uZXI6DQo+IEZyb206IFBo
aWxpcHAgU3Rhbm5lciA8cHN0YW5uZXJAcmVkaGF0LmNvbT4NCj4NCj4gZHJtX3NjaGVkX2JhY2tl
bmRfb3BzLnJ1bl9qb2IoKSByZXR1cm5zIGEgZG1hX2ZlbmNlIGZvciB0aGUgc2NoZWR1bGVyLg0K
PiBUaGF0IGZlbmNlIGlzIHNpZ25hbGxlZCBieSB0aGUgZHJpdmVyIG9uY2UgdGhlIGhhcmR3YXJl
IGNvbXBsZXRlZCB0aGUNCj4gYXNzb2NpYXRlZCBqb2IuIFRoZSBzY2hlZHVsZXIgZG9lcyBub3Qg
aW5jcmVtZW50IHRoZSByZWZlcmVuY2UgY291bnQgb24NCj4gdGhhdCBmZW5jZSwgYnV0IGltcGxp
Y2l0bHkgZXhwZWN0cyB0byBpbmhlcml0IHRoaXMgZmVuY2UgZnJvbSBydW5fam9iKCkuDQo+DQo+
IFRoaXMgaXMgcmVsYXRpdmVseSBzdWJ0bGUgYW5kIHByb25lIHRvIG1pc3VuZGVyc3RhbmRpbmdz
Lg0KPg0KPiBUaGlzIGltcGxpZXMgdGhhdCwgdG8ga2VlcCBhIHJlZmVyZW5jZSBmb3IgaXRzZWxm
LCBhIGRyaXZlciBuZWVkcyB0bw0KPiBjYWxsIGRtYV9mZW5jZV9nZXQoKSBpbiBhZGRpdGlvbiB0
byBkbWFfZmVuY2VfaW5pdCgpIGluIHRoYXQgY2FsbGJhY2suDQo+DQo+IEl0J3MgZnVydGhlciBj
b21wbGljYXRlZCBieSB0aGUgZmFjdCB0aGF0IHRoZSBzY2hlZHVsZXIgZXZlbiBkZWNyZW1lbnRz
DQo+IHRoZSByZWZjb3VudCBpbiBkcm1fc2NoZWRfcnVuX2pvYl93b3JrKCkgc2luY2UgaXQgY3Jl
YXRlZCBhIG5ldw0KPiByZWZlcmVuY2UgaW4gZHJtX3NjaGVkX2ZlbmNlX3NjaGVkdWxlZCgpLiBJ
dCBkb2VzLCBob3dldmVyLCBzdGlsbCB1c2UNCj4gaXRzIHBvaW50ZXIgdG8gdGhlIGZlbmNlIGFm
dGVyIGNhbGxpbmcgZG1hX2ZlbmNlX3B1dCgpIC0gd2hpY2ggaXMgc2FmZQ0KPiBiZWNhdXNlIG9m
IHRoZSBhZm9yZW1lbnRpb25lZCBuZXcgcmVmZXJlbmNlLCBidXQgYWN0dWFsbHkgc3RpbGwgdmlv
bGF0ZXMNCj4gdGhlIHJlZmNvdW50aW5nIHJ1bGVzLg0KPg0KPiBJbXByb3ZlIHRoZSBleHBsYW5h
dG9yeSBjb21tZW50IGZvciB0aGF0IGRlY3JlbWVudC4NCj4NCj4gTW92ZSB0aGUgY2FsbCB0byBk
bWFfZmVuY2VfcHV0KCkgdG8gdGhlIHBvc2l0aW9uIGJlaGluZCB0aGUgbGFzdCB1c2FnZQ0KPiBv
ZiB0aGUgZmVuY2UuDQo+DQo+IERvY3VtZW50IHRoZSBuZWNlc3NpdHkgdG8gaW5jcmVtZW50IHRo
ZSByZWZlcmVuY2UgY291bnQgaW4NCj4gZHJtX3NjaGVkX2JhY2tlbmRfb3BzLnJ1bl9qb2IoKS4N
Cj4NCj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4g
Q2M6IFR2cnRrbyBVcnN1bGluIDx0dXJzdWxpbkB1cnN1bGluLm5ldD4NCj4gQ2M6IEFuZHJleSBH
cm9kem92c2t5IDxhbmRyZXkuZ3JvZHpvdnNreUBhbWQuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBQ
aGlsaXBwIFN0YW5uZXIgPHBzdGFubmVyQHJlZGhhdC5jb20+DQo+IC0tLQ0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jIHwgMTAgKysrKysrKy0tLQ0KPiAgIGluY2x1
ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaCAgICAgICAgICAgIHwgMjAgKysrKysrKysrKysrKysrKy0t
LS0NCj4gICAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
DQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3NjaGVkX21haW4u
YyBiL2RyaXZlcnMvZ3B1L2RybS9zY2hlZHVsZXIvc2NoZWRfbWFpbi5jDQo+IGluZGV4IDdjZTI1
MjgxYzc0Yy4uZDZmOGRmMzlkODQ4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vc2No
ZWR1bGVyL3NjaGVkX21haW4uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vc2NoZWR1bGVyL3Nj
aGVkX21haW4uYw0KPiBAQCAtMTIxOCwxNSArMTIxOCwxOSBAQCBzdGF0aWMgdm9pZCBkcm1fc2No
ZWRfcnVuX2pvYl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqdykNCj4gICAJZHJtX3NjaGVkX2Zl
bmNlX3NjaGVkdWxlZChzX2ZlbmNlLCBmZW5jZSk7DQo+ICAgDQo+ICAgCWlmICghSVNfRVJSX09S
X05VTEwoZmVuY2UpKSB7DQo+IC0JCS8qIERyb3AgZm9yIG9yaWdpbmFsIGtyZWZfaW5pdCBvZiB0
aGUgZmVuY2UgKi8NCj4gLQkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+IC0NCj4gICAJCXIgPSBk
bWFfZmVuY2VfYWRkX2NhbGxiYWNrKGZlbmNlLCAmc2NoZWRfam9iLT5jYiwNCj4gICAJCQkJCSAg
IGRybV9zY2hlZF9qb2JfZG9uZV9jYik7DQo+ICAgCQlpZiAociA9PSAtRU5PRU5UKQ0KPiAgIAkJ
CWRybV9zY2hlZF9qb2JfZG9uZShzY2hlZF9qb2IsIGZlbmNlLT5lcnJvcik7DQo+ICAgCQllbHNl
IGlmIChyKQ0KPiAgIAkJCURSTV9ERVZfRVJST1Ioc2NoZWQtPmRldiwgImZlbmNlIGFkZCBjYWxs
YmFjayBmYWlsZWQgKCVkKVxuIiwgcik7DQo+ICsNCj4gKwkJLyoNCj4gKwkJICogc19mZW5jZSB0
b29rIGEgbmV3IHJlZmVyZW5jZSB0byBmZW5jZSBpbiB0aGUgY2FsbCB0bw0KPiArCQkgKiBkcm1f
c2NoZWRfZmVuY2Vfc2NoZWR1bGVkKCkgYWJvdmUuIFRoZSByZWZlcmVuY2UgcGFzc2VkIGJ5DQo+
ICsJCSAqIHJ1bl9qb2IoKSBhYm92ZSBpcyBub3cgbm90IG5lZWRlZCBhbnkgbG9uZ2VyLiBEcm9w
IGl0Lg0KPiArCQkgKi8NCj4gKwkJZG1hX2ZlbmNlX3B1dChmZW5jZSk7DQo+ICAgCX0gZWxzZSB7
DQo+ICAgCQlkcm1fc2NoZWRfam9iX2RvbmUoc2NoZWRfam9iLCBJU19FUlIoZmVuY2UpID8NCj4g
ICAJCQkJICAgUFRSX0VSUihmZW5jZSkgOiAwKTsNCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJt
L2dwdV9zY2hlZHVsZXIuaCBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiBpbmRleCA5
NWUxNzUwNGU0NmEuLmExZjVjOWExNDI3OCAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vZ3B1
X3NjaGVkdWxlci5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2dwdV9zY2hlZHVsZXIuaA0KPiBAQCAt
NDIwLDEwICs0MjAsMjIgQEAgc3RydWN0IGRybV9zY2hlZF9iYWNrZW5kX29wcyB7DQo+ICAgCQkJ
CQkgc3RydWN0IGRybV9zY2hlZF9lbnRpdHkgKnNfZW50aXR5KTsNCj4gICANCj4gICAJLyoqDQo+
IC0gICAgICAgICAqIEBydW5fam9iOiBDYWxsZWQgdG8gZXhlY3V0ZSB0aGUgam9iIG9uY2UgYWxs
IG9mIHRoZSBkZXBlbmRlbmNpZXMNCj4gLSAgICAgICAgICogaGF2ZSBiZWVuIHJlc29sdmVkLiAg
VGhpcyBtYXkgYmUgY2FsbGVkIG11bHRpcGxlIHRpbWVzLCBpZg0KPiAtCSAqIHRpbWVkb3V0X2pv
YigpIGhhcyBoYXBwZW5lZCBhbmQgZHJtX3NjaGVkX2pvYl9yZWNvdmVyeSgpDQo+IC0JICogZGVj
aWRlcyB0byB0cnkgaXQgYWdhaW4uDQo+ICsJICogQHJ1bl9qb2I6IENhbGxlZCB0byBleGVjdXRl
IHRoZSBqb2Igb25jZSBhbGwgb2YgdGhlIGRlcGVuZGVuY2llcw0KPiArCSAqIGhhdmUgYmVlbiBy
ZXNvbHZlZC4gVGhpcyBtYXkgYmUgY2FsbGVkIG11bHRpcGxlIHRpbWVzLCBpZg0KPiArCSAqIHRp
bWVkb3V0X2pvYigpIGhhcyBoYXBwZW5lZCBhbmQgZHJtX3NjaGVkX2pvYl9yZWNvdmVyeSgpIGRl
Y2lkZXMgdG8NCj4gKwkgKiB0cnkgaXQgYWdhaW4uDQoNCk1heWJlIHdlIHNob3VsZCBpbXByb3Zl
IHRoYXQgaGVyZSBhcyB3ZWxsIHdoaWxlIGF0IGl0Lg0KDQpUaGF0IGRybV9zY2hlZF9qb2JfcmVj
b3ZlcnkoKSBjYW4gY2FsbCB0aGlzIG11bHRpcGxlIHRpbWVzIGFjdHVhbGx5IGdvZXMgDQphZ2Fp
bnN0IHRoZSBkbWFfZmVuY2UgcnVsZXMgc2luY2UgZHJpdmVycyBjYW4ndCBlYXNpbHkgYWxsb2Nh
dGUgYSBuZXcgSFcgDQpmZW5jZS4NCg0KU29tZXRoaW5nIGxpa2UgIlRoZSBkZXByZWNhdGVkIGRy
bV9zY2hlZF9qb2JfcmVjb3ZlcnkoKSBmdW5jdGlvbiBtaWdodCANCmNhbGwgdGhpcyBhZ2Fpbiwg
YnV0IGl0IGlzIHN0cm9uZ2x5IGFkdmlzZWQgdG8gbm90IGJlIHVzZWQgYmVjYXVzZSBpdCANCnZp
b2xhdGVzIGRtYV9mZW5jZSBtZW1vcnkgYWxsb2NhdGlvbnMgcnVsZXMuIg0KDQpPbiB0aGUgb3Ro
ZXIgaGFuZCBjYW4gb2YgY291cnNlIGJlIGEgc2VwYXJhdGUgcGF0Y2guDQoNCj4gKwkgKg0KPiAr
CSAqIEBzY2hlZF9qb2I6IHRoZSBqb2IgdG8gcnVuDQo+ICsJICoNCj4gKwkgKiBSZXR1cm5zOiBk
bWFfZmVuY2UgdGhlIGRyaXZlciBtdXN0IHNpZ25hbCBvbmNlIHRoZSBoYXJkd2FyZSBoYXMNCj4g
KwkgKgljb21wbGV0ZWQgdGhlIGpvYiAoImhhcmR3YXJlIGZlbmNlIikuDQo+ICsJICoNCj4gKwkg
KiBOb3RlIHRoYXQgdGhlIHNjaGVkdWxlciBleHBlY3RzIHRvICdpbmhlcml0JyBpdHMgb3duIHJl
ZmVyZW5jZSB0bw0KPiArCSAqIHRoaXMgZmVuY2UgZnJvbSB0aGUgY2FsbGJhY2suIEl0IGRvZXMg
bm90IGludm9rZSBhbiBleHRyYQ0KPiArCSAqIGRtYV9mZW5jZV9nZXQoKSBvbiBpdC4gQ29uc2Vx
dWVudGx5LCB0aGlzIGNhbGxiYWNrIG11c3QgcmV0dXJuIGENCj4gKwkgKiBmZW5jZSB3aG9zZSBy
ZWZjb3VudCBpcyBhdCBsZWFzdCAyOiBPbmUgZm9yIHRoZSBzY2hlZHVsZXIncw0KPiArCSAqIHJl
ZmVyZW5jZSByZXR1cm5lZCBoZXJlLCBhbm90aGVyIG9uZSBmb3IgdGhlIHJlZmVyZW5jZSBrZXB0
IGJ5IHRoZQ0KPiArCSAqIGRyaXZlci4NCg0KV2VsbCB0aGUgZHJpdmVyIGFjdHVhbGx5IGRvZXNu
J3QgbmVlZCBhbnkgZXh0cmEgcmVmZXJlbmNlLiBUaGUgc2NoZWR1bGVyIA0KanVzdCBuZWVkcyB0
byBndWFyYW50ZWUgdGhhdCB0aGlzIHJlZmVyZW5jZSBpc24ndCBkcm9wcGVkIGJlZm9yZSBpdCBp
cyANCnNpZ25hbGVkLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+ICAgCSAqLw0KPiAgIAlz
dHJ1Y3QgZG1hX2ZlbmNlICooKnJ1bl9qb2IpKHN0cnVjdCBkcm1fc2NoZWRfam9iICpzY2hlZF9q
b2IpOw0KPiAgIA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxl
YXZlQGxpc3RzLmxpbmFyby5vcmcK
