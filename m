Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1E0AB5981
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 18:13:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EDCD45952
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 13 May 2025 16:13:42 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2063.outbound.protection.outlook.com [40.107.95.63])
	by lists.linaro.org (Postfix) with ESMTPS id 5CFAE441C2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 13 May 2025 16:13:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=5fNH8ys7;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.63 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pWpbZ8tcNUx+VaDitMa3eaxpHn7bWBG/s6zSbwztOWIsK+n3sL4U3u2LO65QvVeBfsD5Az5GEHPday3oRRDHMwiYvT2I+0MWpzvGWv6wfMFVMDo3oFr9jS1hXThwkaZLg7dIP0vfnAcOi/6k9p9y7kaO9QU7ubthFlQR1ksP/B8dMEQkChNb9/D5zL1JEFb+h1G8pBns3nzPJzNHgwF4nHfDJfPajCVU6xnGmZfrseGvjRpWllzkgqpZgmJ9JycOjocqp6zySMYuUW3eJAEJSmgCFCkdUYKEA1HkOXy6LOVMfsG3hK3L6a5OXM6Hm+lynoHAHScmy7R96RILFgeQ3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z2elEgTkY0e6rSBflRzwtH0mYBCSOFlrsWVT1aY4q8E=;
 b=aY47cSF1O4rgsdLyT19xtvSGjjW1MpxfdpF4Nu1x0MG8FpxxIaAUIamIUQmVOPelQ17b6gYS9v/QAllh7phAGB+catuZMsLY7Juk5+fSFX+uPRom3hMz5MIyHNJo/lxHUlKhiAS4Kj2rI1cH20pDwC1/Vht4yUXU9qn8mD/F38jNCQnzb1CewgN7H6EWOmGJI+YhRcgd8FroNHxas9rkvYTi9aHYCowvMZExja8UFZkngJhHD99gVf0briQch+V1ctK0NKK1kk+irL3AMyyyusrA7TdUhU0KAFCp5IsuFY7c+p2sfeFTeBLGk4R8IrGhrcDjPMz6MC/ME8Zovna+fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Z2elEgTkY0e6rSBflRzwtH0mYBCSOFlrsWVT1aY4q8E=;
 b=5fNH8ys7aohmgUGZ2CA17UXTxgZSyq0bmILr5o1uZh53QkcuC/rVXTxnv1KFGr2cLWoYWf4lZtPn6Z4Piq++Uw26GpG6GRkvF5c3B52jENABW0vhEeJuNTV86zAihVdnE/KfZtxXMw8cVPBCFh3fl1HKYtz/pCtPb6t6CwRGMMM=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB6789.namprd12.prod.outlook.com (2603:10b6:806:26b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Tue, 13 May
 2025 16:13:25 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 16:13:25 +0000
Message-ID: <e90d57d5-b8df-4145-ae86-43c7216c1936@amd.com>
Date: Tue, 13 May 2025 18:13:20 +0200
User-Agent: Mozilla Thunderbird
To: "T.J. Mercier" <tjmercier@google.com>
References: <20250513092735.1931-1-tao.wangtao@honor.com>
 <d77ed1c0-3f66-447a-956f-37e1dd543ca3@amd.com>
 <CABdmKX08DgEi4Gq6mQ-xPrtiNeRvarMyp9t+biRd001TRQzpQg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX08DgEi4Gq6mQ-xPrtiNeRvarMyp9t+biRd001TRQzpQg@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0252.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f5::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB6789:EE_
X-MS-Office365-Filtering-Correlation-Id: 879a1a77-0cf1-47f5-0724-08dd923916c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bjBBQkt1QVlBOVBhZmVKbU9KYWRrOUJSelpLdVBVMHNZa1B2SUpKOTJEWHdO?=
 =?utf-8?B?TU9ZSi91aytaMjRqMElWeW5ibWVTaGJmNkRrak1Weis4ZzBGa1cyNkZMQWhh?=
 =?utf-8?B?aFcxeHJDMUpIZVdRbWZUNGltaTNKcUtVTWVObmlnc3Y0aXNxRUtPajFhQVds?=
 =?utf-8?B?REkvTHVydFcrOGdhbURyQlcvRU0xWTNzVVZrc2NXR0d5YzJnN0wrbzFEcVdF?=
 =?utf-8?B?MUZvSXdMRDhWVi80MGppeG1FbEFSNkhkN0E0WTVuaVJaaWdES1IrcU94QWt0?=
 =?utf-8?B?MS9qK0Y0U2JzLzN2K0VBTndhRjJTd3lvelRGR2NmZjJiR3ZpMnh0VG5SV3Fk?=
 =?utf-8?B?TS9EaW1IellLMGxHcWdoalBVaGxYUHRLNTFmemFGUURlVXhBNTRNVVRzU0hV?=
 =?utf-8?B?NUl3R0xmTDZZMUk3R1R0blc1VG9lU1FDWkUwZTRPaTRPYUhMaFkwZjEyRUVZ?=
 =?utf-8?B?dkMxS251OG84UnZIS3ZVUUh4b0hvQldicU1Rcm8wcGp6d1dpaEhmMUNheHho?=
 =?utf-8?B?by9QeStLSzlHTnBFZXBwOG9Mc3FCKzRyV1o3TTFtM1YyQVdnbmo5UTZLeXk4?=
 =?utf-8?B?cWVNeHJpSG5uczdZczRwVDNUVG1RVFIyZnhsM0M5RktyMkw1YWh1Q0dDWGJa?=
 =?utf-8?B?Uk9LSFJzOVJadmlTUmhPL1J5c3diOXVmSEV6Q1pGZHcxL1lVV0lNaXEzR2di?=
 =?utf-8?B?a085WW94eHFJZURKUXFpNTNXY2oyRm51ZkxCNjlGTzBrZGgzUWlaVVQvaG1h?=
 =?utf-8?B?WGswbFFQUVAxVW42WUkxdStDcStOd3QyVDlJZld3Qjh0OEsyMUcxYmRNNjJQ?=
 =?utf-8?B?amZWbkVQbTlWRFBXaHVhUGY4Yi9WZWk3eDBydjNmL2JKckc0MC9Fa3dudVkz?=
 =?utf-8?B?Ukg3dVA3VDFWQTR1ZVhpeFV5R1dsN3R5RzRDemhsSkM2QWs1Nm9tMVgxR3dP?=
 =?utf-8?B?VEZrVFIyc0tpMVcrZEdzVjBEa1dYVmlrVC9Cc2VTTTFFY0VRYzhBOWZLbUU0?=
 =?utf-8?B?SjJYeVhNaU9JK09XR2tucDd0TlB4Mi9mSUxsdHMwWkFIbDRlMG41YWJQbkxV?=
 =?utf-8?B?VVBMWlBXUGZlM1NkZjdIRFZiUFNHcWFWUzlSSVBVdGF1RElNcWQ1em5oeE1F?=
 =?utf-8?B?UUxkeko5S1lCdlFnd0ozbTd2K2krYlRIWiswUkdaZTFNQURjRTNLWUUwZmxw?=
 =?utf-8?B?MU05c0ppN2Z1TWh3bmlRTmFYeGUzWDZuUHJrTDVGMmlMMGhBWFVhbFdoNmRZ?=
 =?utf-8?B?ODUvamJmTE0zNjdFakREVnFOcy83SEtpWWRiTnkyOEFheG5wS1NFb1MvWDh0?=
 =?utf-8?B?TWlYeVJ6STlOcVM1bFhDSFBvTU0xNVpZaUFkczBIQmhkOG1QODh6T3pUVVRr?=
 =?utf-8?B?KzRSNjF1cGJDSXRXaFZIY2VNN0dxbGZvTG5KU2QwVWN0YXlTYmxtamRSc3NU?=
 =?utf-8?B?NEdVU0FxVUthcTVOZU5laytHUEhic0F1NTljQjNMeWg5dFVaUjVWbXdlMzJV?=
 =?utf-8?B?eGxFeWdybUcvSUdpZGhNaGQxVGhTRmJYTjRXdGFwZkwxY3c1dCttYnZKZWpo?=
 =?utf-8?B?WSsra0Vpb2drUzNJZlhzN2xJbVdsSENOWU5CdlgrbnROdVRYeW5vQnp3R0wx?=
 =?utf-8?B?WjdpSzgzY2ovUVhnNU8yN1k5NlpDUXdCMllPckpEL3hOTlBhTGVxYmZuNjRk?=
 =?utf-8?B?WXpYcWNQWEpUaGlnSnJkTFh4d2xMb1lWV2pHTFV6YjJuMVZtVzhIT29xQUdi?=
 =?utf-8?B?aWRPMWRndEJYczVMZVRLNDhkcnZhb1VDVm5lbmg4cUx1N0JPTTNLa0ZmNkM5?=
 =?utf-8?B?dzFmYmxORUJnTC91dFJ5Qlp3b2VXMTZrNTRGdXVFRWcwM2l0M1pwZG5UV1l2?=
 =?utf-8?B?aG9XaDRWS0lMN3FFMjZVWTN0YzFKSTg4NzJYSmVTSWRoSjVXWFBLK1MvdVJo?=
 =?utf-8?Q?jvZUzTNZIAk=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dy9OejhpNlJTNmd1M0NTRDVvTE9nS3QzUERGanZYL0F1ai9KbmR4NGNxYXNI?=
 =?utf-8?B?cFh0aXYxZHNUOTMxTjlicGZUWW5saDI0OFdsdVRhek5MZ2pHc2RON0gzdS8z?=
 =?utf-8?B?NlRLQWliaXBWSGZYUTg2MUl3Q0FBamxYVlNXdEMzVkUySzZUK1hRWmRFOWRY?=
 =?utf-8?B?SjZJcFhkV1d6VFpmUGd6eXBhLzV0aHpNRzlxbjQxVU9zbHQ1cmF3MGJqRlRB?=
 =?utf-8?B?b1NKQ2lyTlVpQUc2cVlsTDRwQ0hKb21iT1MvWnYzR0pxZWNTcHZaZkM3cGFM?=
 =?utf-8?B?RmpzcDkxb01hb1N0WHA0YVJwWXJHMncza1QwYkY5emhLclVaZ3pqbVppZ2hr?=
 =?utf-8?B?R09XSStSZVUveU9DM29ibnJzREtJQmJPMXFEaUpxSVZDMDVyYXNHRWVqSmxD?=
 =?utf-8?B?Tjc4blVpRVBIL0NCQUZRekJqc3lFc0FmVkFvekpoZnZVNE9BdGhyK3pWVHla?=
 =?utf-8?B?WDJnclUyM0hTRmVZYnhFMXdsc0ZsOGFib0VJVTVrbUdtTHliN09kRzFkYlZh?=
 =?utf-8?B?S1FWdGs4d1hQc1VIN0plWFRTZG9PVWIrRTh2QW12YXhTcHJ1NkZ2RDhSN0Fq?=
 =?utf-8?B?MnJBdEZIenExKzlYLzdYMkh5QXpTdDRYQWlTa1d5MkNmazhKL0o3NUlSbHls?=
 =?utf-8?B?aUxtdExKUTNJcjZkUVNnV0k5Z0NUWXQzcU9TR3NmYnNSa3RIM29zazhVTm5Q?=
 =?utf-8?B?WjNDY0p3VXJIaTRwNFRwMk1KbWZKaWhuM3FwbklhTTlRTFJ3Z2lsUGRWY0Fa?=
 =?utf-8?B?ZDVSZG1VR2xaWGdBMnRpYjEvdndIODBnQjk2dzAweVNZVzA3d2FWWnNWb2N4?=
 =?utf-8?B?Wk5oekp4VXhYL2hESEZTcDAvQUVTME1RN05sM3VPNkJIdnNLU3ZPdTdORGRD?=
 =?utf-8?B?NmhtV2ZxaUtJWUpXZ25maTUyUWw1WjAyVXhVTnJ1TUNjNDF0eS9UVU44L3pv?=
 =?utf-8?B?VUdNVCtidlRpOVlqMjVwM05ra3RDSTNsWUdiNlI1bzUxQWwvbis2cW9QbXZp?=
 =?utf-8?B?bm5hZVl2c3BPN2l6OEhrUWRFRUhGampXUzdhUWNjeXNFbzJndVVFYXpPZ2F4?=
 =?utf-8?B?VzJxZUdibE9QVkx1UENKRTF6SGZYbkc0aDNzR0RPZWdhbzhDVG1sTXA5K0Ru?=
 =?utf-8?B?MjNMYy95V1JQREhaTXlGemFSL3htNGpVbzRJOW54c3RobkFncE9XTUNXbm92?=
 =?utf-8?B?dUtRRVdRNVZNb0ZYem9rSzlzQVF1cTlLTzRsTU8rcXVXbzJIWmlCa0xLbXRU?=
 =?utf-8?B?NEduc2xQQUE5am9pRFdrYytwNGVodEJiNEZBWFVxMDRlc25vdHJLVTdTQndU?=
 =?utf-8?B?VjZ0M1NyU3lMSVVDZ3hEdUtLMnFQeDQ1cjhSNDVJT25RQnNlNzVyRDZmUmpo?=
 =?utf-8?B?ZkF5d2VkY1E5NGg2cUdsVWNoNllYV0F0VVNHS1VkTkoxQjllaWdsTEJYU1lP?=
 =?utf-8?B?eUJXdjdWNWJjcTFhZkYwNzRXQWtHRzJ2M0pZL1pMWm10R0cweTdmMjBrNzdy?=
 =?utf-8?B?QnNUSlN2U1ZwQVlQaUptZitIZ3g4MXVDUXRSTlJNejQzRDYwZG5FaWFvR2Vj?=
 =?utf-8?B?ZlNuS0gweG5TTlpRMERja3podlRwWUY3Y0tqR3hFSWdSNHhlc2VvMFNDaDFV?=
 =?utf-8?B?U0ViTXhiZHlTTFpWS25mSHZhaTU5a0NZdy9uSUVuNUhOQkNtM1Z1TUxxSlF5?=
 =?utf-8?B?Y1ZsVVBZL0xST1lZTkZkQUdBWmQyazdtZkIrVUJrTi9IUWgrQjlTWCt3ZmQw?=
 =?utf-8?B?NEltNVN5cUNEY3RxdzB2ZHYvcnEvWDZXZlZJd0FBZmVLOGRzd3hJM21iSzJD?=
 =?utf-8?B?L3JBaCtxeUFCU0VuZFcrcmgrSjJub3VWK3E0WDJJa2MxWDZTY1BoTmtiOFBx?=
 =?utf-8?B?aEhqQ1RtWE9JUUIzbk1rRURzMFNqQzRtZ0t5d2p3Sm42UmpXb3V1M1BoaEVC?=
 =?utf-8?B?LzkwZGFUU1A4d09ycFU2WVlDOTZtZWpaU3ZuWDIxOGFwM0dGRUFEWDBRajJm?=
 =?utf-8?B?MHNZS1F6UWszZG9iSTl6N083N3I1bmRSdlJiZDBhQlVIT0o5STdRVjM1TnVV?=
 =?utf-8?B?RlYvMmg5S0xxSEpmTTBacHRzVWgyYTFIQ1NFRit3aGhLN3ZWUjRaOTUwTXRm?=
 =?utf-8?Q?sLm8=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 879a1a77-0cf1-47f5-0724-08dd923916c3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 May 2025 16:13:25.2470
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iMa/GOsOHDx1sD32KiBEKQ+wraYCbBqrjYlbCe9RDZmJh2hoevdy2Yznq6+9neh4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB6789
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5CFAE441C2
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.63:from];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.95.63:from];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	URIBL_BLOCKED(0.00)[NAM02-DM3-obe.outbound.protection.outlook.com:helo,mail-dm3nam02on2063.outbound.protection.outlook.com:rdns,honor.com:email];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: PMBCTAXZSHJ2ZZO6H3FKX73YBPXG3EK6
X-Message-ID-Hash: PMBCTAXZSHJ2ZZO6H3FKX73YBPXG3EK6
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: wangtao <tao.wangtao@honor.com>, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/2] dmabuf: add DMA_BUF_IOCTL_RW_FILE
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PMBCTAXZSHJ2ZZO6H3FKX73YBPXG3EK6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xMy8yNSAxNzo1NSwgVC5KLiBNZXJjaWVyIHdyb3RlOg0KPiBPbiBUdWUsIE1heSAxMywg
MjAyNSBhdCA0OjMx4oCvQU0gQ2hyaXN0aWFuIEvDtm5pZw0KPiA8Y2hyaXN0aWFuLmtvZW5pZ0Bh
bWQuY29tPiB3cm90ZToNCj4+DQo+PiBPbiA1LzEzLzI1IDExOjI3LCB3YW5ndGFvIHdyb3RlOg0K
Pj4+IEFkZCBETUFfQlVGX0lPQ1RMX1JXX0ZJTEUgdG8gc2F2ZS9yZXN0b3JlIGRhdGEgZnJvbS90
byBhIGRtYS1idWYuDQo+Pg0KPj4gU2ltaWxhciBhcHByb2FjaCB3aGVyZSByZWplY3RlZCBiZWZv
cmUgaW4gZmF2b3Igb2YgdXNpbmcgdWRtYWJ1Zi4NCj4+DQo+PiBJcyB0aGVyZSBhbnkgcmVhc29u
IHlvdSBjYW4ndCB1c2UgdGhhdCBhcHByb2FjaCBhcyB3ZWxsPw0KPiANCj4gSSBhbHNvIHJlY2Vu
dGx5IHZlcmlmaWVkIHRoYXQgdWRtYWJ1ZiArIE9fRElSRUNUIHdvcmtzIHdpdGgNCj4gc2VuZGZp
bGUoKSwgYW5kIHlvdSBjYW4gZXZlbiBNQURWX0NPTExBUFNFIHRoZSB1bmRlcmx5aW5nIHNobWVt
IGlmIHlvdQ0KPiB3YW50Lg0KDQpPaCwgbmljZSA6KQ0KDQpHb2luZyB0byBrZWVwIHRoYXQgaW4g
bWluZCBpZiBzb21lYm9keSBhc2sgZm9yIHRoYXQgZmVhdHVyZSBhZ2Fpbi4NCg0KUmVnYXJkcywN
CkNocmlzdGlhbi4NCg0KPiANCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4uDQo+Pg0KPj4+DQo+
Pj4gU2lnbmVkLW9mZi1ieTogd2FuZ3RhbyA8dGFvLndhbmd0YW9AaG9ub3IuY29tPg0KPj4+IC0t
LQ0KPj4+ICBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgIHwgIDggKysrKysrKysNCj4+PiAg
aW5jbHVkZS9saW51eC9kbWEtYnVmLmggICAgICB8ICAzICsrKw0KPj4+ICBpbmNsdWRlL3VhcGkv
bGludXgvZG1hLWJ1Zi5oIHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysNCj4+PiAg
MyBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+
PiBpbmRleCA1YmFhODNiODU1MTUuLjk1ZDhiMDE1OGZmZCAxMDA2NDQNCj4+PiAtLS0gYS9kcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
Yw0KPj4+IEBAIC00NjAsNiArNDYwLDcgQEAgc3RhdGljIGxvbmcgZG1hX2J1Zl9pb2N0bChzdHJ1
Y3QgZmlsZSAqZmlsZSwNCj4+PiAgICAgICBzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmOw0KPj4+ICAg
ICAgIHN0cnVjdCBkbWFfYnVmX3N5bmMgc3luYzsNCj4+PiAgICAgICBlbnVtIGRtYV9kYXRhX2Rp
cmVjdGlvbiBkaXJlY3Rpb247DQo+Pj4gKyAgICAgc3RydWN0IGRtYV9idWZfcndfZmlsZSBrZmls
ZTsNCj4+PiAgICAgICBpbnQgcmV0Ow0KPj4+DQo+Pj4gICAgICAgZG1hYnVmID0gZmlsZS0+cHJp
dmF0ZV9kYXRhOw0KPj4+IEBAIC01MDQsNiArNTA1LDEzIEBAIHN0YXRpYyBsb25nIGRtYV9idWZf
aW9jdGwoc3RydWN0IGZpbGUgKmZpbGUsDQo+Pj4gICAgICAgICAgICAgICByZXR1cm4gZG1hX2J1
Zl9pbXBvcnRfc3luY19maWxlKGRtYWJ1ZiwgKGNvbnN0IHZvaWQgX191c2VyICopYXJnKTsNCj4+
PiAgI2VuZGlmDQo+Pj4NCj4+PiArICAgICBjYXNlIERNQV9CVUZfSU9DVExfUldfRklMRToNCj4+
PiArICAgICAgICAgICAgIGlmIChjb3B5X2Zyb21fdXNlcigma2ZpbGUsICh2b2lkIF9fdXNlciAq
KSBhcmcsIHNpemVvZihrZmlsZSkpKQ0KPj4+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
LUVGQVVMVDsNCj4+PiArICAgICAgICAgICAgIGlmICghZG1hYnVmLT5vcHMtPnJ3X2ZpbGUpDQo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0KPj4+ICsgICAgICAgICAg
ICAgcmV0dXJuIGRtYWJ1Zi0+b3BzLT5yd19maWxlKGRtYWJ1ZiwgJmtmaWxlKTsNCj4+PiArDQo+
Pj4gICAgICAgZGVmYXVsdDoNCj4+PiAgICAgICAgICAgICAgIHJldHVybiAtRU5PVFRZOw0KPj4+
ICAgICAgIH0NCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNs
dWRlL2xpbnV4L2RtYS1idWYuaA0KPj4+IGluZGV4IDM2MjE2ZDI4ZDhiZC4uZGUyMzZiYTIwOTRi
IDEwMDY0NA0KPj4+IC0tLSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oDQo+Pj4gKysrIGIvaW5j
bHVkZS9saW51eC9kbWEtYnVmLmgNCj4+PiBAQCAtMjIsNiArMjIsNyBAQA0KPj4+ICAjaW5jbHVk
ZSA8bGludXgvZnMuaD4NCj4+PiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS5oPg0KPj4+ICAj
aW5jbHVkZSA8bGludXgvd2FpdC5oPg0KPj4+ICsjaW5jbHVkZSA8dWFwaS9saW51eC9kbWEtYnVm
Lmg+DQo+Pj4NCj4+PiAgc3RydWN0IGRldmljZTsNCj4+PiAgc3RydWN0IGRtYV9idWY7DQo+Pj4g
QEAgLTI4NSw2ICsyODYsOCBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgew0KPj4+DQo+Pj4gICAgICAg
aW50ICgqdm1hcCkoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFw
KTsNCj4+PiAgICAgICB2b2lkICgqdnVubWFwKShzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1
Y3QgaW9zeXNfbWFwICptYXApOw0KPj4+ICsNCj4+PiArICAgICBpbnQgKCpyd19maWxlKShzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9yd19maWxlICpmaWxlKTsNCj4+PiAg
fTsNCj4+Pg0KPj4+ICAvKioNCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2Rt
YS1idWYuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgNCj4+PiBpbmRleCA1YTZmZGE2
NmQ5YWQuLmVjOTE2NGI3Yjc1MyAxMDA2NDQNCj4+PiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgv
ZG1hLWJ1Zi5oDQo+Pj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaA0KPj4+IEBA
IC0xNjcsNiArMTY3LDI5IEBAIHN0cnVjdCBkbWFfYnVmX2ltcG9ydF9zeW5jX2ZpbGUgew0KPj4+
ICAgICAgIF9fczMyIGZkOw0KPj4+ICB9Ow0KPj4+DQo+Pj4gKy8qKg0KPj4+ICsgKiBzdHJ1Y3Qg
ZG1hX2J1Zl9yd19maWxlIC0gcmVhZC93cml0ZSBmaWxlIGFzc29jaWF0ZWQgd2l0aCBhIGRtYS1i
dWYNCj4+PiArICoNCj4+PiArICogVXNlcnNwYWNlIGNhbiBwZXJmb3JtcyBhIERNQV9CVUZfSU9D
VExfQkFDSyB0byBzYXZlIGRhdGEgZnJvbSBhIGRtYS1idWYgb3INCj4+PiArICogcmVzdG9yZSBk
YXRhIHRvIGEgZG1hLWJ1Zi4NCj4+PiArICovDQo+Pj4gK3N0cnVjdCBkbWFfYnVmX3J3X2ZpbGUg
ew0KPj4+ICsNCj4+PiArICAgICAvKiogQGZsYWdzOiBGbGFncyBpbmRpY2F0aW5nIHJlYWQvd3Jp
dGUgZm9yIHRoaXMgZG1hLWJ1Zi4gKi8NCj4+PiArICAgICBfX3UzMiBmbGFnczsNCj4+PiArICAg
ICAvKiogQGZkOiBGaWxlIGRlc2NyaXB0b3Igb2YgdGhlIGZpbGUgYXNzb2NpYXRlZCB3aXRoIHRo
aXMgZG1hLWJ1Zi4gKi8NCj4+PiArICAgICBfX3MzMiBmZDsNCj4+PiArICAgICAvKiogQGZpbGVf
b2Zmc2V0OiBPZmZzZXQgd2l0aGluIHRoZSBmaWxlIHdoZXJlIHRoaXMgZG1hLWJ1ZiBzdGFydHMu
DQo+Pj4gKyAgICAgICoNCj4+PiArICAgICAgKiAgT2Zmc2V0IGFuZCBMZW5ndGggbXVzdCBiZSBw
YWdlLWFsaWduZWQgZm9yIGRpcmVjdCBJL08uDQo+Pj4gKyAgICAgICovDQo+Pj4gKyAgICAgX191
NjQgZmlsZV9vZmZzZXQ7DQo+Pj4gKyAgICAgLyoqIEBidWZfb2Zmc2V0OiBPZmZzZXQgd2l0aGlu
IHRoaXMgZG1hLWJ1ZiB3aGVyZSB0aGUgcmVhZC93cml0ZSBzdGFydHMuICovDQo+Pj4gKyAgICAg
X191NjQgYnVmX29mZnNldDsNCj4+PiArICAgICAvKiogQGJ1Zl9sZW46IExlbmd0aCBvZiB0aGlz
IGRtYS1idWYgcmVhZC93cml0ZS4gKi8NCj4+PiArICAgICBfX3U2NCBidWZfbGVuOw0KPj4+ICt9
Ow0KPj4+ICsNCj4+PiAgI2RlZmluZSBETUFfQlVGX0JBU0UgICAgICAgICAnYicNCj4+PiAgI2Rl
ZmluZSBETUFfQlVGX0lPQ1RMX1NZTkMgICBfSU9XKERNQV9CVUZfQkFTRSwgMCwgc3RydWN0IGRt
YV9idWZfc3luYykNCj4+Pg0KPj4+IEBAIC0xNzksNCArMjAyLDEwIEBAIHN0cnVjdCBkbWFfYnVm
X2ltcG9ydF9zeW5jX2ZpbGUgew0KPj4+ICAjZGVmaW5lIERNQV9CVUZfSU9DVExfRVhQT1JUX1NZ
TkNfRklMRSAgICAgICBfSU9XUihETUFfQlVGX0JBU0UsIDIsIHN0cnVjdCBkbWFfYnVmX2V4cG9y
dF9zeW5jX2ZpbGUpDQo+Pj4gICNkZWZpbmUgRE1BX0JVRl9JT0NUTF9JTVBPUlRfU1lOQ19GSUxF
ICAgICAgIF9JT1coRE1BX0JVRl9CQVNFLCAzLCBzdHJ1Y3QgZG1hX2J1Zl9pbXBvcnRfc3luY19m
aWxlKQ0KPj4+DQo+Pj4gKyNkZWZpbmUgRE1BX0JVRl9SV19GTEFHU19PUF9NQVNLICgweEZGIDw8
IDApDQo+Pj4gKyNkZWZpbmUgRE1BX0JVRl9SV19GTEFHU19SRUFEICgxIDw8IDApIC8qIFJlc3Rv
cmUgZG1hLWJ1ZiBkYXRhICovDQo+Pj4gKyNkZWZpbmUgRE1BX0JVRl9SV19GTEFHU19XUklURSAo
MiA8PCAwKSAvKiBTYXZlIGRtYS1idWYgZGF0YSAqLw0KPj4+ICsjZGVmaW5lIERNQV9CVUZfUldf
RkxBR1NfRElSRUNUICgxdSA8PCAzMSkgLyogRGlyZWN0IHJlYWQvd3JpdGUgZmlsZSAqLw0KPj4+
ICsjZGVmaW5lIERNQV9CVUZfSU9DVExfUldfRklMRSAgICAgICAgX0lPVyhETUFfQlVGX0JBU0Us
IDQsIHN0cnVjdCBkbWFfYnVmX3J3X2ZpbGUpDQo+Pj4gKw0KPj4+ICAjZW5kaWYNCj4+DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJv
Lm9yZwo=
