Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E54BCCB868C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 10:18:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4CEA3FDAE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Dec 2025 09:18:01 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010065.outbound.protection.outlook.com [52.101.56.65])
	by lists.linaro.org (Postfix) with ESMTPS id AC9943F837
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Dec 2025 09:17:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=3b+nAG9G;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.56.65 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kPVusYXZdaS+mddzTExh/B1Wjb7ak8YbsiNiZtHQ29g7jY+k3WF0cD8jJTfQzs+HEKBXESDnJQ689fbVNNbTHG04Jikz5jdm0SXqmfojq4Pd7I+cbKMcLmRcZwdD7SdZBMYTKIl6kkHMsjnY9UPZEfr6vwJs/NGYZnxzYgEmxrvIx2X8S8FxUXIRAcovVi77/KvSGjoZgn4rQk312bZdxCJh00Md/Ryowi9Nj0ZDJCfoT4p/9Yce4tQ5j4EQHfk8zCa4n4QFeXZ+zKAm2pq7NHXgFNVZhFIvl4Y62e4z+B6YGoNH+lwh7ZKmr2pRvU/nZNMdOv3b9zwwkgsP8tEA1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D4KVpBPRh1a8vbN28jTcq6RVrTqFK46QJRpE/aCkdAM=;
 b=e3lkYbvgWgrpv/3uNHb0P9IXz+ngoy2FbqBL4u84xM+GV6gsYAV5UYPQ0GJsiqwM56ZRMS9VT6r+HWaQAkKrnSQir7LP2m3JVpGoS1S8o+210KZp4DCPGZYK1BDbcJMup5+jC8x6BHNBefReZ0nP+WqoVQUS9N16c1gyDtSUeUe8g0h5s7zB0IapG1wgcnVQUgVv+t2xLodsPjbEA0obY01Ae3AG+EDwo7GplIx7XHeKkuFba91fagmo0AWUfzIbxfzGL3joR5kNkca66FRKQGqC8W7UVi4Ou0URy//s+WKwnU9J+bfxgYKyziJkFDR7diHlzO8WbTe7/Si318u9uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4KVpBPRh1a8vbN28jTcq6RVrTqFK46QJRpE/aCkdAM=;
 b=3b+nAG9GWJHYAhvAgo9KS0Xrv9nCakG5CEbSim/e5KirF8LMFu+mPBZYyUKPwnY4mVSizfrepEdkjCFMdPiFGYHPpiWF3mDjPXPCatu+spbNLEXScHpZHn9aNFEGNKw2nNwn9JCdeGuq1wHbo7Vv+wV4fYShUvhbwvn7lmNQuco=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS7PR12MB8292.namprd12.prod.outlook.com (2603:10b6:8:e2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 09:17:37 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:17:37 +0000
Message-ID: <ee754704-f81c-42da-955f-bce0b2f6a574@amd.com>
Date: Fri, 12 Dec 2025 10:17:32 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, tursulin@ursulin.net, matthew.brost@intel.com,
 sumit.semwal@linaro.org
References: <20251211122407.1709-1-christian.koenig@amd.com>
 <34407595c6ffb9cff3e00736b1256abb75c1adef.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <34407595c6ffb9cff3e00736b1256abb75c1adef.camel@mailbox.org>
X-ClientProxiedBy: BN0PR04CA0164.namprd04.prod.outlook.com
 (2603:10b6:408:eb::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS7PR12MB8292:EE_
X-MS-Office365-Filtering-Correlation-Id: 18f698e8-7b3c-4a3a-46f5-08de395f4ac9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bEZraTRSWWF4c1JuVkR5ZUJzMzloNGlRVjJzbTBWZDZ1NmJPZUxha3ZRbGli?=
 =?utf-8?B?clZuWFNlYWtUaTJ2dkp2UXdxeWRjQm1zTktueTFWYld4LzIxb0hHbmZ5Z3l6?=
 =?utf-8?B?cm44OEhkYytHeXcyZDFteGxoVTBNTnBjVXE4ZTIrZWZKdHB6eUVPNUp6dUc5?=
 =?utf-8?B?WWFaZUpSaWU2OWJuenZTL2JtMktHUWNOOGE0eVJOZjJnd0tMSG1UQmZFbGdJ?=
 =?utf-8?B?MVNSOFVMRWcxcEt0UG50VWFEM3FTLzJzanlGa1hPaGFuNSs0Q1JnaGQyNlJn?=
 =?utf-8?B?RGVITFdobU4yUlY4eC9RQU9wMVh2cVYwV0RTS1lBSHNtNUJlQ3JmaHBWbXQy?=
 =?utf-8?B?MjNWNUtxdENhRi9yZzg5Tmd6dXV5c2g2QmpiZVJYNmlmN1o5RThqUlRYZ1BM?=
 =?utf-8?B?ZlM0bnNWSlkvQlNqY1FLbEZmd0tPcmRmM2ZzckU3ZTRtMlFSanVWT01Ic0dp?=
 =?utf-8?B?RmI5V2thTnpodDZtaWt2S2h3QWpSbHEydC9NVkJVeG5nUmNGUmNsTC9Gd25s?=
 =?utf-8?B?VlRmcHdaZ0VYdU52RzJCYWZOUTFlb0pCbTZ4NXlqektkbEFqenVNcGw5Nzc2?=
 =?utf-8?B?YllOQ0wxdXRLVmFITEVQWkZGc09pSk5Ca2ZVMG8wTWJJVTRYRnA1MVpvVzZk?=
 =?utf-8?B?VFJjUkhxMHFkRkVTUmRZZk9IdHpBYmdyWmRIZGhYV3c2c09QZWYvYkEvZkQy?=
 =?utf-8?B?L0l5WWQ3OWZodjJ0VkpoVjBTdFZxL2NINWxzVGxEKzJ5MEVKNHp5ZGtJT0Vx?=
 =?utf-8?B?dVRQZXJQcEJVdmU2OWxSQUlzaVNFYVl4WC9jZURhUDhFUWRBUVNwblFiRDZU?=
 =?utf-8?B?aXVqeWxGWEp4L2tvcXJXd3k1dkdPek9MVkRWN0RnV3lKQ2h3bmdMSTE1OW1J?=
 =?utf-8?B?clZjekUvNjRNZXFlTFJDMFMyNmgzNHAwYmF4YXJ6a3kzRmwwWXVOSVhPekc5?=
 =?utf-8?B?Z211em9VNzNSaGNwZUR5MmRjYVFDcXl5K3hWOHhRQmc5dlMyTU9QUXBBd0M4?=
 =?utf-8?B?emJYNkwybXRraWEva25iM2lSdDV2SDdQbExzaDQyY0tjci9mUnpZK3lVT3Nl?=
 =?utf-8?B?TDBTZEEzN09IT2k5QlZnVk8wQURjeWZQbHhsUmNPUnNZM1V3VXRkRnRzc0U4?=
 =?utf-8?B?bjN4QTdXRFhxM3lPVXFXSWVYOTdoYVg0RTRCbFNaODVGOUlsQnBvOFU3VjBC?=
 =?utf-8?B?RWpJMVIza0lNVkZpN2hSNmJlZ25jeXh6RUd1TzI3MEF0cHVJM25yd1NPakE1?=
 =?utf-8?B?TllQSkROT0JXaFZkM3V1emtLbVRjWnp1QndJb0JpNUhESGRlVlFSTm5zL1J4?=
 =?utf-8?B?TDdURGdVeUh3K2VNWkJHNDVqbm9KZFRVRWNSNkFPNVlUOGVZeW82Y1ZQTHR2?=
 =?utf-8?B?VmdEVHJqdlJDK1BqS0NTRkE1WUdhWld3UEIwTndWNlVla1RNem9RajNYWGFx?=
 =?utf-8?B?UktHVnpmTURMUlhxcVBCaktIY09jdjAvQlZ0VjEvTFdtK2ZQOVo0c2xHVnZx?=
 =?utf-8?B?MmJwRjhOdGl5VXY0RVFPcTlQMHpEY1J6cEFCaXpRTG9YRXprQlVFaGU5dGdP?=
 =?utf-8?B?WTNVQ0V5MXkzVjRNZllvUE9acnVKZDJRWk4vWWhxeDg3VWhrcnBMVzhTbFRl?=
 =?utf-8?B?S3E1bG4rVWJocGczcDBtTWVicm5MZTRubCtTOU84M3ErSENaelpLWFV5OFhF?=
 =?utf-8?B?Njl2ZHZpZTA3b3E2VzBEaW1zTUhMMWsyNXRkSzBQQTIyMy9JWVFZUnhYRUlL?=
 =?utf-8?B?ZzM1T3pqMkJEMGNzS1Q5SmFkcW5kZ2M0TkE4WnBwQ0d0NU9LS1d2RmJqSExr?=
 =?utf-8?B?RlNsUmcyV1lrc0xDS1hSRWowQXJDQnQ2VWdPOHdOb3YyanpqUU9Vd0h0Mzdo?=
 =?utf-8?B?T3BBT0Z3MXo3WjRJTjA4S1pZR2tVNDlvV0dHS0ZOWlZLalNyRDc0M2VPT0FP?=
 =?utf-8?Q?inrMszQ0vk4yWK4LvKQhT0GrzO+yIfvW?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHpHcmFvWHBReUZDZm1ZOGpTeThsTFVCdVo5SjBoSUlUaGxYVWJDVXZIOHNn?=
 =?utf-8?B?bTgxelFYa012cVU2ZnFROXZHMEdtbVk0VjZaTHk5MkIyRys3NzlqTUE1MjlX?=
 =?utf-8?B?Nm5lQytRMnZnVWJ2Z3Z4anlpS1ZCZU5RREd2T25NOTJnRWlBNFhQQkp3dVlj?=
 =?utf-8?B?NndtN3JyekNtRm5PUHVzNVJLMkU2em9XZzlQOUZlaVU1ZnhQYWkwM3YzSG5r?=
 =?utf-8?B?Yy9YQjNNNUhubGhNWWlxWUlaSENyclAwMVJyM0FVem94Ry9nTmNoWU51WUJr?=
 =?utf-8?B?SmNMREhzOWFCMXIvcVdwK1cwVUtEQ2N2cVhNcEFsaVFWUWlnUGxtSDZrT0NW?=
 =?utf-8?B?d0NBWllRM3JRWWxDUGI5ZzBkRDNxaE9qSFZSRk0wcGRtaGdna3JxYkt0aVRV?=
 =?utf-8?B?TUJaODZNYlFvWTYyODRBRE8vWEVnNjJhV3JJQmgxQUI3cXVHaEMycEc2dlk3?=
 =?utf-8?B?WG5ZMFZTNFBZM0l1RkRYRjk3T2tXVVppbEZmUFZiYlpZV2h4ekwyOE10RFo0?=
 =?utf-8?B?djBkYTdVNGNjS1drSVorLzZRL3p5SFc4ZmN0WXhMYTZUVXhFZjVuMUp5bUxa?=
 =?utf-8?B?V09mL3FaVldqRUhQbmgwYkVCTmlvelA3cTFTendkcUF2TCtSQXYwSU9aOUlh?=
 =?utf-8?B?SUp6dURhNnMrT3BXcmxNMzYxZWxaZFpKVGQ5Y0M2WnYyTld6Y0ErL1kzWnpz?=
 =?utf-8?B?YzRzbHk1U0lJM3V1TXIzanRlU3dlMjRKUU1WRDB6RFBWV2tYdXJPNUxwZWJV?=
 =?utf-8?B?Vml6enl1OHc3b3JsaXR5QkRYVEhkeHNoMG85eWRKamwwSUlneDZyRUhIczVJ?=
 =?utf-8?B?Nlc4aVlrN1V4ODJGYWp6VGlqd2hsL3ZHeDd4WFdnZVhhZ0xTdFJ1TGRJQmRr?=
 =?utf-8?B?amJ5SlZZZWxUK3o5Y0xHeGlCUUY2cWNGeG5QU05QWWNuRFNIWTI5TmNZODB5?=
 =?utf-8?B?akJoVjFVK1E3c21iQ2oyNkZUK28waGRoWHlEUy9ZeVVCRlRUREpJc3pJeW8v?=
 =?utf-8?B?Q21tK09MTUttd3pDaVNLbUJGR0EwTG95TEgvRWFId1RKZFhLZWlzV3paWnpH?=
 =?utf-8?B?c1hIVHVHSjU4bFFOWFlCREo4dXFsQ25CQzE5UFJicVVqREIxS1diV1RiMW5T?=
 =?utf-8?B?OVZoTEd3ODJQc3diVXJQaVFOZmxHeU54ZWI0bkswVHd3V0UwbnpUMjFEV2dT?=
 =?utf-8?B?a1Y2bHlSL2dsbEZJcGxzSXNWeWdjUHNvd0NCbDdqejZVVHlaMUFFSmhKdDNG?=
 =?utf-8?B?eXloRlIyTlFTTnlSN2lHRDZ0Tk5ENDltRjhqYjAwMmg5Y3R4aU9ZM3d1MjdI?=
 =?utf-8?B?MExEZ0N0RzBwRk9nLzNGUkh2WlhCdk5acVNYYno5azFYS0IzeWwxYS9DTmEz?=
 =?utf-8?B?eDZjTFE0QzhuYkdNbHZWWmNRdEdZUlRzQnJhMTFPOGdrVFZaN3RvVmIxR0Z1?=
 =?utf-8?B?d3UwY1MwTXQvNmxqYlRDQmd0dFovUGoxNU9EcFdJa3AyOCtUb0IvUGx6TkU2?=
 =?utf-8?B?TE9WbUE5RVlETW9RbWFhU2E2bnRRN0d6OUo3WkdXWFJTSC9FSUdZOC9vUXcz?=
 =?utf-8?B?N1ZvM0VpTm1HZnFoQVJVQlRjYmYwSlhVVkhmMjZmQ2N3Y09yWnJFbDJ6UE5q?=
 =?utf-8?B?MDRMajZKN2h2NVNlUysycjNuelc1VTFRMFRGbExBSllZUUxBSnRiaWpwTXFy?=
 =?utf-8?B?U0Y1TzNyRnBkU0x5YUFiUTlNdGRvV3pVQU5vemFHTEt2QkNXR2NqdDFGNHl5?=
 =?utf-8?B?S2o0M0FYUXRUaENYWWpLMExndjF0cEI4Skg0MlczdTN3ZU1DdlY4R3IrQXNk?=
 =?utf-8?B?ZGpUZkFXL05kZkp2S1AxdlB1My83a2hGMVpaYS9ESEVHakh0VXZ6RklsRVEr?=
 =?utf-8?B?WTYwb1ZxOElqbURONWFFNjVac2ZZNmFOV2dDWGpXRnd0MFBIbCtabDJzQ0s5?=
 =?utf-8?B?dVhKTEh1UlI0OG9FZ2lZS0NaRzFyc0Z6SGR1YWdFenhUSTArNUlpSzFwRWQy?=
 =?utf-8?B?cnFMTUYzQTBaSkZuU2tPYWc3b3NVU0d4cHVCRldyWXlTU2FKTVNFcEhXQmsv?=
 =?utf-8?B?VlloWGlhVEdCM3dITDZ0S2VPKzBDc1Y5aHBaK3YxQmJiWkhjVGJ3Vm5NZGtP?=
 =?utf-8?Q?y52Q=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18f698e8-7b3c-4a3a-46f5-08de395f4ac9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 09:17:37.4569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l4BFbALJcLKDYaYfXF8hFG3uOEQpnwvVGPWhrrcUREJdT6GeNcnfEMrNhvcJSKFt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR12MB8292
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.37 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MIXED_CHARSET(0.63)[subject];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:52.96.0.0/12, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[52.101.56.65:from];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.56.65:from];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_smtp,amd.com:from_mime,BN1PR04CU002.outbound.protection.outlook.com:helo];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AC9943F837
X-Spamd-Bar: ----
Message-ID-Hash: GWWTH2LIJARJ5STQHGOTFHWM5MR7OOZQ
X-Message-ID-Hash: GWWTH2LIJARJ5STQHGOTFHWM5MR7OOZQ
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Independence for dma_fences! v4
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GWWTH2LIJARJ5STQHGOTFHWM5MR7OOZQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTIvMTEvMjUgMTM6MzMsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTEyLTExIGF0IDEzOjE2ICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gSGkgZXZl
cnlvbmUsDQo+Pg0KPj4gZG1hX2ZlbmNlcyBoYXZlIGV2ZXIgbGl2ZWQgdW5kZXIgdGhlIHR5cmFu
bnkgZGljdGF0ZWQgYnkgdGhlIG1vZHVsZQ0KPj4gbGlmZXRpbWUgb2YgdGhlaXIgaXNzdWVyLCBs
ZWFkaW5nIHRvIGNyYXNoZXMgc2hvdWxkIGFueWJvZHkgc3RpbGwgaG9sZGluZw0KPj4gYSByZWZl
cmVuY2UgdG8gYSBkbWFfZmVuY2Ugd2hlbiB0aGUgbW9kdWxlIG9mIHRoZSBpc3N1ZXIgd2FzIHVu
bG9hZGVkLg0KPj4NCj4+IFRoZSBiYXNpYyBwcm9ibGVtIGlzIHRoYXQgd2hlbiBidWZmZXIgYXJl
IHNoYXJlZCBiZXR3ZWVuIGRyaXZlcnMNCj4+IGRtYV9mZW5jZSBvYmplY3RzIGNhbiBsZWFrIGlu
dG8gZXh0ZXJuYWwgZHJpdmVycyBhbmQgc3RheSB0aGVyZSBldmVuDQo+PiBhZnRlciB0aGV5IGFy
ZSBzaWduYWxlZC4gVGhlIGRtYV9yZXN2IG9iamVjdCBmb3IgZXhhbXBsZSBvbmx5IGxhenkgcmVs
ZWFzZXMNCj4+IGRtYV9mZW5jZXMuDQo+Pg0KPj4gU28gd2hhdCBoYXBwZW5zIGlzIHRoYXQgd2hl
biB0aGUgbW9kdWxlIHdobyBvcmlnaW5hbGx5IGNyZWF0ZWQgdGhlIGRtYV9mZW5jZQ0KPj4gdW5s
b2FkcyB0aGUgZG1hX2ZlbmNlX29wcyBmdW5jdGlvbiB0YWJsZSBiZWNvbWVzIHVuYXZhaWxhYmxl
IGFzIHdlbGwgYW5kIHNvDQo+PiBhbnkgYXR0ZW1wdCB0byByZWxlYXNlIHRoZSBmZW5jZSBjcmFz
aGVzIHRoZSBzeXN0ZW0uDQo+Pg0KPj4gUHJldmlvdXNseSB2YXJpb3VzIGFwcHJvYWNoZXMgaGF2
ZSBiZWVuIGRpc2N1c3NlZCwgaW5jbHVkaW5nIGNoYW5naW5nIHRoZQ0KPj4gbG9ja2luZyBzZW1h
bnRpY3Mgb2YgdGhlIGRtYV9mZW5jZSBjYWxsYmFja3MgKGJ5IG1lKSBhcyB3ZWxsIGFzIHVzaW5n
IHRoZQ0KPj4gZHJtIHNjaGVkdWxlciBhcyBpbnRlcm1lZGlhdGUgbGF5ZXIgKGJ5IFNpbWEpIHRv
IGRpc2Nvbm5lY3QgZG1hX2ZlbmNlcw0KPj4gZnJvbSB0aGVpciBhY3R1YWwgdXNlcnMsIGJ1dCBu
b25lIG9mIHRoZW0gYXJlIGFjdHVhbGx5IHNvbHZpbmcgYWxsIHByb2JsZW1zLg0KPj4NCj4+IFR2
cnRrbyBkaWQgc29tZSByZWFsbHkgbmljZSBwcmVyZXF1aXNpdGUgd29yayBieSBwcm90ZWN0aW5n
IHRoZSByZXR1cm5lZA0KPj4gc3RyaW5ncyBvZiB0aGUgZG1hX2ZlbmNlX29wcyBieSBSQ1UuIFRo
aXMgd2F5IGRtYV9mZW5jZSBjcmVhdG9ycyB3aGVyZQ0KPj4gYWJsZSB0byBqdXN0IHdhaXQgZm9y
IGFuIFJDVSBncmFjZSBwZXJpb2QgYWZ0ZXIgZmVuY2Ugc2lnbmFsaW5nIGJlZm9yZQ0KPj4gdGhl
eSBjb3VsZCBiZSBzYXZlIHRvIGZyZWUgdGhvc2UgZGF0YSBzdHJ1Y3R1cmVzLg0KPj4NCj4+IE5v
dyB0aGlzIHBhdGNoIHNldCBoZXJlIGdvZXMgYSBzdGVwIGZ1cnRoZXIgYW5kIHByb3RlY3RzIHRo
ZSB3aG9sZQ0KPj4gZG1hX2ZlbmNlX29wcyBzdHJ1Y3R1cmUgYnkgUkNVLCBzbyB0aGF0IGFmdGVy
IHRoZSBmZW5jZSBzaWduYWxzIHRoZQ0KPj4gcG9pbnRlciB0byB0aGUgZG1hX2ZlbmNlX29wcyBp
cyBzZXQgdG8gTlVMTCB3aGVuIHRoZXJlIGlzIG5vIHdhaXQgbm9yDQo+PiByZWxlYXNlIGNhbGxi
YWNrIGdpdmVuLiBBbGwgZnVuY3Rpb25hbGl0eSB3aGljaCB1c2UgdGhlIGRtYV9mZW5jZV9vcHMN
Cj4+IHJlZmVyZW5jZSBhcmUgcHV0IGluc2lkZSBhbiBSQ1UgY3JpdGljYWwgc2VjdGlvbiwgZXhj
ZXB0IGZvciB0aGUNCj4+IGRlcHJlY2F0ZWQgaXNzdWVyIHNwZWNpZmljIHdhaXQgYW5kIG9mIGNv
dXJzZSB0aGUgb3B0aW9uYWwgcmVsZWFzZQ0KPj4gY2FsbGJhY2suDQo+Pg0KPj4gQWRkaXRpb25h
bCB0byB0aGUgUkNVIGNoYW5nZXMgdGhlIGxvY2sgcHJvdGVjdGluZyB0aGUgZG1hX2ZlbmNlIHN0
YXRlDQo+PiBwcmV2aW91c2x5IGhhZCB0byBiZSBhbGxvY2F0ZWQgZXh0ZXJuYWwuIFRoaXMgc2V0
IGhlcmUgbm93IGNoYW5nZXMgdGhlDQo+PiBmdW5jdGlvbmFsaXR5IHRvIG1ha2UgdGhhdCBleHRl
cm5hbCBsb2NrIG9wdGlvbmFsIGFuZCBhbGxvd3MgZG1hX2ZlbmNlcw0KPj4gdG8gdXNlIGFuIGlu
bGluZSBsb2NrIGFuZCBiZSBzZWxmIGNvbnRhaW5lZC4NCj4+DQo+PiB2NDoNCj4+DQo+PiBSZWJh
c2VzIHRoZSB3aG9sZSBzZXQgb24gdXBzdHJlYW0gY2hhbmdlcywgZXNwZWNpYWxseSB0aGUgY2xl
YW51cA0KPj4gZnJvbSBQaGlsaXAgaW4gcGF0Y2ggImRybS9hbWRncHU6IGluZGVwZW5kZW5jZSBm
b3IgdGhlIGFtZGtmZF9mZW5jZSEiLg0KPj4NCj4+IEFkZGluZyB0d28gcGF0Y2hlcyB3aGljaCBi
cmluZ3MgdGhlIERNQS1mZW5jZSBzZWxmIHRlc3RzIHVwIHRvIGRhdGUuDQo+PiBUaGUgZmlyc3Qg
c2VsZnRlc3QgY2hhbmdlcyByZW1vdmVzIHRoZSBtb2NrX3dhaXQgYW5kIHNvIGFjdHVhbGx5IHN0
YXJ0cw0KPj4gdGVzdGluZyB0aGUgZGVmYXVsdCBiZWhhdmlvciBpbnN0ZWFkIG9mIHNvbWUgaGFj
a3kgaW1wbGVtZW50YXRpb24gaW4gdGhlDQo+PiB0ZXN0LiBUaGlzIG9uZSBzaG91bGQgcHJvYmFi
bHkgZ28gdXBzdHJlYW0gaW5kZXBlbmRlbnQgb2YgdGhpcyBzZXQuDQo+PiBUaGUgc2Vjb25kIGRy
b3BzIHRoZSBtb2NrX2ZlbmNlIGFzIHdlbGwgYW5kIHRlc3RzIHRoZSBuZXcgUkNVIGFuZCBpbmxp
bmUNCj4+IHNwaW5sb2NrIGZ1bmN0aW9uYWxpdHkuDQo+Pg0KPj4gRXNwZWNpYWxseSB0aGUgZmly
c3QgcGF0Y2ggc3RpbGwgbmVlZHMgYSBSZXZpZXdlZC1ieSwgYXBhcnQgZnJvbSB0aGF0IEkNCj4+
IHRoaW5rIEkndmUgYWRkcmVzc2VkIGFsbCByZXZpZXcgY29tbWVudHMuDQo+Pg0KPj4gVGhlIHBs
YW4gaXMgdG8gcHVzaCB0aGUgY29yZSBETUEtYnVmIGNoYW5nZXMgdG8gZHJtLW1pc2MtbmV4dCBh
bmQgdGhlbiB0aGUNCj4+IGRyaXZlciBzcGVjaWZpYyBjaGFuZ2VzIHRocm91Z2ggdGhlIGRyaXZl
ciBjaGFubmVscyBhcyBhcHByb3ByaXRlLg0KPiANCj4gVGhpcyBkb2VzIG5vdCBhcHBseSB0byBk
cm0tbWlzYy1uZXh0ICh1bmxlc3MgSSdtIHNjcmV3aW5nIHVwIGJhZGx5KS4NCj4gDQo+IFdoZXJl
IGNhbiBJIGFwcGx5IGl0PyBJJ2QgbGlrZSB0byB0ZXN0IHRoZSBkcm1fc2NoZWQgY2hhbmdlcyBi
ZWZvcmUNCj4gdGhpcyBnZXRzIG1lcmdlZC4NCg0KZHJtLXRpcCBmcm9tIGEgZmV3IGRheXMgYWdv
LCBvdGhlcndpc2UgdGhlIHhlIGNoYW5nZXMgd29uJ3Qgd29yay4NCg0KUmVnYXJkcywNCkNocmlz
dGlhbi4NCg0KPiANCj4gUC4NCj4gDQo+Pg0KPj4gUGxlYXNlIHJldmlldyBhbmQgY29tbWVudCwN
Cj4+IENocmlzdGlhbi4NCj4+DQo+Pg0KPiANCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8g
bGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
