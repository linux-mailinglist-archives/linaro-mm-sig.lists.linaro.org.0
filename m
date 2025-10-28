Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC70C1537E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 15:45:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BEFCF3F7A1
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Oct 2025 14:44:58 +0000 (UTC)
Received: from PH8PR06CU001.outbound.protection.outlook.com (mail-westus3azon11012000.outbound.protection.outlook.com [40.107.209.0])
	by lists.linaro.org (Postfix) with ESMTPS id 712A73F772
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Oct 2025 14:44:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=IkniPpZJ;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.209.0 as permitted sender) smtp.mailfrom=jgg@nvidia.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fuaFmvvvHjKgsVCmuG/Z0PFoPc83pSc72u5rtZytmMYRNwwL3OCf+ZQQnNorKHu2JbYPJUX8Ruwq8QxP5Emp+MT+huW0lGj/gUfSotUyP//QLwJCduqY1MWOCAFgOlJQ6qp0Zm3PMaDDt1dokXw3e2w0xoH5M0irzsaq7stwFHH9w2hk1RwISpWt9zUTi41bpcwg34GOYErTojj01gS3zF6hyYdjYafTQYDloAx6dn4VzE8d0tkPmF5CL9UpjT95Gx7uXHsKP+tY5/8Cl6DrzXRPEZQQQUQ0zsqL3P0Fd4i4con5Jr/qbX6MU2pEDeuophFb88w3tB2UGb/LppsYYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDecswwheOD6c2Xui33I8iysAhN1uuXshwaGJIHSMno=;
 b=le0AopFVW5goHDkykV/lSenCQ2gZlhocPJgr2vfVSBdNxufrzahu7zIsyfFLLS75VnXqa1uN2Q8xn+rXGt+GqKm5vywhfMBGjLo7/J1FKqi1hBzYO4LvdDdlmIZWva7X8ZVsgy+KszohDjgW/EclGMC7v50q82qC1RNIc8VQFUfNDFP8bEYhGTQ9L9RfxxTlgNuU20Sl/bw7vZ8AGPTGt6jiVd0HSsUGsDLWPUCw1/JdAmxX5AlZKhBCF1EXChWKt5mg1s0oJGx82gQCEaK3e0UyBXd4OTc2ewvG948gK4xscuolmuF05RgLU3xmYCnvMtLWsAlb0g8Txvc2XduxRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rDecswwheOD6c2Xui33I8iysAhN1uuXshwaGJIHSMno=;
 b=IkniPpZJ8ZVeyf3px2S3EHFqoxnRUxQQU3X6SGvH99SvPZA0TmcMLPY0CbyjZyGQvIrlhGbPgf0R/DoF4P5m7sHQwIS5jf2wsz0AsXptusUc+SR9gy8cPD8WsDP/8TSubLUFV00cDvFmr0LY7zFaeOdPKKxlmLullA7l7kLgOhoCY4Q83bPdp4eDE3ADhlfAu30aCV6srXlR8pSiU6zIMZCyOHkCXR7b+u3fsqC4PFLXN7ggQqCfNfSuNOY/2bm4kTZp/rvA9W5EGZBd5S2c6H9mnrch6WPTe9R1dnweJMwXbepEPMzdD3O9tTfwU3/YYenz6VXdq8st1SnhYbKneA==
Received: from MN2PR12MB3613.namprd12.prod.outlook.com (2603:10b6:208:c1::17)
 by BL3PR12MB6425.namprd12.prod.outlook.com (2603:10b6:208:3b4::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Tue, 28 Oct
 2025 14:44:41 +0000
Received: from MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b]) by MN2PR12MB3613.namprd12.prod.outlook.com
 ([fe80::1b3b:64f5:9211:608b%4]) with mapi id 15.20.9275.011; Tue, 28 Oct 2025
 14:44:41 +0000
Date: Tue, 28 Oct 2025 11:44:40 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20251028144440.GK1018328@nvidia.com>
References: <20251014071243.811884-1-vivek.kasireddy@intel.com>
 <20251014071243.811884-2-vivek.kasireddy@intel.com>
 <61c5edcb-2b22-4583-9138-c117bea7a9b3@amd.com>
 <20251028140548.GJ1018328@nvidia.com>
 <dcc1265b-be10-4a54-8eda-2f7be0e70371@amd.com>
