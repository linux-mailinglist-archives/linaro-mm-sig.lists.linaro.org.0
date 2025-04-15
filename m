Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B85EA89E9F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 14:53:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 54349459AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 12:53:18 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2075.outbound.protection.outlook.com [40.107.93.75])
	by lists.linaro.org (Postfix) with ESMTPS id 60E5643C8C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 12:53:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=kzhbj6Lt;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.93.75 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ltrY1v2YmtU7qn6DqEs/jDgEaIPnn4T/zOsRz+N0V17SgNiF6+KyPz3yfjnqbGhX322FC/zwKM15t0w+qlZ2xHXinE0qBwLtfVcMh4mz7HzWsW6rsExmfMPrFfU3Kf2mXaA0IzbS1lZp11vZQjvx38ID0HttKaGcYqqlbbNLJk4wnSmvpTtssRdBY/nE8SB00xLmE9+sQ1qE5Zde0BXGFCXFj4YPghAGSRc3gZjtO3nbQy0BU+vOhscss6oQZ39Uo9fj9T4BCMRvHnFWdJkh65A1QdZmgp7WAdl91Jz4BclErdfR3EBBrkvgOSOLPqKPTbF+IKDYToIwlWj1LpHvZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ux53MoiYJi5JG9sFRnTGiPnjTNKsMXeBhVMZxkRrhCQ=;
 b=QSXxi91FJdfu/iGcrqyPGhr3J3hxnQeiUDvad135GXClp2Bt0jZcpF1/hglfRV604CL00/aR1KZXT89D8vrhsBxx2sR/eIjlC4CIuFyyhC37qjGoNITM/WZhRSfIF1jaiMZ3xvWGjdh9fW9I+oOYMhIAMdGIrqJOoqbM5m4A6pVgYk+rasxeCf6m37cbLpPdS2qkkY6lwrpOqDKPjo1tgQJt1MDEZeevFayrB+rZ9k3SEm6mTfdpJP69PRMwwCrNg+mFVB1HV77DRnXn8f7OW3Hve0e7nOOOVSHTwQi+DN3jLD30vagZiP2tMvX6QzFqI3eXWiMnaEpMC/14YIcVkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ux53MoiYJi5JG9sFRnTGiPnjTNKsMXeBhVMZxkRrhCQ=;
 b=kzhbj6Lt6VjBwm+c08Kfavnx3mqvJnYsOr/WrT4jaJps+cGrWIRevmnH59S8zO/7ACrTUUoqFh/Mwc7h8ZyZy/4M+nQiO5iBUyP60pnN98ty4gYyoxs3gBce5GfxN2AQkCdE/Hz1rCe1894pE1BIg+T0hxyCHC6hAy39uB9AkvQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB7554.namprd12.prod.outlook.com (2603:10b6:208:43e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.33; Tue, 15 Apr
 2025 12:53:00 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 12:53:00 +0000
Message-ID: <ac0aba3d-ec77-4f6b-9ac1-f6077519f30d@amd.com>
Date: Tue, 15 Apr 2025 14:52:54 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, simona@ffwll.ch,
 airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
 <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
 <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
 <b924ffa7-99c0-42f1-9170-069e92299021@amd.com>
 <ddb93e8d-7716-47b3-b06c-0bf862d9c32b@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <ddb93e8d-7716-47b3-b06c-0bf862d9c32b@suse.de>
X-ClientProxiedBy: FR0P281CA0268.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB7554:EE_
X-MS-Office365-Filtering-Correlation-Id: 596b9fc8-b8a7-404e-f464-08dd7c1c7398
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UnI5UG9KZXJIa1BZcFJaVXRLT09RM3FxVFlramJDeWFIM25ZRWFtVjE3Qy9x?=
 =?utf-8?B?K3ZlcG1wYnFlbUkrS21DakdNMUVieElxSkVHeHVXYXBzYnNWMDBFK1BHanV5?=
 =?utf-8?B?MmlXcTl5M1JlRitIZVJJVVRGakE1cCtydUVIMlBtYUFuZjdKSWduc0sxQWYz?=
 =?utf-8?B?QS9yMzBiSTdjWW9ORHJlbE40L1pKR3FpR0J6RklHVnkrOEJ5YTlVRCsxVi9Y?=
 =?utf-8?B?aEh4a1FLTHpDMllRYTQvKzM5UjdWb09QMDdZY2U1ajQ2WVNOZmIweE04K0hK?=
 =?utf-8?B?bkpYYUR1czZ4R3VSQ0ZoU29QL3NNaHVWMmRRK1UvdEdkTGpWNkVVcUNhb3B6?=
 =?utf-8?B?UlBWSVJ3MkgzNW1PL1didHhjaFM4Unk5emhVTEU3NWxjMFUzVWRJUEVmR0lJ?=
 =?utf-8?B?L0ZTemFqdUlQZjVldVVMYURPcThLZnQyWWZ0RndrdDMxalZBN3BCOTBVTUwv?=
 =?utf-8?B?MzVwOVMrSXdVTkdJVnU3UWRoaHdQbWJQY21MVzdTVU1KZi9MUGR5T3BvbEhQ?=
 =?utf-8?B?cXRLdDc1SmxyTTN3cXlINVdpYm85Zk9CelNYRkxBRWw5a3U1TFU1M2pHVGlq?=
 =?utf-8?B?RWQzc21HMmFPZ2ZQN09lU0xUSFBvN1ZvRlZ5LzNPL29wckJrTnJTV1U1d0lU?=
 =?utf-8?B?dFIxQmpsRVZucXlHejlyM21GY0U2NkJjQ3NwdndwK0gxeXJ2UTAxWlN5UXJK?=
 =?utf-8?B?WlBtLzNxUWNmVjBXNGx0bFFkRGJkR09UVW9nZEdmWno0cy93ZlR4anZndWFU?=
 =?utf-8?B?eEJTS2RMSnkyd0U4Q0xPVXNUVzVHTzZHL3MyQjJRbW5VT0x1dW94cXpBOVBi?=
 =?utf-8?B?MUlIdGVaVDkvU3kyRnNid3kwcXZMWjBrc3lVcE5DdzFIMkJqOFVmZ25qdFNI?=
 =?utf-8?B?RDE2WUVyVkhhUml4dVFsRlA1QmFNSUlYMjdFV3E1OUowUzQrMGVDN3dLbVFj?=
 =?utf-8?B?TWZvVHMwWHJENFFFVTUvRTVjN2ZUU0dCaTZMSTlkendtcHdtT0VHRDdEcDgr?=
 =?utf-8?B?QTM1UUlwRzJvUVdGdUdwTXY2ZVZGcVZnOURsNlFrTFRMS1JreE4rUE1oUVFD?=
 =?utf-8?B?eVdpZEZVMEJJWjdnVksremt5R2ZCNGF0MkNWRFZlL21FbWtHWk5vamZqYUhR?=
 =?utf-8?B?Z1pPY000Y2hudzl6eDYzcGl5aWJYUU4vWnU2Z3NkTzdXcHB0SUJzb092VTA3?=
 =?utf-8?B?UzJZb2t4VlowMmU4U3FDYUlQMDN2ZmtqWWNsRHVGTUdTQzZjY3YvZllVSUky?=
 =?utf-8?B?bGQ0SGt2Nkg2RXdHTHdNL05GdjZhNXU0NnVHeTI2b2VEaDNiT2M4d2xRekFa?=
 =?utf-8?B?NG44V1ZKeXk5L0lXZGNnNStVNkxlOVJreG8wemZyNlpSUmRIdWJ0VitkTWR0?=
 =?utf-8?B?cUFta2hwenF4bTBjYkRqVS8yMHl1dkFab3V5cmpYelJGdkJSbjR4R2JYbmVB?=
 =?utf-8?B?NFAvekhtT3owNFZZZVpXeUVNZkJjUFN3ZWpnZnlhMkl6N24veEtOUlhoN05s?=
 =?utf-8?B?NFUwQUZ0clB4Nys4TFFVQVE1TXBqekllcE4xWXh6QVZBUmQ2WGQzdVNDQUZY?=
 =?utf-8?B?M3hBWndBSS9mbnNiR3JjL3lDVXRyOWlTd0lBTzlqSmU1R0xoU1NYa0JmdVJj?=
 =?utf-8?B?cGdxTTFDVTZ0a2ROS3JLcUJYcDJyRFRpaXN2K1phamxIMW9laXF6cEFYYzM5?=
 =?utf-8?B?aVNRb2VwWGlJTUJTcHhXYmVuSkxZQ2pnRm9sbXNKV3NQTkdSVDhQYVpNNTFD?=
 =?utf-8?B?SUtOZXNqc2NTNjY2YTMwTlBJazREUkM2aFQyb1Z3SmM2bHpvZ2c2OU9UazJC?=
 =?utf-8?Q?jMBUYr9mCbTuNXyGDHOHMh3pNZlxDgAkezYUc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QnhOcFpqa1hOWThqRU52bElwS2ZiUGh0V3NSOFNVV3E5QlhTaE92UktKZHA4?=
 =?utf-8?B?Rnhpcm9PTXl5NmRKZmR2dExmZGRvM1R4VWx2RGozdUlLQVBvUmExbjk4V2pm?=
 =?utf-8?B?UDg2QXdsZmZSMXJBeHF3M09CZnB0a2VGZ0FzK0RYRnJlbGJySnJUSFVZYUlO?=
 =?utf-8?B?bmEwcWNNSUl4SjFEQ05ROXhsUTdlRko3MXlab2xZSTh1UHEvMm5nRno3amc0?=
 =?utf-8?B?WHhROGdnUzBySjNEMXNmMGx2R1BScE1wVG5vQ2ZaMGJmRDlRUlBnRndXcjdl?=
 =?utf-8?B?anlZT1ZWTnFmNEY5QlUwYjQrRGpvWU55bncyTnlKakh4Q25oMWdkbXZFamxm?=
 =?utf-8?B?WklteXprNHUwZi9GSTFXUjhvNC9GMkxXWTNhS05rNlZlblZZcnlBaVdWWi80?=
 =?utf-8?B?OXpwb0paNjlPQ1F0eGN2M1d5M29QcGJteFdQZHc3Q1hIdE1MbnVYQkVuR2pD?=
 =?utf-8?B?ZEM2MHB5S2J3bktVTU5acDZrbHZaLzNaQk5US3d4ZU44c3hVOHl4cmVIdFNq?=
 =?utf-8?B?K0ZoZUJCb1ZFTWovWWd5c2VwdmU0anEwd2kzbDJiT29Id2hUbnNnYUdKOHAy?=
 =?utf-8?B?RzVCS3hYVUZ0VVdVcW9ZbjhiZldDNW1qTVlyZkVJMmQwY1pZU3BOWmxFeDBY?=
 =?utf-8?B?R09vN0w0YVRWd2ZIYUFOZk8vR2YxazQxTnRLRFFObkdtR1J6NEZSTHNwZFpO?=
 =?utf-8?B?Y3I1WW96OHNGQXFYV1ExcDBEQk5yWVVYN3o2WS9mRlZJTTdDc21PM1NHTWpj?=
 =?utf-8?B?UlVGNGhIWGFUS1oybkQwam9JYUVtbFpnOFVUQytoSjJvMDc4NEVsaUZZQ0h0?=
 =?utf-8?B?RkRRamIzVEVuMDRRaU5rREFJK3hSMUViMjR1dFZiQVNjMnBYR1FJeVV5UklK?=
 =?utf-8?B?UVVVYlVWUUgzOVZRWG0velVhcXkvVHg4NDJxT2ZCajZBZ1RLZjZjdWhmaUZn?=
 =?utf-8?B?RWpvYXVKbGVYcG1rZFZrc09pS0I4a3k0Q3V4OXc0L0lna3F2dWJ4L244aEVx?=
 =?utf-8?B?WHZLQnFjMmpwM2REZVlOMFY1SkdzdTFHbjZra00xUCtxTzVOZ3cvUXdRaENT?=
 =?utf-8?B?MXFLU1pWWksyL3dxVFlObTFHMTgrR05UbmoyMGV0THVyNUhrWU5xbExDZlo4?=
 =?utf-8?B?TFBucklPVFBTTGNNeUJEcXB5bHhsOGZLUy81RW9rZGRjdDlHQXhXMFFqQzRZ?=
 =?utf-8?B?VCt0U0ZGOGhLcEs2VG1KTCszK2x3RmVEdFIzVTVES1Z5MUNtY2dRN3FuZDYw?=
 =?utf-8?B?b21UeVY1MzZMeDdocmhtY3VRakdxMkZ0VFRYZDJmNU5lV0VWVFdtZnI0WGVW?=
 =?utf-8?B?L0dzRm1JaTN0cTBmcDFoU3hKWW1GZEQ2Yjk4cDlDL2VFVzFXSXpsMS9WTVVj?=
 =?utf-8?B?d2JaZ3hGaS9pWUlDTTNHcFBTVDJTc3dxSXFybWE0dnFFN0VhRkE0YnlQalNO?=
 =?utf-8?B?dFMvbDZ3SmFyM1RkaGwvQVlnWlBNTnhRR01VNG1USTdkZE04NFJwYnBaMXBQ?=
 =?utf-8?B?MjdmT2plaGxsajBiT2ZLVVVEMHEzOCtBSTFqeUJ4TzkySWViR2QzUVc1Q24w?=
 =?utf-8?B?MFgzQUhmak5nS3NNTTc0NXZaUVI0RjlVSWlyWDF3c2hkNm94RHk2bnJicUpB?=
 =?utf-8?B?d3BrMHRXMmdFdkhveURVSHRNdEN1U2dPRVJhdW1NT1pwVWdZbmJaYkVXWkxr?=
 =?utf-8?B?ZmxnVVZJK3YvWGNlZ21aeTVrWDNhdUczUzhtQjg4V01hQ2dySWgxNlh3V2lN?=
 =?utf-8?B?STVySnlLUHpHM2xlbnlqRzJ1OGhBdjlJM1lIU0RoM1pnVUNzY1FtclloZlVh?=
 =?utf-8?B?c0J2TzdTRkNJQzNGZW42c3N0VUtGVno2ODhkUkg4UDR1WHBUbzVGN3pGUEM5?=
 =?utf-8?B?QzF4Z1Zxc2s5RDRoc0VNQ1QzZzhaZXdyRmwvM25MK25LL29CWVg1RFpib2U5?=
 =?utf-8?B?cDV2VnlqaFFkY0l0Qk44TE5zd2t2ejY1aVUwb3RTNlhFQm52WmExeVJRRWhZ?=
 =?utf-8?B?YkY2RFZkUnBIZUZiUEpXVHJWWTBZV3E2QTJMNkFNV2djdW5PaC9MbVVCMGR3?=
 =?utf-8?B?MDNtYWNtaWF4V2dnUkpPUmdJNmZlSE5KTmxOeUUyMmhXdTRYalF4UTd3YVQ4?=
 =?utf-8?Q?crWALU70OYdHYTtyPwiBcd+bf?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596b9fc8-b8a7-404e-f464-08dd7c1c7398
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 12:52:59.9193
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dWc73h/F7NfXF0+puKTT8MR9t9eB/twMB/yxrOPSareH/HvMGVM+eETkgDav1qEA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7554
X-Rspamd-Queue-Id: 60E5643C8C
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.93.75:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.93.75:from];
	URIBL_BLOCKED(0.00)[linaro.org:email,suse.de:email,ffwll.ch:email,mail-dm6nam10on2075.outbound.protection.outlook.com:rdns];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[suse.de,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.93.75:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: LOUHK5CNJ2NIR4KJGFER33627AOTRA2M
X-Message-ID-Hash: LOUHK5CNJ2NIR4KJGFER33627AOTRA2M
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LOUHK5CNJ2NIR4KJGFER33627AOTRA2M/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTUuMDQuMjUgdW0gMTQ6NDAgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4gSGkNCj4N
Cj4gQW0gMTUuMDQuMjUgdW0gMTQ6MTkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4gQW0g
MTUuMDQuMjUgdW0gMTI6NDUgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4+PiBIaQ0KPj4+
DQo+Pj4gQW0gMTUuMDQuMjUgdW0gMTE6Mzkgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KPj4+
PiBBbSAxNS4wNC4yNSB1bSAxMToyMCBzY2hyaWViIFRob21hcyBaaW1tZXJtYW5uOg0KPj4+Pj4g
VGVzdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QuaW1wb3J0X2F0dGFjaCB0byBkZXRlY3QgaW1wb3J0
ZWQgb2JqZWN0cw0KPj4+Pj4gZHVyaW5nIGNsZWFudXAuIEF0IHRoYXQgcG9pbnQsIHRoZSBpbXBv
cnRlZCBETUEgYnVmZmVyIG1pZ2h0IGhhdmUNCj4+Pj4+IGFscmVhZHkgYmVlbiByZWxlYXNlZCBh
bmQgdGhlIGRtYV9idWYgZmllbGQgaXMgTlVMTC4gVGhlIG9iamVjdCdzDQo+Pj4+PiBmcmVlIGNh
bGxiYWNrIHRoZW4gZG9lcyBhIGNsZWFudXAgYXMgZm9yIG5hdGl2ZSBvYmplY3RzLg0KPj4+PiBJ
IGRvbid0IHRoaW5rIHRoYXQgdGhpcyBpcyBhIGdvb2QgaWRlYS4NCj4+Pj4NCj4+Pj4gVGhlIERN
QS1idWYgaXMgc2VwYXJhdGVseSByZWZlcmVuY2UgY291bnRlZCB0aHJvdWdoIHRoZSBpbXBvcnQg
YXR0YWNobWVudC4NCj4+PiBJIHVuZGVyc3RhbmQgdGhhdCBpdCdzIG5vdCBpZGVhbCwgYnV0IHRl
c3RpbmcgZm9yIGltcG9ydF9hdHRhY2ggdG8gYmUgc2V0IGlzIHdoYXQgd2UgY3VycmVudGx5IGRv
IHRocm91Z2hvdXQgZHJpdmVycy4gUHV0dGluZyB0aGlzIGJlaGluZCBhbiBpbnRlcmZhY2UgaXMg
YWxyZWFkeSBhIHN0ZXAgZm9yd2FyZC4NCj4+Pg0KPj4+Pj4gSGFwcGVucyBmb3IgY2FsbHMgdG8g
ZHJtX21vZGVfZGVzdHJveV9kdW1iX2lvY3RsKCkgdGhhdCBldmVudHVhbGx5DQo+Pj4+PiBjbGVh
ciB0aGUgZG1hX2J1ZiBmaWVsZCBpbiBkcm1fZ2VtX29iamVjdF9leHBvcnRlZF9kbWFfYnVmX2Zy
ZWUoKS4NCj4+Pj4gVGhhdCBpcyBmb3IgZXhwb3J0ZWQgRE1BLWJ1ZiBhbmQgc2hvdWxkICpORVZF
UiogYmUgdXNlZCBmb3IgaW1wb3J0ZWQgb25lcy4NCj4+PiBEaWQgeW91IGxvb2sgYXQgdGhlIGRp
c2N1c3Npb24gYXQgdGhlIENsb3NlcyB0YWc/IFdoZXJlIGVsc2UgY291bGQgZG1hLWJ1ZiBiZSBj
bGVhcmVkPw0KPj4gWWVhaCwgSSd2ZSBzZWVuIHRoYXQuIFRoZSBzb2x1dGlvbiBpcyBqdXN0IGNv
bXBsZXRlbHkgd3JvbmcuDQo+Pg0KPj4gU2VlIGZvciB0aGUgZXhwb3J0IGNhc2Ugb2JqLT5kbWFf
YnVmIHBvaW50cyB0byB0aGUgZXhwb3J0ZWQgRE1BLWJ1ZiBhbmQgY2F1c2VzIGEgY2lyY2xlIGRl
cGVuZGVuY3kgd2hlbiBub3Qgc2V0IHRvIE5VTEwgd2hlbiB0aGUgbGFzdCBoYW5kbGUgaXMgcmVs
ZWFzZWQuDQo+Pg0KPj4gQnV0IGZvciB0aGUgaW1wb3J0IGNhc2Ugb2JqLT5kbWFfYnVmIGlzIGFj
dHVhbGx5IG5vdCB0aGF0IHJlbGV2YW50LiBJbnN0ZWFkIG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1h
X2J1ZiBzaG91bGQgYmUgdXNlZC4NCj4NCj4gU28gaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwg
dGhlIHRlc3RzIGluIHRoYXQgaGVscGVyIHNob3VsZCBiZSBkb25lIGJ5IGxvb2tpbmcgYXQgaW1w
b3J0X2F0dGFjaC0+ZG1hX2J1Zi4NCg0KQXQgbGVhc3QgaW4gdGhlb3J5IHllcy4gSUlSQyB3ZSBh
bHNvIHNldCBvYmotPmRtYV9idWYgdG8gdGhlIHNhbWUgdmFsdWUgYXMgaW1wb3J0X2F0dGFjaC0+
ZG1hX2J1ZiBmb3IgY29udmVuaWVudCBzbyB0aGF0IGNvZGUgZG9lc24ndCBuZWVkIHRvIGNoZWNr
IGJvdGguDQoNCkJ1dCBpdCBjYW4gYmUgdGhhdCBvYmotPmRtYV9idWYgaXMgYWxyZWFkeSBOVUxM
IHdoaWxlIHRoZSBpbXBvcnQgYXR0YWNobWVudCBpcyBzdGlsbCBpbiB0aGUgcHJvY2VzcyBvZiBi
ZWluZyBjbGVhbmVkIHVwLiBTbyB0aGVyZSBhcmUgYSBjb3VwbGUgb2YgY2FzZXMgd2hlcmUgd2Ug
aGF2ZSB0byBsb29rIGF0IG9iai0+aW1wb3J0X2F0dGFjaC0+ZG1hX2J1Zi4NCg0KPiBUaGUgbG9u
Zy10ZXJtIGdvYWwgaXMgdG8gbWFrZSBpbXBvcnRfYXR0YWNoIG9wdGlvbmFsIGJlY2F1c2UgaXRz
IHNldHVwIHJlcXVpcmVzIGEgRE1BLWNhcGFibGUgZGV2aWNlLg0KDQpIVUkgV0hBVD8NCg0KRG1p
dHJ5IGFuZCBJIHB1dCBxdWl0ZSBzb21lIGVmZm9ydCBpbnRvIGJlaW5nIGFibGUgdG8gY3JlYXRl
IGFuIGltcG9ydF9hdHRhY2ggd2l0aG91dCB0aGUgcmVxdWlyZW1lbnQgdG8gaGF2ZSBhIERNQS1j
YXBhYmxlIGRldmljZS4NCg0KVGhlIGxhc3QgcHV6emxlIHBpZWNlIG9mIHRoYXQgbGFuZGVkIGEg
bW9udGggYWdvIGluIHRoZSBmb3JtIG9mIHRoaXMgcGF0Y2ggaGVyZToNCg0KY29tbWl0IGI3MmY2
NmYyMmMwZTM5YWU2Njg0YzQzZmVhZDc3NGMxM2RiMjRlNzMNCkF1dGhvcjogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KRGF0ZTrCoMKgIFR1ZSBGZWIgMTEgMTc6
MjA6NTMgMjAyNSArMDEwMA0KDQrCoMKgwqAgZG1hLWJ1ZjogZHJvcCBjYWNoaW5nIG9mIHNnX3Rh
Ymxlcw0KwqDCoCDCoA0KwqDCoMKgIFRoYXQgd2FzIHB1cmVseSBmb3IgdGhlIHRyYW5zaXRpb24g
ZnJvbSBzdGF0aWMgdG8gZHluYW1pYyBkbWEtYnVmDQrCoMKgwqAgaGFuZGxpbmcgYW5kIGNhbiBi
ZSByZW1vdmVkIGFnYWluIG5vdy4NCsKgwqAgwqANCsKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQrCoMKgwqAgUmV2aWV3ZWQt
Ynk6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYS52ZXR0ZXJAZmZ3bGwuY2g+DQrCoMKgwqAgUmV2aWV3
ZWQtYnk6IERtaXRyeSBPc2lwZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+DQrC
oMKgwqAgTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lk
LzIwMjUwMjExMTYzMTA5LjEyMjAwLTUtY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tDQoNCldoZW4g
eW91IGRvbid0IGNyZWF0ZSBhbiBpbXBvcnQgYXR0YWNobWVudCB0aGUgZXhwb3J0ZXIgd291bGRu
J3Qga25vdyB0aGF0IGhpcyBidWZmZXIgaXMgYWN0dWFsbHkgdXNlZCB3aGljaCBpcyB1c3VhbGx5
IGEgcXVpdGUgYmFkIGlkZWEuDQoNClRoaXMgaXMgZm9yIGRldmljZXMgd2hvIG9ubHkgd2FudCB0
byBkbyBhIHZtYXAgb2YgdGhlIGJ1ZmZlciwgaXNuJ3QgaXQ/DQoNClJlZ2FyZHMsDQpDaHJpc3Rp
YW4uDQoNCj4NCj4gQmVzdCByZWdhcmRzDQo+IFRob21hcw0KPg0KPj4NCj4+IFJlZ2FyZHMsDQo+
PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IEJlc3QgcmVnYXJkcw0KPj4+IFRob21hcw0KPj4+DQo+Pj4+
IFJlZ2FyZHMsDQo+Pj4+IENocmlzdGlhbi4NCj4+Pj4NCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFRo
b21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPj4+Pj4gRml4ZXM6IGI1N2Fh
NDdkMzllOSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdpdGggaGVs
cGVyIikNCj4+Pj4+IFJlcG9ydGVkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtAMTYzLmNvbT4NCj4+
Pj4+IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsLzM4ZDA5ZDM0LjQz
NTQuMTk2Mzc5YWE1NjAuQ29yZW1haWwuYW5keXNocmtAMTYzLmNvbS8NCj4+Pj4+IFRlc3RlZC1i
eTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+DQo+Pj4+PiBDYzogVGhvbWFzIFppbW1lcm1h
bm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+DQo+Pj4+PiBDYzogQW51c2hhIFNyaXZhdHNhIDxhc3Jp
dmF0c0ByZWRoYXQuY29tPg0KPj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5r
b2VuaWdAYW1kLmNvbT4NCj4+Pj4+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPg0KPj4+Pj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4NCj4+Pj4+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPg0K
Pj4+Pj4gQ2M6IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4NCj4+Pj4+IENjOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPg0KPj4+Pj4gQ2M6ICJDaHJpc3RpYW4g
S8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+Pj4gQ2M6IGRyaS1kZXZlbEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4+Pj4+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcNCj4+Pj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcNCj4+Pj4+IC0tLQ0K
Pj4+Pj4gwqDCoCBpbmNsdWRlL2RybS9kcm1fZ2VtLmggfCA4ICsrKysrKystDQo+Pj4+PiDCoMKg
IDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+Pj4+DQo+
Pj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2dlbS5oIGIvaW5jbHVkZS9kcm0vZHJt
X2dlbS5oDQo+Pj4+PiBpbmRleCA5YjcxZjdhOWYzZjguLmYwOWI4YWZjZjg2ZCAxMDA2NDQNCj4+
Pj4+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9nZW0uaA0KPj4+Pj4gKysrIGIvaW5jbHVkZS9kcm0v
ZHJtX2dlbS5oDQo+Pj4+PiBAQCAtNTg5LDcgKzU4OSwxMyBAQCBzdGF0aWMgaW5saW5lIGJvb2wg
ZHJtX2dlbV9vYmplY3RfaXNfc2hhcmVkX2Zvcl9tZW1vcnlfc3RhdHMoc3RydWN0IGRybV9nZW1f
b2JqZQ0KPj4+Pj4gwqDCoCBzdGF0aWMgaW5saW5lIGJvb2wgZHJtX2dlbV9pc19pbXBvcnRlZChj
b25zdCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4+Pj4+IMKgwqAgew0KPj4+Pj4gwqDC
oMKgwqDCoMKgIC8qIFRoZSBkbWEtYnVmJ3MgcHJpdiBmaWVsZCBwb2ludHMgdG8gdGhlIG9yaWdp
bmFsIEdFTSBvYmplY3QuICovDQo+Pj4+PiAtwqDCoMKgIHJldHVybiBvYmotPmRtYV9idWYgJiYg
KG9iai0+ZG1hX2J1Zi0+cHJpdiAhPSBvYmopOw0KPj4+Pj4gK8KgwqDCoCByZXR1cm4gKG9iai0+
ZG1hX2J1ZiAmJiAob2JqLT5kbWFfYnVmLT5wcml2ICE9IG9iaikpIHx8DQo+Pj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLyoNCj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCAqIFRPRE86IER1cmluZyBv
YmplY3QgcmVsZWFzZSwgdGhlIGRtYS1idWYgbWlnaHQgYWxyZWFkeQ0KPj4+Pj4gK8KgwqDCoMKg
wqDCoMKgICrCoMKgwqDCoMKgwqAgYmUgZ29uZS4gRm9yIG5vdyBrZWVwIHRlc3RpbmcgaW1wb3J0
X2F0dGFjaCwgYnV0DQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgKsKgwqDCoMKgwqDCoCB0aGlzIHNo
b3VsZCBiZSByZW1vdmVkIGF0IHNvbWUgcG9pbnQuDQo+Pj4+PiArwqDCoMKgwqDCoMKgwqAgKi8N
Cj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBvYmotPmltcG9ydF9hdHRhY2g7DQo+Pj4+PiDC
oMKgIH0NCj4+Pj4+IMKgwqAgwqAgI2lmZGVmIENPTkZJR19MT0NLREVQDQo+DQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
