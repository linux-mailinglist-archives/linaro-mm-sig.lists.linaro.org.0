Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F2CA7B9CB
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 11:23:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7891A3EACD
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  4 Apr 2025 09:23:15 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2061.outbound.protection.outlook.com [40.107.102.61])
	by lists.linaro.org (Postfix) with ESMTPS id A6EDD3EACD
	for <linaro-mm-sig@lists.linaro.org>; Fri,  4 Apr 2025 09:23:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=RwJ5gwlI;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.102.61 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D1g/X8nTOaa051jiSUHzep0ehm6Eu8Bu7LGS3cyW61jy0IEwgxsAL8wb/yfn6/6XtEZ5kOtHX3d34csLXUrzRVmiN5IHFLyfwbTZIGIrQK8JbHlmccsUdD/+Hrmmzl6MPlcvV3HcsKFlAhNuJYmEVEmg4btINGxW5q5J1btn8uzfT1gQMCRr7onlSPbqUguTSuwIMD1Qv9kUX7/5gAGctAeeoIs1kIKGnHfNCtrKvNT6adZkg4MwO22iLKMaHfFDU3J+BgiL5rba2YPreM4KmkI0rm9yOA7GdZ0aE9ilptM47ztwvkvnHAQNDkrEWsEyH5RSBdzAfEJAeh2T3eKbBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IahQYpUaTjdTl01s9AEYdaBJOStptk6H9xJm4InvGZk=;
 b=I4Jd+I1zdMDf2xgXk0cG1SyTobmJeS+rAzlH+Feko+OBhKOLqS8mc8SD1OicVyKXLPzUkbkmBR9Tb5nqJ2n9QPpI3VJLr+F0LxMpJzEYNSMgUiD6rJuyrztnx2cgrqlLUtEqoXwm7WbxQKNeAowsNbNJzc8e+3IDH7qK1NeqbyWhhTjj/5SFOszP7nr+oGddAB/9ES2gISFR2uLOubzz2Jr8rAUBafkXqI2RWFkzBvH5BwrZb+RdfEXdlSYpYXtMCVnYbwgtRaaTA3WWQ1mQnyhe72a5BKcfEj9Gs5DgGzEFV8FFihs2rQ+q0FcsWHdUQzaStqTVpMKgZzQCuSRJhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IahQYpUaTjdTl01s9AEYdaBJOStptk6H9xJm4InvGZk=;
 b=RwJ5gwlIp+e6SQVrWZzdTroF9Xv+Vh9TQnI9OeY1D6Dv4JT+Zz3s66sAxIRLJLGLyV/7bVVq1NP14ch4SeDEE4IIggQRg9y0QIg6AIhPLHM2B4J2EXpeR8pppUr5lL9Xbejz5r6LX+AMsTzxmXU8fpPiJyDIgPXaJ/W+s1ws/xg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CY8PR12MB8243.namprd12.prod.outlook.com (2603:10b6:930:78::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 08:39:58 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%5]) with mapi id 15.20.8583.041; Fri, 4 Apr 2025
 08:39:58 +0000
Message-ID: <aaeb5ecb-5ad2-4acf-a48d-e24e29f53bd5@amd.com>
Date: Fri, 4 Apr 2025 10:39:53 +0200
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>
References: <5dbd6105-3acf-47ad-84d6-2920171916ac@stanley.mountain>
 <0e832ed8-9692-43ba-869d-8db3b419f3a9@amd.com>
 <03c838ab-3bc8-4e5a-9f0a-331254701b0c@stanley.mountain>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <03c838ab-3bc8-4e5a-9f0a-331254701b0c@stanley.mountain>
