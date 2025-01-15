Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F718A12605
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 15:30:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A3D5144123
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Jan 2025 14:29:59 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2073.outbound.protection.outlook.com [40.107.237.73])
	by lists.linaro.org (Postfix) with ESMTPS id 67A8044121
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Jan 2025 14:29:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=CUFwEgXJ;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.73 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hx46jazMSM1PxLxjDFq3CJlrRDP8qZ8YP3i9kXoN0KAvWzrdsB6A3UcQOoB38zsHveIMWHaPmpp2WVoJ0nFkqmymR1H5OxBvZZZ5mid35eGA596g4IcvKJGgyhNs3Fb4jjRXHtAB26hX56davpv5JrCd4ldRIF4B/lSfMZlroPrzvu+PDOZPiln2OiQZFObbE1fQ0YP1PuIpAUnaql2HXZQktcL4QNgSk9pIne6fzpAxyevSpOjI2ZdzjgUPE592GrO2/CgcYsH3VhQEHPBPyVjjqurupY08hYVFJD82InVG+W97B5qFdZQyPtd33HYqFSqfkO/Qvk+zTMOEmjAZig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k+/zLLVLWpM5wM7TYxKoAMqF1Yav8W4/HFSM+V3OWNw=;
 b=OjPZFwVFKxqZcsyQV2f5bvQ0pocE9aygXNl3uAMq7Urgt3bIWspoP4B2waDFyw5qsaTvCTTbNWqLtljiBHK3jFHteU8AKaN33QF3hiVCWxcXiTN5wBlRNrZpvo945SkmU/jElJHOIrIUqZxh95c7WJ+NfzMzKAcgW5GiArGXzLqzJtdiMlGeQO8lrcW37NAGLBsuv4ap6eON0jP4YvWST1pmjin0h09pyLWUEWToD9Z/jxBWcRg1HCPhdRr/WVhbfBs8DrE9BcvtlBwa05g1nhraQYa+3cXs7yujJNBQ4+XchBWgGcZYXCtRAETD7nWdm5jL3wPK8mhzswXEMFKY5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k+/zLLVLWpM5wM7TYxKoAMqF1Yav8W4/HFSM+V3OWNw=;
 b=CUFwEgXJzONS9zqYiEVFnF+VuoCI13LyyEr7JZ1NdCRptcx/04RcYjWjss5HYgXwEL8d571SfkFvGjfooyvxsQna3QSnlYckJTXtuAAX4zBqDHwmKBfIq12XT4HW0ibs/H2HasUNCBgGlXIighQxNLn7KE8MeGJlVswdCbDS0TI=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB5982.namprd12.prod.outlook.com (2603:10b6:8:7d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Wed, 15 Jan
 2025 14:29:43 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8356.010; Wed, 15 Jan 2025
 14:29:43 +0000
Message-ID: <c86cfee1-063a-4972-a343-ea0eff2141c9@amd.com>
Date: Wed, 15 Jan 2025 15:29:34 +0100
User-Agent: Mozilla Thunderbird
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20250108162227.GT5556@nvidia.com>
 <Z37HpvHAfB0g9OQ-@phenom.ffwll.local>
 <Z37QaIDUgiygLh74@yilunxu-OptiPlex-7050>
 <58e97916-e6fd-41ef-84b4-bbf53ed0e8e4@amd.com>
 <c823f70c-9b70-441c-b046-71058c315857@amd.com>
 <20250110205454.GM5556@nvidia.com>
 <d213eee7-0501-4a63-9dfe-b431408c4c37@amd.com>
 <20250115133821.GO5556@nvidia.com>
 <f6c2524f-5ef5-4c2c-a464-a7b195e0bf6c@amd.com>
 <1afd5049-d1d4-4fd6-8259-e7a5454e6a1d@amd.com>
 <20250115141458.GP5556@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20250115141458.GP5556@nvidia.com>
X-ClientProxiedBy: FR2P281CA0052.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::15) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB5982:EE_
X-MS-Office365-Filtering-Correlation-Id: d137535f-cf6b-4077-3298-08dd35710d79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|7416014|376014|366016|8096899003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MFQ4SVBQT3JNR3ZLV2hSdHZRMXIyblkrY3cySnNvMTNwMnVXTTA4bXpyUXRv?=
 =?utf-8?B?YmpCRldqMXlWTkVuZUtUcEUweGZhdDhyYWNCV1NkcFYrTWk2eEhiVCtKS2Nr?=
 =?utf-8?B?OVoxK2NOOTJPY0VnWndoNFZmK3lQVC83WkpZNllWL09PS0puaVFvVnB2SW1a?=
 =?utf-8?B?a1J6K0UxSmdwcnFmTkRHaWpZSitIYlg2dXVsa1dCRk0zVEdPOFVyeG5oRWNn?=
 =?utf-8?B?U1cyVWlQNWhmNDRobmlBelk5WFNyZUZ1Y1llMnl3Rm8va2RBSlZwRXIvbklW?=
 =?utf-8?B?T0JJa2dxbUR5RHh6bmRvT2xNZzEzcGRqWEF4RG1aRHQ4dFVZSW56c3lpN3dH?=
 =?utf-8?B?bU1WTU5aclR4b3IwbGF2aER5NGsyK0t3dWt3SzhYWGFGK2VHUjE5dUFzUnR3?=
 =?utf-8?B?SStUbkJYbnJ5UEdHKytGaVNRKzlzV3Q3dEhxZGlIbFhuZXhVRWw1OGptV0VI?=
 =?utf-8?B?dnF2UHRLblM5Sk0xYUNwbGVxSjNNK1gvOHYvcnFVT0NxQ0x5K1dIR1ROWjB2?=
 =?utf-8?B?azZ2ck5SdCt6Y1JZZlpja0orNjNzT0MwR2FDR3JjMjRhY1dhU3RxUjRYN2Fh?=
 =?utf-8?B?dnUvODBzaHNWV1hNRVEwV0dlWEIwejBGS3ZCRFliT2pVazIrb0tWbEg1T2Rw?=
 =?utf-8?B?TmNvWjNKVjAvN2pObEozYkxSQktpaDdIVmltUElqTlQ1eGxxRXc2OE5jRzZm?=
 =?utf-8?B?QmNhRHF2dnNIc3hSZFd0V1ZlcTVJQXp5WFE2Mitoc1ZTV2lCSUt6eXpPUWlq?=
 =?utf-8?B?bkJ1YVdEUUlzbkpkL2NjdkFYbGp1N3ZIY20xNWtVZVZwWTNFYkY1Q0pGRHZU?=
 =?utf-8?B?Y1VPT21oRERDUTEzTHZUeStLaXg3SDdFN01RQURJU2tWNFBqbHViZFNoVlBI?=
 =?utf-8?B?L2c1cHArMmZtQktqcEZIZEMrZXRsMnc2VitRYkExQVRMLzlmamsvUmllS0Rh?=
 =?utf-8?B?RGlBTG0xcUVqK3JnRktTaDNHc1lIY2F1cEdMR1JGWFBuREw2bnl5VHI5blQ1?=
 =?utf-8?B?V202Y25rYVRGQml1OWhZL1JwdHA3K0RQWWloWGlFeUhpcXJ4VEVIcVdPZnZz?=
 =?utf-8?B?Z0ZSVmhrSFg2bDdxSGwweXlvejB2QzF5cDlJdWNLYlJxNUpMOEh4MjZIVnlq?=
 =?utf-8?B?dDBxOUQyT2k3RXNaRUJLdW04cWcrSDhwUjA0SEtka2FGSTY2UjRjZ091Q1ky?=
 =?utf-8?B?cjllR3dwcmR4RUhOdldtajlRZ0c3NThrOEJJREw0OUszeDZnazZxNlhhZjhT?=
 =?utf-8?B?M1Nkd1JjZXhac1J3Y2IwMjB5UDVCV3YvMDhuK1UwZVNMZWt3L2hYMTdtODNG?=
 =?utf-8?B?a1F5TDI5Y3ZkVTc1RTlMb1pQeUFDdk82dVpzV0VYNXl2dzNMbjNILzc4SGRi?=
 =?utf-8?B?YTBseGtmaklXNlQ2bUxqMUZxSXA4QXZYTmxQYkdIbGZtZ1dFNE8wZ1Y4WVl0?=
 =?utf-8?B?SGl0b2dJSStkbldvTmVIMTkrNlZuM0dtTDdNM2NSZW9sY0FtYWdlbnpNaHFT?=
 =?utf-8?B?QUUyOXRScDUyMnh5V0pDS1V0S0g1WUJOVk0rK3F6QUdob0hzRE1tRzlQbXVn?=
 =?utf-8?B?SEcxbVMzRkdiNGtpZGg2Zm1KekNzVHFMVkFYc0hDR2JXTWprYW9YeDFubDJt?=
 =?utf-8?B?eFdJYTM4ZlBwQ2tyNEZ5UXVHTFVMZ054WW0relBFcTZ1LzNWM3JYREtYOEdC?=
 =?utf-8?B?TkJUR2JvcnViVmtSR0pCY0dkNkZDRkpwc3ExRFZBWEVXRllYNEFub3NMdmMw?=
 =?utf-8?B?S3R4WWw3Ujk3V3ZwV3pZM0prZ0pHWjVaK0tvK2JtL0RTdi85S1VYTWQyTDI5?=
 =?utf-8?B?eng5UmlLZVd1Yzh5emRqQ1M3K0U1RTlMV3FJOWFrdUZtL0lHeTcyU2VmbGh0?=
 =?utf-8?Q?CkdTdwYU6GHi1?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(8096899003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VFN3K1NNb1lCQXJNMmhENlBUYVFsaWYxS3huQUFHMFAzYktva3hUc0JOdFR2?=
 =?utf-8?B?Y3ZhVThpTlV2OFRwMThadjVpQisyVEF3cTlmb2l6SGU2MlU0aEZUT2NwY1FS?=
 =?utf-8?B?eXExb0huZlVNcjBRdFRkcmhQN2dsRittYWdJSzFMZHo4YnBiL2pSaWNFU0gy?=
 =?utf-8?B?VXJMYmxwLzZlYWJWaEVpV21zZGRNU2hLVGRtWlp4UU5tUUtrR1VEck9kWWhy?=
 =?utf-8?B?aWo1OHRpbjRwWlZuM1hHRzg1MTFCZnRKYzNIZHRjQkpXWFdtQVJQaTZpRFNs?=
 =?utf-8?B?c3FPYnNES3NDZFlnSlB5dVQvei9WQkhkV3o3Uzd3a3FIeXI1SUJQd0tRN2pL?=
 =?utf-8?B?cjlicERBTDI0engvZ3dQZnRmd3V5bWswbGl3UXBaOFVKdTY4TDZSRlVzL1VN?=
 =?utf-8?B?Z1V4Nm04TzdlQWNqZS9KLzZ5NzRXNVpNVzJVNmIxMk5kWnA3b0FUaVFmQjAv?=
 =?utf-8?B?SlI2U0ZUL2RheVpreU9GbkVkMlF4bzhFMlJxa3F1d0JvajUvZE1wS1FEUDZx?=
 =?utf-8?B?NzB5bUFEVzhGNzYyVUNGWWZnMmo1QjlaNjlBMXJzTFREMkg0U2pucVdieTJ6?=
 =?utf-8?B?M3AzKzdsSlYxTFZVclNITlEzbDZlYVFpSjJIM2RabElWRWdHL1BTNHlacjhv?=
 =?utf-8?B?UktuK2ZmUmtlVlp3eEJJeHFnVXFTRmdGUWx1VmU0bUc3MnVIRUhySDRNUnF0?=
 =?utf-8?B?SEo0Nk9QRm51VXUwNTRCcDdTVFdGMEIwNVh5SDlpanFjNjY0TDJGWVJZd29Q?=
 =?utf-8?B?dHVqYXg0RXJ0azRXVlRmNVpWby9vN2xGOEgvTEZ0cFAyYU1GZ0kxSDdSdnBP?=
 =?utf-8?B?SjlkTjA4dmlDY01aS1ZQbEFhSU54Yk95T1U0SzlRUmVzSjg5YWhxdnFsRUtD?=
 =?utf-8?B?WjIzS0RBeTZsUUQxb09ZcXpCdTljY3RONU9KU3dPZHgvMFNBd0NVblNSQnNY?=
 =?utf-8?B?MHUxWjZxV3pVS2ZzMWpQSGVnSWtMS3p3RnQzenRoMXJrTm9aMVVrb3VDeStC?=
 =?utf-8?B?NXRlMUI1THkzbG1xY1hWRytBdW9TSjVaVS9IcmRXVGtnbTdLK3BuSWJ0T2Qy?=
 =?utf-8?B?ci9NL3lYRFRwOWZzdytscThvWHBDMGZJOE4xUkZENkV0eDVsQ3lteDFuVUpz?=
 =?utf-8?B?d1h3V3dSM0JLL0ZtenJNYVZHVmRaZjJmN01HOXBNUys3MFA0SFMwNEFBaU01?=
 =?utf-8?B?cGpWTXdSY1lSdlVPdXJ5ckFXeHd0RXMxTHdPYm1ZNFVNTU5HYzUwbXdta0x0?=
 =?utf-8?B?cFJyalV4eVpXUkpjWlNpU3FJMWIzMExXemxOL2RXRk1KOXpRMmFvUTdPSXoy?=
 =?utf-8?B?NSswbWJma2NyUmNrRytYamNHSkdLL3NrS1NjNERTWlU1YUdmanBLR21qQjVp?=
 =?utf-8?B?TS9pRmZ3SXBNeHpRLzMvVHhyOFJ2b0l2cU5ycmdaRXBiejdPL0lqMXRSa1FE?=
 =?utf-8?B?d2RKVHltZCtyVHhYSWhsc0FPazBRd1pLcUhZcU9CN0ZSWG5UaXVVaUUvd0hH?=
 =?utf-8?B?Qkc4Y29zQkpyS1NrM0pmWWtqVHhvVzl4Q2JJOHZwZ2l4dmRMYXJyMkROUWRx?=
 =?utf-8?B?R0Q1bjZqdXNYV0FJR05hakNuRUtxYVVpZDd1eEhIQ3VLQnE0MSs3Z0xQV0hH?=
 =?utf-8?B?V3c5allqZkNhL1pqQVFydmZtZk1Rb0xRaUNzbjlxU3lSUkM5THd1TVhSRW0z?=
 =?utf-8?B?UHhDamtZMjdHR2lJc0gxTWJ1dDRZRXVLMitudFZlWVdQQ3Mwb0oxOTY2Y1lN?=
 =?utf-8?B?WjJST3pFMzMyenE2TVN5NWVPVjhuMEN0V2dlK2NXNmhOTmdFcGZiQnMvbGxi?=
 =?utf-8?B?bSswL1FzSzI2MFNWaUZUc3RFK09BZlkrcXBxQUlJZkt6bnRqQXlyUDFicW1J?=
 =?utf-8?B?T0Q2N0JrcWxDNDV1WFFLeitXZHFtVHlTYTd4Z2g3N1YyYXUyb0lPLzdhL2Jo?=
 =?utf-8?B?cXNKRlZoK1l1bC91bkRzclUvNUw2OGJLRDVaRGFuNzlhR1plaXNhL0ZqNTlP?=
 =?utf-8?B?aVNWVTNHV2M1M2JUSU9sSUVmMURaa0x3aEdkRk1EVVJNdTR4TCtpc0tmeEs1?=
 =?utf-8?B?dVNYUEZyQXVpbkZMZk1vUnBGVWtSdG1OK29lcE1jQ0psMjA5RWFYY3VMZGh2?=
 =?utf-8?Q?31sIvOrsMUq83DYbKxcI1QF8k?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d137535f-cf6b-4077-3298-08dd35710d79
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 14:29:43.2663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X9ynNfgy7djp8VhzLrIO1shjLnvS3tc5T7AZdb9FoWSrG6u+3eTMNS7THNeZNkVQ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB5982
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 67A8044121
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.237.73:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.73:from];
	RCPT_COUNT_TWELVE(0.00)[24];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
