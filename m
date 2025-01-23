Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C25DFA1A791
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 17:09:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A0DF23F646
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Jan 2025 16:08:46 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2061.outbound.protection.outlook.com [40.107.237.61])
	by lists.linaro.org (Postfix) with ESMTPS id 750523F646
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Jan 2025 16:08:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=rQ32kZcD;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.237.61 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AssJszlD8qmqn5ihm8VpiponhSXAC+TRzhPyXjV/hy8wNjYJ31E+XkiITFItZ3GrblLf+fjGGUILmHtQGwIxESGOnfbciaBHjVjf6nS0JjyqDLW2NK3BjZSj+BjTTMu0Hq5V/p9a5KSu60fyji5MEp3hJO4ZZuyxyeu/KprwXNVPH+gg5EBunx7qbUhzHJSX/97TGmxyfy43BvFBYa4+NW8divvZwb3pwCpeBrAThYURABXjLyr+X2rlP836768hIO6Qt8ZdFIP+sfiCI/8MXU6Lmygh5M0G1X2JWFSJW3wKtW6cC1VD4iU8vtJQr0P3FdKeyAuABUhVKPTDZq7sog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vV5O/duxgrPS/4K4k/AQ0EsgfBWsGFVsJgvWh2QsOFU=;
 b=PCV9BH8ctUcWp9p/tdi9BajuIbkALftRYriR25ngLBYDsmtjNl3ds8TfjCvuBDOjjsjJWweaZ9pxmXc3In9krSE+DYDcfQ8ZYX/omBfXlMAzqinPsD01LpoUNqqwqE5TNNl9R1pvrulp4oIFt+72liwg8dTFZbpdyWI4QKVlCXjMiIz4lEO+hjNUGUg4pLqwB6xAHVT9xaC+BL7zJ95adZ+Pd5Z0UaehOwnl465PkY5B12Pk3aqXrETwyto8URNjZmCTR2UOxsk/dxEs7FDBQJIC4eYUrSC8onWJDDq7/bj6/bkZFdbdL1Dm9yA8BFON1V+smbP8vgxJYJT08GRFhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vV5O/duxgrPS/4K4k/AQ0EsgfBWsGFVsJgvWh2QsOFU=;
 b=rQ32kZcDTCXLanGdQHcAwcr66Bqx6+jBBmPA8KAWHANxH9Ssa/4PMyjpIIV19HVeOTyzOvUhJcU2hasH68BNQFjPv4ZPdyPRJM4JZUMhKz3aleb+IJXB6ULIj2cYZz4rZja/Z4VUKU2PI38miYcubumaNNPqXK2/ATZnenxrHAeL3KvB53IicysHViPxqR289Q8F4F6NhJv3e1HFL1qDt1q4GCg53vcTm1X0vJBO2+4A0VvpUJ3oi4ggJJZpf+TI1NJVpwmj5BqREbjGBohZMqJmD5p0F2kDYku0BDgz+9Ld724Qtop+Tho1HCQWRy+Oly8Co9hMIkMzW10xMQOeqA==
Received: from CH3PR12MB8659.namprd12.prod.outlook.com (2603:10b6:610:17c::13)
 by PH7PR12MB6609.namprd12.prod.outlook.com (2603:10b6:510:213::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Thu, 23 Jan
 2025 16:08:29 +0000
Received: from CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732]) by CH3PR12MB8659.namprd12.prod.outlook.com
 ([fe80::6eb6:7d37:7b4b:1732%5]) with mapi id 15.20.8356.010; Thu, 23 Jan 2025
 16:08:29 +0000
Date: Thu, 23 Jan 2025 12:08:27 -0400
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250123160827.GS5556@nvidia.com>
References: <20250121173633.GU5556@nvidia.com>
 <Z5DQsyV0vwX3Iabu@phenom.ffwll.local>
 <6612c40d-4999-41a1-a4a5-74d3ff5875c3@amd.com>
 <20250122143744.GF5556@nvidia.com>
 <827315b0-23b6-4a39-88eb-34e756298d67@amd.com>
 <20250123135946.GQ5556@nvidia.com>
 <9a36fba5-2dee-46fd-9f51-47c5f0ffc1d4@amd.com>
 <97db03be-df86-440d-be4a-082f94934ddf@amd.com>
 <20250123150212.GR5556@nvidia.com>
 <89f46c7f-a585-44e2-963d-bf00bf09b493@amd.com>