X-ClientProxiedBy: FR4P281CA0074.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ce::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CY8PR12MB8243:EE_
X-MS-Office365-Filtering-Correlation-Id: c7612ca4-2352-4bf9-6061-08dd735447de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
 BCL:0;ARA:13230040|1800799024|366016|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: 
 =?utf-8?B?bFZJa2ZmTTRJeFZPREFqZjRhOUkzem5VUkZKdDUwVXJ1M1ZEdDNyK3NwSE5w?=
 =?utf-8?B?MUl1ck9nMUc5d1FaUnBuL2lhV0dvU3BYSnB5cW9iQTlabG5lbm5XVlkzZ1NY?=
 =?utf-8?B?cjNqOFljemp4TW1WVUdpdU1RK1U1N0hKN3pBam4zeEp2emxWN2JleSt3S3U3?=
 =?utf-8?B?OC8xcVc0SjZndWZXd3lGVlpaZEFTZzNxcDZidnVWZjI4UGR5L0tmdUVsbFY0?=
 =?utf-8?B?UFpML2xOYzF5VFlnMklSc05HVlJtVXpCZ21aWm8xOGFlS0VmNWN1bG1ON2tB?=
 =?utf-8?B?NDRPZWRWc1huNEFxUDcyenNhUC9LU0s4UXF3OElGbVdnd21HVVJqWHpLUUIr?=
 =?utf-8?B?TWY0ZzFNQWI3a2gyYzBRUjA3Qk9lakhNU05FK1NIbTdRQ0ozMkNLeTFOOVlq?=
 =?utf-8?B?bzdGOC9yMndrZ2tGVXF2QTNQb0lkNjhQU1pyWERDT3Y1b29JbnM0QUxmSUs3?=
 =?utf-8?B?UWRYSXFhWnp0YmVVLzMxVFNLbmRZekNwU0E1M1BSUkFhRkIyR09qb0VOY0JM?=
 =?utf-8?B?V0hmTUVXQ2RFQjBINW5EYWZaM3hsRGMzczFkd2ltN3ZpRm5RSlFPU1ZVYUdU?=
 =?utf-8?B?d2trUFQrM1FzVUZvNFhiczNsKzcyQ2VNU001ZTZiRjlLRnMxb01jcDBZVEFD?=
 =?utf-8?B?cHA1ZzlMSGpIN0R6RjNLeUhUNzRUMGpyQm9nSnIwL0o5b2d3VElrS3hqTTIz?=
 =?utf-8?B?TUlKNHh4RVlHRFZNQVY4K21RSUxBZTJRMGM3VjFaN2NTN1N5UFRvVGR3Z0FR?=
 =?utf-8?B?czU5V1dWSFJoMUYvL2hLNmVYaWZvZGI2OHFPeFhLdG5xbmdiVDBxZnRlWEVw?=
 =?utf-8?B?bURBUzlHdFg4WlZKbkRtQk5TUTZkZVh0TFlmSDF1UUlDblFKbHRaSzRvNldU?=
 =?utf-8?B?MjQxNWhwd3hkUUdTK0FMVE0rZlUycjNoYWxha1FxemdnQkZpK0FzbzlPZkl6?=
 =?utf-8?B?ck52QjUrK1ZMY3BFS29jUkh5WDhpNGNoUjgyckpjYWYxa0VyWUg1cWhqNmtI?=
 =?utf-8?B?SkRMbVByMG5JbnFvOWVHcmU5QStRYmtjZEJ3Y3AvYU1JUmYyaUJuaHlPSGY3?=
 =?utf-8?B?T3h1a2pleTNHRzM3a0Q3V3RDWXU2NGFSL0RBMEZDRVZZU2lJeExiOGpzUThq?=
 =?utf-8?B?bW53OGVZVklCZnU4cy93OVVhbkR5STE2RUFHcWNJYXYyQkgyY2RMWEtwUnE4?=
 =?utf-8?B?bitiUy9hUWZzTGlrTk9ES3BSOFBjMUlLUk9YS2hET2ZiZGpTS3ZRNkgyQStH?=
 =?utf-8?B?R1FJVU8zeDdwTGVHNXcwZnBmRmtBYUhXL2JwcUxMaHVCNnZTT0tRR3FHMmVK?=
 =?utf-8?B?ZVVxUHF6Qll0ampBYTl2MVg1WDBuR2xiUFlubThKNXNDaFZmYVJBQjNObHIr?=
 =?utf-8?B?VDUvK2QrNEw1QzdJaE5RTHR4S1MzSWR5K3gwc0dIQUlYQjl3eDYvd1hVQzgv?=
 =?utf-8?B?cy9TNDRuVE82S3ZyRzdpeHcwWUVaNU5WN1gwT0pOd0hEdjZTRGUwQnN1emE3?=
 =?utf-8?B?c20wYVIwSDc3NjJxVXIyRFRzOHMxeFlwbkFTSktiT095RVdTOE9uNHk5MXo4?=
 =?utf-8?B?bVNJcjF6SzhDWWsvSmpRNEUvK0hMbkppV1QrSFhIQ3BpeWNzaEMxSXNTMi9T?=
 =?utf-8?B?Snd0TFpaay9oUzJ3UThybTBoc2NIWTJwZVhCejBXRkxsNVZqTjlwR2F5S1Vo?=
 =?utf-8?B?bTg4aDJkM3lmWE9SQk1FUnJSOTFtVWhBak14V3RnWUFyQmdzdDRGN1k1RXlO?=
 =?utf-8?B?ZndYOFdnckwveDZBT0pNeVpCQ0JEOTMrU0xhVTBqdFJkbzBDZ3JTZFNvV0Iz?=
 =?utf-8?B?WWFwK290UndBOExJSENLOFJ2cjNGb2tsYmxaNFJQUjJFMC8vTndKejB1bjlL?=
 =?utf-8?Q?pi6kX0b7nt7P6?=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?dkpBM2JhdTM1czE0TEFHNGZNQzB0YlB6cE0ybmR6NTFTNVFUM2ROelJCeDNG?=
 =?utf-8?B?alZoUlc3TUUrQ0luQjNNZjFtVTMyenl0YWlQSUlMNFR1dFF4RVVZVm53TCtk?=
 =?utf-8?B?NUJndnBBbDdSQ1JyMW9EL3VBSFlmS1JRcTMva2hEbkw5YTJyNFY5WjZMZlFK?=
 =?utf-8?B?a2UyeVNmUUdPVHRkY1Zma1R5ZFpQa3NGV2R0bkZoZFptSlYrd1NwSU9UTDFh?=
 =?utf-8?B?eTdKZXhpMnRpQmZhbnpNSml6RXVWaW9BcUZ2M3NxcUJ1cXpCOGFxU2lsdTVW?=
 =?utf-8?B?N3Nob2hOeE5sa3FwL3h2c2RMd1hzek5iTHZKK2MrY2JjMndNY0NZSFVCNUp6?=
 =?utf-8?B?endUV2VYZmdWNmppT0YvRXVRWGwzR2Jtb2ZUc3d5dmhHVmRoWlhET2lyTDJP?=
 =?utf-8?B?UXVjbEE3YjgxNTUyV0k2LysvcjlVdksrSmRSQS9WWER0bCs3S3hiYXVGTnJ6?=
 =?utf-8?B?UmFPOG1HOXlWc1V0ZzNtT2lqK0tiMnQrOWtMQndic25iVVQ3eCtTWUNGUDZr?=
 =?utf-8?B?MXlZZW1FZTNrK29HNW9wZUhhTnRGL3NDTDh2ajQrSmI5V3kyZkxRaUF3RGVL?=
 =?utf-8?B?ajVhdGxRUzhoM2hsUmk1TklXMU0zS1JTQ3Fwc1BYaUEwZDR5dDN4UzlzVTFy?=
 =?utf-8?B?Qm12Nkp1WDZ6Q04vTkxlUWduTG83a0M5RWR0dTdTV2QzSGhBSVV2WERaUitq?=
 =?utf-8?B?TkhJWXk0Si8rSndqZk9na0kzalpkU3J0Vm1YMEFSVkx0ZlREdjJaeHNSU0tu?=
 =?utf-8?B?V2U2T1I4TXIwckVSSDBzZlRzMFBvK0I5QXhXTS93VlFuaHhTQVdxVHkzdlMv?=
 =?utf-8?B?WXRUai9lYkhWK3UrVnZ2SHRXV3VRZ1Y0NlJFT2pTOGlqV2F6MU96WU1KbUs4?=
 =?utf-8?B?RWVpYXpOYjBFdHl0VUE0RVd3RXBkdVljdXdNSXBKNkNPVGhXenZLalNFdVZL?=
 =?utf-8?B?SFBPQmVRamoxalhXd1Y3Z2hCMEdqWFEzQVJNT3lQRkFuSElHUDRONlk4TnRV?=
 =?utf-8?B?M2F0Z2dxME9pbG1ISDNkclVPMUhZTGlDcFNiRkNsdHhkdFdBZDA2NDM1NXZ3?=
 =?utf-8?B?bUROalBicFJhK0lxOGtFWUZsUks0ckdtT09SUWRJVDBENk9IVE5JcWtXRG5P?=
 =?utf-8?B?cVFpUENzOGViWC9DdDFUQUtQL3hXaVpKcHNoU293S2p6VnRXaFNBRE5ERS90?=
 =?utf-8?B?djN1WUFKVEJpLyt4UUpZN3lBb3NJK3FOanRHMGl4RXE4MGE0V1hOWHFQVFNW?=
 =?utf-8?B?NDRwc0kxdzhJWWNHek1OOTAwbytjT1lkRk90YllWU1ZYbUNMKzVTdnJacGRx?=
 =?utf-8?B?VlowWUdwQzVCWnVtNkVBSU1Iekg2TGYwVmF0MW5NeXNudE5DTWx3Tkl0ZzY2?=
 =?utf-8?B?b2hBRkFiMk14c3RlTWR4Y1g5U01LaVorc2lkYU9iMXpXeFNvTSt6ZWtaczZP?=
 =?utf-8?B?d3FUNVpTUC9MTS9Ja0NQUVZuNnZ5SE8wUm1nVmx5bHh5WGNBSmJiaE04eFJk?=
 =?utf-8?B?TWJ6bDBHOU9WcnZtdCtQWGwwVk1NWis5WFpVTlJvOVQ0YUJoOCtFQldxUlIr?=
 =?utf-8?B?Rk1PN3lGbkFBa1Axem4yZmF5a0tHSmtoajgwV01SYWNRV2VlcmhWeEU0NGx0?=
 =?utf-8?B?MFl6dXdUMzkraHluc1ZMTm5xelhXSytkNFVKT2hIbEN0WVg2RUxkVkpHcE1J?=
 =?utf-8?B?Smd2dDhqd3hKMUZ6Z2NHV0ppSkRBRnA3a2U1czBsSnBJYUwrazBkOG10NUts?=
 =?utf-8?B?VEl4dnRwNTQ1YklxVlZYRTQ0NFpTVnVuZjlUS21lWlpHM0N3RW9KK2w2VFVU?=
 =?utf-8?B?djZIcDlMd2RLSEJjNTlBWDBEQWQ2MW5wbXMzNEtpN3N3SWRxZ1ZQeUNld09k?=
 =?utf-8?B?VUxLMzhsdFRHaVBsWk8rcEVZaEM0M0d1aS9VaFdOcmZmanI5QzhZdXB0cisx?=
 =?utf-8?B?L3JxMWc3YXVycHN6anpYZE9Tc09HWHBjT2lyVVN0eVJIeThzVHgxU2VibGt4?=
 =?utf-8?B?TU9LaGVUZDBBaFllUmpKSWZENVRtZ1MyeGRSeXNhQlNhWDN6MHB2aXZtYkJw?=
 =?utf-8?B?UVdmOGo5bThUMG55M2FLTHRoUHhjamtBeER5dmlGdmtiT1NtZHpWckVTdWxs?=
 =?utf-8?Q?xo9I=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7612ca4-2352-4bf9-6061-08dd735447de
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 08:39:58.0941
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wYDmkUhHSBdy+UsgsA3kj1pbCTZnM37l3qmIt3FTWTyHidftLP6DrmjiBLI5HgdZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8243
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.102.61:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,NAM04-DM6-obe.outbound.protection.outlook.com:helo,mail-dm6nam04on2061.outbound.protection.outlook.com:rdns,amd.com:dkim,amd.com:mid];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RBL_SENDERSCORE_REPUT_BLOCKED(0.00)[40.107.102.61:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A6EDD3EACD
Message-ID-Hash: VRX7FYH73Y3HBD64VM4G25YYJTRVFX6K
X-Message-ID-Hash: VRX7FYH73Y3HBD64VM4G25YYJTRVFX6K
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Dmitry Baryshkov <lumag@kernel.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/sw_sync: Decrement refcount on error in sw_sync_ioctl_get_deadline()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VRX7FYH73Y3HBD64VM4G25YYJTRVFX6K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW0gMDQuMDQuMjUgdW0gMTA6Mjcgc2NocmllYiBEYW4gQ2FycGVudGVyOg0KPiBPbiBNb24sIE1h
ciAzMSwgMjAyNSBhdCAwMjowMjo0NFBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0K
Pj4gQW0gMzEuMDMuMjUgdW0gMTE6NDUgc2NocmllYiBEYW4gQ2FycGVudGVyOg0KPj4+IENhbGwg
ZG1hX2ZlbmNlX3B1dChmZW5jZSkgYmVmb3JlIHJldHVybmluZyBhbiBlcnJvciBvbiB0aGlzIGVy
cm9yIHBhdGguDQo+Pj4NCj4+PiBGaXhlczogNzBlNjdhYWVjMmY0ICgiZG1hLWJ1Zi9zd19zeW5j
OiBBZGQgZmVuY2UgZGVhZGxpbmUgc3VwcG9ydCIpDQo+Pj4gU2lnbmVkLW9mZi1ieTogRGFuIENh
cnBlbnRlciA8ZGFuLmNhcnBlbnRlckBsaW5hcm8ub3JnPg0KPj4+IC0tLQ0KPj4+ICBkcml2ZXJz
L2RtYS1idWYvc3dfc3luYy5jIHwgNCArKystDQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4+Pg0KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvc3dfc3luYy5jIGIvZHJpdmVycy9kbWEtYnVmL3N3X3N5bmMuYw0KPj4+IGluZGV4IGY1
OTA1ZDY3ZGVkYi4uYjc2MTVjNWM2Y2FjIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1
Zi9zd19zeW5jLmMNCj4+PiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jDQo+Pj4gQEAg
LTQzOCw4ICs0MzgsMTAgQEAgc3RhdGljIGludCBzd19zeW5jX2lvY3RsX2dldF9kZWFkbGluZShz
dHJ1Y3Qgc3luY190aW1lbGluZSAqb2JqLCB1bnNpZ25lZCBsb25nIGENCj4+PiAgCQlyZXR1cm4g
LUVJTlZBTDsNCj4+PiAgDQo+Pj4gIAlwdCA9IGRtYV9mZW5jZV90b19zeW5jX3B0KGZlbmNlKTsN
Cj4+PiAtCWlmICghcHQpDQo+Pj4gKwlpZiAoIXB0KSB7DQo+Pj4gKwkJZG1hX2ZlbmNlX3B1dChm
ZW5jZSk7DQo+Pj4gIAkJcmV0dXJuIC1FSU5WQUw7DQo+Pj4gKwl9DQo+PiBHb29kIGNhdGNoLg0K
Pj4NCj4+IEkgdGhpbmsgaXQgd291bGQgYmUgY2xlYW5lciBpZiB3ZSBhZGQgYW4gZXJyb3IgbGFi
ZWwgYW5kIHRoZW4gdXNlICJyZXQgPSAtRUlOVkFMOyBnb3RvIGVycm9yOyIgaGVyZSBhcyB3ZWxs
IGFzIGEgZmV3IGxpbmVzIGJlbG93IHdoZW4gcmV0IGlzIHNldCB0byAtRU5PRU5ULg0KPj4NCj4+
IFRoaXMgd2F5IHdlIGNhbiBhbHNvIGF2b2lkIHRoZSByZXQgPSAwIGluIHRoZSBkZWNsYXJhdGlv
biBhbmQgbGV0IHRoZSBjb21waWxlciBhY3R1YWxseSBjaGVjayB0aGUgbGlmZXRpbWUgb2YgdGhl
IGFzc2lnbm1lbnQuDQo+Pg0KPiBJIGhhZCBzb21lIGlzc3VlcyB3aXRoIG15IGVtYWlsIGFuZCBp
dCBzaWxlbnRseSBhdGUgYSBidW5jaCBvZiBvdXRnb2luZw0KPiBlbWFpbCB3aXRob3V0IHNhdmlu
ZyBhIHNpbmdsZSB0cmFjZSBvZiBhbnl0aGluZyBJIGhhZCBzZW50LiAgSSBzZWUNCj4gdGhpcyB3
YXMgb25lIHRoYXQgd2FzIGVhdGVuLg0KDQpZZWFoLCBBTUQgaGFkIHNpbWlsYXIgcHJvYmxlbXMg
d2l0aCByZWNlaXZpbmcgbWFpbHMgYXQgdGhlIGJlZ2lubmluZyBvZiB0aGUgeWVhci4NCg0KPg0K
PiBVbndpbmQgbGFkZGVycyBkb24ndCB3b3JrIHJlYWxseSB3ZWxsIGZvciB0aGluZ3Mgd2hlcmUg
eW91IGp1c3QgdGFrZSBpdA0KPiBmb3IgYSBsaXR0bGUgd2hpbGUgYW5kIHRoZW4gZHJvcCBpdCBh
IGZldyBsaW5lcyBsYXRlci4gIFN1Y2ggYXMgaGVyZSB5b3UNCj4gdGFrZSByZWZlcmVuY2UgYW5k
IHRoZW4gZHJvcCBpdCBvciB5b3UgdGFrZSBhIGxvY2sgYW5kIHRoZW4gZHJvcCBpdC4NCj4gTm9y
bWFsbHksIHlvdSBjYW4gYWRkIHRoaW5ncyB0byBhbnl3ZXJlIGluIHRoZSB1bndpbmQgbGFkZGVy
IGJ1dCBpZiB5b3UNCj4gYWRkIGFuIHVubG9jayB0byB0aGUgbGFkZGVyIHRoYW4geW91IHRvIGFk
ZCBhIHdlaXJkIGJ1bm55IGhvcCBpZiB0aGUgZ290bw0KPiBpc24ndCBob2xkaW5nIHRoZSBsb2Nr
LiAgSXQgZW5kcyB1cCBnZXR0aW5nIGNvbmZ1c2luZy4gIFdpdGggdGhhdCBraW5kIG9mDQo+IHRo
aW5nLCBJIHByZWZlciB0byBkbyB0aGUgdW5sb2NrIGJlZm9yZSB0aGUgZ290by4NCg0KWWVhaCwg
Y29tcGxldGVseSBhZ3JlZS4gVGhpcyBpcyB1c3VhbGx5IGFsc28gYSBnb29kIGluZGljYXRvciB0
aGF0IHNvbWV0aGluZyBzaG91bGQgYmUgaW4gYSBzZXBhcmF0ZSBmdW5jdGlvbi4NCg0KQnV0IHRo
aXMgY2FzZSBkb2Vzbid0IGFwcGx5IGhlcmUsIGRvZXNuJ3QgaXQ/DQoNCkkgbWVhbiB0aGUgc29s
dXRpb24geW91IGNyZWF0ZWQgYmVsb3cgaGFzIGEgZmV3IG1vcmUgbGluZXMgb2YgY29kZSwgYnV0
IGlmIHlvdSBhc2sgbWUgdGhhdCBpcyB3YXkgbW9yZSByZWFkYWJsZS4NCg0KVGhlIC1FRkFVTFQg
ZG9lc24ndCBuZWVkIGFueSBjbGVhbnVwIGFuZCBjYW4gcGVyZmVjdGx5IHN0YXkgc2VwYXJhdGUg
YXMgZmFyIGFzIEkgY2FuIHNlZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4NCg0KPg0KPiBmcmVl
X2M6DQo+IAlmcmVlKGMpOw0KPiAJZ290byBmcmVlX2I7ICA8LS0gYnVubnkgaG9wOw0KPiB1bmxv
Y2s6DQo+IAl1bmxvY2soKTsNCj4gZnJlZV9iOg0KPiAJZnJlZShiKTsNCj4gZnJlZV9hOg0KPiAJ
ZnJlZShhKTsNCj4NCj4gCXJldHVybiByZXQ7DQo+DQo+IHJlZ2FyZHMsDQo+IGRhbiBjYXJwZW50
ZXINCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9zd19zeW5jLmMgYi9kcml2ZXJz
L2RtYS1idWYvc3dfc3luYy5jDQo+IGluZGV4IGY1OTA1ZDY3ZGVkYi4uMjJhODA4OTk1ZjEwIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvc3dfc3luYy5jDQo+ICsrKyBiL2RyaXZlcnMv
ZG1hLWJ1Zi9zd19zeW5jLmMNCj4gQEAgLTQzOCwxNSArNDM4LDE3IEBAIHN0YXRpYyBpbnQgc3df
c3luY19pb2N0bF9nZXRfZGVhZGxpbmUoc3RydWN0IHN5bmNfdGltZWxpbmUgKm9iaiwgdW5zaWdu
ZWQgbG9uZyBhDQo+ICAJCXJldHVybiAtRUlOVkFMOw0KPiAgDQo+ICAJcHQgPSBkbWFfZmVuY2Vf
dG9fc3luY19wdChmZW5jZSk7DQo+IC0JaWYgKCFwdCkNCj4gLQkJcmV0dXJuIC1FSU5WQUw7DQo+
ICsJaWYgKCFwdCkgew0KPiArCQlyZXQgPSAtRUlOVkFMOw0KPiArCQlnb3RvIHB1dF9mZW5jZTsN
Cj4gKwl9DQo+ICANCj4gIAlzcGluX2xvY2tfaXJxc2F2ZShmZW5jZS0+bG9jaywgZmxhZ3MpOw0K
PiAtCWlmICh0ZXN0X2JpdChTV19TWU5DX0hBU19ERUFETElORV9CSVQsICZmZW5jZS0+ZmxhZ3Mp
KSB7DQo+IC0JCWRhdGEuZGVhZGxpbmVfbnMgPSBrdGltZV90b19ucyhwdC0+ZGVhZGxpbmUpOw0K
PiAtCX0gZWxzZSB7DQo+ICsJaWYgKCF0ZXN0X2JpdChTV19TWU5DX0hBU19ERUFETElORV9CSVQs
ICZmZW5jZS0+ZmxhZ3MpKSB7DQo+ICAJCXJldCA9IC1FTk9FTlQ7DQo+ICsJCWdvdG8gdW5sb2Nr
Ow0KPiAgCX0NCj4gKwlkYXRhLmRlYWRsaW5lX25zID0ga3RpbWVfdG9fbnMocHQtPmRlYWRsaW5l
KTsNCj4gIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7DQo+ICAN
Cj4gIAlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4gQEAgLTQ1OCw2ICs0NjAsMTMgQEAgc3RhdGlj
IGludCBzd19zeW5jX2lvY3RsX2dldF9kZWFkbGluZShzdHJ1Y3Qgc3luY190aW1lbGluZSAqb2Jq
LCB1bnNpZ25lZCBsb25nIGENCj4gIAkJcmV0dXJuIC1FRkFVTFQ7DQo+ICANCj4gIAlyZXR1cm4g
MDsNCj4gKw0KPiArdW5sb2NrOg0KPiArCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoZmVuY2UtPmxv
Y2ssIGZsYWdzKTsNCj4gK3B1dF9mZW5jZToNCj4gKwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsNCj4g
Kw0KPiArCXJldHVybiByZXQ7DQo+ICB9DQo+ICANCj4gIHN0YXRpYyBsb25nIHN3X3N5bmNfaW9j
dGwoc3RydWN0IGZpbGUgKmZpbGUsIHVuc2lnbmVkIGludCBjbWQsDQo+DQo+DQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
