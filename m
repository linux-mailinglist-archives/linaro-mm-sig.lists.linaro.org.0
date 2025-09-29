Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C351ABA8602
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 10:20:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D67BA40E18
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Sep 2025 08:20:39 +0000 (UTC)
Received: from SA9PR02CU001.outbound.protection.outlook.com (mail-southcentralusazon11013053.outbound.protection.outlook.com [40.93.196.53])
	by lists.linaro.org (Postfix) with ESMTPS id C71D840E18
	for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Sep 2025 08:20:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=n79JNck2;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.196.53 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ds7sbbo6GQHr0qrpBCpiyR1i9/UiA5ciHlu5Qsr2xZHBF3t6YnVBI2rZcvILzs+xsprxm9bxnrgIrvkCTupKUfkXNN5veAFVnh2wyxISQuhpDNkx2OuAp+4NVMEr3s310G51vHeN2uNA2CrNNAwb5XUYUXmq8a7R4cQjmNYNmyTgNWcfXVd9HW4blWSy5OGgVMf8P1rEVSpHDoBQ4Pntb8TuHrsk1YkF8l1ygsUix3Civ3ORxmtP4nClhikuNHfRuYy/lUEda6v8/5vR9GAJwlyh4MtWOqis3FDXaUDHf3pBYnAnRdGpKdRZ5U9bSMFqO++ThvS8JGE4CcjqxX3kEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DXA368NvfWCLSrvh9UvTraQvHEk58vjh7rViT2zxTAk=;
 b=gNPPRSZM5cOAY8RHyWyXHMuMbn6+rSK8DgXqhzLpNdzstsVmwC9VyEqQX7rfbqXLci48iipobnjTCAILcAJy/y3IhFIinOnwX5imeqgBiIOg0A6nA7VKWPJTyqJR/F1Rb1mLSoFgImqaE+aH9IpAVi8b4C9JhXz3S8TJvMvcxstt451170li+oB07PW47hVfXg8TLhXxxiiXp69015vYy2IAA/YyT3Gruck1KJBB9if3+5iAUxHZjIN4oyBHT58OifcFUimP0O/Js69KdJySq29Sn4Cnsa2+bmH2z8Wv194eeP/QWBF7bw7HCXwT1sWM4mkHogLLBXHKXjIxF9uCbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DXA368NvfWCLSrvh9UvTraQvHEk58vjh7rViT2zxTAk=;
 b=n79JNck2O2uEZvRqNEvYHYdZRCK0wPFnVnEKsm5OhAeRn5CHLv38G5QGVHvHTnAhg8CiqQnIg3HSNWgTJGt14MC9mpCOMVDJOJOf7KjPaEwUwH8QKajiglo/roqFvbuO7FGaRdr+LKnwgpgpvAs9OB3GnvLpoEr8dZQoqYgX/Z8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB5657.namprd12.prod.outlook.com (2603:10b6:806:234::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Mon, 29 Sep
 2025 08:20:33 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9160.014; Mon, 29 Sep 2025
 08:20:33 +0000
Message-ID: <a5ffd1ee-b0b5-40bd-b68f-3779ca70dcae@amd.com>
Date: Mon, 29 Sep 2025 10:20:28 +0200
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>
References: <20250926084624.2288-1-thomas.hellstrom@linux.intel.com>
 <20250926084624.2288-2-thomas.hellstrom@linux.intel.com>
 <472f27f0-2f54-45dd-b0a6-3a26b5eec301@amd.com>
 <ef9f4fb1c55bf3e5e6423b2accdccee0607b95ef.camel@linux.intel.com>
 <20250926144128.GD2617119@nvidia.com>
 <765e3449-2eb1-49f5-954e-3bab5a5fc9d1@amd.com>
 <20250926160036.GE2617119@nvidia.com>
 <d3cc5b7fe4189c6f529b532273ece34c9c0e975f.camel@linux.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <d3cc5b7fe4189c6f529b532273ece34c9c0e975f.camel@linux.intel.com>
X-ClientProxiedBy: BLAPR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:208:32b::12) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB5657:EE_
X-MS-Office365-Filtering-Correlation-Id: 10766ba9-6401-4057-c31e-08ddff310f85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RnNqVUhHdXgvQWcxdVA2M1JnQ2FHcVpKNFllbG1wdkxWb3JMd2FTME00ZEZi?=
 =?utf-8?B?V281WG83UUp6NHZleVJNSzQvdXJuOUlaOFF3ZE4zR0dsSzB5NnlmendycjE3?=
 =?utf-8?B?Y0VrZ3BFSSsxZTJKa2QweUpRcng0U000R2F3clMzc1R2UjZzUjVtODQxaFhz?=
 =?utf-8?B?cXlCZ2RmMGpRUWhTampjRklLempuWjdxWnFsa25raGpFYzI3T1VVSUYyWXd1?=
 =?utf-8?B?NFFxZ3l4Y3BzMTNlUkhVN3pWN25MVStzYmJQTjVHWkJNbzR0ZCtCQktwT3BL?=
 =?utf-8?B?aXhuTWN6YlVycGNCNU1ESkdCNFFBNXlUcGU5RHd5Y1k2WkJodnpJRFZJQm9R?=
 =?utf-8?B?YzN0eXFRbnNRYjlPcjIxa3ovZEdXMXlsT3pldnpSWEhhL2dPYkJpWDVWMjhI?=
 =?utf-8?B?UllKMTA4ek8xK1NSOHV4UVIxTUZySkpOUFBPbkh1SGpVRExNblhueEpNVjJB?=
 =?utf-8?B?a096bDRQb2NnODNOUWpqS0lmNCtmdGQ0K1dsV2RsdHNpVWNyWEFzQ2VkbmNp?=
 =?utf-8?B?SFk2RUVsTVBRcFYzQlpNRVJkRzhsdWhnN3FaVGppVWd6c1lac2p1NG9FY0hG?=
 =?utf-8?B?ODU1eTZ5SmJnUWh5TlVvZzJWRzVmeUl1TThMQ01heGhydDdMdWpvWUdrMjlU?=
 =?utf-8?B?Tyt1Z3RLUlhUakxQakgvaWh6ZWNzdnZwaGNlZ3h3cnlvZXl4TDMvRHFFSDZp?=
 =?utf-8?B?SU1wM2VMWng1dGtoNU1mVWptM2ZEajFNMHB5TE92WXpvZm1MdVMwaWZaWWEr?=
 =?utf-8?B?RlVKbTlwd29aZk5LbjVIQXVvcTF1ZEFyc1pKcGwwQmZZbkpkbTJVUnFqYXRE?=
 =?utf-8?B?ZG1VdTdoR2NOZ3U3cnhqVTdTZlFPRitscm4wSzRYRmIyRUJiKzBadXhsMHRD?=
 =?utf-8?B?VDA2MEdOYUlEZlk1UFlDOUxlRWhETDFvbHIxanJ4MWVUa0pIS3hpZG1PN0lr?=
 =?utf-8?B?U2k2ZWFIamNTa2sxeVBwRU0xY21Pc0pmZTdLcE5pSDZzck5aUmt3SE5icTEw?=
 =?utf-8?B?YVRNMGFHOUdpN2pZMUIrcVZZcUJEblErRFpROWZ4dk9ZME9BVXFXb1g2RmFu?=
 =?utf-8?B?Q1FFMkVGQktMQUNsZlZ3V0V0Z3M0OVFzZnRLbW5reC9HdG94VHFnRHdsNjVJ?=
 =?utf-8?B?K2NOTGM1ZTJlSzM2N1RPKzh4ZzFHWjFCQ092T0krWTA0MHhCckQwNUdJQUJP?=
 =?utf-8?B?ZjFZNnBjV05lRTExeEw3VkdtYzJQdisxaHh1eUIzaHVZN3FvcWI5Y3ovdmQw?=
 =?utf-8?B?MXNNa1R3bXBFb0ZkblprU2h2ajYvUWp6aWlqU3FpcjhHb2w5VmVLYnNxWDQ2?=
 =?utf-8?B?NmFIRExYMEd6TDJWN0tyWHVPR0N0WlFFektvQlJVNVFpMXQwbUdaaWRocmdz?=
 =?utf-8?B?dzVjWUVQYTQ2cVlkWG9WbDU3QVJkUGJSNGI3ZlZWeXVvT1dSeXZydDBGRThS?=
 =?utf-8?B?N25WamR1UGlJdzJ2Rmhwd3M0WVdmZkhhcFIzUmtVOU1PWmZyZ3JGUXRLaFZi?=
 =?utf-8?B?NmZnbEtMQUFGVUZmSXNCYkYvU0E2WHRyZ2FwOUwrSTNIaEdrYkYyYThiTDlq?=
 =?utf-8?B?dTZSdjhneWFTamxWRlFscXVvT1J1UWhycnhZVHYrQTB4Q1NudlZjOG5DSFp4?=
 =?utf-8?B?OFFhdWNLcTM0emJGQ2dqR1JtejMrTE9XNmlqQ3VrbzV4dDEva0Z1VlNuZmI1?=
 =?utf-8?B?VDlCWWNBK0lwWjJIYkNJT3p0ZDFDczdBdDZLejhoaXRLTmRITDUrWTFZVWpN?=
 =?utf-8?B?d0U3Y0MxY25rZXNrc09nTkFUc001VktJN1p5b0hmU2gwYUJMSklKeWtxUXZ5?=
 =?utf-8?B?NXlKcWlNNWNNRnVBY2hnbUZrTzNTNzF6bFo2ZTVhMzNMQVdNQWxuQXBYaEZ6?=
 =?utf-8?B?UXorb1VaTUcvRnVGK3YxMEhGR1ZLZHBHM3VIWjFGeVBQRDczelZ6TkJMSUoy?=
 =?utf-8?Q?MBw5LkL4PUhBKqlSH/Q5qlRFDzFZ5m8D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OTAwM21INDBwRGxrQVV3bzdHSk84bm9oekFKWmZoRXNSakFId2M3SFVIa1gy?=
 =?utf-8?B?WE1ZNDdKSE1TK081SXU4VFRiN3RBNW85ZjRycTFEMThmVmwvbHU2ejlQNW4v?=
 =?utf-8?B?WmgzLzNDeTdIbHdpdStNNi9rR0lYVVRIanllajBZZ01pS2tqQXZGZWREMHpW?=
 =?utf-8?B?NmU3cTg5TlhQQ0lvWkFTUW9CdWQ3RkJ5QlF6M1pXY245UmdadVp5VytvL0pQ?=
 =?utf-8?B?MG91WnJaSzg0M05UbjN6M1duSWZKNzFEYU91ZEZoTURaVXNkSUdmQXdISnNx?=
 =?utf-8?B?cGJuVzZLdU9CVkxiOU1CNFRWbU9JNlZMdFZhclJJbUt2WmRMSFZWTTBzbFBP?=
 =?utf-8?B?dlVyd1RYbzNKdjBDK1hlL3pNNXlhNE5FOGZyUVlkWGIvTGFiRmZZVVlDUEty?=
 =?utf-8?B?YVJwMG02U0dBQVF5ZmQ5MzRXMlhkdms5TjJYazhhNjNXUThjR1FTcjlwWlI3?=
 =?utf-8?B?RVVXRDB3ZWFYWWxnQ1RMRmFUUHQvMmRxWUZPR0FTWXNrUlRxUDYzTVFuOXU3?=
 =?utf-8?B?Rk1jOFQrY2J1NTJ1MDhacWJGckY0SUJIOC95TGtyL2liNmJJRldCY2ZZVlBz?=
 =?utf-8?B?MFNtTEN0NUwvWThmcyswSVNFRk1TWWh3VStBV2JveXk2T0FVbXBUSDFXMjdl?=
 =?utf-8?B?Qm5BK1Nnd2ZNNVJ5OFRlMUQ0Vi9aYlpSZmhwOXZqeFBVUGxZa3NSbUNhM3hQ?=
 =?utf-8?B?WGhqNlJ0bUxqTFRUZTBZSXhnY00rTjZvZ2F1UFRIR0VMWVZWYzU1SVNtRVg0?=
 =?utf-8?B?WmIzOWlNZFBJRjVHcHlQbXlkUldkdGd4U2FYS3U0Y053UGtiRmRmd2JoZ2hy?=
 =?utf-8?B?MVBzdEcvTjFCSFBaTUxBS0xTbkFxZ2dxWXVQYk9SeXVUTUtQdmRTbzFHdWFh?=
 =?utf-8?B?VEhtTWNiQlJsczlNbkFGOFVMR2JmbWs2OFV0NkpkNElDZUZrNjdaczdvS0gx?=
 =?utf-8?B?TDN0aVJhdEVwOHZlNzJXSzc3YVhjUTBIYzRlL3pCdnI1UXdYcVZxQ0ZjR0tk?=
 =?utf-8?B?MHBHWmJpUmVSZkhHTUk0dHhaMDM1S2NScDR1dHo5WWVjT0JLMHBrTGNJcXVy?=
 =?utf-8?B?eEJVMW9qRW9MMTc2bkZWcWh0S0pqSWtRbWRJYjk0RVM4d2Y2WE5Cak5WS3NW?=
 =?utf-8?B?WjBhWEdOYlVnTnV3TFNtZDN3akJnejVIUEQ2VENRNytPK3RhaXNPVStWeThW?=
 =?utf-8?B?U01xeUpMLzM4Tk1SWGVtWlRSNm1OcWM1N3FpRXg0WVpGMEhHVzg4YUpsbWRJ?=
 =?utf-8?B?c1FndldVVVJtdGxQV1RFTFZibWlaZ0h5L0RDd0JtajRQS2t3enFFelVnMWh4?=
 =?utf-8?B?NitHK3hoMmxkWklXSVNiOVF5aTREMWJFbStPSWZpcjBHdXpMVml4WG9ZZmlQ?=
 =?utf-8?B?NmV4Z1dHZVAxMTh6dVBoS0lGeXM3djVDSmIzNTExdlhmSTdLRzhXZlBPZjlx?=
 =?utf-8?B?cWZVeHZ5QjgyT1FaMG1xMDhQdnR0OHhFd2R1VmRTRVVaR1lVZml5N3hDVjJM?=
 =?utf-8?B?Z2twYUsvbTFhUHd0aS9KSUROSzNnVTVZeWRoZVF5UmZzQ1BFd2RnVHZVdWRR?=
 =?utf-8?B?VEo0bXQ5ZnpsYmtHVlVJREQ1RHpycWNjRmVHUFBEaiszNWtTR2ROV3BpSk9T?=
 =?utf-8?B?aENHem02NnBzSWhJRklCQWtLWVpTOXNXbCt4SFVvYkxoSGNoNGR5T0ZtSDZl?=
 =?utf-8?B?NlZDU3dPUDdabEY2bXZRL0FLZy9rWitwYmEzUXk0bXY4Q2xRNXlJZjNzcmt2?=
 =?utf-8?B?RkhKU2dQdW9kcHp5c2xvR3RFN1drWlV3Zm9aWGt0ekZGdnZKOTIzaVpVRGFp?=
 =?utf-8?B?dUFpclByeUhoZDZDTDZwa0Y1alFmVkcxMTIxVzloa2ptTy90aDRHcmdHYXUx?=
 =?utf-8?B?Ty9vRmgxZVhxN3A4QzFOc251Tld0RVYxOTd2Ukd1UmNpZ0p1dlN5cGFNdGk0?=
 =?utf-8?B?cFc1cWt2WUpxVE5NL2tMSFRqd3Z6QkJnUVpVRUF0M216aWFJMENmSjYxNUNv?=
 =?utf-8?B?bW9Kbm9yUEZWL0pSRGtXNGUrTlJWVzBYSldrWE5zcVo3NEs4NG5US1NpWnE4?=
 =?utf-8?B?MThJQ0FUZ2NDVGxHcys1cGt3NjVPWVBCYTFaMVEwR2ZCZlVhaHVpa3FkL0Vq?=
 =?utf-8?Q?HprNPx28VbQfFyNZStu3sxUYK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10766ba9-6401-4057-c31e-08ddff310f85
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 08:20:33.7444
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0dymTEotBeflSTys5AngJmSDLMTKo3OO5dX83wIT1T5wP/xfladsvqS0DtNm8Nk+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB5657
X-Rspamd-Queue-Id: C71D840E18
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.196.53:from];
	ASN(0.00)[asn:8075, ipnet:40.80.0.0/12, country:US];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2754BCE7LQ3W2GUGGQ3FV5DVQRFDORZU
