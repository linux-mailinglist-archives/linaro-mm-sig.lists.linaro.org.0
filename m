Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB533AAF73E
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 11:54:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E7C75459DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  8 May 2025 09:54:36 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2076.outbound.protection.outlook.com [40.107.220.76])
	by lists.linaro.org (Postfix) with ESMTPS id 3124344607
	for <linaro-mm-sig@lists.linaro.org>; Thu,  8 May 2025 09:54:23 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=wHKqIymu;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.220.76 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WcLfwLjGrEi/KZmDvmJlbBrrRPiv+ZtdN5njnGWOOF0aE+5X3qgkVCGquid1t3zmcKH6rSac3m+y8N3Grj6f+sSnVgu867x+UmhwIVWzawlGdL4RbZ0k/J6N6jOQtHSpELg8tWVTGeE118H9JJJGMyVbBehjs2l/Ygfup2eB4npQLy5Vw/TKw7oxinZpWMFW1+drg3Xr4lQhVjS508D+Z2ALPqTSGiJYtgOnbMveROvkDXdFI0M/KBUrA1NtPAf0rHZuNRsUu3cyzBrDOwToW/RNyK1YQBmAtH6w7XPzKAY/MWtVhHTVXQnfJrjhrAN6KcdpufhMX0Js/nzqBWeR+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=92mBRqvlhpeuo23ArHea1zS4X3ctykjhk9WZoqzLELA=;
 b=fY6Zqd8/1IYSIeRXUS8UG/M1GQOGX+GRZ2bzB6ZbEa40Rxsg6dk1dE/vkjNqrPeSC1lUoR15Yhfsb8gatfCnMFzIBhZwEpN+Z+f06rwUpmJ3xwKZx3yHGEmi3FvZSDdZgcvWUogtw9v+pNS4ClYEm2xD5/wJvp1vVdPszZ5Ble4ScZpec/xb0/ucIt3xFwQpA9R/pX7f0pg74Gra1Fu97wxLH9jOFVgnfXU2G3vm3bFl+UXq6q6h0Lyd80CWgchD9Y1FBOX/RkEmR11qLErLBfapBXu4et/5FqnX87jNi1Fb5T4asjT8vaOzQ76aLWVPy+9ujIiDJyqva8vGc+63fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=92mBRqvlhpeuo23ArHea1zS4X3ctykjhk9WZoqzLELA=;
 b=wHKqIymu3vH7PWHRJril6rxssuvNpW8TDcpzN12n0xJcMHBOus6yicb5RWo8aMKREIdhhLOaB7oHIs/XuLNbkDRHnzDrExOPXDKfSHn2+B0TRc46dATmSDhQnAezg35hkN8XRlJRveHW34eqwVfxVekk/x6m2z4GQeJgcVhYCV4=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MN0PR12MB6174.namprd12.prod.outlook.com (2603:10b6:208:3c5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Thu, 8 May
 2025 09:54:16 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8678.028; Thu, 8 May 2025
 09:54:16 +0000
Message-ID: <45afaa00-e627-4a8c-b25e-2f74357c3430@amd.com>
Date: Thu, 8 May 2025 11:54:10 +0200
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>
References: <20250424130254.42046-2-phasta@kernel.org>
 <20250424130254.42046-6-phasta@kernel.org>
 <9793bfc7-5309-4e19-a0e4-5e298720aa9e@amd.com>
 <3b64a3e0659dbfa2c5f819f40f9f0624309d24ed.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3b64a3e0659dbfa2c5f819f40f9f0624309d24ed.camel@mailbox.org>
X-ClientProxiedBy: FR2P281CA0105.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MN0PR12MB6174:EE_
X-MS-Office365-Filtering-Correlation-Id: 262386e1-fe35-443a-b2cf-08dd8e164b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TVhZTjgrNVBzMU44M2VaUW5HT3hBditPUEs5V2R6SlFuUnVkSGNTWnhpTTdT?=
 =?utf-8?B?dGRneFMrcCtnTEh3MXFEclFqUXUrRk5FR1I0Qlcyc1N4R1VDRUxsWHl4bzNT?=
 =?utf-8?B?NnpHRis0OVhlbkFlSkUzcHNSSVIzOGRmeEVseDNmM1ZBUThhM1h2bHVadkVt?=
 =?utf-8?B?aHk0OGxJOTdKV014a2ZJaGtmU0dCWEZzS2lqYS9MUGxEbktGNnpaL2h4U1pV?=
 =?utf-8?B?eW00UXdaWlFpK3hUaG43WnNTSzVWN0JWSUV5SDBEUytuTnRvZ0ZLV29FbER2?=
 =?utf-8?B?dSszNXg2RzBaWFJMcW03NG9hdk00RDNNbDJYTHBQcE9mQy9Ea2JBNDVidDR1?=
 =?utf-8?B?MUk1SmhrUEMzM0RoTUZUc2JVT0pLdzlaZlRuanNGTlFGczZ6clgzU09LQzk0?=
 =?utf-8?B?cnVKRGNnVFNiVXE3a1BNSGF2dWkyQ3d0U3NqdVcya1hEQnpFS3hIV3kySVli?=
 =?utf-8?B?T2VUbjIwb0dSdjJoT2dWUGk5Y2l4c08zRVFDYTBKMFZzSXpoN3d1QnVlZHcy?=
 =?utf-8?B?ZlZQTngrRmRYNks2MEtvRDVzaVBuUTBNa1YxN09DUVJLZUZZeHVEaU1wdzdj?=
 =?utf-8?B?enZZVlorajEySXBldE1laHZ0MEFGM1UyN3EvUEFsS2grd0hHSVJ5ZWhxaitO?=
 =?utf-8?B?ZlFGeXBiT3BteHluT3VJaW9seDN0aTVzNFlweDB4YjB0QU03NHovMElwcjcy?=
 =?utf-8?B?ZzBQUWoyMGdoNFdMMWlUZGpsVTR6OEcyL0ZPMENEd2hTYnVLWkFBZktuemlE?=
 =?utf-8?B?bXZnZm13OVpJdElHTFY5WUlDTWxrQ0N4T0VyT0dPQUlJVXFqYnFPcXZGeFVm?=
 =?utf-8?B?OTBWM3BuZlVjakFaWk1DN2FqMUtxZ05pbE1qdmpQaVJiNmdKWXVkYllmRXNu?=
 =?utf-8?B?TGF1Mzl6cGUvM01NSkp6c2EzWXdyaXVNZFB2TWhZMUI1ODcvQnQySDdLTDdr?=
 =?utf-8?B?RXJXRGV1T3NXYk9SYnNmdVFlS3VWZWNJUVd5TDUwbUtKQXJDb0IyYUpXYnNZ?=
 =?utf-8?B?UHBieTdUVlZVMWN4dk03YXY5eGd6Z1lwTVF3aWtWMnFmZHl4STJ6SmpqMFI4?=
 =?utf-8?B?a3dxMHZvNzR5U2d4TUk0WTc0STE2S2o4NU92L3JUS25uT3ZxMU9VcGFTRG1G?=
 =?utf-8?B?dVlHcHVNK1Ntb2pWY0JBaGZIRlpyNmxyaitRTDVyd3d0WFpndm1jV0oxWFQv?=
 =?utf-8?B?SDNVU2hvVi82elVzN2pnT3dzNUdGUndhZnJWUGFvQUpOUlIzYWVUNk0yMjly?=
 =?utf-8?B?dDhrZUlrOVZodlF4eHJPb3Bpd0xpOFNVTkxKcW1NQ3NxNkdxWjFNT09TcGlj?=
 =?utf-8?B?T0Z2TWh4TVVEQ3JUVE9DN01OS2xRMHMveUQwMkxha2hPZ3RJUHVEQkR0ZVA1?=
 =?utf-8?B?cVE1ZXptbnRGSkMwOEgrMUxuQ1J5cXMzT1hLUW53cHpxSUlNamtCSlFYYkpX?=
 =?utf-8?B?TnRISTJGZ1ZDRkhuTHI3OS9tMUFWR293aVNjUnJuSGNDSldRdENEL25oZW5v?=
 =?utf-8?B?UHZPc0dBYWRCTk1ObzVxM0RwUjBkQ1I5Zk5lRGZ2Q0tzUGRld1M5RUxPYjVn?=
 =?utf-8?B?VUY5UjBDMUQyNVRtMjdyR2ZMNDFiekpRc0tRTHZ4MGtkUnRXUWh2TWZuMTJh?=
 =?utf-8?B?N0RsVlFzWDhFeDRXSmV4aFdpeDgrd3NMdythSGhUb1oxZThveGppUnVpNzVi?=
 =?utf-8?B?NmFUUzhhOUJuRGVHOHJhYUk1ZGo2QkJLblJYZTNxeXIyYW45bkxSWlZteXlT?=
 =?utf-8?B?U3orYzBISlp2ZzBQekEySExBcjR6R290UklLZU5POWVoMUdVTkMvRjJaTUFx?=
 =?utf-8?B?Sk9zVlREclIwSHM1Y0RLWVF0K2FmM0tTYS9UMlpEL2FTV2oyZFRodmNBWG5D?=
 =?utf-8?B?Q2gzQzVTSStFakhrU0NlNTVCWFgwbHJpS04vamg0UkhwMGJvdU9ZT3U1TWU4?=
 =?utf-8?Q?9tRrdWedwlg=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TEZpcW00bERsSldMNklQa3pIRzZGeUtsVmpka0hVaEM1UklxUlgzckhHR3RF?=
 =?utf-8?B?TGJFeHJmRmFkdkFJcFZSZkZIZkhrTnQ3N1p5d01YV0gwdDNMa1BzckdrdUpY?=
 =?utf-8?B?Mm1HTUJieGRXU1k5eDN2WkRQZWIzNVp1Y0xadDhHdUwzSnhpVUowWlM5ZVZR?=
 =?utf-8?B?UGtPNzFMV2FUcU9YTHJ3MTJuRFN3dTBvNU44M0pFREVLK2pQNCt0UUdXNElS?=
 =?utf-8?B?cFpaMHYwWkQweDg2bkxweDFmRXNZVG1aTGNDMVRyUFBCKzZaZnhlaS9DZWMx?=
 =?utf-8?B?cUZIaDE0UXIzT3pPdllpaE8vOEl6ekZjTWFEbU1jalVLOUVBV2RNRzJVUko1?=
 =?utf-8?B?Umh2U1BQcjZuM1VtSzJVMUJ0aGJkcnZhaXMzV0hmUTVUcWRsNmsvaTlzN0E4?=
 =?utf-8?B?ZHE4YUhraXVGMHRXdFBXR2w2UEtUZFE0RTRyWGQwdzRrM1FnVnkxT2dtNCsv?=
 =?utf-8?B?aEtKQzI5bURSbGtmNXZWWDdQYUFVVmtPaEYxTUZrQTNaSnRhbTREQVVrUHU4?=
 =?utf-8?B?TkQzRHZtaGd1cE5BeWxhMjlWOERxcE5MMmZLVk5uV29KVGFlN0JuNFN0azN5?=
 =?utf-8?B?RytqR2NmMXpnNkJWNG0xbHl5cU5KUlp1em4ycjdoeGV0QVdtM2dlVWxuaEdt?=
 =?utf-8?B?NWtteWtRWEhpTUx5Vm50RVhreURzTnhrWXdPQmpZdFVINy8zK0FZNUxnZFJT?=
 =?utf-8?B?THM1REtoSDdaTWhzQ0c5WXZNUnF1SjZxejJIYkZNY3dPbjdzS2NyRlJaaWFR?=
 =?utf-8?B?UlF2UWo0YVljRkptVkpJbXo4clBDUXg0RzNlTUJFS3MxWXQvTVF6RE5TYUlq?=
 =?utf-8?B?REFmSWZwNG4xZFF0eFBFSVh0WWtUYjJxVzVkbFFTY1JRaUdSdHJSc0RRVVY4?=
 =?utf-8?B?TXBKMFJBMSs0TXFzVDBaUy9UUzZLTWdMaGJYWmtKQ05udmhLWUpTUjhQT0Fa?=
 =?utf-8?B?MjhmcS9lMXU0bCtSVklsYllSaTNuOUtySGRPQlNTSFJpTlRUbEVzV01PL3Qy?=
 =?utf-8?B?dSt5dUlLYUJqUnJEL2tKaW43ZWJjWDliWFFHQ0xaM3c5N1BwTzNnYlNFSGZt?=
 =?utf-8?B?eUQ1UlZLL0JjWFF2M3gyQmswWUdaMTFCeEQ5dGRrSlU3aUtRUGU4RTBodGcr?=
 =?utf-8?B?aVQvdmgxUmZRRHJ3bitVMDBxYVZadytTS2hCcDZZRUVhWGtIek5DU2IwM3A5?=
 =?utf-8?B?TldYcmF2bDBwQkszaHV4WGJtOWw1VW5ucTJ3ZE5ZQk9IRGpzMlRabDZSSHpP?=
 =?utf-8?B?bkhlZ3R3M0orUm9ZemFRZCttNXY4WWtDOTZsdnRkT3Z4WVFsVk4zRVovRWFX?=
 =?utf-8?B?T09GRVRJSEEyMDg0ekpxbHdMTE1iRENqNTZuMzdLV2pBQURsUG9DdHBzT3lk?=
 =?utf-8?B?VzJxVGs4T0tvdTJZdHp3akxGNTNCa3dtUkJtSFJKYmZYYTNNREV5a0pSS0Fq?=
 =?utf-8?B?eWk4b0l4Q0hSV1d4L25JZjMwNFVJcmkwM05UQ2xVeGJIVHREelpGSnpOVDJo?=
 =?utf-8?B?dzhWYVlOTXYvS2dqaG9ONlc4emJiOWF5WDFES2c2dUtoWU1rK2RPMnNlUWZv?=
 =?utf-8?B?MVplTjZWVmpBOW1uY1kxSmY5SVlhbmV3aGpINTlCQUJXWE9ZblBZa1psTmM0?=
 =?utf-8?B?TFFBN2N3RStMdWpxQlFQNXhEaTFqTGpPU015aUQwR2NSRzE1ZVdBblYvc1NO?=
 =?utf-8?B?bDZ3dXZuOU13KysvaTUyMjArVmxNeEptY2VNK3ZkeVlhSTZPajM4Q3R0Q2Jj?=
 =?utf-8?B?VVNSNFZZcFAxcnZCY1gyem9yNk44Mmh2YkJmTitVL0h6UlpZZHFMNThvZGZ0?=
 =?utf-8?B?LzZMRlhuSXF5VFZ3clIvUklVRzByZExXZlJoZUFtcjQ3Q0tudTRRTzd3RmEr?=
 =?utf-8?B?TGRwZ3hNSkc1aGhDT0E1aWZPRmMyMkVna2ZYc3R2OEx1NU1GU29kYzYyZEY2?=
 =?utf-8?B?Nmc5eGVGeFByQUpKclhBY0U5TnA2TWNxN0xFUTJHSXBCNFYrZVZwS1NQeHRv?=
 =?utf-8?B?YkpRODlmVWJPRHo0cExKYWlUdlFnODU4dDlsMHlPemdRbEczcXNMY1lpSm9J?=
 =?utf-8?B?SjhtWWlKK2d0UCtZdFNPc0hTQWNjdlIxWmo3VUNUNVQvTUJSMW1KY1VqSE9y?=
 =?utf-8?Q?e2nLh9X4qEYmKfa3+Coqme5o3?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 262386e1-fe35-443a-b2cf-08dd8e164b2d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2025 09:54:16.0606
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QVOzpAyExZLylU7p7xv/hm5IS+2qA8xpeIzKWOgpUSIIJpUcxrrFwXpbqHiME0/m
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR12MB6174
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3124344607
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.220.76:from];
	FREEMAIL_TO(0.00)[kernel.org,redhat.com,gmail.com,ffwll.ch,linaro.org];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[40.107.220.76:from,2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: UMEKY45QK53CFIJJQGJPV2OW2UTISBDC
X-Message-ID-Hash: UMEKY45QK53CFIJJQGJPV2OW2UTISBDC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 4/4] drm/nouveau: Check dma_fence in canonical way
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UMEKY45QK53CFIJJQGJPV2OW2UTISBDC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS84LzI1IDExOjEzLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+IE9uIE1vbiwgMjAyNS0w
NC0yOCBhdCAxNjo0NSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+IE9uIDQvMjQv
MjUgMTU6MDIsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4+PiBJbiBub3V2ZWF1X2ZlbmNlX2Rv
bmUoKSwgYSBmZW5jZSBpcyBjaGVja2VkIGZvciBiZWluZyBzaWduYWxlZCBieQ0KPj4+IG1hbnVh
bGx5IGV2YWx1YXRpbmcgdGhlIGJhc2UgZmVuY2UncyBiaXRzLiBUaGlzIGNhbiBiZSBkb25lIGlu
IGENCj4+PiBjYW5vbmljYWwgbWFubmVyIHRocm91Z2ggZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKCku
DQo+Pj4NCj4+PiBSZXBsYWNlIHRoZSBiaXQtY2hlY2sgd2l0aCBkbWFfZmVuY2VfaXNfc2lnbmFs
ZWQoKS4NCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQGtl
cm5lbC5vcmc+DQo+Pg0KPj4NCj4+IEkgdGhpbmsgdGhlIGJpdCBjaGVjayB3YXMgdXNlZCBoZXJl
IGFzIGZhc3QgcGF0aCBvcHRpbWl6YXRpb24gYmVjYXVzZQ0KPj4gd2UgbGF0ZXIgY2FsbCBkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoKSBhbnl3YXkuDQo+IA0KPiBUaGF0IGZhc3QgcGF0aCBvcHRpbWl6
YXRpb24gZWZmZWN0aXZlbHkgc2F2ZXMgb25lIEpNUCBpbnN0cnVjdGlvbiB0bw0KPiB0aGUgZnVu
Y3Rpb24uDQoNCg0KV2hhdCBJIG1lYW50IHdhcyB0aGF0IHdlIG1pZ2h0IGNvbXBsZXRlbHkgZHJv
cCB0aGF0IG9wdGltaXphdGlvbi4gSXQgbG9va3MgbGlrZSBvdmVya2lsbCBhbmQgcG90ZW50aWFs
bHkgaGlkZXMgYnVncy4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPiANCj4gSSdtIGluY3Jl
YXNpbmdseSBvZiB0aGUgb3BpbmlvbiB0aGF0IHdlIHNoYWxsIHdvcmsgdG93YXJkcyBhbGwgRFJN
DQo+IHVzZXJzIG9ubHkgZXZlciB1c2luZyBpbmZyYXN0cnVjdHVyZSB0aHJvdWdoIG9mZmljaWFs
bHkgZG9jdW1lbnRlZCBBUEkNCj4gZnVuY3Rpb25zLCB3aXRob3V0IHRvdWNoaW5nIGludGVybmFs
IGRhdGEgc3RydWN0dXJlcy4NCj4gDQo+PiBGZWVsIGZyZWUgdG8gYWRkIG15IGFja2VkLWJ5LCBi
dXQgaG9uZXN0bHkgd2hhdCBub3V2ZWF1IGRvZXMgaGVyZQ0KPj4gbG9va3MgcmF0aGVyIHN1c3Bp
Y2lvdXMgdG8gbWUuDQo+IA0KPiA6KQ0KPiANCj4gDQo+IFAuDQo+IA0KPj4NCj4+IFJlZ2FyZHMs
DQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+IC0tLQ0KPj4+IMKgZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9mZW5jZS5jIHwgMiArLQ0KPj4+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL25vdXZlYXUvbm91dmVhdV9mZW5jZS5jDQo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVh
dS9ub3V2ZWF1X2ZlbmNlLmMNCj4+PiBpbmRleCBmYjk4MTE5MzhjODIuLmQ1NjU0ZTI2ZDViYyAx
MDA2NDQNCj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMN
Cj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2ZlbmNlLmMNCj4+PiBA
QCAtMjUzLDcgKzI1Myw3IEBAIG5vdXZlYXVfZmVuY2VfZG9uZShzdHJ1Y3Qgbm91dmVhdV9mZW5j
ZSAqZmVuY2UpDQo+Pj4gwqAJc3RydWN0IG5vdXZlYXVfY2hhbm5lbCAqY2hhbjsNCj4+PiDCoAl1
bnNpZ25lZCBsb25nIGZsYWdzOw0KPj4+IMKgDQo+Pj4gLQlpZiAodGVzdF9iaXQoRE1BX0ZFTkNF
X0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtDQo+Pj4+IGJhc2UuZmxhZ3MpKQ0KPj4+ICsJaWYg
KGRtYV9mZW5jZV9pc19zaWduYWxlZCgmZmVuY2UtPmJhc2UpKQ0KPj4+IMKgCQlyZXR1cm4gdHJ1
ZTsNCj4+PiDCoA0KPj4+IMKgCXNwaW5fbG9ja19pcnFzYXZlKCZmY3R4LT5sb2NrLCBmbGFncyk7
DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
