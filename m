Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE4DAB97F2
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 10:44:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7BF446FAD
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 May 2025 08:44:28 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2059.outbound.protection.outlook.com [40.107.220.59])
	by lists.linaro.org (Postfix) with ESMTPS id 63A064122D
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 May 2025 08:44:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=XxRRWVvL;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dH9u2+EZMvucsH3ZbaKDRIucgKposq8gtFs0Wlj99asKexnyMhEAUP/1aidPNQFX9PCwstJFlTQOZkpiNYdiYx5s4KZix3wbawNk8mxYnFeQ0aPzK/y/SC0l8wyjwjllGvUEa1gfTg2UHd4uo2qDFzI+2+xU9aZD2D58BA7ZpCG2kej6aFyUhSsQcDgzB6Kcq2nz0J3QabrUa0PvcCIyQh2eS4pDHzS6VVbRMx6G0fWu4iU03gzxvsk0JNcVyoR5TecyODQ6BlReZxBG3g/rSRLkz+5UT+1mq4amMt7LxJJhcB1aXDHUo5b9djLh0+mk3n5jASZUsQUMgGzXH2d6bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KuJxrYO0o2oIfN/HxFGxvjxilNuqm5HCVblmGV9JltA=;
 b=PM98d/1CIRriR8XWHPGVyMU6258iYuazaL90a9RgNldlcK66wG2Wq1OG3aSoTPZZ2WIRPTUfhlt+zOEza5CVq660vX6w745S6xi4YKvP7fqTArokX9FMkjcuByJNXQMB20D0U9+lXZhvbgF4hqktKlku6lHzLxIIr11dD2wzIyOzUXkX8EkaHk5Kxupg1fXz1jAGtDSGIT6SXfeWJSPJXC6ruJRxJslOOoxGnFsE0PGkLkBxGO4lmfqDfy/8KIZmbh2I7TMBDNV/8NxQ7Rz24cqX0Xtfbq7L773znRCW4YOKFrf8JHfJ2/dWKllJkonWic4occqfQv/pqxz2GUhzYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KuJxrYO0o2oIfN/HxFGxvjxilNuqm5HCVblmGV9JltA=;
 b=XxRRWVvLBOwJNr38G67fcNbYODIx5TnfN00pi7M3g+SlvPbakyCkz7EFL8EBo6zxy3vPwqQmUqNZ+biQ1Dq0KGbFqx2ahURRJ+HSJqF41Ro7hDs+oPx3bDqChdDS2RQNvK2m4qkx58SlfYS9cXF+zXWU9UUKkplXYnsvmIHJ870=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB5666.namprd12.prod.outlook.com (2603:10b6:303:188::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Fri, 16 May
 2025 08:44:13 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Fri, 16 May 2025
 08:44:12 +0000
Message-ID: <0a890d19-27a1-4525-83e6-cfc082dfab37@amd.com>
Date: Fri, 16 May 2025 10:44:07 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
References: <703610a4db0324db05ece8e83fff864717c2e6c2.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <703610a4db0324db05ece8e83fff864717c2e6c2.camel@linux.intel.com>
X-ClientProxiedBy: MN2PR16CA0023.namprd16.prod.outlook.com
 (2603:10b6:208:134::36) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB5666:EE_
X-MS-Office365-Filtering-Correlation-Id: 8048866c-b221-457c-87b3-08dd9455d4fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dVRjS0I5M3FyYnFGclErOVVYM0w2RHZWbktDOTVFdVlsbTl4NW0rMERxT3hE?=
 =?utf-8?B?eU5ibEMrN0pXQUpaRkV0aHlQckU3aTRLUURJL2hOR0pFb01JbHMrNStoRUVn?=
 =?utf-8?B?WENjSzJIem9UanNLWThOMWR6Sm1uc3duOXBBWTZ2SGJhU3lXa1V4Y2RUVXFN?=
 =?utf-8?B?dVROTlRobkJlVHk2WkhMWnllQTNPanNFL3RDckZqNDRqRVJocjA5cXpBS1ZK?=
 =?utf-8?B?MGRHZ1JJSmFuaHhjQ3BoRnJTSzJmSjZwbVJGRG0wVzZJK2lhemlWamtoSE8x?=
 =?utf-8?B?OEY0K2tlVm1FbE43MndtbVNhb0JKUHlyTnFmUHoyT1JjSlFub2h4bGxsUG1i?=
 =?utf-8?B?MVRTbzlrUGVoa3NJTW54MlkyQUhaZlJwVCs3SDFhUXJrbGtMN0ZQejZBUjlC?=
 =?utf-8?B?MldMdnVDY00veUdWMTRCMURFcVdmMHMvMEIzT2RKYmc5RlExSjk3QUxaNjEr?=
 =?utf-8?B?TEpOZUd2QkZBb1RRcGRpNU5vSDBoVDF5QmNZbExwMHNiKzErWk81ejZDR25T?=
 =?utf-8?B?MzJ4cy9xSmQvNVZZWEQ4SDk5dXpzMGpMY0N5c3A3TklkOVFxcFAzb3RsOUZC?=
 =?utf-8?B?ODBJU0d1cWZWbzRQbmJiVE5WcVIyQ3R3a2FLQ1NsYUxnYXExakFsNHBKUFg3?=
 =?utf-8?B?V1l0Zk9IUzY4UVdtREErWXVmRGMzcGgxWnllRVlIV3J2NFQ0eTZFZUtKMm5l?=
 =?utf-8?B?clZmZldWSTJ0QWViMjhxcG5Ebmp5NHdDQnJlVmtWdnBmbXFQekdaMUtVck8y?=
 =?utf-8?B?NEtwR0EyT1VsakhJeFJKZk14Rk9ZNWxzamo4SytsMDVsanJoMy9wWWpvbjhq?=
 =?utf-8?B?aDlPZDVjVExpSjBqNFdVdGJLL0w3bksvNjVpclN4ZDVUeUNWYTkzK1Z0Nzlp?=
 =?utf-8?B?ZW5RWmJqS0VVbXc0VDNPNmVrRTZkbWFqeDUrdXJYVm0yd21naWVrdVBhYTdh?=
 =?utf-8?B?NmkyNktzS2ZLSTQ4NVJzd3dvaUJLMWJ1bUpoRXdsa2hBMUo3NGQxN1dWWjdh?=
 =?utf-8?B?LzlDWncxbmJnTCtVTm5MQWswWXJ5MDlQNDZyMGgxTzB0cXp0MWxScm1CY2tT?=
 =?utf-8?B?SnZLZmh2RkVhczNxWWFBK0dSaWd1V3RKQ1pEQi9uZk5QSzZWUUNSU0s5bWxn?=
 =?utf-8?B?ZktoNUhLYWtKOEl2Z29tandJR1pWZ1VVbTZjSHFjS0NzaHJQRWNmM0U5TDdX?=
 =?utf-8?B?U3o4VWF1eHZDZ1N3aSt5NUYxbGsvRzkwT3FCdEtlM0xIMmUrNzZrK3NqWFJj?=
 =?utf-8?B?RVFuWDhWdWZsUnBuNm9pTFVQQXJUNUo3NzdJTUNLV3Y2cjU4T1orV1RYQTMw?=
 =?utf-8?B?ajJVbmRwd2ppQXNBa0p4OVNqTjBheXpQL3B6S0JyR3ZaSkdjYzR3YkFxREFX?=
 =?utf-8?B?eFcxZ3dNdjNCNDJBTXRoaFpyR1Brc0ZvUlR6NEZoK0hLVWtmZnNpRjVjVndV?=
 =?utf-8?B?UWFCVytzbHZrQ2ErMHNtbFBSNUFDS1kxVVE1U1dEVFU0UW80bXNjSUhJTzhS?=
 =?utf-8?B?YzdzeVkvN1MyOVpVK3dRdmlHeWpsTDVRNnU1cFZUdXV0Yzg4SCtRbksrY2Mw?=
 =?utf-8?B?eUVMQ3hhbS9UY3g2M0JhVlVaSVViR3BMbVF1QTFmNFRuRElLR1ZUa3VpclpB?=
 =?utf-8?B?bklkb1VqM3pxTUhSTDFCVDIxeDJMQkRVYjV1bVBRdEk2SklkV2RGeUE2MmVM?=
 =?utf-8?B?TktlNXFHdGxTYWxTTWw3cVdreVdHbzVDaTN3ZUtRNWZvbnlvd3RCd3pYenh1?=
 =?utf-8?B?NWRQWURzSnRIWmZsNy81dHk3VWE4UFBOVENtY1ppdVByNU1lMU9RQ0wxWUF1?=
 =?utf-8?B?NU4rUUkrRjhMWUN0VlU3ZUcyMlJjek1SUjE4emVYRjB4bWU1UG1NOVpIUmY3?=
 =?utf-8?B?UHdvZ09sakkxQWxOWFgyT1l2ZE5vTm9xVlRtWE1vdFVTZS9saTdnd295bmpF?=
 =?utf-8?Q?NNFKzdlTeLc=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QnhmdVBtQThSVG1LWDA1aU1lSzUvUFQ3K0tST1hXbEFRSk1PK3k1S3ZlR3du?=
 =?utf-8?B?VEpGY3hmOGx1TFFMc2pYZmZFQnRsa0Zjdm1CUXFKSi9acGREV0hqUTJmVW5i?=
 =?utf-8?B?SXhiSEYyWGdYQkRUa0xNeXFVMmc3dGczWU85SXovY3VqeDBDUThYNjJWU3ps?=
 =?utf-8?B?dXpPTWczWW5QT3BoeENya0dEN0pQOU12QktjbUczSzRVUjMvU25iK3BkUm11?=
 =?utf-8?B?anZQcXFjQ3ZCMTZaYk9VeUhYNUdqR1hyUXE1T3ZrbXd4aFlhT0NuVHE4WlNE?=
 =?utf-8?B?dWR0UWd0aWplWGpocThJdnZRQ0VRNjNQZkZLS2l4TVpHSDRNa1lUbkxPMVUr?=
 =?utf-8?B?ZldVRkdFYzdqYzQ2ejFDZENZK0dSRzF1NGdmY29ORmR2SXNIemRWMldGVktW?=
 =?utf-8?B?NjNSVXhnelhWbm4vTCtGS3pOSVZNS3RVMm1GSHRoYTNYZDR2c0EyTnFFRnAr?=
 =?utf-8?B?Q3hPQW1sUUtTSlRSUWdaTjlYTTJEdDU5UmRHQlFFS2tRcVJnZTRsMTdtWDVV?=
 =?utf-8?B?U3ZueW1ZNmJka2lkc2pxejNTaThkbnhJTUdyMmtOWFBYOVJFOWhianBpUkR5?=
 =?utf-8?B?WW8yNTlBY3BONFgwVUd3cVZMeDg5TFVGcW1TM0x6Si9zcm1WSGh4S2xrVHYy?=
 =?utf-8?B?V2xnWHh1T0lOMkRSVUhkY3pGUXhPUHFJV29QY09jYW4zckt3aUFCR3lsNVBi?=
 =?utf-8?B?RDlrbmxUVWZLSUh2dlVDb3g0cHF3bU12WXFOZkY2N1BqVXlNZ3crcWxaeFBO?=
 =?utf-8?B?YTNHL1NYUVFDSWtIajRaQTEwc282SDlvdUtPRkdvZnlOeDQrNDBsaDFLSjkv?=
 =?utf-8?B?dUYyYWZsMXBVMEg0dU93di9kaFZaV3NHeXk1YzhYaDNYTC9VckZvbGtvTytX?=
 =?utf-8?B?SVZ5RnFLVW94UTQ1dXlrM1hvRHQxVDc0YjNpRlEwTmJWZDRzR25kM01mM0p4?=
 =?utf-8?B?YUFhaUFMQWUzNDZwTDQ1V0NRUTJDUW1WcmtmbGQ5OHRGREkvOWdzTnpFVXpa?=
 =?utf-8?B?dERKTGRLZlhmUk1kbXhlNjhCR3BMS1B2endrMVJmQ3JpRm5SV2N4TTBVMVRW?=
 =?utf-8?B?amVBY2J0NWJDdE1Wa2ExVkg2NlZKcGFBR2VpTVJ4Tzh2SmRzdHVqN0hhWDJO?=
 =?utf-8?B?V1dVYjlxeGZVamQ1M042N3Bndm50VWR6RHV0eE85eEE1SHk3QXUyQmpzcEUx?=
 =?utf-8?B?dWFyaUtzS3NoVlV4V1lqMFUwMXZZdUJnRUpjbmdZa1ZiVCs5MFJrVy9mSU1M?=
 =?utf-8?B?djJjdXJ2Z2h2MDhNZ2ZzdDNxZDdmQ0o4Y0pYM0ZyWHpZMnB2K09XeTFIZjg2?=
 =?utf-8?B?UDV1QytEbkgzQ1VYNStsVGRxekkxeTVMdzNDbExJUzlGVjhQN3dORXRiNjFj?=
 =?utf-8?B?c0VSOGhRNU8yclFmRjV3RHBEemNVaTlhMkhRbE0vUk4vY1JQcEIydkJwbHFs?=
 =?utf-8?B?aE1ZVGgyZVlVVDBNdE8xZmt5N3NZdTc2MlBZOThDZWR3cTlkL2hnb3g3TElJ?=
 =?utf-8?B?RTZQR1p1MlE2M05OV2dNV0JzZmRjeUlOMG9NQ0R4KzBSMkQyWWpmN1c5dDM0?=
 =?utf-8?B?c09nZkxlUWlCV3JpQmFpY1ZHVER6bUxjQ3FpbnpMOTh4TEpVUFg4T3pYVDZw?=
 =?utf-8?B?V0NZZjloWHhmMDRzZk5vSFpCNGcrdGhFM05GbnRmT05ROHFRWmpGTHVqWTEw?=
 =?utf-8?B?YUlRMXhpaVZwdnpsNm1sZG1MSDRoUUtTTUVsUHg3TGpTOHoxaS9rbzNVTEVp?=
 =?utf-8?B?VDBXbUVMWkFIbWxtMVhBSm9OYzFNWE9NajQrdHlKL1cwOGZ0MWtwa2V3RVFX?=
 =?utf-8?B?dWRBU2hheHhjUHlCNi9OUUIzbUc5am5iejdQVFNHYVgveFpQVWxsb1c5QWlI?=
 =?utf-8?B?ZVgvMTBSUVB6Q0NKNEpzYmpSb3BaaklWTExPOC9pMEZTTzd5WjBtczVMbjJ4?=
 =?utf-8?B?QklaV3ozcmhESkE1UGJxTENVaSt3ZFAxUW1XZHhYakZGQk1ldWpsYVBXSmRX?=
 =?utf-8?B?bE1lQ2xLdWZpRGRDK2J6TUpGeGY4RUNQTE96RnhSWFN0azdxekVianRSazFZ?=
 =?utf-8?B?aDVLQTZZYlFjYkxTOHE5bUxrei9TR2orU3VDRVY0bW9vd01SYTI3b1M3eU5t?=
 =?utf-8?Q?ppS+1qs7ZNQFgexL+xHKZuT1e?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8048866c-b221-457c-87b3-08dd9455d4fa
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 08:44:12.4872
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZaRUho641igiUwKIAW2wuSQn5CeNDmtjI7aDBFpE1LCzMpXt3/rVsLoFhENgBKfL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB5666
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 63A064122D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.98%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.59:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.220.59:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: KONLTS5HTU75QSWAAKD7CWQDUHTOYUMF
X-Message-ID-Hash: KONLTS5HTU75QSWAAKD7CWQDUHTOYUMF
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, DMA BUFFER SHARING FRAMEWORK <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Sharing dma-bufs using a driver-private interconnect
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KONLTS5HTU75QSWAAKD7CWQDUHTOYUMF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVGhvbWFzLA0KDQpPbiA1LzE2LzI1IDEwOjMzLCBUaG9tYXMgSGVsbHN0csO2bSB3cm90ZToN
Cj4gSGkhDQo+IA0KPiBJIHByZXZpb3VzbHkgZGlzY3Vzc2VkIHRoaXMgd2l0aCBTaW1vbmEgb24g
SVJDIGJ1dCB3b3VsZCBsaWtlIHRvIGdldA0KPiBzb21lIGZlZWRiYWNrIGFsc28gZnJvbSBhIHdp
ZGVyIGF1ZGllbmNlOg0KPiANCj4gV2UncmUgcGxhbm5pbmcgdG8gc2hhcmUgZG1hLWJ1ZnMgdXNp
bmcgYSBmYXN0IGludGVyY29ubmVjdCBpbiBhIHdheQ0KPiBzaW1pbGFyIHRvIHBjaWUtcDJwOg0K
PiANCj4gVGhlIHJvdWdoIHBsYW4gaXMgdG8gaWRlbnRpZnkgZG1hLWJ1ZnMgY2FwYWJsZSBvZiBz
aGFyaW5nIHRoaXMgd2F5IGJ5DQo+IGxvb2tpbmcgYXQgdGhlIGFkZHJlc3Mgb2YgZWl0aGVyIHRo
ZSBkbWEtYnVmIG9wcyBhbmQgLyBvciB0aGUNCj4gaW1wb3J0ZXJfb3BzIHRvIGNvbmNsdWRlIGl0
J3MgYSBkZXZpY2UgdXNpbmcgdGhlIHNhbWUgZHJpdmVyIChvcg0KPiBwb3NzaWJseSBjaGlsZCBk
cml2ZXIpIGFuZCB0aGVuIHRha2Ugc3BlY2lhbCBhY3Rpb24gd2hlbiB0aGUgZG1hLQ0KPiBhZGRy
ZXNzZXMgYXJlIG9idGFpbmVkLiBOb3RoaW5nIHZpc2libGUgb3V0c2lkZSBvZiB0aGUgeGUgZHJp
dmVyIG9yIGl0cw0KPiBjaGlsZCBkcml2ZXIuDQoNCkFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBz
aG91bGQgd29yayBhbmQgd2UgaGF2ZSByZWNvbW1lbmRlZCBkb2luZyBleGFjdGx5IHRoYXQgdG8g
bXVsdGlwbGUgcGVvcGxlIGluIHRoZSBwYXN0Lg0KIA0KPiBBcmUgdGhlcmUgYW55IGFic29sdXRl
ICJET04nVCJzIG9yIHJlY29tbWVuZGF0aW9ucyB0byBrZWVwIGluIG1pbmQgV1JUDQo+IHRvIHRo
aXMgYXBwcm9hY2g/DQoNCk15IG9ubHkgcmVxdWlyZW1lbnQgaXMgdGhhdCB5b3Ugd3JpdGUgdXAg
c29tZSBkb2N1bWVudGF0aW9uIChwcmVmZXJhYmxlIGVpdGhlciBpbiBkcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIG9yIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCkgaG93IGRy
aXZlcnMgc2hvdWxkIGRvIHRoaXMsIHdoYXQgdGhlIGltcGxpY2F0aW9ucyB3aXRoIHRoZSByZXN0
IG9mIHRoZSBETUEtYnVmIGludGVyZmFjZSBpcyBldGMuLi4gZXRjLi4uDQoNClRoZSBnb2FsIGlz
IHRvIG5haWwgZG93biBob3cgdG8gZG8gZHJpdmVyIHByaXZhdGUgaW50ZXJmYWNlcyB3aXRob3V0
IGJyZWFraW5nIGludGVyb3BlcmFiaWxpdHkgd2l0aCBkcml2ZXJzIHdobyBkb24ndCBwYXJ0aWNp
cGF0ZSBpbiB0aGF0Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+IA0KPiBUaGFua3MsDQo+
IFRob21hcw0KPiANCikNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