Message-ID-Hash: JNGGQNZPNAME56NIBCQ5EHPO7JWVZPIE
X-Message-ID-Hash: JNGGQNZPNAME56NIBCQ5EHPO7JWVZPIE
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JNGGQNZPNAME56NIBCQ5EHPO7JWVZPIE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6324294678598573622=="

--===============6324294678598573622==
Content-Type: multipart/alternative;
 boundary="------------09QfNbJYdkE6QQCeininRsXJ"
Content-Language: en-US

--------------09QfNbJYdkE6QQCeininRsXJ
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTUuMDEuMjUgdW0gMTU6MTQgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6DQo+IE9uIFdlZCwg
SmFuIDE1LCAyMDI1IGF0IDAyOjQ2OjU2UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6
DQo+IFtTTklQXQ0KPj4+IFllYWgsIGJ1dCBpdCdzIHByaXZhdGUgdG8gdGhlIGV4cG9ydGVyLiBB
bmQgYSB2ZXJ5IGZ1bmRhbWVudGFsIHJ1bGUgb2YNCj4+PiBETUEtYnVmIGlzIHRoYXQgdGhlIGV4
cG9ydGVyIGlzIHRoZSBvbmUgaW4gY29udHJvbCBvZiB0aGluZ3MuDQo+IEkndmUgc2FpZCBhIGZl
dyB0aW1lcyBub3csIEkgZG9uJ3QgdGhpbmsgd2UgY2FuIGJ1aWxkIHRoZSBraW5kIG9mDQo+IGJ1
ZmZlciBzaGFyaW5nIGZyYW1ld29yayB3ZSBuZWVkIHRvIHNvbHZlIGFsbCB0aGUgcHJvYmxlbXMg
d2l0aCB0aGlzDQo+IHBoaWxvc29waHkuIEl0IGlzIGFsc28gaW5lZmZpY2llbnQgd2l0aCB0aGUg
bmV3IERNQSBBUEkuDQo+DQo+IEkgdGhpbmsgaXQgaXMgYmFja3dhcmRzIGxvb2tpbmcgYW5kIHdl
IG5lZWQgdG8gbW92ZSBmb3J3YXJkcyB3aXRoDQo+IGZpeGluZyB0aGUgZnVuZGFtZW50YWwgQVBJ
IGlzc3VlcyB3aGljaCBtb3RpdmF0ZWQgdGhhdCBkZXNpZ24uDQoNCkFuZCB0aGF0J3Mgd2hhdCBJ
IGNsZWFybHkgc2VlIGNvbXBsZXRlbHkgZGlmZmVyZW50Lg0KDQpUaG9zZSBydWxlcyBhcmUgbm90
IHNvbWV0aGluZyB3ZSBjYW0gdXAgd2l0aCBiZWNhdXNlIG9mIHNvbWUgbGltaXRhdGlvbiANCm9m
IHRoZSBETUEtQVBJLCBidXQgcmF0aGVyIGZyb20gZXhwZXJpZW5jZSB3b3JraW5nIHdpdGggZGlm
ZmVyZW50IGRldmljZSANCmRyaXZlciBhbmQgZXNwZWNpYWxseSB0aGVpciBkZXZlbG9wZXJzLg0K
DQpBcHBseWluZyBhbmQgZW5mb3JjaW5nIHRob3NlIHJlc3RyaWN0aW9ucyBpcyBhYnNvbHV0ZWx5
IG1hbmRhdG9yeSBtdXN0IA0KaGF2ZSBmb3IgZXh0ZW5kaW5nIERNQS1idWYuDQoNCj4+PiBTbyBm
b3IgZXhhbXBsZSBpdCBpcyBpbGxlZ2FsIGZvciBhbiBpbXBvcnRlciB0byBzZXR1cCBDUFUgbWFw
cGluZ3MgdG8gYQ0KPj4+IGJ1ZmZlci4gVGhhdCdzIHdoeSB3ZSBoYXZlIGRtYV9idWZfbW1hcCgp
IHdoaWNoIHJlZGlyZWN0cyBtbWFwKCkNCj4+PiByZXF1ZXN0cyBmcm9tIHRoZSBpbXBvcnRlciB0
byB0aGUgZXhwb3J0ZXIuDQo+IExpa2UgdGhpcywgaW4gYSBmdXR1cmUgbm8tc2NhdHRlciBsaXN0
IHdvcmxkIEkgd291bGQgd2FudCB0byBtYWtlIHRoaXMNCj4gc2FmZS4gVGhlIGltcG9ydGVyIHdp
bGwgaGF2ZSBlbm91Z2ggaW5mb3JtYXRpb24gdG8ga25vdyBpZiBDUFUNCj4gbWFwcGluZ3MgZXhp
c3QgYW5kIGFyZSBzYWZlIHRvIHVzZSB1bmRlciB3aGF0IGNvbmRpdGlvbnMuDQo+DQo+IFRoZXJl
IGlzIG5vIHJlYXNvbiB0aGUgaW1wb3J0ZXIgc2hvdWxkIG5vdCBiZSBhYmxlIHRvIENQVSBhY2Nl
c3MNCj4gbWVtb3J5IHRoYXQgaXMgSFcgcGVybWl0dGVkIHRvIGJlIENQVSBhY2Nlc3NpYmxlLg0K
Pg0KPiBJZiB0aGUgaW1wb3J0ZXIgbmVlZHMgQ1BVIGFjY2VzcyBhbmQgdGhlIGV4cG9ydGVyIGNh
bm5vdCBwcm92aWRlIGl0DQo+IHRoZW4gdGhlIGF0dGFjaG1lbnQgc2ltcGx5IGZhaWxzLg0KPg0K
PiBTYXlpbmcgQ1BVIGFjY2VzcyBpcyBiYW5uZWQgMTAwJSBvZiB0aGUgdGltZSBpcyBub3QgYSBo
ZWxwZnVsIHBvc2l0aW9uDQo+IHdoZW4gd2UgaGF2ZSB1c2UgY2FzZXMgdGhhdCBuZWVkIGl0Lg0K
DQpUaGF0IGFwcHJvYWNoIGlzIGFuIGFic29sdXRlbHkgbm8tZ28gZnJvbSBteSBzaWRlLg0KDQpX
ZSBoYXZlIGZ1bGx5IGludGVudGlvbmFsbHkgaW1wbGVtZW50ZWQgdGhlIHJlc3RyaWN0aW9uIHRo
YXQgaW1wb3J0ZXJzIA0KY2FuJ3QgQ1BVIGFjY2VzcyBETUEtYnVmIGZvciBib3RoIGtlcm5lbCBh
bmQgdXNlcnNwYWNlIHdpdGhvdXQgZ29pbmcgDQp0aHJvdWdoIHRoZSBleHBvcnRlciBiZWNhdXNl
IG9mIGRlc2lnbiByZXF1aXJlbWVudHMgYW5kIGEgbG90IG9mIA0KbmVnYXRpdmUgZXhwZXJpZW5j
ZSB3aXRoIGV4YWN0bHkgdGhpcyBhcHByb2FjaC4NCg0KVGhpcyBpcyBub3Qgc29tZXRoaW5nIHdo
aWNoIGlzIGRpc2N1c3MtYWJsZSBpbiBhbnkgd2F5IHBvc3NpYmxlLg0KDQo+Pj4gQXMgZmFyIGFz
IEkgY2FuIHNlZSB0aGF0IGlzIHJlYWxseSBub3QgYW4gdXNlIGNhc2Ugd2hpY2ggZml0cyBETUEt
YnVmIGluDQo+Pj4gYW55IHdheS4NCj4gSSByZWFsbHkgZG9uJ3Qgd2FudCB0byBtYWtlIGEgZG1h
YnVmMiAtIGV2ZXJ5b25lIHdvdWxkIGhhdmUgdG8NCj4gaW1wbGVtZW50IGl0LCBpbmNsdWRpbmcg
YWxsIHRoZSBHUFUgZHJpdmVycyBpZiB0aGV5IHdhbnQgdG8gd29yayB3aXRoDQo+IFJETUEuIEkg
ZG9uJ3QgdGhpbmsgdGhpcyBtYWtlcyBhbnkgc2Vuc2UgY29tcGFyZWQgdG8gaW5jcmVtZW50YWxs
eQ0KPiBldm9sdmluZyBkbWFidWYgd2l0aCBtb3JlIG9wdGlvbmFsIGNhcGFiaWxpdGllcy4NCg0K
VGhlIHBvaW50IGlzIHRoYXQgYSBkbWFidWYyIHdvdWxkIG1vc3QgbGlrZWx5IGJlIHJlamVjdGVk
IGFzIHdlbGwgb3IgDQpvdGhlcndpc2UgcnVuIGludG8gdGhlIHNhbWUgaXNzdWVzIHdlIGhhdmUg
c2VlbiBiZWZvcmUuDQoNCj4+Pj4+IFRoYXQgc291bmRzIG1vcmUgc29tZXRoaW5nIGZvciB0aGUg
VEVFIGRyaXZlciBpbnN0ZWFkIG9mIGFueXRoaW5nIERNQS1idWYNCj4+Pj4+IHNob3VsZCBiZSBk
ZWFsaW5nIHdpdGguDQo+Pj4+IEhhcyBub3RoaW5nIHRvIGRvIHdpdGggVEVFLg0KPj4+IFdoeT8N
Cj4gVGhlIExpbnV4IFRFRSBmcmFtZXdvcmsgaXMgbm90IHVzZWQgYXMgcGFydCBvZiBjb25maWRl
bnRpYWwgY29tcHV0ZS4NCj4NCj4gQ0MgYWxyZWFkeSBoYXMgZ3Vlc3QgbWVtZmQgZm9yIGhvbGRp
bmcgaXQncyBwcml2YXRlIENQVSBtZW1vcnkuDQoNCldoZXJlIGlzIHRoYXQgY29taW5nIGZyb20g
YW5kIGhvdyBpdCBpcyB1c2VkPw0KDQo+IFRoaXMgaXMgYWJvdXQgY29uZmlkZW50aWFsIE1NSU8g
bWVtb3J5Lg0KDQpXaG8gaXMgdGhlIGV4cG9ydGVyIGFuZCB3aG8gaXMgdGhlIGltcG9ydGVyIG9m
IHRoZSBETUEtYnVmIGluIHRoaXMgdXNlIGNhc2U/DQoNCj4gVGhpcyBpcyBhbHNvIG5vdCBqdXN0
IGFib3V0IHRoZSBLVk0gc2lkZSwgdGhlIFZNIHNpZGUgYWxzbyBoYXMgaXNzdWVzDQo+IHdpdGgg
RE1BQlVGIGFuZCBDQyAtIG9ubHkgY28tb3BlcmF0aW5nIGRldmljZXMgY2FuIGludGVyYWN0IHdp
dGggdGhlDQo+IFZNIHNpZGUgImVuY3J5cHRlZCIgbWVtb3J5IGFuZCB0aGVyZSBuZWVkcyB0byBi
ZSBhIG5lZ290aWF0aW9uIGFzIHBhcnQNCj4gb2YgYWxsIGJ1ZmZlciBzZXR1cCB3aGF0IHRoZSBt
dXR1YWwgY2FwYWJpbGl0eSBpcy4gOlwgc3dpb3RsYiBoaWRlcw0KPiBzb21lIG9mIHRoaXMgc29t
ZSB0aW1lcywgYnV0IGNvbmZpZGVudGlhbCBQMlAgaXMgY3VycmVudGx5IHVuc29sdmVkLg0KDQpZ
ZXMgYW5kIGl0IGlzIGRvY3VtZW50ZWQgYnkgbm93IGhvdyB0aGF0IGlzIHN1cHBvc2VkIHRvIGhh
cHBlbiB3aXRoIERNQS1idWYuDQoNCkFzIGZhciBhcyBJIGNhbiBzZWUgdGhlcmUgaXMgbm90IG11
Y2ggbmV3IGFwcHJvYWNoIGhlcmUuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gSmFz
b24NCg==

