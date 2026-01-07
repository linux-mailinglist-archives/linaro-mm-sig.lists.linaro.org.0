Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DABCFEB93
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 07 Jan 2026 16:57:30 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 142644015B
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 Jan 2026 15:57:29 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011032.outbound.protection.outlook.com [40.93.194.32])
	by lists.linaro.org (Postfix) with ESMTPS id 4C5D33F8EC
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Jan 2026 15:56:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=5i4WeyxQ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.32 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JQQ501cBUratPYNc0BMOoDnbPobXSAyWpkGrYsJsLPD9QzxFjDjTfGtb3AZnluaU8bIa4JSIo+RxCQHx63xKFiPrN5riiK55hu7H+mtxhWnAOP9Ez+wl9WHm0eFXi2szOj0fp+Kahg/JPzVBdliU+qQMpkd0ehC3yxZtiCeaP4Pl7KXW/QIFrZ9CGBUX6xh85ICuvyy4fMvpydAQTHz95rN0wCZuz5LeM/sGtfsHCVnR2i50r/GTQlf7z1aueGDvQH5Z6pBz+EUkclR6Mudc+oKkKLo83zQHXOUL2j7zT3pmY965WJhRDjv702el4MeZAc/GV//ZhH+5r2GvAGq6yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yI812y4koyhAdOEl6YrNnBtpM+Ex0VABxMKXej+OcJw=;
 b=ehlwo/gH9q9IZ5n8TtARUtm71gqMPyaN8O0dgyq2tBQ0brnpk0qalpbtc1/7XxdAUKkIUEed1QyvvdZzWzoR1gpRqn9DJgXX1Zob8le1UTtaVUXTxVkX586XK0yVdSg5J5204JlFscjzmygQ9N5/uwY4Pgs+lx0+T9XrWLGeUb04nV7DXcyGpQrbccbnTnsbUgoQaskzywuQPCOH++T+pqzKVh1vrQ4z+MK2FuL+JTs7g7dyFkL5d1eDLfxLCov7CI7DxBjddICCzDD3XY5trb5wVQ/zdNs63yuKIhip/NbGLJBMElvIlVFv/EBUgg0yNYdfBhUHljufX/h7O7GorQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yI812y4koyhAdOEl6YrNnBtpM+Ex0VABxMKXej+OcJw=;
 b=5i4WeyxQOq24Ya+TDzVpCOlHDdpd7Q95nkAAz5P6a5hS/Sw5otUtIOOBiWOTxwzg4uWsxLrTq3AhzCGCoULCXvLIoVhTalVpXXIEGUqqTXpKaZOlbYBeePZC7pH8x93u4bEEax2mtDte62vJqF5RVqxzknBnm20HTMxJOn6eUxQ=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB6974.namprd12.prod.outlook.com (2603:10b6:303:207::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Wed, 7 Jan
 2026 15:56:12 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 15:56:12 +0000
Message-ID: <754b4cc9-20ab-4d87-85bf-eb56be058856@amd.com>
Date: Wed, 7 Jan 2026 16:56:05 +0100
User-Agent: Mozilla Thunderbird
To: Ming Lei <ming.lei@redhat.com>, Christoph Hellwig <hch@lst.de>
References: <cover.1763725387.git.asml.silence@gmail.com>
 <74d689540fa200fe37f1a930165357a92fe9e68c.1763725387.git.asml.silence@gmail.com>
 <7b2017f4-02a3-482a-a173-bb16b895c0cb@amd.com>
 <20251204110709.GA22971@lst.de>
 <0571ca61-7b17-4167-83eb-4269bd0459fe@amd.com>
 <20251204131025.GA26860@lst.de> <aVnFnzRYWC_Y5zHg@fedora>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aVnFnzRYWC_Y5zHg@fedora>
X-ClientProxiedBy: YT4PR01CA0267.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:109::22) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB6974:EE_
X-MS-Office365-Filtering-Correlation-Id: 3607b8f6-42fc-4b54-e20b-08de4e0547dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TE9BSG9xMFJzTGpJVmJnajNubUlEeGFKNDEvUExwakhjMXpERStCQjk5cDVj?=
 =?utf-8?B?aFgrUnNSeitXdDNDb253cE5OZjlOblVhWnFyZGtycXdmeDBiRzRYaWxFYlVZ?=
 =?utf-8?B?eUtIdElSVlJ0V2t3NEpUSlhrTlVDSW13UktndHl6QzliYjd2RkZrMmdqOTRI?=
 =?utf-8?B?T2MzeHhPdDFySnErRUszdFY0bkgwc2lxdnk5aEgyOVl4YjhvbzF0dzlpRFhH?=
 =?utf-8?B?aXdzc05yUU85RmI0WG9ocEh2bm5LU05ROXFOWG1mUUpDaWJTVm1qdWVpMGRL?=
 =?utf-8?B?ZTByWEQ4YjhhNUFzUlZnT3huZjUrMk14bWh6aTF0UVBrV3c5VWZubUFBNmJW?=
 =?utf-8?B?Qk1vZlZ5UGRVc2ZGekk1bDRGT1VTUUp6WjViUGNTYWtQazBad0VRL0Z3aE5S?=
 =?utf-8?B?S3Jmb1FIN05ZQ1JBdXRxYWU1MGFjT1dON3I3Y3JXOGZXWlFqTXlHeSs4bTRL?=
 =?utf-8?B?enduazdJd3Ird2RkR0QvdHYySTBWeGFvRzVHN1JxSjZoaXJlWmhTSXlZeXRX?=
 =?utf-8?B?ZDI3N21yTDhvV2R3VDJZT08vaDIxMjR4M1kwSE9UaWNtd3c1dk1obGRPbUlR?=
 =?utf-8?B?NUpFK29Rd2hoYThDN3dIUVEzZVgrVFNZbW41aVFETklWTnVnMmFoZXc0RmNS?=
 =?utf-8?B?NmxNOUppNFJqc3BXcVNqRnNxNHBLRE1oT2VIQXFvZDZRLzB6akJMd2FEVXlB?=
 =?utf-8?B?VnpoT2tTOS9xK0FzYktITlQ0akUxK2ptUXNKeXJhT1Y0K0Y2WUkyMllsQk1q?=
 =?utf-8?B?ZFBKOVFFdjE4czc1OGhFcVJtQTZwdXF1U3BnMm5PSDhTWWRDaXZDMFNvSVU1?=
 =?utf-8?B?Q3JKSzg1bzNDQ05JTC82VFloSzY3Qm9Eb1BDNzkwU3l3S1pNZTlaSzdObUpI?=
 =?utf-8?B?RWR0NzlzWlFsRmptVzJubU5EWmxuaytRREVGTWFNd1pkV25wTHhTcDQrb1hq?=
 =?utf-8?B?anhxTjRabXEyWEsrN2ZiS2FqNkVVU0NMQmg0MFl0VEdrOGx0Y2JxakZ5OU5L?=
 =?utf-8?B?WFE1SXppYld0YkxhNDBmOXo5SWk2R2F6UG0zWWIxYjRsVlNrUDU0S2pPT1Rq?=
 =?utf-8?B?UlorWWhXRldhMkRrVFpFRVMwMzNQcmxJQkpycEdCMUR5MGhvNzBlKy9sNS9E?=
 =?utf-8?B?TkRXb0E3a3JCZmdwb3liMHVzUEFEMmtvUVlYMDBNcDFoak1KaWN0bDRIVEJw?=
 =?utf-8?B?NXBnMDNQNTVIdENOTVhvQjBLRWJDQ3ZOVWVwV3FNNjFiMUNhNEhDRkpDanlO?=
 =?utf-8?B?TGlicnlwRVdtQVJrbm5oVm9CV2lxUXNrWjhLSVpnQmZZQmI0NER6Y29abDVu?=
 =?utf-8?B?Nkh6eXZKaGZJaU5QOXk2Mjd1TDArZjNPWkZmejZ2MUYzbEc4aGN1eG1mV1NL?=
 =?utf-8?B?UENFYUZyeU5pSlJIRVM4V1VWNmQ1NWc4VC9jVUZJVXR4SitBbDhoRUIwV0Q5?=
 =?utf-8?B?aGlNWlJEMGZlUnRraVI3YnRLYTRnL3krbjlKOTZxbGVkd09KblllbVpueC9w?=
 =?utf-8?B?Z1dMWHU5TFdpaVlsQUVaNGhTY3RKajBxeFAraVhoSjJZRzVxTGJoSmtGcDly?=
 =?utf-8?B?d083RFJLaFY4aGZHUlVZV3JLU041K2IrQTBFSG41RDRwblZST0ZmTEtSbGN2?=
 =?utf-8?B?aDJ1TzAyRUtjY0doVXdPUlBqMG5YU3VlNklyUDh6WkR5ckJ5bVdKOEQ2aytD?=
 =?utf-8?B?cXRIKy9OWlZuN0ZrTFdpVnhiZGtGUVJ4c0JiYjFKTXY1OW9DMW1hYndPcWhq?=
 =?utf-8?B?d1JodlBOclU4QkZXTnFBR0xKVnVNUlJXQWljdXBPQU41ZUpQSmtCTXJmWUV6?=
 =?utf-8?B?SWxkbnRzU0VmczZBOUtrOTRhUlAyNDBsYTRYLzV3MFZLT3NKNE9CSHkySG9Q?=
 =?utf-8?B?TER5WEQzRE02TDdqVk8xZkxkeFFjZXhkRWVNUzJYUlBZTGdZRm9oZHlQY2tR?=
 =?utf-8?Q?/GNdQ41tynkPL7X0Ki0dD1n30kqYa2Hm?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Ry9UM1FDZWVHK3lMdzM0RnJRUzV4aC9yaE1Mekp0N1dZY2hXZ1QycGE5a2VV?=
 =?utf-8?B?VGxiUzVldy9oTERDVzN4QkFGcVNqWCs4aGZPaS9TdFZjR2RWSFRpNTNKRUlD?=
 =?utf-8?B?TnUxU2oxK0dDaWVRY1BYcGlxTmVLaE5XWE8wemhaelBabnhuWjkrM3dvNUky?=
 =?utf-8?B?M2swUm01VzV2S1lpL2xqL05wdnppR3F1WXgwUGhZeVYyQUFwT3pHek5JTTU4?=
 =?utf-8?B?SUhGM1NVOUtPVXA4dWFyZUhnS0J6NUh0cGNoWEFURE05MFZwL0UzQmZVZ1RK?=
 =?utf-8?B?Z0FGY2FzRTl2ajMyaHNQSkIzZHdnc2hkWlc4dmZ4WHQ0NGZBdnVIL000N0lR?=
 =?utf-8?B?TngrdEVUa2RnUzVqNzVVcElKNC9CaGRMNUJhOGFOVFk0dXJ3YVF0VXRFSmZs?=
 =?utf-8?B?RmJnaUVYck5SbnRGb1QzTHVIeURuVk1XQUx6OHlRS3g2OUNrSkE1Wlo2WFJO?=
 =?utf-8?B?SnA4b2laUVEwdUwyTjhpeEJQaFloUDNJbTh5bjIrVVJmOG9GaEVzUjNCa1Fs?=
 =?utf-8?B?NXZ1VHAvbys2QmdLVUQvWGNDRHpOZGUreHpmV09CK2xzWTU5dDF2ZUdWQnpF?=
 =?utf-8?B?NHBXSkpxMWpEeFJ4VFFiYlVwd1JjRHNaNzRWRmVNbGQ1OU5WcTlzQkl6OS9R?=
 =?utf-8?B?dXhwYnhBdnllQUhURzhCaEh5ZkhYSnhlRllYR05YWkdQWWJmajVuNm9rWERh?=
 =?utf-8?B?T3dibW0rS3BucFlROWt1YXIvakV2YzVxaFVHZ25GaXBGd1Z5dkF5ZGVZdXBR?=
 =?utf-8?B?KzVxbHJhRmp5RXhaTVB2ZmlsRGNWUDNXOFpyT3VpaXhFY2p4K04wYkg1blRN?=
 =?utf-8?B?eEw3cFhVUmthOFZRYzFPditjU0tRV1hZeFE0Z3k2NmxPa1R6MUpHNkNBYjZv?=
 =?utf-8?B?K0IxRW9WcXd0RjhTYmlDZmp5YlRwN1EzNDhCdVoxVXJGcG9Id3dmNGs5bU9l?=
 =?utf-8?B?ZUNnODNqejhIQWNTbFRxcjRuc2lHMHBHODcyMXRuNytmV0hmVUVUNzN3NFY0?=
 =?utf-8?B?aHljODVKdWJQTjhZTWxoakRvQWxVU3R4dUUyRDBLSlk0ek9iSHlkUXRMWk02?=
 =?utf-8?B?R0lScVV0VHRNRFBYbFZ5MHhvTCtTVVl3Y3dhaWxUU2ttb3ZXbnlvN0V3VThm?=
 =?utf-8?B?MHRjL2RGSWNwTlNkTTRKckkrMm1WUnZ0UnhWWkowNnl4aGRRNlpsb3FtMUVt?=
 =?utf-8?B?dWJzb08rV1ZRa1IvTnRHYVM4cGJZMk5JRUY5T3Q0aVQ0UnVuSjh1ZlZvTHgw?=
 =?utf-8?B?WUpLbHdkWG1PZVJuVUt3MmZBK005UzhVWnlKMWxjRDkrUERDOEIwSURqZnEw?=
 =?utf-8?B?TkNUMnFYV3I3WnhsdGFBNGlRZlpERm0rL0t4ajJvdXk0dklkckZ5Z3VzL3Vh?=
 =?utf-8?B?YVR0ZmdhZndydldYWElWQmNiZmFIM2lJQkdKbVEwWUhmWklyNkNIOUZrMFY4?=
 =?utf-8?B?ZTJSTUgzaFJDNDRnc2w1dzVITzdsY3NaU1AzOEtZdnJJZ3gwTS8vTVBNWWdw?=
 =?utf-8?B?V2xBV2ZLYnFvbDFSWTc5dDl6Wmc4TS9FNE9lMDg0N2lyR1ZZZ21xTDVkWVYr?=
 =?utf-8?B?RXZoOU5JV2h6ZW5NMVM1aDh0bHdseXNabGt0OTVjNkEwcEVsdGc1ZkJJRklJ?=
 =?utf-8?B?NnVyOHIrUzYrVWlEV1dSNlZERnZmM3ZPOUcycXhvSjZNRUlKUHVWWW8xbmRJ?=
 =?utf-8?B?RERONzBqR2l0ZGdFMnE4aHNRd0FZVjR0V1Q3Snp5amkzSWZucno1VDFiT3BN?=
 =?utf-8?B?WG1RYWV2MGZTNndKZ1I2ekUyTlJ2ZTRwbVN4VUl3VUNzU05mVmNJYzFtbVZN?=
 =?utf-8?B?UDFHRWw0Z1BXWmxDL1d6V2s0dHlpWVVlZDIzZEROTHFnUlF5bFcvS1JBdnZk?=
 =?utf-8?B?SDhkbUd6ZWQrOW9ET1JEeTR1Z21RalIzK09FSEhGbUxKakF5SW53dHJLczFs?=
 =?utf-8?B?dGRieWxDYVFSNzdxZDRoNU9xSzZoUUlDSVp2Rnd2aCtmR2RKQ2dMbkNWc29U?=
 =?utf-8?B?cFh0VE5sZHg5WGRFdXV4RFkwaHhhdGxkU21ndUhkbFE1UURMUHFtK3dwbEhO?=
 =?utf-8?B?bUE3YzJUOUJVUVhWZVFrYmMwQ1RFUG5WakluSkN5Uk1oNkMxdXhqVmxPVnhP?=
 =?utf-8?B?ZXdEWDMxaUZGYVBZUi8zSCtxb3JxT3cwNE5SaGhXYjRTdnJsdGNyWGdmVisw?=
 =?utf-8?B?c3o5cUVjaXZKcEhkL1Z1KzRISHgycWY2MSs1ZzZYYlRkWmVJRUl6R2JEendv?=
 =?utf-8?B?UG5YckJtR2pETkdiRTZ3NmNUT2h4VjhQN20zV2drdE1YYllYNjJ5azlOekIz?=
 =?utf-8?B?cDFsU2NKejF4cGJ2T3M2a0I5RXppeERLQ0RpbkRIdHFrcUxmZm1ZQT09?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3607b8f6-42fc-4b54-e20b-08de4e0547dc
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 15:56:12.2204
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B+3AU2iFjnI4pkM/6aA7Z0g3Hlz4I/oxBvNkz1HH3nooV8dPz1Rqb1Q1+7v2VRXY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6974
X-Rspamd-Queue-Id: 4C5D33F8EC
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	DWL_DNSWL_BLOCKED(0.00)[amd.com:dkim];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.32:from];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[mail-southcentralusazon11011032.outbound.protection.outlook.com:rdns];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,intel.com,kernel.org,kernel.dk,grimberg.me,zeniv.linux.org.uk,linux-foundation.org,linaro.org,lists.infradead.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: J7MSIDUG77YFKBGKM5DC7A3OOPDZEBWU
X-Message-ID-Hash: J7MSIDUG77YFKBGKM5DC7A3OOPDZEBWU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Pavel Begunkov <asml.silence@gmail.com>, linux-block@vger.kernel.org, io-uring@vger.kernel.org, Vishal Verma <vishal1.verma@intel.com>, tushar.gohad@intel.com, Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC v2 01/11] file: add callback for pre-mapping dmabuf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J7MSIDUG77YFKBGKM5DC7A3OOPDZEBWU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMS80LzI2IDAyOjQyLCBNaW5nIExlaSB3cm90ZToNCj4gT24gVGh1LCBEZWMgMDQsIDIwMjUg
YXQgMDI6MTA6MjVQTSArMDEwMCwgQ2hyaXN0b3BoIEhlbGx3aWcgd3JvdGU6DQo+PiBPbiBUaHUs
IERlYyAwNCwgMjAyNSBhdCAxMjowOTo0NlBNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3Rl
Og0KPj4+PiBJIGZpbmQgdGhlIG5hbWluZyBwcmV0dHkgY29uZnVzaW5nIGEgd2VsbC4gIEJ1dCB3
aGF0IHRoaXMgZG9lcyBpcyB0bw0KPj4+PiB0ZWxsIHRoZSBmaWxlIHN5c3RlbS9kcml2ZXIgdGhh
dCBpdCBzaG91bGQgZXhwZWN0IGEgZnV0dXJlDQo+Pj4+IHJlYWRfaXRlci93cml0ZV9pdGVyIG9w
ZXJhdGlvbiB0aGF0IHRha2VzIGRhdGEgZnJvbSAvIHB1dHMgZGF0YSBpbnRvDQo+Pj4+IHRoZSBk
bWFidWYgcGFzc2VkIHRvIHRoaXMgb3BlcmF0aW9uLg0KPj4+DQo+Pj4gVGhhdCBleHBsYW5hdGlv
biBtYWtlcyBtdWNoIG1vcmUgc2Vuc2UuDQo+Pj4NCj4+PiBUaGUgcmVtYWluaW5nIHF1ZXN0aW9u
IGlzIHdoeSBkb2VzIHRoZSB1bmRlcmx5aW5nIGZpbGUgc3lzdGVtIC8gZHJpdmVyDQo+Pj4gbmVl
ZHMgdG8ga25vdyB0aGF0IGl0IHdpbGwgZ2V0IGFkZHJlc3NlcyBmcm9tIGEgRE1BLWJ1Zj8NCj4+
DQo+PiBUaGlzIGV2ZW50dWFsbHkgZW5kcyB1cCBjYWxsaW5nIGRtYV9idWZfZHluYW1pY19hdHRh
Y2ggYW5kIHByb3ZpZGVzDQo+PiBhIHdheSB0byBmaW5kIHRoZSBkbWFfYnVmX2F0dGFjaG1lbnQg
bGF0ZXIgaW4gdGhlIEkvTyBwYXRoLg0KPiANCj4gTWF5YmUgaXQgY2FuIGJlIG5hbWVkIGFzIC0+
ZG1hX2J1Zl9hdHRhY2goKT8gIEZvciB3aXJpbmcgZG1hLWJ1ZiBhbmQgdGhlDQo+IGltcG9ydGVy
IHNpZGUobnZtZSkuDQoNClllYWggdGhhdCB3b3VsZCBtYWtlIGl0IG11Y2ggbW9yZSBjbGVhbmVy
Lg0KDQpBbHNvIHNvbWUgaGlnaGVyIGxldmVsIGRvY3VtZW50YXRpb24gd291bGQgY2VydGFpbmx5
IGhlbHAuDQoNCj4gQnV0IEkgYW0gd29uZGVyaW5nIHdoeSBub3QgbWFrZSBpdCBhcyBvbmUgc3Vi
c3lzdGVtIGludGVyZmFjZSwgc3VjaCBhcyBudm1lDQo+IGlvY3RsLCB0aGVuIHRoZSB3aG9sZSBp
bXBsZW1lbnRhdGlvbiBjYW4gYmUgc2ltcGxpZmllZCBhIGxvdC4gSXQgaXMgcmVhc29uYWJsZQ0K
PiBiZWNhdXNlIHN1YnN5c3RlbSBpcyBleGFjdGx5IHRoZSBzaWRlIGZvciBjb25zdW1pbmcvaW1w
b3J0aW5nIHRoZSBkbWEtYnVmLg0KDQpZZWFoIHRoYXQgaXQgbWlnaHQgYmUgYmV0dGVyIGlmIGl0
J3MgbW9yZSBudm1lIHNwZWNpZmljIGNhbWUgdG8gbWUgYXMgd2VsbC4NCg0KUmVnYXJkcywNCkNo
cmlzdGlhbi4NCg0KPiAgDQo+IA0KPiBUaGFua3MsIA0KPiBNaW5nDQo+IA0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
