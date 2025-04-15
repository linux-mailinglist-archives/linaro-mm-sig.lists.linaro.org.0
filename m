Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 61198A8A0AD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 16:08:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 796F8459C5
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 15 Apr 2025 14:08:07 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2066.outbound.protection.outlook.com [40.107.223.66])
	by lists.linaro.org (Postfix) with ESMTPS id 07B6643B8C
	for <linaro-mm-sig@lists.linaro.org>; Tue, 15 Apr 2025 14:07:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Ma31VUEp;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.223.66 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AjfLtvMH/qp/Qwz9v1YXlr5a08GSRBB8NbFF9fVwEHVaxPbhhbXZTxY6RJ83QVBqrz8Ekh3Xtz3P53AhuiMkiD9vUbtB3gO6vRSn2wIswTue9FE4ZyVz6AeU0uaRUpuRQ/B9yp85csaq3oOEOYb+kbDD0ONg0YhLXC8Qoz0C4JUioQln99tHx0blZpwDbRr7KzgjKY2Px36PaeWH34AqBcrsMtRQawsOBJFO87r6ObA5mYtChExh3SVYDFs1jgBrzWo3BIN35WmMZ1tK5vDu/Wk/SJ4w0uAdAKUKkdHxAsbo4IYyR7hCuxKRp8h9DNVL9dljPwOVKh2MufnKgDjRPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JKjGhYojZ/EYDWbKsWuj/Ch+HlOAVFv99ecmpuGHkmM=;
 b=l8R6jDj/sFUHfU+svuzv8FI2JwbBZ08yerRDNUUdOPv0ESi2ITTO4xc51won3fhtkyfb7f0XusUcDQwmGW8lmfz11ZWMvQxbh9E/uNjFwHXdOny8FCuw2J0/9PZ4J176O1Ue8CeZv+x+7jLjRML6ZNgkPqyYFd3rw7hmL3/iaYMxHX9AqXPZ/s/fPt3xYUaRN/cr3CcAn6hRVkPUD3fvakyGoDY9HFKo4S/p+hgBCUfYna7xCVC830Y38m/etqWGRmAZnLQyb8WaLDivC8BpqGXgajxLI9vR2NEz0akWRFwctOKnqCEPrEWHEcnkK2RwZrtzV52WFxD646nE4NC9lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JKjGhYojZ/EYDWbKsWuj/Ch+HlOAVFv99ecmpuGHkmM=;
 b=Ma31VUEpIR9EfDDduphGOXAWT9W5A1icChOgZYg/6PnzvdRAfENZRLA7Z1ee0YuODOkph5BKDvLE1xAQlEQWp3fD5ud5Nb1cyBvIUpnO7KZZSsqxIb1ur6yCRG7RWpiF575yQGjMFSDcGyw9TaavJcRaC5QvXjTV7cHp4jMITaM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB8071.namprd12.prod.outlook.com (2603:10b6:8:df::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8632.33; Tue, 15 Apr 2025 14:07:48 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 14:07:48 +0000
Message-ID: <7970c449-b355-42b8-bca6-500c1d5a7095@amd.com>
Date: Tue, 15 Apr 2025 16:07:42 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Zimmermann <tzimmermann@suse.de>, simona@ffwll.ch,
 airlied@gmail.com, asrivats@redhat.com, andyshrk@163.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
References: <20250415092057.63172-1-tzimmermann@suse.de>
 <e2e82102-eb9f-4eb6-8ac3-6122ed7fcf28@amd.com>
 <48ab9b82-0d26-4d7c-88b0-feab9762b128@suse.de>
 <b924ffa7-99c0-42f1-9170-069e92299021@amd.com>
 <ddb93e8d-7716-47b3-b06c-0bf862d9c32b@suse.de>
 <ac0aba3d-ec77-4f6b-9ac1-f6077519f30d@amd.com>
 <704bd885-c3ae-4d14-99c3-9fce797a29cb@suse.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <704bd885-c3ae-4d14-99c3-9fce797a29cb@suse.de>
X-ClientProxiedBy: FR3P281CA0063.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::13) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB8071:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cb0840f-4030-4edd-5f62-08dd7c26e6c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZjlRSXh0RTdlckFXSUplVWYyWDdlLzkxQjdwVzUxSTlxcVplVWhvSmhwamc5?=
 =?utf-8?B?c1l6VVdFSnhBblJZcmE0WFhiY085Y3hwcVZlWFZEYmt2SitrV3lyQkJVWTlr?=
 =?utf-8?B?dXZDcVc1VW5vcFA2SS9KNUFrOVpNd2ppSm8wdDhLemExRktleThTSHZYd0c3?=
 =?utf-8?B?L3RJcW1lMGt5d3hLUElPTHJyTWw4cGxlanRTRDJKM09BNzA2Y2txV3RLNWcy?=
 =?utf-8?B?VjM0WGZScktZUkRIS2FqRXJKTWVadVprbjN2UDUzcUxoZnNuT3BDTVlNT2pB?=
 =?utf-8?B?eEV1elJaS0pFa2hQUTlWUURnR05YNzJLMWtoNVNjalZSTjhtR1g3YWVoZTRS?=
 =?utf-8?B?U3ZFTUo1Z2FtTEZJNm83NjJLZUcvcDByVnZoWm94c1g4MGFrM1JJcDZYTXdI?=
 =?utf-8?B?NG9yY29HVWdxVXhhMGFRU2Z4aUxxNXlZYmhxQ2cyUmxlWW1ZU0FiRzk0Z095?=
 =?utf-8?B?SW5UaTNYQkpNTThiNkZpeVNLVTRZODRwRVhLOVFaNnNnUEZsNFBoRkpyaEtW?=
 =?utf-8?B?NkRNRXR0T0ZBK2pKTGwzdnA3RzZEZnU2dEVYYjJsUER2YVNmRTZzZ084QVVE?=
 =?utf-8?B?S3FVTWhoZWhZVUFJckpIL0o2MmtUUnFlWSswZzFGMHl0Ri9RZnRRQXY1RGFR?=
 =?utf-8?B?TGE3ejYzb1pHU0pwOGIxZER2eUVvN2ZUUGRZR3BOU0NjUEN3WWhRbUtaTS8z?=
 =?utf-8?B?eVpha0w3SUZWalJSdlc2Yk85bkJPOVRpNGE0dzVTTFhYNzU0V0N2RDNZRGZS?=
 =?utf-8?B?elRBS0l2NGxDQmQrREJvNDdpeUdXRHY0cFNTaEdFVUNLV3Q2YmRvV2VoK0Np?=
 =?utf-8?B?TzM5L2tEbXVDMUxkekVPeFBOQVh2TDdxTy9iUXNHOGRDTHBGTGNGejFncnBL?=
 =?utf-8?B?cDkrcVlwUGVHUU5nOTNGc1lsTWhYcG5TMlpQT29lTGdXYlFJK3pkdEd6TWhK?=
 =?utf-8?B?dDYzT2NUQlVBTjhwTmNXL20wQjJ0N0NBUlVXRHhaUzNIM3FhQ0w4WjU2Vjh3?=
 =?utf-8?B?UkVLdjZxbXBFRWNJNC9JazNHaW45dEJJcnFQa1Z0M09LVXdLbmpnM3VySy9C?=
 =?utf-8?B?RXlvdWNLUUJNZ05YQkhjRWdOQzI0SERIZCswd2g0L3huaWlFRGV6STFCNXdX?=
 =?utf-8?B?eDBWTVMyTXlwSDh3Ukc0dXJ3QzdabFpwWEdhcVQzeDBVMS91bmhMcndTSFRB?=
 =?utf-8?B?OTBOb0pVSThEY0lKN3pBVWFDMk9UNFU3b2UveWkxTWdHaG1MN1JObVBHQ05z?=
 =?utf-8?B?NU12T25JZVZPV2o2SlBkS3lVQnVjM2pWcDNGQXhLMEJKc0tPc0RKNWQxZWE3?=
 =?utf-8?B?RkZWMjZWb0Q3Y2svWTdRYngrM2JONFY5NDFEQlBLN3BzWnh2MHYwVEdud0Fj?=
 =?utf-8?B?WE1EY24xQ3FKUEVpZndEOTZ1UDdDMnNQenpQY3pyNDhSdGpqMTUvUFc3TnIv?=
 =?utf-8?B?MWxCTzJOWDUwTmFaS2tRSjltWTVYY0xta0oyUGlScEZPS0ZnWHhHUUtualov?=
 =?utf-8?B?U1hacFpWWTBGcmNIcno0WDlSVFJGTDhDRk1FNFA0cVh5ZlRZNmRKV285WUow?=
 =?utf-8?B?TmEyQzRscW1UODJMQWdLUFk3dnlCVTJmUEFKNjdPS2ZIZWNZdG51Mk8wZTZu?=
 =?utf-8?B?NEJBcEI4R3B2V0twM2NTK1NUK3pGM0hsaDdjZ0xSOWVybzc5L1U1Y2pOb3BD?=
 =?utf-8?B?NTVXdzhZS21FaG9JMlZHZ0d3UHdDeHZVWE5GV2xMcG9oZEFmbkhMR1FlY1NP?=
 =?utf-8?B?WWlMN1VFRml3cXJ4UytNMmhZUWhSUVp5d3V2QkZoK25RaGtmRzNIN3l4TFZS?=
 =?utf-8?Q?bVieTTk/lQ/HdaB/+G9eK6fqbmT3TwAeJtEIQ=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WlZEQSsxL1gyUnZLd2tUbEx1V2hXdFFERXprc0RzUmZnMU1HNUNUSi92TGRm?=
 =?utf-8?B?Z0NSZVRyOFhIS3d6cnIvWVdjVHhRc1pQUHFUcGxxVzZBQVZCaXpJRStlSFZt?=
 =?utf-8?B?bE1lVmdxeVU5VFZhL0M0azVGeVFLRUJsUFQ4WkxSb0x2ZmpWa0xkUEIvb3dD?=
 =?utf-8?B?Ym12bkRieHJ0bGpaaWlrM0YxTy9UcDdRZUM4YWUwYmhNRHlKZXgyMkszTGVX?=
 =?utf-8?B?alFZMCtYMit3SGhzQWJRL3hEaHBwbUdnOUkzb01yUDdCaFJwVmdaRWdIMVEv?=
 =?utf-8?B?RXFrTHdDMlJwZE5aY3BNUnZmUE16OExLY3diMkxkd3R6NnJGaGhSRXpobnRZ?=
 =?utf-8?B?SU9VMDRDWks5T01yWk1tMk16OEFKdDdIMjFBcEZqQkpINGJOdGhvdmxYR2tG?=
 =?utf-8?B?alk2cVBkd0lCVWpUdGhuOUdOa1l0aXhDYnYxYUZOMlFSR2s4c2s0cUplSWlB?=
 =?utf-8?B?M0pWNUtuajhaS01KaHdPalp5WGZvQ2dDa1htenNVZUNqZ1BuTmNVb013bzlp?=
 =?utf-8?B?LzNPWGRKMTVtK0R3UG9wNG5qSFROUi9RcVpId25HbG80ckxrV05BbnhWZ0xw?=
 =?utf-8?B?bU5jenoydEJPMklzZk9nMVRqQkNQQ1ZnVXp6Um5LcnFicnQxUmNTb0czbUpp?=
 =?utf-8?B?dktrU0FRYThiK2JsODZ0cmFtVVo3eVVpMHQyZVNaYzVxbVMwNjVuaFEweXdL?=
 =?utf-8?B?Nm5EeVl3dERmUWxSQ2ZYaXUrODFHaXR1bmlPTWc5N0RENGRnLy8yUkRtT3pO?=
 =?utf-8?B?NUxlNWk0L1RKdTUxQlFVSmNTajRCRjdqNVhQV0haMDNZeUw1N0tUU2IrMnBa?=
 =?utf-8?B?RTNEMUNMcFUzbWpmcmQrWEgrVTZnc0lSR0pwM2w3RmJOb1Z0RXhtTkFGZGZp?=
 =?utf-8?B?TGJVdmJERTVORU03UHFqVElzMDZIYS9QbWhDWTFKQU5pWmVnWXBhM2puWUIz?=
 =?utf-8?B?UnpsZHRIQzdyc0ZLb2NQQXVlaWNSN3NxYkpZRnpiQTRIQm5mdUQ2dHFBcmM3?=
 =?utf-8?B?SlVEN0VqRHFCRzFURUZVRmFIV3M4aE9IMG8wRTEzMko3ZVN3UFlTelh4dlpC?=
 =?utf-8?B?ckt1bUFUd2wzUWNqQXdqRFRjcnVhUkw4UFVnU0ZkR0FnZExkdWNORWN1QTgr?=
 =?utf-8?B?QzI3Y1FIV0YrVFNrQWs4ZTNkTjhBa1EzTzlFeGo5YVJjdUsyc09QMnlxNXBF?=
 =?utf-8?B?NUI5SGE5S3kzM09SR1k4dldNQ2lad3JuS0I5Qi8zeHlIYkc0bklBMytXNklH?=
 =?utf-8?B?Vnl2d0NKMXdGbm56NXpaYjhpYUFEVnVuQXREQXBPTW01TnAzTFFzeUx6aU40?=
 =?utf-8?B?NzhnQktDUks1OW1ncGVYMkkxTk8wOFVVQ29nUGpHcUFvS3E4MjhlemQyVTIy?=
 =?utf-8?B?NmNNRTR6QlZTc0pNcDZoRkszTTVTMXlpUTk4Y28vQld3Q3NJQWhDaFVKeW9p?=
 =?utf-8?B?QTNMeHNqVG53TDErdm02VzNIZWlwN1BoQ0Q3QXNLL045RzUzOUdWNzB0cy9a?=
 =?utf-8?B?dVFPRHl1c0tPWGpFRFl1QkVBaGhhSUpGVnFTNmpJQW9YTEhiYlI5MEF1SlBk?=
 =?utf-8?B?TFROYXJDUmRRT1B5MWlScmVPb2grL003OHhEQmpFNEM3YmFURnNGTElqR2xP?=
 =?utf-8?B?SmVVL1dMNUhYQ3YyQnhwTHBTdWhiNWcyZ0Q2aVZ1emNZeGtnNlIzOEhxZEZO?=
 =?utf-8?B?NERRL0tZVDBzRjJYNTlxdEZ4ZEpkZnB0L0R3UVJ3Z043ZkVNb0FEWENDNEV6?=
 =?utf-8?B?K2pMenF1d05waERUcElzUmZtakxsd2w0R1BRbkFRUnpsRzFqOUEzRkFCSHFI?=
 =?utf-8?B?b3BsVFBJY2pmUFlqaHBpc2U2R2F4akJSZFRkSFJxZi9VdmErMEVqdHg1a3VY?=
 =?utf-8?B?a2IvSUlydDhSM1FXUCtwK3dUTW4zSzRjVTRPelBqSGN0THh6UUdvVXh6Q2cv?=
 =?utf-8?B?cVA3ZVg2T1Fla0pQODNna1ZCYmFqb2VLWmdmTDFja0kxU3Fhd2x1S3RZTldO?=
 =?utf-8?B?Y0taeEQrNTNXcXVYVy9nd2NpNEhTY2V6eWFWVWR5VnZSUGloSHJoaUxPYTda?=
 =?utf-8?B?SnhpVkhvQWJkY24rdDNpcW9DR0VsWEFNd2dSOVRzVXRsdWFlaC9LRm43MndW?=
 =?utf-8?Q?zPaG9/9xtgJOLyRDf23zbEkaL?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cb0840f-4030-4edd-5f62-08dd7c26e6c4
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 14:07:48.1184
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RtPLYBfU83aqB7Mb2am0jlt/PkjUOvZkwf6+T7BO55EPmHhl3mQxAZjQUG0x7Br1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB8071
X-Rspamd-Queue-Id: 07B6643B8C
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.223.66:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.223.66:from];
	FREEMAIL_TO(0.00)[suse.de,ffwll.ch,gmail.com,redhat.com,163.com,kernel.org,linux.intel.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[intel.com:email,linaro.org:email,lists.freedesktop.org:email,collabora.com:email,mail-dm6nam11on2066.outbound.protection.outlook.com:rdns,NAM11-DM6-obe.outbound.protection.outlook.com:helo];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received,40.107.223.66:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TOYXR7OEDFJRWFUAJYFB4NSGEJNXNWI5
X-Message-ID-Hash: TOYXR7OEDFJRWFUAJYFB4NSGEJNXNWI5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: Internally test import_attach for imported objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TOYXR7OEDFJRWFUAJYFB4NSGEJNXNWI5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMTUuMDQuMjUgdW0gMTU6MTQgc2NocmllYiBUaG9tYXMgWmltbWVybWFubjoNCj4+DQo+Pj4g
VGhlIGxvbmctdGVybSBnb2FsIGlzIHRvIG1ha2UgaW1wb3J0X2F0dGFjaCBvcHRpb25hbCBiZWNh
dXNlIGl0cyBzZXR1cCByZXF1aXJlcyBhIERNQS1jYXBhYmxlIGRldmljZS4NCj4+IEhVSSBXSEFU
Pw0KPj4NCj4+IERtaXRyeSBhbmQgSSBwdXQgcXVpdGUgc29tZSBlZmZvcnQgaW50byBiZWluZyBh
YmxlIHRvIGNyZWF0ZSBhbiBpbXBvcnRfYXR0YWNoIHdpdGhvdXQgdGhlIHJlcXVpcmVtZW50IHRv
IGhhdmUgYSBETUEtY2FwYWJsZSBkZXZpY2UuDQo+Pg0KPj4gVGhlIGxhc3QgcHV6emxlIHBpZWNl
IG9mIHRoYXQgbGFuZGVkIGEgbW9udGggYWdvIGluIHRoZSBmb3JtIG9mIHRoaXMgcGF0Y2ggaGVy
ZToNCj4+DQo+PiBjb21taXQgYjcyZjY2ZjIyYzBlMzlhZTY2ODRjNDNmZWFkNzc0YzEzZGIyNGU3
Mw0KPj4gQXV0aG9yOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
DQo+PiBEYXRlOsKgwqAgVHVlIEZlYiAxMSAxNzoyMDo1MyAyMDI1ICswMTAwDQo+Pg0KPj4gwqDC
oMKgwqAgZG1hLWJ1ZjogZHJvcCBjYWNoaW5nIG9mIHNnX3RhYmxlcw0KPj4gwqDCoMKgwqAgwqDC
oMKgwqAgVGhhdCB3YXMgcHVyZWx5IGZvciB0aGUgdHJhbnNpdGlvbiBmcm9tIHN0YXRpYyB0byBk
eW5hbWljIGRtYS1idWYNCj4+IMKgwqDCoMKgIGhhbmRsaW5nIGFuZCBjYW4gYmUgcmVtb3ZlZCBh
Z2FpbiBub3cuDQo+PiDCoMKgwqDCoCDCoMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
S8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+DQo+PiDCoMKgwqDCoCBSZXZpZXdlZC1i
eTogU2ltb25hIFZldHRlciA8c2ltb25hLnZldHRlckBmZndsbC5jaD4NCj4+IMKgwqDCoMKgIFJl
dmlld2VkLWJ5OiBEbWl0cnkgT3NpcGVua28gPGRtaXRyeS5vc2lwZW5rb0Bjb2xsYWJvcmEuY29t
Pg0KPj4gwqDCoMKgwqAgTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Bh
dGNoL21zZ2lkLzIwMjUwMjExMTYzMTA5LjEyMjAwLTUtY2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29t
DQo+Pg0KPj4gV2hlbiB5b3UgZG9uJ3QgY3JlYXRlIGFuIGltcG9ydCBhdHRhY2htZW50IHRoZSBl
eHBvcnRlciB3b3VsZG4ndCBrbm93IHRoYXQgaGlzIGJ1ZmZlciBpcyBhY3R1YWxseSB1c2VkIHdo
aWNoIGlzIHVzdWFsbHkgYSBxdWl0ZSBiYWQgaWRlYS4NCj4+DQo+PiBUaGlzIGlzIGZvciBkZXZp
Y2VzIHdobyBvbmx5IHdhbnQgdG8gZG8gYSB2bWFwIG9mIHRoZSBidWZmZXIsIGlzbid0IGl0Pw0K
Pg0KPiBZZWFoLCB0aGUgdm1hcCBuZWVkcyB0aGUgc2d0YWJsZSwgd2hpY2ggbmVlZHMgaW1wb3J0
X2F0dGFjaCBJSVJDLiBTb21ld2hlcmUgaW4gdGhlcmUgYSBETUEgZGV2aWNlIGlzIHJlcXVpcmVk
LiBCdXQgaXQncyBub3Qgb2YgaGlnaCBwcmlvcml0eSBhcyB3ZSBoYXZlIHdvcmthcm91bmRzLg0K
DQpJJ3ZlIHJlbW92ZWQgdGhlIG5lZWQgdG8gY3JlYXRlIGFuIHNndGFibGUganVzdCB0byBjcmVh
dGUgYW4gaW1wb3J0X2F0dGFjaC4NCg0KVGhlIGNydXggaXMgdGhhdCBleHBvcnRlcnMgc29tZXRp
bWVzIG5lZWQgdG8gZGlzdGluY3QgYmV0d2VlbiB0aGUgY2FzZSB3aGVuIERNQS1idWYgaXMganVz
dCB1c2VkIGZvciBpbnRlciBwcm9jZXNzIHBhc3Npbmcgb2YgYnVmZmVycyBhbmQgaW50ZXIgZGV2
aWNlIHBhc3Npbmcgb2YgYnVmZmVycy4gVXN1YWxseSB3ZSB1c2UgdGhlIGxpc3Qgb2YgYXR0YWNo
bWVudHMgZm9yIHRoYXQuDQoNCkJlY2F1c2Ugb2YgdGhpcyBJIHRob3VnaCBvZiBjaGFuZ2luZyB0
aGUgZG1hX2J1Zl92bWFwIGZ1bmN0aW9ucyB0byB0YWtlIGFuIGF0dGFjaG1lbnQgaW5zdGVhZCBv
ZiBhbiBkbWFfYnVmIGFzIHBhcmFtZXRlci4gVGhhdCB3b3VsZCBhbHNvIHJlc29sdmUgdGhlIHBy
b2JsZW0gaXMgbWFraW5nIHN1cmUgdG8gc2lnbmFsIGJ1ZmZlciBtb3ZlbWVudCB0aHJvdWdoIHRo
ZSBtb3ZlIG5vdGlmaWVyLg0KDQpCVFc6IFdoZXJlIGRvIHdlIGN1cnJlbnRseSBwaW4gdGhlIGJ1
ZmZlcnMgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIHBvaW50ZXJzIHJldHVybmVkIGJ5IGRtYV9idWZf
dm1hcCgpIHN0YXlzIHZhbGlkIGFmdGVyIGRyb3BwaW5nIHRoZSByZXNlcnZhdGlvbiBsb2NrPw0K
DQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IEJlc3QgcmVnYXJkcw0KPiBUaG9tYXMNCj4N
Cj4+DQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KPj4NCj4+PiBCZXN0IHJlZ2FyZHMNCj4+
PiBUaG9tYXMNCj4+Pg0KPj4+PiBSZWdhcmRzLA0KPj4+PiBDaHJpc3RpYW4uDQo+Pj4+DQo+Pj4+
PiBCZXN0IHJlZ2FyZHMNCj4+Pj4+IFRob21hcw0KPj4+Pj4NCj4+Pj4+PiBSZWdhcmRzLA0KPj4+
Pj4+IENocmlzdGlhbi4NCj4+Pj4+Pg0KPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4+Pj4+Pj4gRml4ZXM6IGI1N2FhNDdkMzll
OSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdpdGggaGVscGVyIikN
Cj4+Pj4+Pj4gUmVwb3J0ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29tPg0KPj4+Pj4+
PiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8zOGQwOWQzNC40MzU0
LjE5NjM3OWFhNTYwLkNvcmVtYWlsLmFuZHlzaHJrQDE2My5jb20vDQo+Pj4+Pj4+IFRlc3RlZC1i
eTogQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+DQo+Pj4+Pj4+IENjOiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4NCj4+Pj4+Pj4gQ2M6IEFudXNoYSBTcml2YXRzYSA8
YXNyaXZhdHNAcmVkaGF0LmNvbT4NCj4+Pj4+Pj4gQ2M6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlz
dGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4+Pj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFy
dGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+DQo+Pj4+Pj4+IENjOiBNYXhpbWUgUmlwYXJk
IDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+Pj4+Pj4+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRA
Z21haWwuY29tPg0KPj4+Pj4+PiBDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPg0K
Pj4+Pj4+PiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4NCj4+Pj4+
Pj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+
Pj4+PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPj4+Pj4+PiBDYzogbGlu
dXgtbWVkaWFAdmdlci5rZXJuZWwub3JnDQo+Pj4+Pj4+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcNCj4+Pj4+Pj4gLS0tDQo+Pj4+Pj4+IMKgwqDCoCBpbmNsdWRlL2RybS9kcm1f
Z2VtLmggfCA4ICsrKysrKystDQo+Pj4+Pj4+IMKgwqDCoCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+Pj4+Pj4+DQo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9kcm1fZ2VtLmggYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCj4+Pj4+Pj4gaW5k
ZXggOWI3MWY3YTlmM2Y4Li5mMDliOGFmY2Y4NmQgMTAwNjQ0DQo+Pj4+Pj4+IC0tLSBhL2luY2x1
ZGUvZHJtL2RybV9nZW0uaA0KPj4+Pj4+PiArKysgYi9pbmNsdWRlL2RybS9kcm1fZ2VtLmgNCj4+
Pj4+Pj4gQEAgLTU4OSw3ICs1ODksMTMgQEAgc3RhdGljIGlubGluZSBib29sIGRybV9nZW1fb2Jq
ZWN0X2lzX3NoYXJlZF9mb3JfbWVtb3J5X3N0YXRzKHN0cnVjdCBkcm1fZ2VtX29iamUNCj4+Pj4+
Pj4gwqDCoMKgIHN0YXRpYyBpbmxpbmUgYm9vbCBkcm1fZ2VtX2lzX2ltcG9ydGVkKGNvbnN0IHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPj4+Pj4+PiDCoMKgwqAgew0KPj4+Pj4+PiDCoMKg
wqDCoMKgwqDCoCAvKiBUaGUgZG1hLWJ1ZidzIHByaXYgZmllbGQgcG9pbnRzIHRvIHRoZSBvcmln
aW5hbCBHRU0gb2JqZWN0LiAqLw0KPj4+Pj4+PiAtwqDCoMKgIHJldHVybiBvYmotPmRtYV9idWYg
JiYgKG9iai0+ZG1hX2J1Zi0+cHJpdiAhPSBvYmopOw0KPj4+Pj4+PiArwqDCoMKgIHJldHVybiAo
b2JqLT5kbWFfYnVmICYmIChvYmotPmRtYV9idWYtPnByaXYgIT0gb2JqKSkgfHwNCj4+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgIC8qDQo+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCAqIFRPRE86
IER1cmluZyBvYmplY3QgcmVsZWFzZSwgdGhlIGRtYS1idWYgbWlnaHQgYWxyZWFkeQ0KPj4+Pj4+
PiArwqDCoMKgwqDCoMKgwqAgKsKgwqDCoMKgwqDCoCBiZSBnb25lLiBGb3Igbm93IGtlZXAgdGVz
dGluZyBpbXBvcnRfYXR0YWNoLCBidXQNCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgICrCoMKgwqDC
oMKgwqAgdGhpcyBzaG91bGQgYmUgcmVtb3ZlZCBhdCBzb21lIHBvaW50Lg0KPj4+Pj4+PiArwqDC
oMKgwqDCoMKgwqAgKi8NCj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIG9iai0+aW1wb3J0
X2F0dGFjaDsNCj4+Pj4+Pj4gwqDCoMKgIH0NCj4+Pj4+Pj4gwqDCoMKgIMKgICNpZmRlZiBDT05G
SUdfTE9DS0RFUA0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