X-Message-ID-Hash: 2754BCE7LQ3W2GUGGQ3FV5DVQRFDORZU
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: intel-xe@lists.freedesktop.org, Matthew Brost <matthew.brost@intel.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Kasireddy Vivek <vivek.kasireddy@intel.com>, Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2 1/2] dma-buf: Add support for private interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2754BCE7LQ3W2GUGGQ3FV5DVQRFDORZU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMjkuMDkuMjUgMTA6MTYsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOg0KPiBPbiBGcmksIDIw
MjUtMDktMjYgYXQgMTM6MDAgLTAzMDAsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4+IE9uIEZy
aSwgU2VwIDI2LCAyMDI1IGF0IDA0OjUxOjI5UE0gKzAyMDAsIENocmlzdGlhbiBLw7ZuaWcgd3Jv
dGU6DQo+Pj4gT24gMjYuMDkuMjUgMTY6NDEsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4+Pj4g
T24gRnJpLCBTZXAgMjYsIDIwMjUgYXQgMDM6NTE6MjFQTSArMDIwMCwgVGhvbWFzIEhlbGxzdHLD
tm0gd3JvdGU6DQo+Pj4+DQo+Pj4+PiBXZWxsIGJvdGggZXhwb3J0ZXIgYW5kIGV4cG9ydGVyIGhh
cyBzcGVjaWZpYyBpbmZvcm1hdGlvbiBXUlQNCj4+Pj4+IHRoaXMuIFRoZQ0KPj4+Pj4gdWx0aW1h
dGUgZGVjaXNpb24gaXMgZG9uZSBpbiB0aGUgZXhwb3J0ZXIgYXR0YWNoKCkgY2FsbGJhY2ssDQo+
Pj4+PiBqdXN0IGxpa2UNCj4+Pj4+IHBjaWVfcDJwLiBBbmQgdGhlIGV4cG9ydGVyIGFja25vd2xl
ZGdlcyB0aGF0IGJ5IHNldHRpbmcgdGhlDQo+Pj4+PiBkbWFfYnVmX2F0dGFjaG1lbnQ6OmludGVy
Y29ubmVjdF9hdHRhY2ggZmllbGQuIEluIGFuYWxvZ3kgd2l0aA0KPj4+Pj4gdGhlDQo+Pj4+PiBk
bWFfYnVmX2F0dGFjaG1lbnQ6OnBlZXIycGVlciBtZW1iZXIuDQo+Pj4+DQo+Pj4+IEhhdmluZyBh
IHNpbmdsZSBvcHRpb24gc2VlbXMgdG9vIGxpbWl0ZWQgdG8gbWUuLg0KPj4+DQo+Pj4gWWVhaCwg
YWdyZWUuDQo+Pj4NCj4+Pj4gSSB0aGluayBpdCB3b3VsZCBiZSBuaWNlIGlmIHRoZSBpbXBvcnRl
ciBjb3VsZCBzdXBwbHkgYSBsaXN0IG9mDQo+Pj4+ICdpbnRlcmNvbm5lY3RzJyBpdCBjYW4gYWNj
ZXB0LCBlZzoNCj4+Pj4NCj4+Pj4gwqAtIFZSQU0gb2Zmc2V0IHdpdGhpbiB0aGlzIHNwZWNpZmlj
IFZSQU0gbWVtb3J5DQo+Pj4+IMKgLSBkbWFfYWRkcl90IGZvciB0aGlzIHN0cnVjdCBkZXZpY2UN
Cj4+Pj4gwqAtICJJT1ZBIiBmb3IgdGhpcyBpbml0aWF0b3Igb24gYSBwcml2YXRlIGludGVyY29u
bmVjdA0KPj4+PiDCoC0gUENJIGJhciBzbGljZQ0KPj4+PiDCoC0gcGh5c19hZGRyX3QgKHVzZWQg
YmV0d2VlbiB2ZmlvLCBrdm0sIGlvbW11ZmQpDQo+Pj4NCj4+PiBJIHdvdWxkIHJhdGhlciBzYXkg
dGhhdCB0aGUgZXhwb3J0ZXIgc2hvdWxkIHByb3ZpZGUgdGhlIGxpc3Qgb2YNCj4+PiB3aGF0DQo+
Pj4gaW50ZXJjb25uZWN0cyB0aGUgYnVmZmVyIG1pZ2h0IGJlIGFjY2Vzc2libGUgdGhyb3VnaC4N
Cj4+DQo+PiBFaXRoZXIgZGlyZWN0aW9uIHdvcmtzLCBJIHNrZXRjaGVkIGl0IGxpa2UgdGhpcyBi
ZWNhdXNlIEkgdGhvdWdodA0KPj4gdGhlcmUgd2VyZSBtb3JlIGltcG9ydGVycyB0aGFuIGV4cG9y
dGVycywgYW5kIGluIHRoZSBmbG93IGl0IGlzIGVhc3kNCj4+IGZvciB0aGUgaW1wb3J0ZXIgdG8g
cHJvdmlkZSBhIGxpc3Qgb24gdGhlIHN0YWNrDQo+Pg0KPj4gSSBkaWRuJ3Qgc2tldGNoIGZ1cnRo
ZXIsIGJ1dCBJIHRoaW5rIHRoZSBleHBvcnRlciBhbmQgaW1wb3J0ZXIgc2hvdWxkDQo+PiBib3Ro
IGJlIHByb3ZpZGluZyBhIGNvbXBhdGlibGUgbGlzdCBhbmQgdGhlbiBpbiBhbG1vc3QgYWxsIGNh
c2VzIHRoZQ0KPj4gY29yZSBjb2RlIHNob3VsZCBkbyB0aGUgbWF0Y2hpbmcuDQo+Pg0KPj4gSWYg
dGhlIGltcG9ydGVyIHdvcmtzIGFzIEkgc2hvd2VkLCB0aGVuIHRoZSBleHBvcnRlciB2ZXJzaW9u
IHdvdWxkIGJlDQo+PiBpbiBhbiBvcDoNCj4+DQo+PiBpbnQgZXhwb3J0ZXJfbmVnb3RpYXRlX29w
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYsDQo+PiDCoMKgIHN0cnVjdCBkbWFfYnVmX2ludGVyY29u
bmVjdF9uZWdvdGlhdGlvbiAqaW1wb3J0ZXJfc3VwcG9ydCwgc2l6ZV90DQo+PiBpbXBvcnRlcl9s
ZW4pDQo+PiB7DQo+PiDCoMKgwqDCoCBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3RfbmVnb3Rp
YXRpb24gZXhwb3J0ZXJfc3VwcG9ydFsyXSA9IHsNCj4+IMKgwqDCoMKgwqDCoMKgwqAgWzBdID0g
ey5pbnRlcmNvbm5lY3QgPSBteXNlbGYtPnhlX3ZyYW19LA0KPj4gwqDCoMKgwqDCoMKgwqDCoCBb
MV0gPSB7LmludGVyY29ubmVjdCA9ICZkbWFidWZfZ2VuZXJpY19kbWFfYWRkcl90LA0KPj4gLmlu
dGVyY29ubmVjdF9hcmdzID0gZXhwb3J0ZXJfZGV2fSwNCj4+IMKgwqDCoMKgIH07DQo+PiDCoMKg
wqDCoCByZXR1cm4gZG1hX2J1Zl9oZWxwZXJfbmVnb3RpYXRlKGRtYWJ1ZiwgZXhwb3J0ZXJfc3Vw
cG9ydCwNCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBBUlJBWV9TSVpFKGV4cG9ydGVyX3N1
cHBvcnQpLCBpbXBvcnRlcl9zdXBwb3J0LA0KPj4gaW1wb3J0ZXJfbGVuKTsNCj4+IH0NCj4+DQo+
PiBXaGljaCB0aGUgZG1hX2J1Zl9uZWdvdGlhdGUoKSBjYWxscy4NCj4+DQo+PiBUaGUgY29yZSBj
b2RlIGRvZXMgdGhlIG1hdGNoaW5nIGdlbmVyaWNhbGx5LCBwcm9iYWJseSB0aGVyZSBpcyBhDQo+
PiBzdHJ1Y3QgZG1hX2J1Zl9pbnRlcmNvbm5lY3QgbWF0Y2goKSBvcCBpdCB1c2VzIHRvIGhlbHAg
dGhpcyBwcm9jZXNzLg0KPj4NCj4+IEkgZG9uJ3QgdGhpbmsgaW1wb3J0ZXIgb3IgZXhwb3J0ZXIg
c2hvdWxkIGJlIG9wZW4gY29kaW5nIGFueQ0KPj4gbWF0Y2hpbmcuDQo+Pg0KPj4gRm9yIGV4YW1w
bGUsIHdlIGhhdmUgc29tZSBzeXN0ZW1zIHdpdGggbXVsdGlwYXRoIFBDSS4gVGhpcyBjb3VsZA0K
Pj4gYWN0dWFsbHkgc3VwcG9ydCB0aG9zZSBwcm9wZXJseS4gVGhlIFJETUEgTklDIGhhcyB0d28g
c3RydWN0IGRldmljZXMNCj4+IGl0IG9wZXJhdGVzIHdpdGggZGlmZmVyZW50IHBhdGhzLCBzbyBp
dCB3b3VsZCB3cml0ZSBvdXQgdHdvDQo+PiAmZG1hYnVmX2dlbmVyaWNfZG1hX2FkZHJfdCdzIC0g
b25lIGZvciBlYWNoLg0KPj4NCj4+IFRoZSBHUFUgd291bGQgZG8gdGhlIHNhbWUuIFRoZSBjb3Jl
IGNvZGUgY2FuIGhhdmUgZ2VuZXJpYyBjb2RlIHRvDQo+PiBldmFsdWF0ZSBpZiBQMlAgaXMgcG9z
c2libGUgYW5kIGVzdGltYXRlIHNvbWUgUU9SIGJldHdlZW4gdGhlDQo+PiBvcHRpb25zLg0KPiAN
Cj4gVGhpcyBzb3VuZHMgT0sgd2l0aCBtZS4gSSBoYXZlIHNvbWUgYWRkaXRpb25hbCBxdWVzdGlv
bnMsIHRob3VnaCwNCj4gDQo+IDEpIEV2ZXJ5Ym9keSBhZ3JlZXMgdGhhdCB0aGUgaW50ZXJjb25u
ZWN0IHVzZWQgaXMgYSBwcm9wZXJ0eSBvZiB0aGUNCj4gYXR0YWNobWVudD8gSXQgc2hvdWxkIGJl
IG5lZ290aWF0ZWQgZHVyaW5nIGF0dGFjaCgpPw0KDQpZZXMsIGF0dGFjaCBhbGxvd3MgdGhlIGV4
cG9ydGVyIHRvIGtub3cgd2hvIHdhbnRzIHRvIGFjY2VzcyBpdCdzIGJ1ZmZlci4NCg0KTWFwL3Vu
bWFwIHRoZW4gcmVxdWVzdHMgdGhlIGFjdHVhbCBsb2NhdGlvbiB3aGVyZSB0aGUgZXhwb3J0ZXIg
aGFzIG1vdmVkIHRoZSBidWZmZXIgc28gdGhhdCBpdCBpcyBhY2Nlc3NpYmxlIGJ5IGV2ZXJ5Ym9k
eS4NCg0KPiAyKSBkbWEtYnVmIHBjaWUtcDJwIGFsbG93cyB0cmFuc3BhcmVudCBmYWxsYmFjayB0
byBzeXN0ZW0gbWVtb3J5IGRtYS0NCj4gYnVmLiBJIHRoaW5rIHRoYXQgaXMgYSBnb29kIHRoaW5n
IHRvIGtlZXAgZXZlbiBmb3Igb3RoZXIgaW50ZXJjb25uZWN0cw0KPiAoaWYgcG9zc2libGUpLiBM
aWtlIGlmIHNvbWVvbmUgd2FudHMgdG8gcHVsbCB0aGUgbmV0d29yayBjYWJsZSwgd2UNCj4gY291
bGQgdHJpZ2dlciBhIG1vdmVfbm90aWZ5KCkgYW5kIG9uIG5leHQgbWFwKCkgd2UnZCBmYWxsIGJh
Y2suIEFueQ0KPiBpZGVhcyBhcm91bmQgdGhpcz8NCg0KV2UgYWxyZWFkeSBkbyB0aGF0IGlmIG5l
dyBpbXBvcnRlcnMgY29tZSBhbG9uZy4NCg0KRS5nLiB5b3UgaGF2ZSBhIGNvbm5lY3Rpb24gd2hp
Y2ggY2FuIGRvIFBDSWUgUDJQIGFuZCB0aGVuIHN1ZGRlbmx5IHNvbWVib2R5IGF0dGFjaGVzIHdo
aWNoIGNhbiBvbmx5IGRvIERNQSB0byBzeXN0ZW0gbWVtb3J5LiBJbiB0aGF0IHNpdHVhdGlvbiB3
ZSB1c2UgbW92ZV9ub3RpZnkgdG8gbW92ZSB0aGUgYnVmZmVyIGludG8gc3lzdGVtIG1lbW9yeSBh
bmQgaW1wb3J0cyByZS1tYXAgaXQgdG8gZ3Jhc3AgdGhlIG5ldyBsb2NhdGlvbi4NCg0KUmVnYXJk
cywNCkNocmlzdGlhbi4NCg0KPiANCj4gVGhhbmtzLA0KPiBUaG9tYXMNCj4gDQo+IA0KPiANCj4+
DQo+PiBKYXNvbg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNp
Zy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