--------------09QfNbJYdkE6QQCeininRsXJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQo8bWV0YSBodHRwLWVxdWl2PSJDb250ZW50LVR5
cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+DQogIDwvaGVhZD4NCiAgPGJv
ZHk+DQogICAgQW0gMTUuMDEuMjUgdW0gMTU6MTQgc2NocmllYiBKYXNvbiBHdW50aG9ycGU6PGJy
Pg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoyMDI1MDExNTE0MTQ1OC5H
UDU1NTZAbnZpZGlhLmNvbSI+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFw
PSIiPk9uIFdlZCwgSmFuIDE1LCAyMDI1IGF0IDAyOjQ2OjU2UE0gKzAxMDAsIENocmlzdGlhbiBL
w7ZuaWcgd3JvdGU6DQo8L3ByZT4NCiAgICAgIFtTTklQXTxicj4NCiAgICAgIDxibG9ja3F1b3Rl
IHR5cGU9ImNpdGUiPg0KICAgICAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCiAgICAgICAg
ICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPlllYWgsIGJ1dCBpdCdzIHByaXZh
dGUgdG8gdGhlIGV4cG9ydGVyLiBBbmQgYSB2ZXJ5IGZ1bmRhbWVudGFsIHJ1bGUgb2YNCkRNQS1i
dWYgaXMgdGhhdCB0aGUgZXhwb3J0ZXIgaXMgdGhlIG9uZSBpbiBjb250cm9sIG9mIHRoaW5ncy4N
CjwvcHJlPg0KICAgICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8L2Jsb2NrcXVvdGU+DQogICAg
ICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPg0KSSd2ZSBzYWlkIGEgZmV3IHRp
bWVzIG5vdywgSSBkb24ndCB0aGluayB3ZSBjYW4gYnVpbGQgdGhlIGtpbmQgb2YNCmJ1ZmZlciBz
aGFyaW5nIGZyYW1ld29yayB3ZSBuZWVkIHRvIHNvbHZlIGFsbCB0aGUgcHJvYmxlbXMgd2l0aCB0
aGlzDQpwaGlsb3NvcGh5LiBJdCBpcyBhbHNvIGluZWZmaWNpZW50IHdpdGggdGhlIG5ldyBETUEg
QVBJLg0KDQpJIHRoaW5rIGl0IGlzIGJhY2t3YXJkcyBsb29raW5nIGFuZCB3ZSBuZWVkIHRvIG1v
dmUgZm9yd2FyZHMgd2l0aA0KZml4aW5nIHRoZSBmdW5kYW1lbnRhbCBBUEkgaXNzdWVzIHdoaWNo
IG1vdGl2YXRlZCB0aGF0IGRlc2lnbi48L3ByZT4NCiAgICA8L2Jsb2NrcXVvdGU+DQogICAgPGJy
Pg0KICAgIEFuZCB0aGF0J3Mgd2hhdCBJIGNsZWFybHkgc2VlIGNvbXBsZXRlbHkgZGlmZmVyZW50
Ljxicj4NCiAgICA8YnI+DQogICAgVGhvc2UgcnVsZXMgYXJlIG5vdCBzb21ldGhpbmcgd2UgY2Ft
IHVwIHdpdGggYmVjYXVzZSBvZiBzb21lDQogICAgbGltaXRhdGlvbiBvZiB0aGUgRE1BLUFQSSwg
YnV0IHJhdGhlciBmcm9tIGV4cGVyaWVuY2Ugd29ya2luZyB3aXRoDQogICAgZGlmZmVyZW50IGRl
dmljZSBkcml2ZXIgYW5kIGVzcGVjaWFsbHkgdGhlaXIgZGV2ZWxvcGVycy48YnI+DQogICAgPGJy
Pg0KICAgIEFwcGx5aW5nIGFuZCBlbmZvcmNpbmcgdGhvc2UgcmVzdHJpY3Rpb25zIGlzIGFic29s
dXRlbHkgbWFuZGF0b3J5DQogICAgbXVzdCBoYXZlIGZvciBleHRlbmRpbmcgRE1BLWJ1Zi48YnI+
DQogICAgPGJyPg0KICAgIDxzcGFuIHN0eWxlPSJ3aGl0ZS1zcGFjZTogcHJlLXdyYXAiPg0KPC9z
cGFuPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoyMDI1MDExNTE0MTQ1
OC5HUDU1NTZAbnZpZGlhLmNvbSI+DQogICAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCiAg
ICAgICAgPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+DQogICAgICAgICAgPHByZSBjbGFzcz0ibW96
LXF1b3RlLXByZSIgd3JhcD0iIj5TbyBmb3IgZXhhbXBsZSBpdCBpcyBpbGxlZ2FsIGZvciBhbiBp
bXBvcnRlciB0byBzZXR1cCBDUFUgbWFwcGluZ3MgdG8gYQ0KYnVmZmVyLiBUaGF0J3Mgd2h5IHdl
IGhhdmUgZG1hX2J1Zl9tbWFwKCkgd2hpY2ggcmVkaXJlY3RzIG1tYXAoKQ0KcmVxdWVzdHMgZnJv
bSB0aGUgaW1wb3J0ZXIgdG8gdGhlIGV4cG9ydGVyLg0KPC9wcmU+DQogICAgICAgIDwvYmxvY2tx
dW90ZT4NCiAgICAgIDwvYmxvY2txdW90ZT4NCiAgICAgIDxwcmUgY2xhc3M9Im1vei1xdW90ZS1w
cmUiIHdyYXA9IiI+DQpMaWtlIHRoaXMsIGluIGEgZnV0dXJlIG5vLXNjYXR0ZXIgbGlzdCB3b3Js
ZCBJIHdvdWxkIHdhbnQgdG8gbWFrZSB0aGlzDQpzYWZlLiBUaGUgaW1wb3J0ZXIgd2lsbCBoYXZl
IGVub3VnaCBpbmZvcm1hdGlvbiB0byBrbm93IGlmIENQVQ0KbWFwcGluZ3MgZXhpc3QgYW5kIGFy
ZSBzYWZlIHRvIHVzZSB1bmRlciB3aGF0IGNvbmRpdGlvbnMuDQoNClRoZXJlIGlzIG5vIHJlYXNv
biB0aGUgaW1wb3J0ZXIgc2hvdWxkIG5vdCBiZSBhYmxlIHRvIENQVSBhY2Nlc3MNCm1lbW9yeSB0
aGF0IGlzIEhXIHBlcm1pdHRlZCB0byBiZSBDUFUgYWNjZXNzaWJsZS4NCg0KSWYgdGhlIGltcG9y
dGVyIG5lZWRzIENQVSBhY2Nlc3MgYW5kIHRoZSBleHBvcnRlciBjYW5ub3QgcHJvdmlkZSBpdA0K
dGhlbiB0aGUgYXR0YWNobWVudCBzaW1wbHkgZmFpbHMuDQoNClNheWluZyBDUFUgYWNjZXNzIGlz
IGJhbm5lZCAxMDAlIG9mIHRoZSB0aW1lIGlzIG5vdCBhIGhlbHBmdWwgcG9zaXRpb24NCndoZW4g
d2UgaGF2ZSB1c2UgY2FzZXMgdGhhdCBuZWVkIGl0LjwvcHJlPg0KICAgIDwvYmxvY2txdW90ZT4N
CiAgICA8YnI+DQogICAgVGhhdCBhcHByb2FjaCBpcyBhbiBhYnNvbHV0ZWx5IG5vLWdvIGZyb20g
bXkgc2lkZS48YnI+DQogICAgPGJyPg0KICAgIFdlIGhhdmUgZnVsbHkgaW50ZW50aW9uYWxseSBp
bXBsZW1lbnRlZCB0aGUgcmVzdHJpY3Rpb24gdGhhdA0KICAgIGltcG9ydGVycyBjYW4ndCBDUFUg
YWNjZXNzIERNQS1idWYgZm9yIGJvdGgga2VybmVsIGFuZCB1c2Vyc3BhY2UNCiAgICB3aXRob3V0
IGdvaW5nIHRocm91Z2ggdGhlIGV4cG9ydGVyIGJlY2F1c2Ugb2YgZGVzaWduIHJlcXVpcmVtZW50
cw0KICAgIGFuZCBhIGxvdCBvZiBuZWdhdGl2ZSBleHBlcmllbmNlIHdpdGggZXhhY3RseSB0aGlz
IGFwcHJvYWNoLjxicj4NCiAgICA8YnI+DQogICAgVGhpcyBpcyBub3Qgc29tZXRoaW5nIHdoaWNo
IGlzIGRpc2N1c3MtYWJsZSBpbiBhbnkgd2F5IHBvc3NpYmxlLjxicj4NCiAgICA8YnI+DQogICAg
PHNwYW4gc3R5bGU9IndoaXRlLXNwYWNlOiBwcmUtd3JhcCI+DQo8L3NwYW4+DQogICAgPGJsb2Nr
cXVvdGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOjIwMjUwMTE1MTQxNDU4LkdQNTU1NkBudmlkaWEu
Y29tIj4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgICA8YmxvY2txdW90
ZSB0eXBlPSJjaXRlIj4NCiAgICAgICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJlIiB3cmFw
PSIiPkFzIGZhciBhcyBJIGNhbiBzZWUgdGhhdCBpcyByZWFsbHkgbm90IGFuIHVzZSBjYXNlIHdo
aWNoIGZpdHMgRE1BLWJ1ZiBpbg0KYW55IHdheS4NCjwvcHJlPg0KICAgICAgICA8L2Jsb2NrcXVv
dGU+DQogICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUtcHJl
IiB3cmFwPSIiPg0KSSByZWFsbHkgZG9uJ3Qgd2FudCB0byBtYWtlIGEgZG1hYnVmMiAtIGV2ZXJ5
b25lIHdvdWxkIGhhdmUgdG8NCmltcGxlbWVudCBpdCwgaW5jbHVkaW5nIGFsbCB0aGUgR1BVIGRy
aXZlcnMgaWYgdGhleSB3YW50IHRvIHdvcmsgd2l0aA0KUkRNQS4gSSBkb24ndCB0aGluayB0aGlz
IG1ha2VzIGFueSBzZW5zZSBjb21wYXJlZCB0byBpbmNyZW1lbnRhbGx5DQpldm9sdmluZyBkbWFi
dWYgd2l0aCBtb3JlIG9wdGlvbmFsIGNhcGFiaWxpdGllcy48L3ByZT4NCiAgICA8L2Jsb2NrcXVv
dGU+DQogICAgPGJyPg0KICAgIFRoZSBwb2ludCBpcyB0aGF0IGEgZG1hYnVmMiB3b3VsZCBtb3N0
IGxpa2VseSBiZSByZWplY3RlZCBhcyB3ZWxsIG9yDQogICAgb3RoZXJ3aXNlIHJ1biBpbnRvIHRo
ZSBzYW1lIGlzc3VlcyB3ZSBoYXZlIHNlZW4gYmVmb3JlLjxicj4NCiAgICA8YnI+DQogICAgPHNw
YW4gc3R5bGU9IndoaXRlLXNwYWNlOiBwcmUtd3JhcCI+DQo8L3NwYW4+DQogICAgPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOjIwMjUwMTE1MTQxNDU4LkdQNTU1NkBudmlkaWEuY29t
Ij4NCiAgICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgICA8YmxvY2txdW90ZSB0
eXBlPSJjaXRlIj4NCiAgICAgICAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCiAgICAgICAg
ICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KICAgICAgICAgICAgICA8cHJlIGNsYXNzPSJt
b3otcXVvdGUtcHJlIiB3cmFwPSIiPlRoYXQgc291bmRzIG1vcmUgc29tZXRoaW5nIGZvciB0aGUg
VEVFIGRyaXZlciBpbnN0ZWFkIG9mIGFueXRoaW5nIERNQS1idWYNCnNob3VsZCBiZSBkZWFsaW5n
IHdpdGguDQo8L3ByZT4NCiAgICAgICAgICAgIDwvYmxvY2txdW90ZT4NCiAgICAgICAgICAgIDxw
cmUgY2xhc3M9Im1vei1xdW90ZS1wcmUiIHdyYXA9IiI+SGFzIG5vdGhpbmcgdG8gZG8gd2l0aCBU
RUUuDQo8L3ByZT4NCiAgICAgICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICAgICAgPHByZSBjbGFz
cz0ibW96LXF1b3RlLXByZSIgd3JhcD0iIj4NCldoeT8NCjwvcHJlPg0KICAgICAgICA8L2Jsb2Nr
cXVvdGU+DQogICAgICA8L2Jsb2NrcXVvdGU+DQogICAgICA8cHJlIGNsYXNzPSJtb3otcXVvdGUt
cHJlIiB3cmFwPSIiPg0KVGhlIExpbnV4IFRFRSBmcmFtZXdvcmsgaXMgbm90IHVzZWQgYXMgcGFy
dCBvZiBjb25maWRlbnRpYWwgY29tcHV0ZS4NCg0KQ0MgYWxyZWFkeSBoYXMgZ3Vlc3QgbWVtZmQg
Zm9yIGhvbGRpbmcgaXQncyBwcml2YXRlIENQVSBtZW1vcnkuPC9wcmU+DQogICAgPC9ibG9ja3F1
b3RlPg0KICAgIDxicj4NCiAgICBXaGVyZSBpcyB0aGF0IGNvbWluZyBmcm9tIGFuZCBob3cgaXQg
aXMgdXNlZD88YnI+DQogICAgPGJyPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9
Im1pZDoyMDI1MDExNTE0MTQ1OC5HUDU1NTZAbnZpZGlhLmNvbSI+DQogICAgICA8cHJlIGNsYXNz
PSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPlRoaXMgaXMgYWJvdXQgY29uZmlkZW50aWFsIE1NSU8g
bWVtb3J5LjwvcHJlPg0KICAgIDwvYmxvY2txdW90ZT4NCiAgICA8YnI+DQogICAgV2hvIGlzIHRo
ZSBleHBvcnRlciBhbmQgd2hvIGlzIHRoZSBpbXBvcnRlciBvZiB0aGUgRE1BLWJ1ZiBpbiB0aGlz
DQogICAgdXNlIGNhc2U/PGJyPg0KICAgIDxicj4NCiAgICA8YmxvY2txdW90ZSB0eXBlPSJjaXRl
IiBjaXRlPSJtaWQ6MjAyNTAxMTUxNDE0NTguR1A1NTU2QG52aWRpYS5jb20iPg0KICAgICAgPHBy
ZSBjbGFzcz0ibW96LXF1b3RlLXByZSIgd3JhcD0iIj5UaGlzIGlzIGFsc28gbm90IGp1c3QgYWJv
dXQgdGhlIEtWTSBzaWRlLCB0aGUgVk0gc2lkZSBhbHNvIGhhcyBpc3N1ZXMNCndpdGggRE1BQlVG
IGFuZCBDQyAtIG9ubHkgY28tb3BlcmF0aW5nIGRldmljZXMgY2FuIGludGVyYWN0IHdpdGggdGhl
DQpWTSBzaWRlICZxdW90O2VuY3J5cHRlZCZxdW90OyBtZW1vcnkgYW5kIHRoZXJlIG5lZWRzIHRv
IGJlIGEgbmVnb3RpYXRpb24gYXMgcGFydA0Kb2YgYWxsIGJ1ZmZlciBzZXR1cCB3aGF0IHRoZSBt
dXR1YWwgY2FwYWJpbGl0eSBpcy4gOlwgc3dpb3RsYiBoaWRlcw0Kc29tZSBvZiB0aGlzIHNvbWUg
dGltZXMsIGJ1dCBjb25maWRlbnRpYWwgUDJQIGlzIGN1cnJlbnRseSB1bnNvbHZlZC48L3ByZT4N
CiAgICA8L2Jsb2NrcXVvdGU+DQogICAgPGJyPg0KICAgIFllcyBhbmQgaXQgaXMgZG9jdW1lbnRl
ZCBieSBub3cgaG93IHRoYXQgaXMgc3VwcG9zZWQgdG8gaGFwcGVuIHdpdGgNCiAgICBETUEtYnVm
Ljxicj4NCiAgICA8YnI+DQogICAgQXMgZmFyIGFzIEkgY2FuIHNlZSB0aGVyZSBpcyBub3QgbXVj
aCBuZXcgYXBwcm9hY2ggaGVyZS48YnI+DQogICAgPGJyPg0KICAgIFJlZ2FyZHMsPGJyPg0KICAg
IENocmlzdGlhbi48YnI+DQogICAgPGJyPg0KICAgIDxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIGNp
dGU9Im1pZDoyMDI1MDExNTE0MTQ1OC5HUDU1NTZAbnZpZGlhLmNvbSI+DQogICAgICA8cHJlIGNs
YXNzPSJtb3otcXVvdGUtcHJlIiB3cmFwPSIiPg0KDQpKYXNvbg0KPC9wcmU+DQogICAgPC9ibG9j
a3F1b3RlPg0KICAgIDxicj4NCiAgPC9ib2R5Pg0KPC9odG1sPg0K

--------------09QfNbJYdkE6QQCeininRsXJ--

--===============6324294678598573622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6324294678598573622==--
