Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6278BE51F
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 16:05:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D9753F02C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 May 2024 14:05:04 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2084.outbound.protection.outlook.com [40.107.92.84])
	by lists.linaro.org (Postfix) with ESMTPS id 65D173F02C
	for <linaro-mm-sig@lists.linaro.org>; Tue,  7 May 2024 14:04:50 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=4vH887Zu;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.92.84 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hmmkbw3iBXW25YXgyndBO+CQcv5afIIlLShcQlMUQMSkdAW6y8mj5IC93MgOKJbMpeiF8F1ZIo+kxhbBQFlW03D+1NTd+35y9bYFfQvHeNI3R6fU2+DcViJ+c4KCMG9TqZerzEYghCgc3cO2iA7Cd73cbHl9TPD+64rVuZcDNyXpYq40kIDjTCSog6PgybaE4nUoDzxogFmdvkkAoYCI9qu0bbgdzvrRY1CrkzcVFo3i0DnVRsYSYID2C/UdRmXWY4FTGliwIaMoEbs8LscxfjKankMlRKa9yBmc/X5MefJSwRsCrzuDJcvHx9kaS9gjU/aNfmE1IdwgbJ6TzPrDDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X90qCJWxjQS9HCRtm3K99keskZEFkbPEufIUCKHY90U=;
 b=CTVR76EptxF871WCeAJN6UujD1MKwElLNopeUrZdSgObLvzLooPvPqdY6zOR51GScOh4Udxizcq5gjNg74MJmg3BeClVhE9QVmSXJWVR3QMqCcSo6eg6SBnyHh/QDbxqavRYOmyRP5cuBSwyE9z1mDxIHKXdhSnC4MSJpBalyZnmPVpqNDZtyILEs6IMyZ7gjA+7e0X5KU4IeSCi9iCSsi7AciVAvXoyrYuIliinAO0KTrfMDm8M6lQ6H2P2LHsgaEQ9B9xrkRDR7zpMWcug2rwLiKQgmtvipuzqrDdrt0Ulhw79YgOiUyRPpQHxU8KsITQLQVhxBN8QNsnonucxoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X90qCJWxjQS9HCRtm3K99keskZEFkbPEufIUCKHY90U=;
 b=4vH887Zuu71Nq2kieT0yZiL1HOEa92aqlyvoc8gGn1apKPqxbTBoAOrHMeP9vXN4XvWlc/2mgga1EG/jqHmdFOFcauiJtY0OwU6NdxktF2sI0oYJMhpNuR2ntggh6Z+jYavcI661g7fYCWRAg6II2jWDVqJABu1tPvu7Tseu9tM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB8004.namprd12.prod.outlook.com (2603:10b6:806:341::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 14:04:47 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 14:04:47 +0000
Message-ID: <44b08793-cf44-4cbd-a3bb-583af351ab9e@amd.com>
Date: Tue, 7 May 2024 16:04:41 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>,
 Charan Teja Kalla <quic_charante@quicinc.com>,
 zhiguojiang <justinjiang@vivo.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 opensource.kernel@vivo.com
References: <4fedd80c-d5b6-4478-bfd3-02d1ee1a26e5@vivo.com>
 <aab5ec51-fcff-44f2-a4f5-2979bd776a03@amd.com>
 <2ebca2fd-9465-4e64-b3cc-ffb88ef87800@vivo.com>
 <d4209754-5f26-422d-aca0-45cccbc44ad0@amd.com>
 <289b9ad6-58a3-aa39-48ae-a244fe108354@quicinc.com>
 <CABdmKX3Zu8LihAFjMuUHx4xzZoqgmY7OKdyVz-D26gM-LECn6A@mail.gmail.com>
 <8ca45837-cbed-28da-4a6f-0dcec8294f51@quicinc.com>
 <83605228-92ee-b666-d894-1c145af2e5ab@quicinc.com>
 <CABdmKX2MWU9-9YN46PXx-Jy-O9CHMv8hCkvArd7BbWUBs=GPnw@mail.gmail.com>
 <8915fcc1-d8f1-48c2-9e51-65159aaa5a3b@amd.com>
 <ZjovD5WaWjknd-qv@phenom.ffwll.local>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ZjovD5WaWjknd-qv@phenom.ffwll.local>
X-ClientProxiedBy: FR3P281CA0034.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB8004:EE_
X-MS-Office365-Filtering-Correlation-Id: 8608fa8f-002e-4791-9728-08dc6e9ea79d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?b05OUkZMK0lDZlpTVFN4d2ZVc3NMSkxyTVhnck9nVlhtQkE4dHg1WUJTelV4?=
 =?utf-8?B?Wno4a3AxcGJLa0Y2Y3cwK2hjR0xWaVk2azVwd3N1a05OclRvZmhrdk1WdDBV?=
 =?utf-8?B?Rkp6RVZUZFdXRXdoaHo5VHJBb0o4c2xOUXZ1MFFpSThxZVV2ZUhQYjl1WjlV?=
 =?utf-8?B?RmZ6dURNTklRWTE3STVSOTFKcVRZSzRUTSs2SGIyb0V5M2VDTjlKODhXaXgy?=
 =?utf-8?B?QmJUMmYwQ0kxOHBxTmJub241ZFBOM3A2NC9WUnFlNFNzQU12bjlQQjA5dHdS?=
 =?utf-8?B?cXVmYmllNjd3ZW15b2RsN2pDME8xdVlKQXdGWER6NzlFYnVTWGNqbFBMaFBa?=
 =?utf-8?B?UFZkRFlRL2JNcDcwNktxMUY5UlBBN2p0L0hDY1pJTWp6K3Y5RlFlak9YelZ0?=
 =?utf-8?B?VTRaR3FrcEVzdzduVUFsWDQzUGhCRHdFcFBPenY2Y1YxUWdnS0ZXNFF3N0F4?=
 =?utf-8?B?SS9GZGNWN0lsQ2xkOUxqanQwL1RBVXg4S2lZbXU3Q2FHUXFmY0FQQm45cUwr?=
 =?utf-8?B?VHlKdFk4V2hkR0E3SlRUMkR4cG85MGZXdkJaMDNpSzRIaWZzWSt3VEtwdGtu?=
 =?utf-8?B?UU9Uc1NQVlowM0Rsd0dRSCtXUXYvTzZsME5LbVB2UU44QVRybmhrb012SlBn?=
 =?utf-8?B?bXZST1lpWGRnRWUrTC8zUnZscUVHZUliZ3NwTWNudGprZzBON1BPZ3ZnUGta?=
 =?utf-8?B?M0xmRmljTTBTQ0NDMU85RjN5ZWRxamxBUDQwUWhpVUM5MldEbEFCSzRvWExD?=
 =?utf-8?B?VUFWcGJ3RHFIemdidUZ2cVVYN29oaDVlcUhzcmZaTGVUQ2tSSm1BbmxqS3Rh?=
 =?utf-8?B?YmxIamE3M2YwUHA1Y1gyZm1mR2s3Qm1zOXBta2FKQ1lwZTJMdjVESlJkQ2RZ?=
 =?utf-8?B?Rk95akk0SlNYTFVFa2pxTXZFRmZTNWhTWGpiQ3V4eWhtSkFrWER3R29GU2Ux?=
 =?utf-8?B?WFFPRXJDR2s2aFZOV0tOckNNcXdVNURFaDhGZ1hPQ3d4MXU2ck5OUDhOTFVw?=
 =?utf-8?B?QjlHNmhQcVoreGtxYXJ1eS9lZW1mamxyUWZ0OWV5MHBXak1GaWdaVlhkMnJF?=
 =?utf-8?B?eHh4aElERXluYU9tTmYwSU9LQXhrRENIZlVWTUg1bjhpQ3NhNzBjUnBNUGtl?=
 =?utf-8?B?UXVtYy9Yd2hMR2VJa0NUV0owZXZlQ1RsTTV2b0ZlWE1ObnBCOHNQU2tPV3o5?=
 =?utf-8?B?M1J0VnhLNktmTWwrTC9xWUVJUzVWL3FJUkdaWVQxTXdaRStKaVFMRHd3NmU0?=
 =?utf-8?B?TnRvZ05pVkZXalJDWTZoaDF6dTRHNHM5Qk1WcFJoeWZMOHBlSlRIZXlwRmxF?=
 =?utf-8?B?V09mYVdrRkp5UU96YmV2cWZFWEJSOWVaQ1hwcHNGZUVsMjlHUU1ZSU90Ny9Y?=
 =?utf-8?B?YnNsK0tzNzdLVDQybjFEcjJEdWtsVHhoV3VLTG1LUGhUSzc4dVc2QS9GQ0Iw?=
 =?utf-8?B?bm1ITEFWdWRQT0JtKzdwbUtrR2x4NTcybmlKb1BhSE9JZ2cxQ0hsTWZueS9M?=
 =?utf-8?B?ZlFOWVpUZ25odGx0VmFUREdJQU1IZ1ZSeUJ4T0RXMzhhcGpQV1RlZEYvQVNO?=
 =?utf-8?B?OTRDNG5HQlA1bjJHWW92WGtMZG9RdXhoSlNXT2djd3owN1VhMTBsWjJPQ1gv?=
 =?utf-8?Q?WkW8VzFvUW0C4ICID8YEiE95E4UAPFD6h2QCiduBmRy4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S2Y3Qzl4R1JESTZUVDB1U0FrMTRLYlJXWGV6OWpsK2lzR3VZVTd1a1d1UzU5?=
 =?utf-8?B?ZkpkaGVFcHVEUlpOK1A2MzBEd0tSYitKY0xxZnp4SWh2Z01MMzhYZ1AvV1Fw?=
 =?utf-8?B?aEgyejZ1MENEaUpqb3VwV3VUYmVtNk10Zzk0b1lxandXeFZGZUZUbWZnamNK?=
 =?utf-8?B?NWN1RFhIMjJ6K0VBdnhzS3IrYUphMHVmbHBWcjRtaFp4Q05YVmJ6dzEvRXIy?=
 =?utf-8?B?WUk1RmRNR1YyaUUrRmo5cHdXZllySG1CeFJZTFk4VWFVNWtoYVpPbXRJdWk1?=
 =?utf-8?B?cm9ZS0pqaFk1MVVZenRrdmxMM0g2cGRyY2Y1d0lEclZ1dkFnTzZORFRmQVd1?=
 =?utf-8?B?ZmxMQUJBYmJ1SitkdmZvM1ZFcnQzTlBqRGgxelFyK2hwSytISFpOMGhOa0tL?=
 =?utf-8?B?ejBzcXJYaG1tM095WHZDRUxCd3BOUFV4U3B2Y0FXb2tQYThqWlI0M3FZb0Z6?=
 =?utf-8?B?Umx1azVyUUxKd2c3SHdLM08vSmh4RzVlb2pFaW9OWU5hWnNQb21XZDBHaWpK?=
 =?utf-8?B?ZGkyQS9RbzV1M3ByaG9sMVZhMktpNDI3cEhLWlJiek9wV0dMT0dDZXRxcWhT?=
 =?utf-8?B?QWRKS3NWWEZmcFAwNEZPOTV6VWl0Tkg1b05GMWlCSHNZWDVCQU5rU3dyMkUv?=
 =?utf-8?B?cXIxVzNLSVpRZG9zS3ZIV0NuSi9jVWg3T1pwam1SV0tWMlNWQmk5NnU4Rk9q?=
 =?utf-8?B?VmlNcGhFNlF3aTdaTWtEZVB3RytlREFDeU1BNkkzeDBSMUEzaEttWTd6Yndm?=
 =?utf-8?B?eXUvMFlwTWx5cXc2RFdZM0h1NE9LdDZlTzVyeDBsdXhxdWtqbFdXcTNRbVB3?=
 =?utf-8?B?QkJwOUxISTVuYjk3T2lKS0ZiSHZyWmJ5UHZ1MTJ4dVJpTlZFZUwwd0U2dFYz?=
 =?utf-8?B?TWs1bEx4UVNuV0psc3BkZHRvcnZXN08yaVBJSy9TUmNpdUN4bnNBSE4xc2lk?=
 =?utf-8?B?VzVSV243amNPNVJtNTZaaEdBUmZxL2QraERVeHhnS2pnZHEwT0QxR0dUR0hs?=
 =?utf-8?B?enVPRmdHVmRYSU1yWW8wY3pSQWZiZTZGRy9GM2NNZVpFeEpoZUc5cmtoakI2?=
 =?utf-8?B?Y0ZYQmhDMjZOL3E1cjBtUUZFOU1CUzhVNFV6cWZ4c2s0dGVPUE9WRzBDTzJI?=
 =?utf-8?B?OEszUjJPM2lBY1JZOGoyTG5zMDVPQVdJT2dHMFozNkJVQ1dCYkkrTmxzY2hn?=
 =?utf-8?B?Y0hQZXB0ZmU4S0ZjdEZmQlJsVXlCZEU1UHppM0JUTUQ5dW03akRjdXhtN3RM?=
 =?utf-8?B?NHU4S0kxS1Z6ZytnRWRqQkNlMDdtT2VVYTJ5eTZ3aVhBNS8xRHZlSzFyZlY5?=
 =?utf-8?B?NFJKQUZabXRzTHM4ckExeVdyY0diemgyWnhLR3dTYUdXOVE5T0NEckxha0ZT?=
 =?utf-8?B?L1V6bUdWeEZiS2RzRlE4UVA1bUV0aExHOExxRStWRndVazJhczZYSGNFMjUw?=
 =?utf-8?B?cE8xd0dkbjc4SkZSNS9xbHdxYTJyZlJoTHYyMktNQUE1cTNQM3BxTTMrVzE3?=
 =?utf-8?B?YThXNllKSGMxdDNJMXBmWXZyK0xPNUtuRjUrZGdvT20xK0dkQW1aOG04OXlD?=
 =?utf-8?B?dEs0UElGU0FJQThjdi91d0VuUm1HMUh6eUM2cHBLeVNQNHVsUTV6MTMreHdE?=
 =?utf-8?B?T1grRmxQQ3lxd1Vmbm9SWVY0dVNqVkVoODFzWHFTNjNRLzhtayttSFFDYzRV?=
 =?utf-8?B?MWo5RG12WkwyM2l1bWNJbXV0Y1l2Yk5oZGZRRE4xN3JBYnBOWDVHRnpGUVlT?=
 =?utf-8?B?QzlOKytBYXR4Z0N3TGJMNjVyWThhbjhqZ3VJZWVwNFJTYktEamE4elVYYkJQ?=
 =?utf-8?B?RzRVQWwxRmp6RmdXeUNiWERKNlNneklMTlpBUUZIM2lUY25WQVB4ZWNBZ3ZI?=
 =?utf-8?B?cHE4ZXNkTjFSWHQ4WUNzRXFXRVhOK1JjTE9FOHhJVVlKNVZVekF1UGVvVlNk?=
 =?utf-8?B?UTFydXljZUhvUDE4cnJONFBBM01TMDJnYjd6OFpia1hZaFhmb2hrVzVhajBI?=
 =?utf-8?B?T3RkRE5aaG0rbnA1RFVWREJtQmhXd1Axb09INGUwaThQbGRNS3BTblFheFZp?=
 =?utf-8?B?U01IR3kxYU9RbmdtZkFxeDh0TFE0OU43R0FiZXA1UGF3aklOYy9rNXNlbkU5?=
 =?utf-8?Q?f1/dX7naIW1DEjdrCseVg783t?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8608fa8f-002e-4791-9728-08dc6e9ea79d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 14:04:47.6947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8RKJfiC1PojGimgTWwauNQYI403kO+QbuIlLsiXuGs+QxtBbqGIcPynoc2E7qX2d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB8004
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 65D173F02C
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.99 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.92.84:from];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
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
Message-ID-Hash: AUPW6JO3I467ZGRZVHHOJW37WDPNPJPH
X-Message-ID-Hash: AUPW6JO3I467ZGRZVHHOJW37WDPNPJPH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dmabuf: fix dmabuf file poll uaf issue
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AUPW6JO3I467ZGRZVHHOJW37WDPNPJPH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMDcuMDUuMjQgdW0gMTU6Mzkgc2NocmllYiBEYW5pZWwgVmV0dGVyOg0KPiBPbiBUdWUsIE1h
eSAwNywgMjAyNCBhdCAxMjoxMDowN1BNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQW0gMDYuMDUuMjQgdW0gMjE6MDQgc2NocmllYiBULkouIE1lcmNpZXI6DQo+Pj4gT24gTW9u
LCBNYXkgNiwgMjAyNCBhdCAyOjMw4oCvQU0gQ2hhcmFuIFRlamEgS2FsbGENCj4+PiA8cXVpY19j
aGFyYW50ZUBxdWljaW5jLmNvbT4gd3JvdGU6DQo+Pj4+IEhpIFRKLA0KPj4+Pg0KPj4+PiBTZWVt
cyBJIGhhdmUgZ290IGFuc3dlcnMgZnJvbSBbMV0sIHdoZXJlIGl0IGlzIGFncmVlZCB1cG9uIGVw
b2xsKCkgaXMNCj4+Pj4gdGhlIHNvdXJjZSBvZiBpc3N1ZS4NCj4+Pj4NCj4+Pj4gVGhhbmtzIGEg
bG90IGZvciB0aGUgZGlzY3Vzc2lvbi4NCj4+Pj4NCj4+Pj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xrbWwvMDAwMDAwMDAwMDAwMmQ2MzFmMDYxNTkxOGYxZUBnb29nbGUuY29tLw0KPj4+
Pg0KPj4+PiBUaGFua3MNCj4+Pj4gQ2hhcmFuDQo+Pj4gT2ggbWFuLCBxdWl0ZSBhIHNldCBvZiB0
aHJlYWRzIG9uIHRoaXMgb3ZlciB0aGUgd2Vla2VuZC4gVGhhbmtzIGZvciB0aGUgbGluay4NCj4+
IFllYWggYW5kIGl0IGFsc28gaGFzIHNvbWUgaW50ZXJlc3Rpbmcgc2lkZSBjb25jbHVzaW9uOiBX
ZSBzaG91bGQgcHJvYmFibHkNCj4+IHRlbGwgcGVvcGxlIHRvIHN0b3AgdXNpbmcgRE1BLWJ1ZiB3
aXRoIGVwb2xsLg0KPj4NCj4+IFRoZSBiYWNrZ3JvdW5kIGlzIHRoYXQgdGhlIG11dGV4IGFwcHJv
YWNoIGVwb2xsIHVzZXMgdG8gbWFrZSBmaWxlcyBkaXNhcHBlYXINCj4+IGZyb20gdGhlIGludGVy
ZXN0IGxpc3Qgb24gY2xvc2UgcmVzdWx0cyBpbiB0aGUgZmFjdCB0aGF0IGVhY2ggZmlsZSBjYW4g
b25seQ0KPj4gYmUgcGFydCBvZiBhIHNpbmdsZSBlcG9sbCBhdCBhIHRpbWUuDQo+Pg0KPj4gTm93
IHNpbmNlIERNQS1idWYgaXMgYnVpbGQgYXJvdW5kIHRoZSBpZGVhIHRoYXQgd2Ugc2hhcmUgdGhl
IGJ1ZmZlcg0KPj4gcmVwcmVzZW50YXRpb24gYXMgZmlsZSBiZXR3ZWVuIHByb2Nlc3NlcyBpdCBt
ZWFucyB0aGF0IG9ubHkgb25lIHByb2Nlc3MgYXQgYQ0KPj4gdGltZSBjYW4gdXNlIGVwb2xsIHdp
dGggZWFjaCBETUEtYnVmLg0KPj4NCj4+IFNvIGZvciBleGFtcGxlIGlmIGEgd2luZG93IG1hbmFn
ZXIgdXNlcyBlcG9sbCBldmVyeXRoaW5nIGlzIGZpbmUuIElmIGENCj4+IGNsaWVudCBpcyB1c2lu
ZyBlcG9sbCBldmVyeXRoaW5nIGlzIGZpbmUgYXMgd2VsbC4gQnV0IGlmICpib3RoKiB1c2UgZXBv
bGwgYXQNCj4+IHRoZSBzYW1lIHRpbWUgaXQgd29uJ3Qgd29yay4NCj4+DQo+PiBUaGlzIGNhbiBs
ZWFkIHRvIHJhdGhlciBmdW5ueSBhbmQgaGFyZCB0byBkZWJ1ZyBjb21iaW5hdGlvbnMgb2YgZmFp
bHVyZXMgYW5kDQo+PiBJIHRoaW5rIHdlIG5lZWQgdG8gZG9jdW1lbnQgdGhpcyBsaW1pdGF0aW9u
IGFuZCBleHBsaWNpdGx5IHBvaW50IGl0IG91dC4NCj4gT2ssIEkgdGVzdGVkIHRoaXMgd2l0aCBh
IHNtYWxsIEMgcHJvZ3JhbSwgYW5kIHlvdSdyZSBtaXhpbmcgdGhpbmdzIHVwLg0KPiBIZXJlJ3Mg
d2hhdCBJIGdvdA0KPg0KPiAtIFlvdSBjYW5ub3QgYWRkIGEgZmlsZSB0d2ljZSB0byB0aGUgc2Ft
ZSBlcG9sbCBmaWxlL2ZkLiBTbyB0aGF0IHBhcnQgaXMNCj4gICAgY29ycmVjdCwgYW5kIGFsc28g
bXkgdW5kZXJzdGFuZGluZyBmcm9tIHJlYWRpbmcgdGhlIGtlcm5lbCBjb2RlLg0KPg0KPiAtIFlv
dSBjYW4gYWRkIHRoZSBzYW1lIGZpbGUgdG8gdHdvIGRpZmZlcmVudCBlcG9sbCBmaWxlIGluc3Rh
Y2VzLiBXaGljaA0KPiAgICBtZWFucyBpdCdzIHRvdGFsbHkgZmluZSB0byB1c2UgZXBvbGwgb24g
YSBkbWFfYnVmIGluIGRpZmZlcmVudCBwcm9jZXNzZXMNCj4gICAgbGlrZSBib3RoIGluIHRoZSBj
b21wb3NpdG9yIGFuZCBpbiBjbGllbnRzLg0KDQpBaCEgVGhhbiBJIG1pc3VuZGVyc3Rvb2QgdGhh
dCBjb21tZW50IGluIHRoZSBkaXNjdXNzaW9uLiBUaGFua3MgZm9yIA0KY2xhcmlmeWluZyB0aGF0
Lg0KDQo+DQo+IC0gU3Vic3RhbnRpYWxseSBtb3JlIGVudGVydGFpbmluZywgeW91IGNhbiBuZXN0
IGVwb2xsIGluc3RhbmNlcywgYW5kIGUuZy4NCj4gICAgYWRkIGEgMm5kIGVwb2xsIGZpbGUgYXMg
YW4gZXZlbnQgdG8gdGhlIGZpcnN0IG9uZS4gVGhhdCB3YXkgeW91IGNhbiBhZGQNCj4gICAgdGhl
IHNhbWUgZmlsZSB0byBib3RoIGVwb2xsIGZkcywgYW5kIHNvIGVuZCB1cCB3aXRoIHRoZSBzYW1l
IGZpbGUNCj4gICAgZXNzZW50aWFsbHkgYmVpbmcgYWRkZWQgdHdpY2UgdG8gdGhlIHRvcC1sZXZl
bCBlcG9sbCBmaWxlLiBTbyBldmVuDQo+ICAgIHdpdGhpbiBvbmUgYXBwbGljYXRpb24gdGhlcmUn
cyBubyByZWFsIGlzc3VlIHdoZW4gZS5nLiBkaWZmZXJlbnQNCj4gICAgdXNlcnNwYWNlIGRyaXZl
cnMgYWxsIHdhbnQgdG8gdXNlIGVwb2xsIG9uIHRoZSBzYW1lIGZkLCBiZWNhdXNlIHlvdSBjYW4N
Cj4gICAganVzdCB0aHJvdyBpbiBhbm90aGVyIGxldmVsIG9mIGVwb2xsIGFuZCBpdCdzIGZpbmUg
YWdhaW4gYW5kIHlvdSB3b24ndA0KPiAgICBnZXQgYW4gRUVYSVNUUyBvbiBFUE9MTF9DVExfQURE
Lg0KPg0KPiAgICBCdXQgSSBhbHNvIGRvbid0IHRoaW5rIHdlIGhhdmUgdGhpcyBpc3N1ZSByaWdo
dCBub3cgYW55d2hlcmUsIHNpbmNlIGl0J3MNCj4gICAga2luZGEgYSBnZW5lcmFsIGVwb2xsIGlz
c3VlIHRoYXQgaGFwcGVucyB3aXRoIGFueSBkdXBsaWNhdGVkIGZpbGUuDQoNCkkgYWN0dWFsbHkg
aGF2ZSBiZWVuIHRlbGxpbmcgcGVvcGxlIHRvIChhYil1c2UgdGhlIGVwb2xsIGJlaGF2aW9yIHRv
IA0KY2hlY2sgaWYgdHdvIGZpbGUgZGVzY3JpcHRvcnMgcG9pbnQgdG8gdGhlIHNhbWUgdW5kZXJs
eWluZyBmaWxlIHdoZW4gDQpLQ01QIGlzbid0IGF2YWlsYWJsZS4NCg0KU29tZSBlbnZpcm9ubWVu
dHMgKEFuZHJvaWQ/KSBkaXNhYmxlIEtDTVAgYmVjYXVzZSB0aGV5IHNlZSBpdCBhcyANCnNlY3Vy
aXR5IHByb2JsZW0uDQoNCj4gU28gSSBkb24ndCB0aGluayB0aGVyZSdzIGFueSByZWFzb25zIHRv
IHJlY29tbWVuZCBhZ2FpbnN0IHVzaW5nIGVwb2xsIG9uDQo+IGRtYS1idWYgZmQgKG9yIHN5bmNf
ZmlsZSBvciBkcm1fc3luY29iaiBvciBhbnkgb2YgdGhlIHNoYXJpbmcgcHJpbWl0aXZlcw0KPiB3
ZSBoYXZlIHJlYWxseSkuDQoNCk5vLCB0aGF0IGluZGVlZCBzZWVtcyB0byBiZSBmaW5lIHRoZW4u
DQoNClRoYW5rcywNCkNocmlzdGlhbi4NCg0KPg0KPiBDaGVlcnMsIFNpbWENCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJl
IHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