Content-Disposition: inline
In-Reply-To: <dcc1265b-be10-4a54-8eda-2f7be0e70371@amd.com>
X-ClientProxiedBy: MN0PR04CA0003.namprd04.prod.outlook.com
 (2603:10b6:208:52d::15) To MN2PR12MB3613.namprd12.prod.outlook.com
 (2603:10b6:208:c1::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB3613:EE_|BL3PR12MB6425:EE_
X-MS-Office365-Filtering-Correlation-Id: c22b7bdd-bf81-4e5d-b5f3-08de163086fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Y1Y1Wm5JUEZLQVJvNVQyZjdhUUJJYTBITmhHL1Y2QUljTWgrdTUyc215MEpV?=
 =?utf-8?B?QzNRaERoTStSNTF1dENIWDJ6SDFyaUlYd3UzM1BTSVpCQXRucHFDZXFWYTlY?=
 =?utf-8?B?ZEF6S0toa2Z4eGt3RUtzVFk4OGZndzJGUHAyRE5xM20rQXRBREJKSUpLdzlw?=
 =?utf-8?B?ekdiVDJkd1RKeVNNVTl5N3NtT0F6SUc0WDBpK0JmNjdpSjN2VTE3VGF1aUxi?=
 =?utf-8?B?Z0pNQy8vSXlDS0k4SHRON05YTjFDMGtsTUp1TGllcmlCdDJyZGQyTkxlNjBB?=
 =?utf-8?B?eE9UTjZmRTVzbVh5eTlYaDhDTk5CVCtNeWd3RTBtMUt4T21PazZUL1hRTlBU?=
 =?utf-8?B?SjBVMjc0RGU2OWJjVERiSzRhd05xN2w3TzhzazRVcUdwLyt3OHN4U05uQ3JY?=
 =?utf-8?B?SStaQkdQeU5oZ3VMZzE0d2Y0OVdPTEFlZ2J3YUZmMFU1NGN1d3pOZXFZRzE4?=
 =?utf-8?B?eWxKZ2ViSThVZ2Jva3MzQnJoK3lyMHpQTVJreE5nbHhuWnc5MThEQTBWSnRi?=
 =?utf-8?B?dTFrdXhmN0MwdzVER3ZYS2ZRanVRVDBjNk1sam9sSGMyak5HSk1mTkFoenNP?=
 =?utf-8?B?YUVhRzBwMzhCb0xmdWZoaGx5a2FJeUthZWt5VWVtTEdlUlltWmNUay9LajRa?=
 =?utf-8?B?cFN4WWpSakliTFdraXZVSFZwV29MNU82Zm9Sd2pKaUhubEpCLzd0NTBUNFJm?=
 =?utf-8?B?TWNKaWdsUm1FV1lIMkhqOFR3Q0J0SjZnUm9tTnRjbzVQakxDZVNyTnZIU2JY?=
 =?utf-8?B?ZTAyRVlPMStXSkk5STVYNXFHRmNpY3ZSN0orTzNJZW5RQXlhN1ZDa0N5YWxj?=
 =?utf-8?B?Q1djeEV3b1EwK2xoaFlnOCtUWXlmSGtrbEVaTkU4ZVNwRW40dlp4ajJURlVh?=
 =?utf-8?B?UEF0b3RpekJvaXltQXpuNXVwTHdOR1FSZ0g4TG5OZlFJNHlXV1hSM2ZKazRZ?=
 =?utf-8?B?RldTUlprNWtENyt2c1gzWFJQR21PbVBrNEdCVmFPaS8zOFQ0VFdqekV1NDYz?=
 =?utf-8?B?VmR6Wm9iTityN1lYeTB6clAvbFN1VFZzTy9mUUl5MFJaTlo5NVZBZkNVM1cy?=
 =?utf-8?B?SW5wOHFRU1Z1cHI5LzRaU2RXbU1za2Nhc3FoK01UU0N5TnUrMVFaMHRTQnVk?=
 =?utf-8?B?TWMveUx0dHcvTml6b2NwL0RNRlRMbkxjc2hhVHBmK01hQVQ5aHZUTStlK3h0?=
 =?utf-8?B?am1ldENYV1N6V3J3cWIxVnNPYlBMcG94enQ0VGEwM3JUblNqTjJ4Y0VFS0VK?=
 =?utf-8?B?d3RYUHNTU0kycjdtUjlSMXZsUGsxNi96Z1Q1OWFBQWJYbUt6cnQycUF3ajc1?=
 =?utf-8?B?eGYzbmxjSlB6Z1JIRE9GdXFxOEc5dW9oQS96Y0hLd3ZMU1hFcFRuUDZyN2FV?=
 =?utf-8?B?NzJUdXdkTlYrZzhVQW51Q0FsNUU4SnFrdC8xZmluQzlBdXNYS2h5R2NEYnlJ?=
 =?utf-8?B?d2xuTGlKKzlQK29HK0lsYStCWHBtL004MkEyeVVibHlrOC9UMG5KUmRlQzBV?=
 =?utf-8?B?emJRN0lIWXJyVUxUdG1YaHVyVDJaUTVTWGZSYmtYODVaQnhiYUR0VlR1VllT?=
 =?utf-8?B?RHlxWWo4QUY5U3pSZ2Y4cmZkZm91VEVKMnU4NTE4ZVdOMnp4bzUwVmZmWHNo?=
 =?utf-8?B?S284cjdCWnh2OVowOWIwbGV6U3d1OFpkNFNiczk5OUxRQ1A0RHhtandEdFVF?=
 =?utf-8?B?RUVreUVEbkVON2JUa2djd2VGc2M3SmNYcjJ0R3NkdFg5QzFUVGZrekwxTXJp?=
 =?utf-8?B?RXZaekpBenIvTXhjSk51cEhkWjlRZTZjbHhlSjdKVU95RmR6MkxLb3VaMG9y?=
 =?utf-8?B?SWJ2alVZUEhsR1I4eTVBRjNRcTdFQXYwRU1rTGVIaWQyTjVXWHAxaE90bnFq?=
 =?utf-8?B?TzcwRFpIdUg4RFFBTStXQ0tRemRHNGhtYXM3TXdWYWNiV3ZaZW9DSFNLdlY1?=
 =?utf-8?Q?fG6xsoE7bE39vfgiquguwW07jUJT5fa6?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3613.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UTJ2TTdsRE9KNkZWSlBpb0hLeUZqTzlEaVByNlRPbU84bVdtMVIwaGJQcWlR?=
 =?utf-8?B?WlNvdUtXdmFxT0pFRjJCZEliWWlndVRBVGZoZjdTUHdyRTFEVnFiMWlISTJX?=
 =?utf-8?B?Q1YyWUYvZW1VNFZjUElaSzUyYmpORGJmMW9FdFVCOG5rcHo2SGtZT0VybDBF?=
 =?utf-8?B?Q05tUzRTcUpOUG16VFNITnZmT3M4Q2hmbDdIOGNyR0J0UEg4Q0hTS0ErdXp3?=
 =?utf-8?B?RzhRbnVqL1BBaWE4MjVPd2RkZWZoczZ1enUweE81aURWdk8wSElyTThCeFJE?=
 =?utf-8?B?ejE4Y0l1OWwvNmd3MUdGSlBjN2ZsRXlzOHI0ZFBNaWNDdlFhQThVTWRIbmN3?=
 =?utf-8?B?VWt5MHBQdmhzTmdOb1lYWUtRUzJxQVhWN3FoM3ltZ3hzNFc4N1NUekU5QlFN?=
 =?utf-8?B?U3dZbUMvd3FrVjZpazYvVkExR21uSnQvaE9tU0NvcWxrb1dlTE93eFRoQ1ZJ?=
 =?utf-8?B?MmJPanhVVEFiMm5pZGJyM3pPNTlZMnBTNVB4Ukw2Y2tkZWt2QStiSDVQcTA3?=
 =?utf-8?B?Slk3M0k1ZW9XUVlKRGs4R0dBTmRWdkV1N2xhYVo2M3VhZkFOVGx2SEpIRmpQ?=
 =?utf-8?B?NE1YNTlkYUtDVXhBRWIzS3MxaWMvYWxUaVFMdlovYWFIVWcrcXpnbVRDZktQ?=
 =?utf-8?B?MjdhZ01vVjZPSEd4K3hjOEFWRDErRG5nZklqUWNEd0dQVGFUQ3pib2Frd0R4?=
 =?utf-8?B?bnJUUEFma1poQU9zRkJzdHFtazZEWlNqZlkrVGVjZ2RYS3hudFBXdG1vL3RX?=
 =?utf-8?B?OEU3dkR5Ujh2amlid05OaWpMOXptT2hydGh0Vjg3OEdvbFhDZEdNa1dPNEU3?=
 =?utf-8?B?YWxDQUp0VGYydzk2MThWSzdCWXgxUmhBSkxBOEttZU9pSWxYUHFXb29pcHBi?=
 =?utf-8?B?L082elRuakQ2bW1xUlQzeFNGVkk3dDZITjJxZzYxejNuTDFOQW96d280NkNC?=
 =?utf-8?B?WHRyL0MrMWEzSWprVm1kblFuQ0hVWVQvbWU4bDVBOFgyQVRQbVI3U21qQ2xY?=
 =?utf-8?B?cWxMUkZ3eE1LdE5rSDgwc0tlMWdDZnJDMTVrTGZrVVhUTWZYZ3RlT2loMXVp?=
 =?utf-8?B?aXd4amhsUmdUWmcyei9FWkMrdjRFbkJaOXJXWVRCZEJEazg0UWNJTGxvaUkw?=
 =?utf-8?B?TUlWdlViY1ZJK2xlU1JhaHJmOWRyVEFxUUs1VXJQdk5DMU1kalBOMDdaOXp5?=
 =?utf-8?B?RFBBU00wRzc1UUlyZzJ0UnptRmV6TGVLc3RRUlFwbk5saDJ3VGZSdTFkUnh4?=
 =?utf-8?B?ZG5aZ3pnZ3dNREgxRFdQQTl0QzZwS3RvWEFxcWRaVkdxQ1k1QTNDVU5vRURt?=
 =?utf-8?B?dlIzVWlaV1M3Y0VxWi9ac3NvK29VV1o3ajhUUjlXcEowL0tzZmVIaFFqV0lV?=
 =?utf-8?B?WUpBQm00UWo3NU51TUc0QnpuQWhWK3lvYWdzck1ybE4xOTZKQjRJR2ZWU2Zn?=
 =?utf-8?B?WkRkc2cyd3BvZXhtQWdnTmZTc3pEdThkUWZVZXFhbGZKdjdLdlZuY01BQTFY?=
 =?utf-8?B?emhiVzZYdWhSOWpoTXUyU1lzRktpckM1V0J5YS9hQjB3VTlqY0EyQ3FCKzdv?=
 =?utf-8?B?RzhEdjBJdFYvdlI0eGliTUhWdzkvR2hLVVZmY29HWngyR0xoMFI3K2VVUVEr?=
 =?utf-8?B?eDhxaVI4azdDNFJvcmphN1d2ckxJai8zSjdvYVBuWjdhWjdrSnAvaGdCeFQ1?=
 =?utf-8?B?Qlh3TUFJc3N2MXprU29JRlRSWEVvbXpJWFJvSU5IWHFPMWFCbGlCOGYwaXAw?=
 =?utf-8?B?UWtOUG9MRDhLdEMyTWsxcHQwYnpReW56anpKRTFjM0xkcC9NNkZJRVBOYUx2?=
 =?utf-8?B?dnROaTRaUTk4c3cwL1VVT2RKaXlkeElhTGFJNmdzcjh5dkZQTW9MazM2RUxB?=
 =?utf-8?B?N2tsL2RVeVlwOUF1VC9BbnU3VjFpK3llTFlIcXNGaitFdU04dkdiS3hPYXRo?=
 =?utf-8?B?eU1abDlQR3NnK2lLY1pJUVQ3S2RKWlFTeklIY2hLOWhUeVJaR1BtdlZMejk3?=
 =?utf-8?B?UkJhd0Q5TGhYdFduVkhOMFAyRTJmbzAwRFdWMmNNS1JGUXZVRktxNFdPcVI3?=
 =?utf-8?B?N2EzYVAzTDR6Z3ZOcVJSWGVEVGNOWlBpMmNBRDhPZ3ZZVEpKbzkyT2d3NTYz?=
 =?utf-8?Q?kng8=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c22b7bdd-bf81-4e5d-b5f3-08de163086fb
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3613.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 14:44:41.4515
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LHFWfGbCr80l/Jo//XUv3XrEa/W0Gp5cnBtAcrvXFCy34AUcHxwcuhNTL1iu6pt7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR12MB6425
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 712A73F772
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nvidia.com,reject];
	R_DKIM_ALLOW(-0.20)[Nvidia.com:s=selector2];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.209.0:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	DNSWL_BLOCKED(0.00)[2603:10b6:208:c1::17:received,40.107.209.0:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[Nvidia.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: JWUBTLWNGODB62FNKTCAUVUXMX2GUDUO
X-Message-ID-Hash: JWUBTLWNGODB62FNKTCAUVUXMX2GUDUO
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Vivek Kasireddy <vivek.kasireddy@intel.com>, dri-devel@lists.freedesktop.org, intel-xe@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Sumit Semwal <sumit.semwal@linaro.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC 1/8] dma-buf: Add support for map/unmap APIs for interconnects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JWUBTLWNGODB62FNKTCAUVUXMX2GUDUO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBPY3QgMjgsIDIwMjUgYXQgMDM6MTQ6MzJQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMTAvMjgvMjUgMTU6MDUsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4g
PiBPbiBUdWUsIE9jdCAyOCwgMjAyNSBhdCAwMjo1ODo1N1BNICswMTAwLCBDaHJpc3RpYW4gS8O2
bmlnIHdyb3RlOg0KPiA+IA0KPiA+PiBTb21lIGtpbmQgb2YgaXRlcmF0b3IgbGlrZSBpbnRlcmZh
Y2Ugd291bGQgYmUgcHJlZmVycmVkIHdoZXJlIHlvdQ0KPiA+PiBoYXZlIGZpcnN0IGFuZCBuZXh0
IGNhbGxiYWNrcy4NCj4gPiANCj4gPiBUaGF0J3Mgd2hhdCBJIHRob3VnaHQgeW91IHdlcmUgYXNr
aW5nIGZvci4uDQo+ID4gDQo+ID4gQXJlIHlvdSBzdXJlIHRoYXQgaXMgd2hhdCB5b3Ugd2FudD8g
SXQgd2lsbCBtYWtlIG1hcHBpbmcgb2YgZnJhZ21lbnRzDQo+ID4gYWxvdCBzbG93ZXIuLg0KPiAN
Cj4gV2VsbCB0aGUgZmlyc3QgZnVuY3Rpb24gc2hvdWxkIGhhdmUgYSBzdGFydCBwYXJhbWV0ZXIg
YW5kIGJvdGgNCj4gcmV0dXJuIG9mZnNldCBhbmQgbGVuZ3RoLg0KDQpBdCBsZWFzdCBSRE1BIGRv
ZXNuJ3Qgd2FudCB0aGlzLCB3ZSBuZWVkIHRvIHNlZSB0aGUgd2hvbGUgbGlzdCB0byBtYWtlDQpj
YWxjdWxhdGlvbnMgb24gdGhlIHNoYXBlIG9mIHRoZSBIVyBwYWdlIHRhYmxlIHRvIGFsbG9jYXRl
Lg0KDQo+IEFsdGVybmF0aXZlbHkgd2UgY291bGQgY29tZSB1cCB3aXRoIHNvbWUgY29udGFpbmVy
LCBidXQgeWVhaCB0aGVuIHdlDQo+IHdvdWxkIG5lZWQgdG8gY29udmVydCBpbnRvIHRoZSBjb250
YWluZXIgZm9ybWF0IGFnYWluLg0KDQpXZWxsLCBnaXZlbiB3ZSB3b24ndCBnZXQgYXdheSBmcm9t
IHNjYXR0ZXJsaXN0IGluIHRoZSBuZWFyIHRlcm0gbGV0cw0Kc3RhcnQgb3V0IGJ5IGhhdmluZyBw
ZXIgIm1hcHBpbmcgdHlwZSIgZnVuY3Rpb25zIHRoYXQgcmV0dXJuIHNvbWV0aGluZw0KbmF0dXJh
bCBhbmQgdHlwZS1jb3JyZWN0IGZvciB0aGVpciB0eXBlcyBhbmQgc2VlIHdoZXJlIHRoYXQgYnJp
bmdzDQp1cy4gU3RhcnRpbmcgd2l0aCBzY2F0dGVybGlzdC4uDQoNCk9uY2Ugd2UgaGF2ZSB0aGUg
bmV3IGludGVyZmFjZSBwZW9wbGUgY2FuIHByb3Bvc2UgYWx0ZXJuYXRpdmUgIm1hcHBpbmcNCnR5
cGVzIiBhbmQgd2UgY2FuIHNlZSBiZW5jaG1hcmtzLg0KDQpGb3IgdGhpcyB2ZmlvIHN0dWZmIGEg
a3ZhbGxvYygpIGZsYXQgYXJyYXkgaXMgbGlrZWx5IGdvb2QgZW5vdWdoLiBNb3N0DQp1c2UgY2Fz
ZSB3aWxsIGJlIHNpbmdsZSByYW5nZS4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