Content-Disposition: inline
In-Reply-To: <89f46c7f-a585-44e2-963d-bf00bf09b493@amd.com>
X-ClientProxiedBy: BN9PR03CA0904.namprd03.prod.outlook.com
 (2603:10b6:408:107::9) To CH3PR12MB8659.namprd12.prod.outlook.com
 (2603:10b6:610:17c::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR12MB8659:EE_|PH7PR12MB6609:EE_
X-MS-Office365-Filtering-Correlation-Id: ee5bc05e-f14b-455a-9564-08dd3bc82c80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SWJyTkxMY1ZYd3V2MW9BM1RmanRVamphN0ZPRXBKK293NWtmRTF1dzhMRTJH?=
 =?utf-8?B?RlZFODhqWEVta2xMNWYzKzE1bzQwVkltMkgvV0s1d01OTjFqWis3WGdGbHln?=
 =?utf-8?B?OWkvV1lkTFFQbGZaUWxHWHNaSnNPWDZCRU1LZExVQk4vSnBlb05iUG8rYXJC?=
 =?utf-8?B?S05ZbXJtOGVDUjdiMDJMVUF6czFFYjNnZStLRHpPUVNOTStVeGkzL2IwSGxr?=
 =?utf-8?B?WHFDQUkybkpkQWlBeXVQVXlqNTJab2FjM1ozQXoralhaQXBjSDVXbXUwandi?=
 =?utf-8?B?NXc2TDJHalRiRjErMFpLMlkvQ29oVTl0TFdRM3N4RklCY2xXYyt5b3N3bkZw?=
 =?utf-8?B?bW5nU2ovNkdaNmJSanR0Z3d2VysvdjJ0dUxydWFmcWhoSFRrSitRbGRPZ01D?=
 =?utf-8?B?RVlBUjEwcUFIaTcvYzhxaUkvNk1UTmo4dm4raEw1dUhyanhOdEoxTmt5UE13?=
 =?utf-8?B?eUtNa3pERGFvWGhCZzRFTmRWcHRyMWpFdnk5eFQ2bWx4VWNXTDgwQTVUeUxw?=
 =?utf-8?B?bDRTSVhzSkoxOXVMakxPZjJSQzRvOEZOTk1HY1hNd21TbXd5cHZWNituQlRm?=
 =?utf-8?B?OERmWm9xam1oTVBEaTdQY1JHK21qKy9iakRJM2ZtQW0yWXBhYVpUUlFRTVJT?=
 =?utf-8?B?OTJTcHJZOWhRQVhZampmMmxPckdZTXNVUlZBWUcycnhJZFB3Y3F6T3VCQy8w?=
 =?utf-8?B?V0ZnRjFYaGlwQmdvVC9SUjMwTlkxc0FxbDI3Q3VNc0hNRmFvb3VCeTluQm5V?=
 =?utf-8?B?WkJxZ0tDS25LQTlsZXFpbXFaTkNrdnpUeDdEZkVwQzhwWEVKRkIvTWljbFNo?=
 =?utf-8?B?Z04yajZ2NGV4VU1pbnFucWVJU0VMdXBEZEJCUXFqd2xlRmVyYUVLeC9Zb2F3?=
 =?utf-8?B?UEJqNWFFYU4zZ3Rwd0hSaDExN3BCK1VnRFBkT3dMWFliZEx0UFhqS3MwUlJ2?=
 =?utf-8?B?TWJFZ1VpcENPT3diTXRod2U0T3kxQUxYQ0ZqUDBmY2s2c0hsLzFtL0RlUlAw?=
 =?utf-8?B?OUJmM2x5NUhIbVlqMHNsL2FOazhLVGtRRSsvRUFHQ0V5NGpvMXYxbWRLQzA2?=
 =?utf-8?B?KzlGNGR0Ry9RQlZiTTVwQjNCbGJVSzRGUTV4b21JK2dEOFN2NmMvb3R3MUF0?=
 =?utf-8?B?ckpVNmt3NG9TRHFaeU1OQkpNTzlHVWhMWTZEY3ExYk5Vb3JsMThJcjdFWXlV?=
 =?utf-8?B?eEw4L25jY0tSV3ZWNEloeXNOR1JFTDJrMVRtaWxKM21abFZPZkprK2Z3cFJN?=
 =?utf-8?B?MEdIZGpBaU9qSll0RmRSZlBITFp3bE9YRVd1WUNGQVJkc2F4S1F3MTFiZ1BO?=
 =?utf-8?B?QkZxak5RZ0RoTXl4eEh2YUdZWmxJMURJOG44NVZ3emNER1ltek1oUzMxTDJE?=
 =?utf-8?B?c2hVWGVrb3lmNXJFMkticllXWlZIdytPUDFQTWgwaUZsTEhqdUdPNXBVNXpO?=
 =?utf-8?B?cU1GVHlLZUZFOXJ6M1hMQ2xZekord3B1eFNxbzNqVFVBeXNrK1NIUWNKWlpE?=
 =?utf-8?B?M3NueHIyQm1GV2dha3dxUjBKSHd0QXZlRjRSTXpsTUtFbW1iVy91RFFpUEVi?=
 =?utf-8?B?T2p4NlM0cDIzQnRmYTF2cFM0by9VQzc2elBmWGZ2SGZIR2VjeVUzM0lwZ1pQ?=
 =?utf-8?B?bjRCbG5pa3BoM2Q3M3Z4ZGVtYTEwd3grbjIraXhraHF3eTBkMldZd3YweHpE?=
 =?utf-8?B?bzJwczdoczBBWVp5VVBvUzBBUHpUWHpZcnhOaTJHZ3NmY0l6M0Rld2hyM1Rw?=
 =?utf-8?B?UG1sckRZS1pqaUFMS2o5YUxrNjViR3M1VVhSalFnRzl4V0dKdlJPYmw4R21n?=
 =?utf-8?B?dytYQWJ0QldJK0p1UG9QTFpzcjBVMHpNMXVTd1V2N3NueEdhTUlEbXA0Nllo?=
 =?utf-8?Q?zHFWf9C0Ne2gC?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR12MB8659.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cW8xd1o1Qm9UWlYyUXN0eXNaQ2ZWTEZ2Wk5kbHVYazZmNVJFRmdXSnZwUFU4?=
 =?utf-8?B?S3VaZHV1V21KSzRkR3luZEx5aldYcVRuc0dqdW0rNkVzVmFBelUwd0p2ajhs?=
 =?utf-8?B?M3Q0SUZvU3BnVjhEclIzVUxacDJERElyOHRYa2VJVFFkL2poMzhmLzZZVzM5?=
 =?utf-8?B?TVZnTDl1OHB5elF2dTNteTBCQjk3bWJPNnRPLzJNZDFRTW1HaXZCdlIxYXNL?=
 =?utf-8?B?aFJuQ0hhN1g3K3BZelR2bU43WDNCaFhYcW9xcDUrUVRhK3luRFlwT1k0MjUv?=
 =?utf-8?B?ODd5TWhFTkw0S0x0aHZmckJUend2RUgzZ0plQXNFWTBSUWlUem5rbmhxaWZs?=
 =?utf-8?B?NUttQmNteEdxVDhLMWE3YU5aRVZPY21rKzliUEs4eDZJaENabE9razNGK1F5?=
 =?utf-8?B?RWtyNmpIaWtyQU9zejc5VmZTWndTS0hVR25WYmVncEp3ZUJTRkNmT25WeFox?=
 =?utf-8?B?NTFGcDhBUDhrLzM0Zm93YkFjZ0l5d2lZeDJ6eDlJTmY4cVVTS0haOEc2ak01?=
 =?utf-8?B?aCtmQmk1ai9VRkd0akdEeGJZRS9UQllYV3BldHhYRFFqSzhlbkQvbXhZS2lQ?=
 =?utf-8?B?WVVHc0o3VGYvOVRLMDZKUGgrZktjSWd4WE8ycGczRXdFeUJmbzlmV2NsSzBY?=
 =?utf-8?B?bWs4Wm5WTnU1OUZsa3FvZzd1elVFcTh2Wk0yZEE1M01ORUN1UjdVRHlpVytX?=
 =?utf-8?B?d3NyWEpFOGxIa1ZhT2lrU2tEQURaWGVuTUQ5QmYycnBoejNMQVE2MGR0bXRF?=
 =?utf-8?B?OUZhMFlXejVvQkxiTzFsQktyNG9hM2dyUzZQaEdMSkVLUXpVUHpnV280UFdR?=
 =?utf-8?B?djlDbjhBeXFMY2VYYVhIalJEWHlZeGZwNDRuRWZNRG1uemJxY2NvYldlVm5G?=
 =?utf-8?B?L2JZRW5jbE5iQkNDK0RQb1pFQk5kSmpvbmxLR2tiSTI3d0ZwWEF1UVlJVDhW?=
 =?utf-8?B?eS84MDhqbGRnRkdGZGhiTGdsanlLQjZOQVRoVVBnQ3VIRDFMR0VBRkI1Y1BW?=
 =?utf-8?B?OGNPdjJhNS8yMituU0FZdVBhN09KOGdDN0NYNzd0MDhMVWpvVHg0VnRQSkZx?=
 =?utf-8?B?eWJyVlJDYjlLem1iWExWTzhNSjFnTklpeXQwd0Y4OUZjc2phS3dlaFcydU02?=
 =?utf-8?B?NnVORDgzVHVjVURoSTJRS0RGMzUvRnFrNEtjUlhvY2kzbWI4S3AwR3pSSlkr?=
 =?utf-8?B?ZEM5a0JXaVp4T3NtZUpsQnN4dkhMWklHMUZ5ajJhQ2tEanJDRm52dFpIbkU3?=
 =?utf-8?B?VXRqYnhzOXo0UDc2bUpjTXEyY2xmSE82QjVISnVBTXJyUDJKV1QrVVo4MXBT?=
 =?utf-8?B?V0JrSzVEOUp2bEttUDR2RDJucEdBeVJnSlUvRjdKWndvRkhpS1ZTaHorb1ZI?=
 =?utf-8?B?Z3YwTTFKaFVQUmRjYnBucVF3d2pKNnlnbE5VMjQ1YVlVQ0t2R1FRMWRzYnRa?=
 =?utf-8?B?Wk1ySFEzdGN5M3pCa3JJTW9yTStIN3pDbW0yY1RBR3dQUU5iT28wTXVTLzNp?=
 =?utf-8?B?NkQrWEJMeG9CdXI5K3Jqb09tK25hZ3QwdkNWYjdYL0RNOTNSKzBHNks0aHNL?=
 =?utf-8?B?cDIzeS9yOFJTcTFhMzZLa1lMSW0zUGs1TkxKM1djS1RJekVNeUgwaTZyd0VW?=
 =?utf-8?B?a0RlNkczb2tUeS9jTlhtcVVNNVpSTElNZGZrYWF4YUlGL1lROWZLa3F0SVBQ?=
 =?utf-8?B?RVB4L01TWlF4ODBXdHROek9wWW9FUVlxUGo1aUNGSENlWk52Tm9CdWFQbnRX?=
 =?utf-8?B?ZmZIOE1NOHlHaVpIWlE4VXpPS2Y0anlBcjZkYWhRTkFFdW5KdHFMUmg1YStv?=
 =?utf-8?B?L1pTeEhPWk1ueklQOHJLUmlyWHRMQW5wN25EMEZza2hFNVloOHNTSm5Pb0Nt?=
 =?utf-8?B?dnFFRGJnUE1CYTZwUFhMQ25tV3FNMUl6bDZST2w5NnNGek10aUVpM28wVk9X?=
 =?utf-8?B?K0IzSkg5MjlqMnlINWluem8ydVgwSDZ6eUhXOXZZdkJyOEF4UDdFMjRpMWZr?=
 =?utf-8?B?Yy95WUtQUms1MGxJOC9jblJ3YjA5c1d1cEpXK3JkK0MxK0tBeEsvS3lVT2FQ?=
 =?utf-8?B?UzBrcm9va2Q0bXZYTFcwWGExMXQrcmJVQmQrc3dtR2dXVjdEcGgzSURwMk5U?=
 =?utf-8?Q?Ts0ehWjDEUDsG9Hly8eR9gFvL?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee5bc05e-f14b-455a-9564-08dd3bc82c80
X-MS-Exchange-CrossTenant-AuthSource: CH3PR12MB8659.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 16:08:28.4663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2PAiP1Mi65r/3b5MhXyGKYV1QOhl+LqhUMIDFUHrTmkCA3As2MMd+sTDktZ8lUU9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6609
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 750523F646
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_9(-1.00)[40.107.237.61:from];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.61:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[Nvidia.com:+]
Message-ID-Hash: FBHSO7AC35UXPN2F5UOEOFV3ASFI36T4
X-Message-ID-Hash: FBHSO7AC35UXPN2F5UOEOFV3ASFI36T4
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Xu Yilun <yilun.xu@linux.intel.com>, Christoph Hellwig <hch@lst.de>, Leon Romanovsky <leonro@nvidia.com>, kvm@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org, pbonzini@redhat.com, seanjc@google.com, alex.williamson@redhat.com, vivek.kasireddy@intel.com, dan.j.williams@intel.com, aik@amd.com, yilun.xu@intel.com, linux-coco@lists.linux.dev, linux-kernel@vger.kernel.org, lukas@wunner.de, yan.y.zhao@intel.com, leon@kernel.org, baolu.lu@linux.intel.com, zhenzhong.duan@intel.com, tao1.su@intel.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 01/12] dma-buf: Introduce dma_buf_get_pfn_unlocked() kAPI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FBHSO7AC35UXPN2F5UOEOFV3ASFI36T4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMjMsIDIwMjUgYXQgMDQ6NDg6MjlQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gICAgTm8sIG5vIHRoZXJlIGFyZSBtdWNoIG1vcmUgY2FzZXMgd2hlcmUgZHJp
dmVycyBzaW1wbHkgYXNzdW1lIHRoYXQgdGhleQ0KPiAgICBhcmUgaW4gdGhlIHNhbWUgaW9tbXUg
ZG9tYWluIGZvciBkaWZmZXJlbnQgZGV2aWNlcy4gDQoNClRoaXMgaXMgYW4gaWxsZWdhbCBhc3N1
bXB0aW9uIGFuZCBpbnZhbGlkIHdheSB0byB1c2UgdGhlIERNQSBBUEkuIERvDQpub3QgZG8gdGhh
dCwgZG8gbm90IGFyY2hpdGVjdCB0aGluZ3MgaW4gRE1BQlVGIHRvIHBlcm1pdCB0aGF0Lg0KDQpU
aGUgZG1hX2FkZHJfdCBvdXQgb2YgdGhlIERNQSBBUEkgaXMgb25seSB1c2FibGUgYnkgdGhlIGRl
dmljZSBwYXNzZWQNCmluLCBwZXJpb2QgZnVsbCBzdG9wLiBJZiB5b3Ugd2FudCB0byB1c2UgaXQg
d2l0aCB0d28gZGV2aWNlcyB0aGVuIGNhbGwNCnRoZSBETUEgQVBJIHR3aWNlLg0KDQo+ICAgIEUu
Zy4gdGhhdCBkaWZmZXJlbnQNCj4gICAgUENJIGVuZHBvaW50cyBjYW4gdXNlIHRoZSBzYW1lIGRt
YV9hZGRyX3QuDQoNCj4gICAgRm9yIGV4YW1wbGUgdGhvc2UgY2xhc3NpYyBzb3VuZCBkZXZpY2Vz
IGZvciBIRE1JIGF1ZGlvIG9uIGdyYXBoaWNzDQo+ICAgIGNhcmRzIHdvcmsgbGlrZSB0aGlzLiAN
Cj4gICAgSW4gb3RoZXIgd29yZHMgaWYgdGhlIGRldmljZSBoYW5kbGVkIGJ5IHRoZSBnZW5lcmlj
IEFMU0EgZHJpdmVyIGFuZCB0aGUNCj4gICAgR1BVIGFyZSBub3QgaW4gdGhlIHNhbWUgaW9tbXUg
ZG9tYWluIHlvdSBydW4gaW50byB0cm91YmxlLg0KDQpZZXMsIEkgcmVjYWxsIHRoaXMgd2VpcmQg
QU1EIGlzc3VlIGFzIHdlbGwuIElJUkMgdGhlIHNvbHV0aW9uIGlzIG5vdA0KY2xlYW4gb3IgImNv
cnJlY3QiLiA6KCBJIHZhdWdlbHkgcmVjYWxsIGl0IHdhcyBjYXVzZWQgYnkgYSBIVyBidWcuLi4N
Cg0KPiAgICBXZWxsIGl0IG1pZ2h0IG5ldmVyIGJlZW4gZG9jdW1lbnRlZCBidXQgSSBrbm93IG9m
IHF1aXRlIGEgYnVuY2ggb2YNCj4gICAgZGlmZmVyZW50IGNhc2VzIHRoYXQgYXNzdW1lIHRoYXQg
YSBETUEgYWRkciB3aWxsIGp1c3QgdWx0aW1hdGVseSB3b3JrDQo+ICAgIGZvciBzb21lIG90aGVy
IGRldmljZS9kcml2ZXIgYXMgd2VsbC4NCg0KQWdhaW4sIGlsbGVnYWwgYXNzdW1wdGlvbiwgYnJl
YWtzIHRoZSBhYnN0cmFjdGlvbi4NCg0KPj4gVGhpcyBpcyBhbGwgRE1BIEFQSSBpbnRlcm5hbCBk
ZXRhaWxzIHlvdSBzaG91bGRuJ3QgZXZlbiBiZSB0YWxraW5nDQo+PiBhYm91dCBhdCB0aGUgRE1B
IEJVRiBsZXZlbC4gSXQgaXMgYWxsIGhpZGRlbiBhbmQgc2ltcGx5IGRvZXMgbm90DQo+PiBtYXR0
ZXIgdG8gRE1BIEJVRiBhdCBhbGwuDQo+IA0KPiAgICBXZWxsIHdlIHNvbWVob3cgbmVlZCB0byBz
dXBwb3J0IHRoZSBleGlzdGluZyB1c2UgY2FzZXMgd2l0aCB0aGUgbmV3DQo+ICAgIEFQSS4NCg0K
Q2FsbCB0aGUgRE1BIEFQSSBtdWx0aXBsZSB0aW1lcywgb25jZSBwZXIgZGV2aWNlLiBUaGF0IGlz
IHRoZSBvbmx5DQpjb3JyZWN0IHdheSB0byBoYW5kbGUgdGhpcyB0b2RheS4gRE1BQlVGIGlzIGFs
cmVhZHkgYXJjaGl0ZWN0ZWQgbGlrZQ0KdGhpcywgZWFjaCBhbmQgZXZlcnkgYXR0YWNoIHNob3Vs
ZCBiZSBkbWEgbWFwcGluZyBhbmQgZ2VuZXJhdGluZyBhDQpzY2F0dGVybGlzdCBmb3IgZXZlcnkg
dW5pcXVlIGltcG9ydGluZyBkZXZpY2UuDQoNCkltcHJvdmluZyBpdCB0byBzb21laG93IGF2b2lk
IHRoZSByZWR1bmRhbnQgRE1BIEFQSSBtYXAgd291bGQgcmVxdWlyZQ0KbmV3IERNQSBBUEkgd29y
ay4NCg0KRG8gTk9UIHJhbmRvbWx5IGFzc3VtZSB0aGF0IGRldmljZXMgc2hhcmUgZG1hX2FkZHJf
dCwgdGhlcmUgaXMgbm8NCmFyY2hpdGVjdGVkIHdheSB0byBldmVyIGRpc2NvdmVyIHRoaXMsIGl0
IGlzIGEgY29tcGxldGUgdmlvbGF0aW9uIG9mDQphbGwgdGhlIEFQSSBhYnN0cmFjdGlvbnMuDQoN
Cj4+IElmIHlvdSB3YW50IHRvIHBhc3MgYW4gSU9WQSBpbiBvbmUgb2YgdGhlc2Ugc3BlY2lhbCBk
cml2ZXItY3JlYXRlZA0KPj4gZG9tYWlucyB0aGVuIGl0IHdvdWxkIGJlIHNvbWUgcHJpdmF0ZSBh
ZGRyZXNzIGluIERNQUJVRiB0aGF0IG9ubHkNCj4+IHdvcmtzIG9uIGRyaXZlcnMgdGhhdCBoYXZl
IHVuZGVyc3Rvb2QgdGhleSBhdHRhY2hlZCB0byB0aGVzZSBtYW51YWxseQ0KPj4gY3JlYXRlZCBk
b21haW5zLiBObyBETUEgQVBJIGludm9sdmVtZW50IGhlcmUuDQo+IA0KPiAgICBUaGF0IHdvbid0
IGZseSBsaWtlIHRoaXMuIFRoYXQgd291bGQgYnJlYWsgYXQgbGVhc3QgdGhlIEFMU0EgdXNlIGNh
c2UNCj4gICAgYW5kIHBvdGVudGlhbGx5IHF1aXRlIGEgYnVuY2ggb2Ygb3RoZXJzLg0KDQpZb3Vy
IEFNRCBBTFNBIHdlaXJkbmVzcyBpcyBub3QgdXNpbmcgY3VzdG9tIGlvbW11X2RvbWFpbnMgKG5v
ciBzaG91bGQNCml0KSwgaXQgaXMgYSBkaWZmZXJlbnQgcHJvYmxlbS4NCg0KPiBkbWEtaW9tbXUu
YyBjaG9vc2VzIGFuIElPVkEgYWxpZ25tZW50IGJhc2VkIG9uIGl0cyBvd24gcmVhc29uaW5nIHRo
YXQNCj4gaXMgbm90IGFsd2F5cyBjb21wYXRpYmxlIHdpdGggdGhlIEhXLiBUaGUgSFcgY2FuIG9w
dGltaXplIGlmIHRoZSBJT1ZBDQo+IGFsaWdubWVudCBtZWV0cyBjZXJ0YWluIHJlc3RyaWN0aW9u
cy4gTXVjaCBsaWtlIHBhZ2UgdGFibGVzIGluIGEgR1BVLg0KPiANCj4gICAgWWVhaCwgYnV0IHdo
eSBjYW4ndCB3ZSB0ZWxsIHRoZSBETUEgQVBJIHRob3NlIHJlc3RyaWN0aW9ucyBpbnN0ZWFkIG9m
DQo+ICAgIGxldHRpbmcgdGhlIGRyaXZlciBtYW5hZ2UgdGhlIGFkZHJlc3Mgc3BhY2UgdGhlbXNl
bHZlcz8NCg0KSG93IGRvIHlvdSBwcm9wb3NlIHRvIGRvIHRoaXMgcGVyLW1hcHBpbmcgb3BlcmF0
aW9uIHdpdGhvdXQgaGF2aW5nIHRoZQ0KSFcgZHJpdmVyIGFjdHVhbGx5IGNhbGwgdGhlIG1hcHBp
bmcgb3BlcmF0aW9uPw0KDQo+ID4gU2FtZSBhcyB0aGUgbXVsdGlwYXRoLCB0aGUgQVRTLCBhbmQg
bW9yZS4gSXQgaXMgYWxsIHBlci1tYXBwaW5nDQo+ID4gZGVzY2lzaW9ucyBvZiB0aGUgZXhlY3V0
aW5nIEhXLCBub3QgZ2xvYmFsIGRlY2lzaW9ucyBvciBzb21ldGhpbmcNCj4gPiBsaWtlLg0KPiAN
Cj4gICAgU28gdGhlIERNQSBBUEkgaGFzIHNvbWUgc3RydWN0dXJlIG9yIHNpbWlsYXIgdG8gZGVz
Y3JpYmUgdGhlIG5lY2Vzc2FyeQ0KPiAgICBwZXItbWFwcGluZyBwcm9wZXJ0aWVzPw0KDQpOb3Qg
ZnVsbHkgeWV0ICh0aG91Z2ggc29tZSBtdWx0aXBhdGggaXMgc3VwcG9ydGVkKSwgYnV0IEkgd2Fu
dCB0bw0Kc2xvd2x5IG1vdmUgaW4gdGhpcyBkaXJlY3Rpb24gdG8gc29sdmUgYWxsIG9mIHRoZXNl
IHByb2JsZW1zIHdlDQpoYXZlIDooDQoNCkphc29uDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0
byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
