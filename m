Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2F2A68622
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Mar 2025 08:50:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ECC433F545
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Mar 2025 07:50:18 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2052.outbound.protection.outlook.com [40.107.244.52])
	by lists.linaro.org (Postfix) with ESMTPS id 1E89F3F545
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Mar 2025 07:49:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=rdhJG0pP;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.244.52 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JqXOT/3U/WW2FoL6N4jNlv1OzIv7mm9iG+pZWCKYuxodzcmKS3BLIOm2HOLMNErDi8TAGO1a4ohJvcPja9CDqmMHF9Vr68Lr2FoI3vRrOVDXfi5yINhmjBTWRLi50cEaE8xexNlgo/EAPVfyfc4hoPjsr8Nbse7gXl7NkOEEcRi4/jSaMsOjNoOxEnMdMNY28GH47m0vlSn6Ia9yW7LMp7lbGawgaf2X2pPmmmVOEbrGdJ2070A32gZdc+KpNlxl3/O4AFtqdBFK1zIOSZX15IluTOw4GbhAMEfeT1ns0eQocZ/f0e/jHKKxY/Q7ffL0UtluaQHtBwhz1hFwNGyLDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vl2QDIuwUb/bINKK7kmCgirawTeJQXT4gk1i+8uhxNI=;
 b=i+Z82zcOA159fDi92T8eeB43DM5edC7pEq+Yon6ce6iRdlGwRpICq+ybaigCqFwGXSetw7abn5rKOULySLd/iyY/JTxh8z6lfNGP8oxZI+SZyq++ek0K9R+mJo8ZaV7tDV/XJlu1QfSHpOcV6OYVg87Wup0vmC9gHU2kBIEvypMcwcxDpT3M2X/QnS+UClQf1P8NrOIrPY9jtiBlNNhbLJeazjuEmjYYdfMMy08ne4EWSKk81qC6VdCpoP+x0Q8CL48SQZ3UgBkdskBZYrzNOhuJFlXJtMt/JAPzu6v/e1RGTkvazci1lCcGcl2hd8u21mp/SOeNSkNCMUhHfsLXBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vl2QDIuwUb/bINKK7kmCgirawTeJQXT4gk1i+8uhxNI=;
 b=rdhJG0pPALVzv4tj+lJqzYY+hbAkKmheaQXR+nSiTBI9jnZyTEzJRsOB4E+5SmNSOVeM5yxwlK0YEjQW9KOQ67+UpVmTZw18AUVUo85EPfnaNFWbuL6eqtEIef+eTgOJWGPynytOBRu9Mw/94qYt3YahpKEct0a1uFotyV8Ml9g=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY5PR12MB6624.namprd12.prod.outlook.com (2603:10b6:930:40::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Wed, 19 Mar
 2025 07:49:46 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8511.026; Wed, 19 Mar 2025
 07:49:45 +0000
Message-ID: <fb7ca812-ad3f-4116-bb58-d34a8bcf979f@amd.com>
Date: Wed, 19 Mar 2025 08:49:33 +0100
User-Agent: Mozilla Thunderbird
To: Daniel Almeida <daniel.almeida@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <benno.lossin@proton.me>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Trevor Gross <tmgross@umich.edu>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20250318-drm-gem-shmem-v1-0-64b96511a84f@collabora.com>
 <20250318-drm-gem-shmem-v1-1-64b96511a84f@collabora.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250318-drm-gem-shmem-v1-1-64b96511a84f@collabora.com>
X-ClientProxiedBy: FR5P281CA0054.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::7) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY5PR12MB6624:EE_
X-MS-Office365-Filtering-Correlation-Id: 44eca4e9-07cd-48c0-e9aa-08dd66ba9d9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|376014|7416014|366016|921020|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YXRjMlJLUVZHa2RXenRDUmVyaTZqTUlYMWw5MUliNTkxazlJNDBHSE9qNzdN?=
 =?utf-8?B?QTZMT0FFYlRsUTJsWVdCYkdJeGJlQjcrWXBNMkk2YkRVbWZNTFN1RzYydFFa?=
 =?utf-8?B?QUdkcm1mSGgwZER4T3lqSUtUd2EyMU5Wa3Jzb082dnZzZEY5RFc5dWFyR0RD?=
 =?utf-8?B?b0NTU1dGb1Z5TVQzZVgvWkJsVVJRK0tyZkJSbWF0R0VvUi9MMFdCSEtXb2pi?=
 =?utf-8?B?dU10YzVpeWRVVzZ0eEFzbGo0UHQvbnp0cVhRSTArcEpYSXdYS0IzN2p1L1U2?=
 =?utf-8?B?OWJKY3JOd0N0aFU3dHlTN2dxbXNEWE9uMUhCNTZkQzNna1kzc2F0REJsaGtl?=
 =?utf-8?B?N0pZa2FNRXd0Y0I1K2t6M05DdFJEZnYyRGZGSUJ2UE9MdVBiNEcvb3BaVStF?=
 =?utf-8?B?Z1hreWVRelMyU2g3TE9LY3IyTU5RNFI5bkwzRDkyL0hkaUJIMnVUZk1XNGY1?=
 =?utf-8?B?UjZ2Sjd6cy9WZENjOW1mYmJYMzlLWXNibG16UmhPazBFdHFBZVRkOGtrTU1S?=
 =?utf-8?B?dUlxOFJpVW42UW10V21FbWJUMnlLZDNKVkhRMWlDcXI4VjlwZUZZYWFwQTVm?=
 =?utf-8?B?Y09kY3E2RXBzNGNDZzU1WGtMVVM4MkJZaCs5YWdOK3pQMXlWL1duRDQ5cVVr?=
 =?utf-8?B?aFhGNWlyNTlxRjFwRC9TYlh0NnFXSVFsN3FxTUJZK2ZEMFhJUGRHc1JxdWg2?=
 =?utf-8?B?U2RMNmFuUks4dVh4UFhUV0o4d2ljOVJsN28vaHUxUENtc1NEWXpMZ0RNZ0tE?=
 =?utf-8?B?azlCRlZ3SFdtcXBDUTBzRDhFYkkwM2liVnl6T0xMSHZtSTd2UGpMZGJ5RzFi?=
 =?utf-8?B?eVRUUWI1WEpIS3VlMTkvQ2FCNTFzNVlYbHFzdHVEUkZWMnNLc09XcENhZmNl?=
 =?utf-8?B?VFgvY09PY2xWaW1EZlIyVldRQUpsWjJ4SEpRaHFaQVZNQ29BeEtabU9jcmlY?=
 =?utf-8?B?bEVuOGMzbDZTTGFwN2RLZ1BmUmxMWVZwaWM3MUVoSzVhNEZWN3dneWhXcm9C?=
 =?utf-8?B?RkUvVkhWZzhrdzQ2d2k3Ly9rd3JpYTBZOUtwa3M3Y1RCTDBacFFBc0lDMVNV?=
 =?utf-8?B?QzdydUNSNjJkcFdxMWRWSXdDNmZ3TnQzREMwaFZ0U05xMk01TEErMFVsOVc0?=
 =?utf-8?B?dlF1eW5VVkx6Z2RWRmRUSXI2QlpIaE01K1R0dUNuZ1FUd3ZPTkcwNGFyMStv?=
 =?utf-8?B?UTVESkNCY3BaL3E4TDkvd1VnWDQ4UmNBbzNjcktrWDhHSzhpWmFEYlBqTmsy?=
 =?utf-8?B?VzNIYUdnemVHZHYyaVI0U2xDc0x6V0VXd01rRCtZRjdWdnRpeXNhWVhUdXFR?=
 =?utf-8?B?WkI4N3drdVVhMWxHYmpxV3MzYkJLanFHRXpIVlZTN3JwTUdoU3JsVWpHdzhV?=
 =?utf-8?B?eU5EbGx0QSs0TmVRZjZXS2ZXTXU4OVFyY0dvc3JvR0h3dVI5emNrTTJWRVRt?=
 =?utf-8?B?NDdzTFFOV2U0amh0NitrY3ZzVFhuZVd1TFNCQkpEczlqK0FuUzdTQnFwVFpJ?=
 =?utf-8?B?Vm5UQTMvOEFacFdQdTBmanlEelFZN3ZpNEFyVkdLSzFRbExycGZlRlc1Rmh2?=
 =?utf-8?B?bVNhUHcrMjE4WmdoVUZCLzZlUEVWSmJmazBETC9qUXQ1eENLVG13eHFTQm9V?=
 =?utf-8?B?U2daVjI0dERJMERZaVlHT0VGZC9qZ3NXY09VcEpzSXpaNy9DQjZFNDdQbVBN?=
 =?utf-8?B?eXdseFY0bC9YNng2V2NFSGtOQ3hhRzhlWThDY04vMHFmdzd1Y1RIbkc3dS8y?=
 =?utf-8?B?TEEwMDMyd1JVTW1QaTZ4YXo3T01veG9SbkQxczhycnNxY2RsREJOM3ZDTk5r?=
 =?utf-8?B?Y01RTDhOaGI0MnNzN2xoeUdYcXE0TERpVWlaNHN0WHRiMVFZZ29pN0MrTmE5?=
 =?utf-8?B?Mi93RnEzK0FyWVNUaFI1K2FIaktnSHRkVmloUnVBOXRLL01JOTdGOVRTb3h3?=
 =?utf-8?Q?yF5KUtg0S9c=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VTJoVDhNYzVxaFhIQWl4MVIvOHJNRzlrcE5hdTJpMHRjcVdLVjY2NmYrbGgr?=
 =?utf-8?B?d3hhSkVmVHJQT003NWF1bVl5K1dwcTVoSE5wdFRGS0NJYmFicTB2c1AxUnhQ?=
 =?utf-8?B?Tlp0ckluMkd1QU9GclRNcXJvd241V29mcDVpdElBWWJMbmxMZGl0ZGtBWjgr?=
 =?utf-8?B?UUFLR3AvbllrQnQrTjB2Mmh2K2tkVHFCNXR4aXBIQ2hxeUFsZ2wyKzU4ODAz?=
 =?utf-8?B?aStDYUp0NkM2ZW5mQ25vNXROOUpVdlFQT0pZNjFHaXMwcjlDcGhiRFlJMjhm?=
 =?utf-8?B?b0pBam5CUXpFd3pMeVhla3dwSWxVTmdFNGlSWjNCdXR3UzBzZ3kzS1hOVHZk?=
 =?utf-8?B?aTRIZWp3M21LWDZUTVRtTzZQL1JackV5QVQxa1VVYUgrTzloRmRjTlovRGtu?=
 =?utf-8?B?Y1lYWUN0VU1MZUtBeERqWkdGTTJ3S3VFTS9Rd1hsQTBwZEg5VE9mcGpCZitV?=
 =?utf-8?B?SjM3bkFzaU1uOW9CYmZ0ZUl2YmRrZlhibjJHSytZZDdxc1M4RXlXQlRtVEhm?=
 =?utf-8?B?SjRaanhBdVpROExqVkZQQWN3YlZ3QmQ3NGNKaWVndTVXRU8xZUJjMjNmVDQ5?=
 =?utf-8?B?eTEzSmhYdnF4eEZtMUFORzR5UGN3UXpXQmN2QTloM05yUHlPbTA2NGJKYURw?=
 =?utf-8?B?dlB4bHIxMW9tbkt2aXh2RmpHN1hOcUJwYm8rYUlXWFdVMEs1Smk4SFZQaXFr?=
 =?utf-8?B?blE4eVNkU2xkblIzVEZ0ME4zaWdpZFNLYklGTDB2NUFhb0JuaGNtejhwZW4z?=
 =?utf-8?B?dm56T3JxZmRGY1JhUUpuOEtzRVVTSExrOURLcUdXTnRWUFNXaTZhS3VJVDYw?=
 =?utf-8?B?VFRydEM3aWhtRmtxRkl5ak9yUXVlZWhDQnY5UmUraUFmdGYyRVhXcGJGMEcr?=
 =?utf-8?B?YzN6VWZQT25TUHN0MDdLK1RpOEx3R3RaSFFuUHZIM2IwVkVQMWpLdmV2QXFU?=
 =?utf-8?B?WnZJcWZVeGd5MTBxYXhXK2VsK20zRXFPVktIOGhyZHZaenE3RU45cFNPNkI2?=
 =?utf-8?B?MXhFV0MyM0FzQlpOYzBFbVMxTUhiUVNhZFJKODduamlSbVI0eGhFRFBYWVdq?=
 =?utf-8?B?YXQ1R2JEOHBpZy9BL0RNcGV0djE5aDZnQWd4bFd6bGF4MHZkcFJlS0JUMkFT?=
 =?utf-8?B?NDZPRUFpNXVLQmRPRU56cmZocXBZU0wzQm5GQkY3clRIbllacGtQZEMwbnRN?=
 =?utf-8?B?VjhJMzluMGtLVUZIc1FTODVrZ2tCSzFwWlM5TUdQOG1qNzJFQjhLUm43WDh1?=
 =?utf-8?B?MDlrVUxib1RZdXJNUXp3QnZRZ0U2a1BCSk1YRm5ZRWMrSjlpUE1OaXNBL3hk?=
 =?utf-8?B?aXhHN2xzUWxDVFFGWFhkMG40VkJMOTRCOG9CN0VFRVNMM0Z6UzJqbWViYThi?=
 =?utf-8?B?OEFma1E3K3hwVS94cE9FOVk4RDFzYVVCNnRRYithTStRUG1rNkRQWnJKRXZL?=
 =?utf-8?B?a3BsRDgzaVc0VlhQVGRqZVJRZkZDMThzbUtLK21nWTVoTHFGSytLVVlBVDlI?=
 =?utf-8?B?V0FYQXZUeGVvS2VoNzRGaCtkMCtXTVV2UVQ5NEtUNkovNkQ0SzBwa3g4dUhz?=
 =?utf-8?B?c3lVVllWQ2RLSGRoSTEvSHZMcWpsUWsyK3o5Skd0cWM5b2d1dDVJYi9aN1Nw?=
 =?utf-8?B?aVhMNFpCSmxqNHBzYnN5bUx1RTIrTlI2K1M2N1l2dnk0QU1JUk91ZFltK00w?=
 =?utf-8?B?R3N4L0VyYmRYR3lIbzBZeFdwQzVPZ25xV1dFemw2ZzN3OUJYanlGNEhpMVZv?=
 =?utf-8?B?Tklqako2N3dDNU82TkZKcnNYR3J0VjNFckhnWUoxczMwaDFzaWpnV083cndu?=
 =?utf-8?B?ZzRLbTVnOVlXSEtNSk5ranl3U1ZsOGpUVXp5N0JUa1o5YWQ1ODJxNFM3amZC?=
 =?utf-8?B?SmwwcmE2dnExK082WE5mRmY3RWQ1bWMrYUpMcitTNkdyK2s0L1FmWHM5RGhu?=
 =?utf-8?B?eTdzSmJhUmFOMlJ5RzNQZkYybDFVSlhEQXRtQ3dYcXNLQjR6bVpsOW4xdldD?=
 =?utf-8?B?ZjhRSFhoaVgxeXVmb0NiTFI3THlQM0dGdU02ejY5amhPUFA4d1pkOFhIL2NH?=
 =?utf-8?B?RW1lYkJ3TFdHQVhncDRERkVSQ2tGNUM2bjhhdFNJWmxaVDM3N3NSY3d1N0Ft?=
 =?utf-8?Q?rXRkcEDD0YU5qaP6Y3CW9ku+O?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44eca4e9-07cd-48c0-e9aa-08dd66ba9d9d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2025 07:49:45.3606
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pwW2+1NK3GykD/ClajlXw3kB0uBlxcSLmp7LdOkJgG7VZBcrY65B86cjJW1Yf2i5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR12MB6624
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1E89F3F545
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.244.52:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.244.52:from];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_TO(0.00)[collabora.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,proton.me,google.com,umich.edu,linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: RBN4SY4MA3OGG4L5HWYEVELPYS7XIEZZ
X-Message-ID-Hash: RBN4SY4MA3OGG4L5HWYEVELPYS7XIEZZ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Asahi Lina <lina@asahilina.net>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/7] drm/shmem-helper: Add lockdep asserts to vmap/vunmap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RBN4SY4MA3OGG4L5HWYEVELPYS7XIEZZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTguMDMuMjUgdW0gMjA6MjIgc2NocmllYiBEYW5pZWwgQWxtZWlkYToNCj4gRnJvbTogQXNh
aGkgTGluYSA8bGluYUBhc2FoaWxpbmEubmV0Pg0KPg0KPiBTaW5jZSBjb21taXQgMjFhYTI3ZGRj
NTgyICgiZHJtL3NobWVtLWhlbHBlcjogU3dpdGNoIHRvIHJlc2VydmF0aW9uDQo+IGxvY2siKSwg
dGhlIGRybV9nZW1fc2htZW1fdm1hcCBhbmQgZHJtX2dlbV9zaG1lbV92dW5tYXAgZnVuY3Rpb25z
DQo+IHJlcXVpcmUgdGhhdCB0aGUgY2FsbGVyIGhvbGRzIHRoZSBETUEgcmVzZXJ2YXRpb24gbG9j
ayBmb3IgdGhlIG9iamVjdC4NCj4gQWRkIGxvY2tkZXAgYXNzZXJ0aW9ucyB0byBoZWxwIHZhbGlk
YXRlIHRoaXMuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IEFzYWhpIExpbmEgPGxpbmFAYXNhaGlsaW5h
Lm5ldD4NCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIEFsbWVpZGEgPGRhbmllbC5hbG1laWRhQGNv
bGxhYm9yYS5jb20+DQoNCk9oLCB5ZWFoIHRoYXQgaXMgY2VydGFpbmx5IGEgZ29vZCBpZGVhLg0K
DQpSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
Pg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMgfCA0
ICsrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVtX2hlbHBlci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCj4gaW5kZXggNWFiMzUxNDA5MzEyYjVhMGRlNTQy
ZGYyYjYzNjI3OGQ2MTg2Y2I3Yi4uZWM4OWU5NDk5ZjVmMDJhMmEzNTcxMzY2OWJmNjQ5ZGQyYWJi
OTkzOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVy
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW1fc2htZW1faGVscGVyLmMNCj4gQEAg
LTMzOCw2ICszMzgsOCBAQCBpbnQgZHJtX2dlbV9zaG1lbV92bWFwKHN0cnVjdCBkcm1fZ2VtX3No
bWVtX29iamVjdCAqc2htZW0sDQo+ICAJc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSAmc2ht
ZW0tPmJhc2U7DQo+ICAJaW50IHJldCA9IDA7DQo+ICANCj4gKwlkbWFfcmVzdl9hc3NlcnRfaGVs
ZChvYmotPnJlc3YpOw0KPiArDQo+ICAJaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkgew0KPiAgCQly
ZXQgPSBkbWFfYnVmX3ZtYXAob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWYsIG1hcCk7DQo+ICAJ
CWlmICghcmV0KSB7DQo+IEBAIC00MDQsNiArNDA2LDggQEAgdm9pZCBkcm1fZ2VtX3NobWVtX3Z1
bm1hcChzdHJ1Y3QgZHJtX2dlbV9zaG1lbV9vYmplY3QgKnNobWVtLA0KPiAgew0KPiAgCXN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqID0gJnNobWVtLT5iYXNlOw0KPiAgDQo+ICsJZG1hX3Jlc3Zf
YXNzZXJ0X2hlbGQob2JqLT5yZXN2KTsNCj4gKw0KPiAgCWlmIChvYmotPmltcG9ydF9hdHRhY2gp
IHsNCj4gIAkJZG1hX2J1Zl92dW5tYXAob2JqLT5pbXBvcnRfYXR0YWNoLT5kbWFidWYsIG1hcCk7
DQo+ICAJfSBlbHNlIHsNCj4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0Bs
aXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1t
LXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
