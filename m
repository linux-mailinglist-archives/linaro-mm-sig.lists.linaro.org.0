Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E7954AB6AD4
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 14:00:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A91C8446DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 14 May 2025 12:00:34 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2089.outbound.protection.outlook.com [40.107.243.89])
	by lists.linaro.org (Postfix) with ESMTPS id 2350742540
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 May 2025 12:00:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=0J7oIlKy;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.243.89 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vXTLcM3MzBGLTvOPKT889+X10pn0SDGbZGDdzAOlf9MpZBAACOWzviWXW7bZUPPCbaPoJn+X+hhif6qb5tEapEGTBQ5cyL+GoE9B2v0S1pBLq4EfWsZZ3FAUe7MqhCY72p2pT5/4fnsfLD0Z3gitPVg0fGOwqBdNQQb89K2ywzLDaXCPHp1jdT8HyV/fjfC6ATaLmGeveb7Muk5NmCCYCPIZW8v1m6G+Bydqs886ZH6KbbeassfC8ndD20vqxlSKEAQKIiWkcYw6P8BX6+fKhOM9o8SpWNRNJ1eP+dzc5QKoCD0t6xn7yLzICMYpYneo2wbxsKTqeUcDfKJrQOCJ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=40U4+DIcUabRTX0XiLlZhNP3UU8tOLeSUD3yLd+nnz8=;
 b=FNsE7+RyJkMnCo53bVbYwY4QGdCul9EMhUvk2N3WITsA+D9IafYHk72NSU/mWo86Q+fd2QfaBb08gpsEjl+Eoz6fQ+TjBJx0qDXNshb16dWev8v9j/eK7U7kdkG5SwLLvd34+8YXfSAp4dDA8Es9lTllkE+zPWDKfvMnVlZ5v/BgvS2mapGbY2lFR0RATWYMFvdPH3Rp4gz2WKGbt57FH/wK+ZSYTjvQq00tdu1VuNjurjqa4rfLwQz+RimvCwYNYZCXpgzlrSzdlRc4xamgbcTpo13KGyVwCJ433Qo7MiNfT4IFcqUdfa3H5WkMVt0Fi4w05zcclIaflAZJNr6x7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=40U4+DIcUabRTX0XiLlZhNP3UU8tOLeSUD3yLd+nnz8=;
 b=0J7oIlKymUaBHQx/s7BxTj0PqG+wQqDfStEAEABHSfRTPTWALM55y9W9qubqW7GfQObeIrDIjO+V9fMYYI6drvWXeqZbGqEjCtvjh2KxCV5qLy3/U09FHclwueivXP+wPGnRH02datjrfBuwqJh1sbwyqizXPvZeF505tzxGLHw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SN7PR12MB7884.namprd12.prod.outlook.com (2603:10b6:806:343::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Wed, 14 May
 2025 12:00:18 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 12:00:18 +0000
Message-ID: <50092362-4644-4e47-9c63-fc82ba24e516@amd.com>
Date: Wed, 14 May 2025 14:00:12 +0200
User-Agent: Mozilla Thunderbird
To: wangtao <tao.wangtao@honor.com>,
 "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>,
 "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
 "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "tjmercier@google.com" <tjmercier@google.com>
References: <20250513092803.2096-1-tao.wangtao@honor.com>
 <fdc8f0a2-5b2f-4898-8090-0d7b888c15d8@amd.com>
 <5b68b2a50d48444b93d97f5d342f37c8@honor.com>
 <ef978301-6a63-451d-9ae6-171968b26a55@amd.com>
 <9f732ac8b90e4e819e0a6a5511ac3f6d@honor.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <9f732ac8b90e4e819e0a6a5511ac3f6d@honor.com>
X-ClientProxiedBy: BLAPR03CA0101.namprd03.prod.outlook.com
 (2603:10b6:208:32a::16) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SN7PR12MB7884:EE_
X-MS-Office365-Filtering-Correlation-Id: d298a41a-252b-45af-d798-08dd92dee567
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|376014|7416014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dExIUmprVUdmNmFlcTNFcXJWNW5hYTdPMnQ1R2l1Q1hVR2RGdnRaWkZya29J?=
 =?utf-8?B?cEMrOG1CdlR5Q0VJdnJzbU9KSHBjZWxJRnZ1MzJZMG1oRDhETGU5aUYrSmtQ?=
 =?utf-8?B?NU9nK1B2eUVFU3RiTE95VU5RZkNUTFhCUTlCTzV2bS90Ny9WY2pIVzFPWWFy?=
 =?utf-8?B?M0RPcWl6dUVMbFp0ckFoOTUxSFZjUng3TS9kb3hSandSbzRxSm9CVjdzWWF3?=
 =?utf-8?B?c2VJTFdOUmNNcURET00xdFFza0JqVG1UV1A2SEV1WURRdkVxbElocFFldEZN?=
 =?utf-8?B?VlZIdkVnaEdQeExwRGlIK1NzdklvUWJFWC9uUTdrOERxSlZKZTAybHpvRDE2?=
 =?utf-8?B?RG5JL09OZzFVUlAzR0VxOHlGRlllbkFtU0huU0RYczhKUFdiallXeVNlZHYx?=
 =?utf-8?B?UEFiUi9pRmJzNFlnUCtYbXlTcG1zeCtCWFNZRWs0NzJEb0V4YlZFd0d0YlFo?=
 =?utf-8?B?czB6SmRnT09jQXJGV2crNUQwUkNwM2FjR0FRdndOdHRKMUVUWFZkaXFSSU9U?=
 =?utf-8?B?ZzByUE93eEZOQjgzMEh6SXJIUmNSOWpZQ2c5dHkvK2lQbHMzWWNHbUlFYnNm?=
 =?utf-8?B?SVBOMUtRQmdlSWh6bTVnbzZHZVoxTk5jbHdxY1VlTS9ObE5rTEJLdWdYY0pU?=
 =?utf-8?B?TnJCWWp2N1A2azRvek90NVlMbytyckZHbVFNNjRjK21NTHlTbk9URHVIN3Vy?=
 =?utf-8?B?dzNTS0xvM2xHQkZqR0dCZ25mVEJZZ043MU81cVVZLzVwc3hhNVBrbXBrNlpV?=
 =?utf-8?B?YUZ1YXZVMlloLzNJV3pjMmJvaUVkb0w5K0wrcHJsTjMvV3F3NFRqYlF2aVgv?=
 =?utf-8?B?cFhDRE9HTHR1dnF0b3hpTzdSMCtKYVdpVUZyR0F0WmZ1TlEzbjB6OUlEc0xh?=
 =?utf-8?B?ZkJMS0F0ejk1NXI4VEZNeDZrVFVLTFF4dHZ6ZnRMYmdPeU9jQWxkVi9UQmhL?=
 =?utf-8?B?L2x4WW8zUldLWUpEWlBPdVhYcTJOUHk5cWJqZjBZUXpMekt1eWZxZ0xiMFpY?=
 =?utf-8?B?VUViU05TWFNINnhwNThmMEQ4UVU4VWNyQnhxQ2g0Y3MxOTJrcWZHOXU1UUs3?=
 =?utf-8?B?TU5DcFdTOGNnd1BpK1lpRXBHSGZCb28yWkZhY0FQOTdQWWc3VzhJWDNRd1hW?=
 =?utf-8?B?S2NjNWNqU1BWUU5UZzVlSTZmZ0NSL2ZseitSNmkyQzRWYUwydmRJYUNjM1Ew?=
 =?utf-8?B?akhWMlB3Q092U0NJRlNNamYxMTV2cUJkQXlQSngxR0k0TzY0UFUwVTk0ck1R?=
 =?utf-8?B?MDBnb2hmcWthQmZaemNYSXlCTElzY0R4Q05LZ2x3OVBzYTlNd0lwVnpkOEY5?=
 =?utf-8?B?bjhYdEZrcE9HMHRlRUFzelFSTjhvd2xKWXlGaVJjKytUeGpqd0NwQ3laMjVU?=
 =?utf-8?B?cHVVRE1LU0VoRk5xMnBQN1RpOWtoeVkxTWtKcGpvZTZUd21EMDJjdDlDSG93?=
 =?utf-8?B?UkVYaXQzTHNVSGVqSHdkVDhmV3dURnNnTTR0YkpLSWQreWd0by9LTHQ0dm5B?=
 =?utf-8?B?MHFTRXM3a2VaRy9mZ1Vnck5QOVNsNVVVUTZ2eldJR0N4RkladHhLZWZNVlI5?=
 =?utf-8?B?VXY3UG9IVUZZZGJnYjdiT003bStOc054R3EwdnhYZ3hQNU9xeEVKdlVFWkVi?=
 =?utf-8?B?S1lEeS83SkplNkFQRFNWcHZKTGZiTWhVU0M5ejFlb0IzcVhmeVpCSk5Xb1V0?=
 =?utf-8?B?Y0hSK2cyL3NlS2VZRWFPRDY0NHpES3FlVXlKOUVHTnFXTmh4SE13ZC84USt6?=
 =?utf-8?B?ZkdqQ2lhVVVkd3RrSW92U2cwb0UrRkdhWFpJVXZKMnhUenpycUhBNUJTa29l?=
 =?utf-8?B?T1BVUXEvMUZ2QlZwdUY3Z2ZXTUdiZTJRd0VrM2FRV2NCejJ5VFNKSVgyaHZZ?=
 =?utf-8?B?WEpwVlArQmRFYjZsZG53aTg4UzJLdjAwWWhWUWVyL3QyNndhN2s3WkVubWR3?=
 =?utf-8?Q?JVEhMuBzths=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T2d1MFV6QW9pRWkzVWRaYXMzL2N5WGZ1NzVYQmJDeW1VbWJlZDRPbldNNmR5?=
 =?utf-8?B?b0JFUmZ1bFNCUW1teWVGK3BWRmJhaDZxZ1hZakpoem94S3d6clowUTJteG5n?=
 =?utf-8?B?a1RvQVY1bzBlb2VSemJ3NmJnM1JwYVpoVWhjMzZTVjVORFBOMEUvcHBtaGRu?=
 =?utf-8?B?SWxFQ3Q1UjRFUU05dXVPcGMyK1pVTnhYcFF0Z09wb2hQcWlBNWNkTEw1ZU8y?=
 =?utf-8?B?RUk2QVBXWGpZamE5RjFFTWx6Vnp3U3RnL2Nma0dtSGdFYWtpcWJOUDA5Nnpo?=
 =?utf-8?B?bE1lcEpnKzZCcWlUdW1YVWtYeXRNQ2ZqdUpNOTNYc3pTRUIvRHExVjlhUXFr?=
 =?utf-8?B?ME1GK0ViMVkveXZLS0JMTFhWeEx4TGtLK0V6UjRBUW8xcUxUNEFmOWx6bmlE?=
 =?utf-8?B?aFNPQm45QVFPcytQdGNiRDlwNnZKOUxGOG92dzI4KzBaNFFpdGQzalZuTktL?=
 =?utf-8?B?L2gzVGVSdFlQNC9SVWthQWphSWczcTZsL3BNcklkQ3MvRi9QN0t1V0RPSUI1?=
 =?utf-8?B?ZUJyR1N0S1pOdEx6engzc3dKSlRtSDZkTm1DcGladmNlUDVsTGIxVzRMaGpq?=
 =?utf-8?B?RzhjUTUyZTBTckR6M2pHMUg4UENqbGxraFZGNHVEQTl5dndmWU1mcGVOMmlP?=
 =?utf-8?B?TkZNbnl5d29kMUdrUGkrSVMza08vTTdWVzQzMG8zZlBzYWFSOEc3bHNIeWtp?=
 =?utf-8?B?dHdkdFdrQ2ZjaVRraWJMU1BJWEh0V085dy8zVW8vbUJiYlFKanl5My80WFJl?=
 =?utf-8?B?OHlwamtndmRzSVJTcTNHQmxzYnhJMzZuT0RXQjFheHRYRkgwaWFyRVdxTFhF?=
 =?utf-8?B?YzRYMVNuK0hHYnZ1T1kzemViZTlwem5id012eTdwVXh3QXFtRWJ1dGF3M3Ru?=
 =?utf-8?B?TDU0NUJCcjZoQzlCVTFnYnIzUDU0QnBTZldLVGdKeGVwRGJ0RTRiNjZVS3Bq?=
 =?utf-8?B?YWhGMXRQUWFJZXNBNTNoOGNKSFJkVmN0T1hPMHRzei8za0xiTW00Rzd3cS96?=
 =?utf-8?B?Ujh3akoxM29hZmVaMnRleXVoNVZ5VVlSVUJDUm52MnlUdzdrZTBZWFFOTGRi?=
 =?utf-8?B?alJSVENmZ3ZvRGhXZUNSZmIwUHdMYk1VaUpGOVNaQ3AwU1dtOUFlM2FyZlJN?=
 =?utf-8?B?ZmVSSTlZY0VzL0lXVCtUV1dyQ203dlN2V0x5VzhKYnZyM1dHUWdUb2FrcHJx?=
 =?utf-8?B?cXJmaDkzamVMZEFqdkhIMThNNnFYSUM0MTFadmhrVFd5OForM29ZMS80N0xR?=
 =?utf-8?B?RkpJQW12MkZRRnVobHhkMzcrUUFLZ1NNNXVmTU01dEpTSTk5enhiNFZ6V1l3?=
 =?utf-8?B?YVhtcWFZRVloY2lrTG92TVUvZjBJRWhVWGovb1BzY3dRb0c3Tkt4S3FaczhQ?=
 =?utf-8?B?b2ErbzB6Vm1BZWJaWnBocS8yRm5wVnA4MEwzSEpIdGRUSm9yS05pRUFuVFhz?=
 =?utf-8?B?bWVEcC80YlZwU09FNmJiOGw1YUlnenkybEVmNG1VLzdkS3lscW9CSEZsUTI3?=
 =?utf-8?B?Y1dKQzlwOHp0N2ZoUy9MNkc4b1RWWWhQbnJPU2wzdFhxUzJ0YktkcEQ5NHd5?=
 =?utf-8?B?VUxJVjZIWUlGUG9qWTNqOEhJRXdZR3ZKRmdYb01qVmxNWnpQYlZoMWFRcWFm?=
 =?utf-8?B?RXh3ZGtBZ3puekU4VmREeTZDak84cG1QQTdJa2ZqWnZmLzQ0R2ltbGU2TjhP?=
 =?utf-8?B?d09ib3l5ajBaV1krNzlLUzB4WU8wR1pwTHJBeHBEN1FjLzRrT1F3b1B4RlU1?=
 =?utf-8?B?Wi9RSy95enhwMVFjQ1FIK0NVSDdOeDVYSW40VlNDbnRNWmpoUTZRYWxkTlYy?=
 =?utf-8?B?VWtSMmU4NGVwdkc4OTh1SVdZUGlocG5uUGo2QmRna0puNGdzSW1BWlB4SlE1?=
 =?utf-8?B?Uy9iQlhMQ2dXQmhvdXV1blhQanczai9NNWZSamxBMmFQYm83Vzd0RE16WUZH?=
 =?utf-8?B?Q3FtRjZnZjdWQjNVMWx4U3FUblppcUdkTWhyL1ZoSXVsS0dSSXViS3ZweE93?=
 =?utf-8?B?RGlMMFp1UXB5Zy91WHJJMnkyaHUxU2RDNklpb25XT2ZYaG5DUklnUHVzMlAy?=
 =?utf-8?B?enFQY0RRQkxYVENwbTArWWU1OG1aUS9hTkNzL1VSZ2M1OHczcGcwTGZTUXRh?=
 =?utf-8?Q?AwaaGy5I4X0uJT4OWSEWlWeC5?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d298a41a-252b-45af-d798-08dd92dee567
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 May 2025 12:00:18.7373
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Y7j8OVtYMmHrcEoUw32z8m/cc5wEMuRkxWQ2sNWweTeFcebUATU/HA4UisNTF9c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR12MB7884
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2350742540
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.243.89:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.243.89:from];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: X47YWXWLXGEC6L7OANVECUGOR3YQKFPW
X-Message-ID-Hash: X47YWXWLXGEC6L7OANVECUGOR3YQKFPW
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "wangbintian(BintianWang)" <bintian.wang@honor.com>, yipengxiang <yipengxiang@honor.com>, liulu 00013167 <liulu.liu@honor.com>, hanfeng 00012985 <feng.han@honor.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/2] dmabuf/heaps: implement DMA_BUF_IOCTL_RW_FILE for system_heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X47YWXWLXGEC6L7OANVECUGOR3YQKFPW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gNS8xNC8yNSAxMzowMiwgd2FuZ3RhbyB3cm90ZToNCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQo+PiBGcm9tOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+DQo+PiBTZW50OiBUdWVzZGF5LCBNYXkgMTMsIDIwMjUgOToxOCBQTQ0KPj4gVG86IHdhbmd0
YW8gPHRhby53YW5ndGFvQGhvbm9yLmNvbT47IHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnOw0KPj4g
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbTsgQnJpYW4uU3RhcmtleUBhcm0uY29tOw0K
Pj4ganN0dWx0ekBnb29nbGUuY29tOyB0am1lcmNpZXJAZ29vZ2xlLmNvbQ0KPj4gQ2M6IGxpbnV4
LW1lZGlhQHZnZXIua2VybmVsLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsg
bGluYXJvLQ0KPj4gbW0tc2lnQGxpc3RzLmxpbmFyby5vcmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtl
cm5lbC5vcmc7DQo+PiB3YW5nYmludGlhbihCaW50aWFuV2FuZykgPGJpbnRpYW4ud2FuZ0Bob25v
ci5jb20+OyB5aXBlbmd4aWFuZw0KPj4gPHlpcGVuZ3hpYW5nQGhvbm9yLmNvbT47IDxsaXVsdS5s
aXVAaG9ub3IuY29tPjsgPGZlbmcuaGFuQGhvbm9yLmNvbT4NCj4+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggMi8yXSBkbWFidWYvaGVhcHM6IGltcGxlbWVudA0KPj4gRE1BX0JVRl9JT0NUTF9SV19GSUxF
IGZvciBzeXN0ZW1faGVhcA0KPj4NCj4+IE9uIDUvMTMvMjUgMTQ6MzAsIHdhbmd0YW8gd3JvdGU6
DQo+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+Pj4+IEZyb206IENocmlzdGlhbiBL
w7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4+Pj4gU2VudDogVHVlc2RheSwgTWF5
IDEzLCAyMDI1IDc6MzIgUE0NCj4+Pj4gVG86IHdhbmd0YW8gPHRhby53YW5ndGFvQGhvbm9yLmNv
bT47IHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnOw0KPj4+PiBiZW5qYW1pbi5nYWlnbmFyZEBjb2xs
YWJvcmEuY29tOyBCcmlhbi5TdGFya2V5QGFybS5jb207DQo+Pj4+IGpzdHVsdHpAZ29vZ2xlLmNv
bTsgdGptZXJjaWVyQGdvb2dsZS5jb20NCj4+Pj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVs
Lm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4+Pj4gbGluYXJvLSBtbS1z
aWdAbGlzdHMubGluYXJvLm9yZzsgbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsNCj4+Pj4g
d2FuZ2JpbnRpYW4oQmludGlhbldhbmcpIDxiaW50aWFuLndhbmdAaG9ub3IuY29tPjsgeWlwZW5n
eGlhbmcNCj4+Pj4gPHlpcGVuZ3hpYW5nQGhvbm9yLmNvbT47IDxsaXVsdS5saXVAaG9ub3IuY29t
PjsNCj4+Pj4gPGZlbmcuaGFuQGhvbm9yLmNvbT4NCj4+Pj4gU3ViamVjdDogUmU6IFtQQVRDSCAy
LzJdIGRtYWJ1Zi9oZWFwczogaW1wbGVtZW50DQo+Pj4+IERNQV9CVUZfSU9DVExfUldfRklMRSBm
b3Igc3lzdGVtX2hlYXANCj4+Pj4NCj4+Pj4gT24gNS8xMy8yNSAxMToyOCwgd2FuZ3RhbyB3cm90
ZToNCj4+Pj4+IFN1cHBvcnQgZGlyZWN0IGZpbGUgSS9PIG9wZXJhdGlvbnMgZm9yIHN5c3RlbV9o
ZWFwIGRtYS1idWYgb2JqZWN0cy4NCj4+Pj4+IEltcGxlbWVudGF0aW9uIGluY2x1ZGVzOg0KPj4+
Pj4gMS4gQ29udmVydCBzZ190YWJsZSB0byBiaW9fdmVjDQo+Pj4+DQo+Pj4+IFRoYXQgaXMgdXN1
YWxseSBpbGxlZ2FsIGZvciBETUEtYnVmcy4NCj4+PiBbd2FuZ3Rhb10gVGhlIHRlcm0gJ2NvbnZl
cnQnIGlzIG1pc2xlYWRpbmcgaW4gdGhpcyBjb250ZXh0LiBUaGUgYXBwcm9wcmlhdGUNCj4+IHBo
cmFzaW5nIHNob3VsZCBiZTogQ29uc3RydWN0IGJpb192ZWMgZnJvbSBzZ190YWJsZS4NCj4+DQo+
PiBXZWxsIGl0IGRvZXNuJ3QgbWF0dGVyIHdoYXQgeW91IGNhbGwgaXQuIFRvdWNoaW5nIHRoZSBw
YWdlIGluc2lkZSBhbiBzZyB0YWJsZSBvZg0KPj4gYSBETUEtYnVmIGlzIGlsbGVnYWwsIHdlIGV2
ZW4gaGF2ZSBjb2RlIHRvIGFjdGl2ZWx5IHByZXZlbnQgdGhhdC4NCj4gW3dhbmd0YW9dIEZvciBh
IGRyaXZlciB1c2luZyBETUEtYnVmOiBEb24ndCB0b3VjaCBwYWdlcyBpbiB0aGUgc2dfdGFibGUu
IEJ1dCB0aGUgc3lzdGVtIGhlYXAgZXhwb3J0ZXIgKHNnX3RhYmxlIG93bmVyKSBzaG91bGQgYmUg
YWxsb3dlZCB0byB1c2UgdGhlbS4NCg0KR29vZCBwb2ludCB0aGF0IG1pZ2h0IGJlIHBvc3NpYmxl
Lg0KDQo+IElmIGEgZHJpdmVyIHRha2VzIG93bmVyc2hpcCB2aWEgZG1hX2J1Zl9tYXBfYXR0YWNo
bWVudCBvciBzaW1pbGFyIGNhbGxzLCB0aGUgZXhwb3J0ZXIgbXVzdCBzdG9wIHVzaW5nIHRoZSBz
Z190YWJsZS4NCj4gVXNlci1zcGFjZSBwcm9ncmFtcyBzaG91bGQgY2FsbCBETUFfQlVGX0lPQ1RM
X1JXX0ZJTEUgb25seSB3aGVuIHRoZSBETUEtYnVmIGlzIG5vdCBhdHRhY2hlZC4NCj4gVGhlIGV4
cG9ydGVyIG11c3QgY2hlY2sgb3duZXJzaGlwIChlLmcuLCBlbnN1cmUgbm8gbWFwX2RtYV9idWYv
dm1hcCBpcyBhY3RpdmUpIGFuZCBibG9jayBuZXcgY2FsbHMgZHVyaW5nIG9wZXJhdGlvbnMuDQo+
IEknbGwgYWRkIHRoZXNlIGNoZWNrcyBpbiBwYXRjaCB2Mi4NCj4gDQo+Pg0KPj4gT25jZSBtb3Jl
OiBUaGlzIGFwcHJvYWNoIHdhcyBhbHJlYWR5IHJlamVjdGVkIG11bHRpcGxlIHRpbWVzISBQbGVh
c2UgdXNlDQo+PiB1ZG1hYnVmIGluc3RlYWQhDQo+Pg0KPj4gVGhlIGhhY2sgeW91IGNhbWUgdXAg
aGVyZSBpcyBzaW1wbHkgbm90IG5lY2Vzc2FyeS4NCj4gW3dhbmd0YW9dIE1hbnkgcGVvcGxlIG5l
ZWQgRE1BLWJ1ZiBkaXJlY3QgSS9PLiBJIHRyaWVkIGl0IDIgeWVhcnMgYWdvLiBNeSBtZXRob2Qg
aXMgc2ltcGxlciwgdXNlcyBsZXNzIENQVS9wb3dlciwgYW5kIHBlcmZvcm1zIGJldHRlcjoNCg0K
SSBkb24ndCB0aGluayB0aGF0IHRoaXMgaXMgYSB2YWxpZCBhcmd1bWVudC4NCg0KPiAgIC0gU3Bl
ZWQ6IDM0MTggTUIvcyB2cy4gMjA3MyBNQi9zICh1ZG1hYnVmKSBhdCAxR0h6IENQVS4NCj4gICAt
IHVkbWFidWYgd2FzdGVzIGhhbGYgaXRzIENQVSB0aW1lIG9uIF9fZ2V0X3VzZXJfcGFnZXMuDQo+
ICAgLSBDcmVhdGluZyAzMngzMk1CIERNQS1idWZzICsgcmVhZGluZyAxR0IgZmlsZSB0YWtlcyAz
NDYgbXMgdnMuIDExNDUgbXMgZm9yIHVkbWFidWYgKDEweCBzbG93ZXIpIHZzLiAxNTAzIG1zIGZv
ciBETUEtYnVmIG5vcm1hbC4NCg0KV2h5IHdvdWxkIHVzaW5nIHVkbWFidWYgYmUgc2xvd2VyIGhl
cmU/DQoNCj4gdWRtYWJ1ZiBpcyBzbGlnaHRseSBmYXN0ZXIgYnV0IG5vdCBlbm91Z2guIFN3aXRj
aGluZyB0byB1ZG1hYnVmIGlzIGVhc3kgZm9yIHNtYWxsIGFwcHMgYnV0IGhhcmQgaW4gY29tcGxl
eCBzeXN0ZW1zIHdpdGhvdXQgbWFqb3IgYmVuZWZpdHMuDQoNClllYWgsIGJ1dCB5b3VyIGFwcHJv
YWNoIGhlcmUgaXMgYSByYXRoZXIgY2xlYXIgaGFjay4gVXNpbmcgdWRtYWJ1ZiBpcyBtdWNoIG1v
cmUgY2xlYW5lciBhbmQgZ2VuZXJhbGx5IGFjY2VwdGVkIGJ5IGV2ZXJ5Ym9keSBub3cuDQoNCkFz
IGZhciBhcyBJIGNhbiBzZWUgSSBoYXZlIHRvIHJlamVjdCB5b3VyIGFwcHJvYWNoIGhlcmUuDQoN
ClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCg0KPj4NCj4+IFJlZ2FyZHMsDQo+PiBDaHJpc3RpYW4u
DQo+Pg0KPj4NCj4+PiBBcHByZWNpYXRlIHlvdXIgZmVlZGJhY2suDQo+Pj4+DQo+Pj4+IFJlZ2Fy
ZHMsDQo+Pj4+IENocmlzdGlhbi4NCj4+Pj4NCj4+Pj4+IDIuIFNldCBJT0NCX0RJUkVDVCB3aGVu
IE9fRElSRUNUIGlzIHN1cHBvcnRlZCAzLiBJbnZva2UNCj4+Pj4+IHZmc19pb2NiX2l0ZXJfcmVh
ZCgpL3Zmc19pb2NiX2l0ZXJfd3JpdGUoKSBmb3IgYWN0dWFsIEkvTw0KPj4+Pj4NCj4+Pj4+IFBl
cmZvcm1hbmNlIG1ldHJpY3MgKFVGUyA0LjAgZGV2aWNlIEA0R0IvcywgQXJtNjQgQ1BVIEAxR0h6
KToNCj4+Pj4+DQo+Pj4+PiB8IE1ldHJpYyAgICAgICAgICAgICB8ICAgIDFNQiB8ICAgIDhNQiB8
ICAgIDY0TUIgfCAgIDEwMjRNQiB8ICAgMzA3Mk1CIHwNCj4+Pj4+IHwtLS0tLS0tLS0tLS0tLS0t
LS0tLXwtLS0tLS0tOnwtLS0tLS0tOnwtLS0tLS0tLTp8LS0tLS0tLS0tOnwtLS0tLS0tDQo+Pj4+
PiB8LS0tLS0tLS0tLS0tLS0tLS0tLS18LS0NCj4+Pj4+IHwtLS0tLS0tLS0tLS0tLS0tLS0tLXw6
fA0KPj4+Pj4gfCBCdWZmZXIgUmVhZCAodXMpICAgfCAgIDE2NTggfCAgIDkwMjggfCAgIDY5Mjk1
IHwgIDEwMTk3ODMgfCAgMjk3ODE3OSB8DQo+Pj4+PiB8IERpcmVjdCBSZWFkICh1cykgICB8ICAg
IDcwNyB8ICAgMjY0NyB8ICAgMTg2ODkgfCAgIDI5OTYyNyB8ICAgOTM3NzU4IHwNCj4+Pj4+IHwg
QnVmZmVyIFJhdGUgKE1CL3MpIHwgICAgNjAzIHwgICAgODg2IHwgICAgIDkyNCB8ICAgICAxMDA0
IHwgICAgIDEwMzIgfA0KPj4+Pj4gfCBEaXJlY3QgUmF0ZSAoTUIvcykgfCAgIDE0MTQgfCAgIDMw
MjIgfCAgICAzNDI1IHwgICAgIDM0MTggfCAgICAgMzI3NiB8DQo+Pj4+Pg0KPj4+Pj4gU2lnbmVk
LW9mZi1ieTogd2FuZ3RhbyA8dGFvLndhbmd0YW9AaG9ub3IuY29tPg0KPj4+Pj4gLS0tDQo+Pj4+
PiAgZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMgfCAxMTgNCj4+Pj4+ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysNCj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTE4IGluc2Vy
dGlvbnMoKykNCj4+Pj4+DQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2hlYXBz
L3N5c3RlbV9oZWFwLmMNCj4+Pj4+IGIvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFw
LmMNCj4+Pj4+IGluZGV4IDI2ZDVkYzg5ZWExNi4uZjdiNzFiOTg0M2FhIDEwMDY0NA0KPj4+Pj4g
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4+Pj4+ICsrKyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+Pj4+PiBAQCAtMjAsNiArMjAsOCBA
QA0KPj4+Pj4gICNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPg0KPj4+Pj4gICNpbmNsdWRl
IDxsaW51eC9zbGFiLmg+DQo+Pj4+PiAgI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4NCj4+Pj4+
ICsjaW5jbHVkZSA8bGludXgvYnZlYy5oPg0KPj4+Pj4gKyNpbmNsdWRlIDxsaW51eC91aW8uaD4N
Cj4+Pj4+DQo+Pj4+PiAgc3RhdGljIHN0cnVjdCBkbWFfaGVhcCAqc3lzX2hlYXA7DQo+Pj4+Pg0K
Pj4+Pj4gQEAgLTI4MSw2ICsyODMsMTIxIEBAIHN0YXRpYyB2b2lkIHN5c3RlbV9oZWFwX3Z1bm1h
cChzdHJ1Y3QNCj4+IGRtYV9idWYNCj4+Pj4gKmRtYWJ1Ziwgc3RydWN0IGlvc3lzX21hcCAqbWFw
KQ0KPj4+Pj4gIAlpb3N5c19tYXBfY2xlYXIobWFwKTsNCj4+Pj4+ICB9DQo+Pj4+Pg0KPj4+Pj4g
K3N0YXRpYyBzdHJ1Y3QgYmlvX3ZlYyAqc3lzdGVtX2hlYXBfaW5pdF9idmVjKHN0cnVjdA0KPj4+
PiBzeXN0ZW1faGVhcF9idWZmZXIgKmJ1ZmZlciwNCj4+Pj4+ICsJCQlzaXplX3Qgb2Zmc2V0LCBz
aXplX3QgbGVuLCBpbnQgKm5yX3NlZ3MpIHsNCj4+Pj4+ICsJc3RydWN0IHNnX3RhYmxlICpzZ3Qg
PSAmYnVmZmVyLT5zZ190YWJsZTsNCj4+Pj4+ICsJc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCj4+
Pj4+ICsJc2l6ZV90IGxlbmd0aCA9IDA7DQo+Pj4+PiArCXVuc2lnbmVkIGludCBpLCBrID0gMDsN
Cj4+Pj4+ICsJc3RydWN0IGJpb192ZWMgKmJ2ZWM7DQo+Pj4+PiArCXNpemVfdCBzZ19sZWZ0Ow0K
Pj4+Pj4gKwlzaXplX3Qgc2dfb2Zmc2V0Ow0KPj4+Pj4gKwlzaXplX3Qgc2dfbGVuOw0KPj4+Pj4g
Kw0KPj4+Pj4gKwlidmVjID0ga3ZjYWxsb2Moc2d0LT5uZW50cywgc2l6ZW9mKCpidmVjKSwgR0ZQ
X0tFUk5FTCk7DQo+Pj4+PiArCWlmICghYnZlYykNCj4+Pj4+ICsJCXJldHVybiBOVUxMOw0KPj4+
Pj4gKw0KPj4+Pj4gKwlmb3JfZWFjaF9zZyhzZ3QtPnNnbCwgc2csIHNndC0+bmVudHMsIGkpIHsN
Cj4+Pj4+ICsJCWxlbmd0aCArPSBzZy0+bGVuZ3RoOw0KPj4+Pj4gKwkJaWYgKGxlbmd0aCA8PSBv
ZmZzZXQpDQo+Pj4+PiArCQkJY29udGludWU7DQo+Pj4+PiArDQo+Pj4+PiArCQlzZ19sZWZ0ID0g
bGVuZ3RoIC0gb2Zmc2V0Ow0KPj4+Pj4gKwkJc2dfb2Zmc2V0ID0gc2ctPm9mZnNldCArIHNnLT5s
ZW5ndGggLSBzZ19sZWZ0Ow0KPj4+Pj4gKwkJc2dfbGVuID0gbWluKHNnX2xlZnQsIGxlbik7DQo+
Pj4+PiArDQo+Pj4+PiArCQlidmVjW2tdLmJ2X3BhZ2UgPSBzZ19wYWdlKHNnKTsNCj4+Pj4+ICsJ
CWJ2ZWNba10uYnZfbGVuID0gc2dfbGVuOw0KPj4+Pj4gKwkJYnZlY1trXS5idl9vZmZzZXQgPSBz
Z19vZmZzZXQ7DQo+Pj4+PiArCQlrKys7DQo+Pj4+PiArDQo+Pj4+PiArCQlvZmZzZXQgKz0gc2df
bGVuOw0KPj4+Pj4gKwkJbGVuIC09IHNnX2xlbjsNCj4+Pj4+ICsJCWlmIChsZW4gPD0gMCkNCj4+
Pj4+ICsJCQlicmVhazsNCj4+Pj4+ICsJfQ0KPj4+Pj4gKw0KPj4+Pj4gKwkqbnJfc2VncyA9IGs7
DQo+Pj4+PiArCXJldHVybiBidmVjOw0KPj4+Pj4gK30NCj4+Pj4+ICsNCj4+Pj4+ICtzdGF0aWMg
aW50IHN5c3RlbV9oZWFwX3J3X2ZpbGUoc3RydWN0IHN5c3RlbV9oZWFwX2J1ZmZlciAqYnVmZmVy
LA0KPj4+Pj4gK2Jvb2wNCj4+Pj4gaXNfcmVhZCwNCj4+Pj4+ICsJCWJvb2wgZGlyZWN0X2lvLCBz
dHJ1Y3QgZmlsZSAqZmlscCwgbG9mZl90IGZpbGVfb2Zmc2V0LA0KPj4+Pj4gKwkJc2l6ZV90IGJ1
Zl9vZmZzZXQsIHNpemVfdCBsZW4pDQo+Pj4+PiArew0KPj4+Pj4gKwlzdHJ1Y3QgYmlvX3ZlYyAq
YnZlYzsNCj4+Pj4+ICsJaW50IG5yX3NlZ3MgPSAwOw0KPj4+Pj4gKwlzdHJ1Y3QgaW92X2l0ZXIg
aXRlcjsNCj4+Pj4+ICsJc3RydWN0IGtpb2NiIGtpb2NiOw0KPj4+Pj4gKwlzc2l6ZV90IHJldCA9
IDA7DQo+Pj4+PiArDQo+Pj4+PiArCWlmIChkaXJlY3RfaW8pIHsNCj4+Pj4+ICsJCWlmICghKGZp
bHAtPmZfbW9kZSAmIEZNT0RFX0NBTl9PRElSRUNUKSkNCj4+Pj4+ICsJCQlyZXR1cm4gLUVJTlZB
TDsNCj4+Pj4+ICsJfQ0KPj4+Pj4gKw0KPj4+Pj4gKwlidmVjID0gc3lzdGVtX2hlYXBfaW5pdF9i
dmVjKGJ1ZmZlciwgYnVmX29mZnNldCwgbGVuLCAmbnJfc2Vncyk7DQo+Pj4+PiArCWlmICghYnZl
YykNCj4+Pj4+ICsJCXJldHVybiAtRU5PTUVNOw0KPj4+Pj4gKw0KPj4+Pj4gKwlpb3ZfaXRlcl9i
dmVjKCZpdGVyLCBpc19yZWFkID8gSVRFUl9ERVNUIDogSVRFUl9TT1VSQ0UsIGJ2ZWMsDQo+Pj4+
IG5yX3NlZ3MsIGxlbik7DQo+Pj4+PiArCWluaXRfc3luY19raW9jYigma2lvY2IsIGZpbHApOw0K
Pj4+Pj4gKwlraW9jYi5raV9wb3MgPSBmaWxlX29mZnNldDsNCj4+Pj4+ICsJaWYgKGRpcmVjdF9p
bykNCj4+Pj4+ICsJCWtpb2NiLmtpX2ZsYWdzIHw9IElPQ0JfRElSRUNUOw0KPj4+Pj4gKw0KPj4+
Pj4gKwl3aGlsZSAoa2lvY2Iua2lfcG9zIDwgZmlsZV9vZmZzZXQgKyBsZW4pIHsNCj4+Pj4+ICsJ
CWlmIChpc19yZWFkKQ0KPj4+Pj4gKwkJCXJldCA9IHZmc19pb2NiX2l0ZXJfcmVhZChmaWxwLCAm
a2lvY2IsICZpdGVyKTsNCj4+Pj4+ICsJCWVsc2UNCj4+Pj4+ICsJCQlyZXQgPSB2ZnNfaW9jYl9p
dGVyX3dyaXRlKGZpbHAsICZraW9jYiwgJml0ZXIpOw0KPj4+Pj4gKwkJaWYgKHJldCA8PSAwKQ0K
Pj4+Pj4gKwkJCWJyZWFrOw0KPj4+Pj4gKwl9DQo+Pj4+PiArDQo+Pj4+PiArCWt2ZnJlZShidmVj
KTsNCj4+Pj4+ICsJcmV0dXJuIHJldCA8IDAgPyByZXQgOiAwOw0KPj4+Pj4gK30NCj4+Pj4+ICsN
Cj4+Pj4+ICtzdGF0aWMgaW50IHN5c3RlbV9oZWFwX2RtYV9idWZfcndfZmlsZShzdHJ1Y3QgZG1h
X2J1ZiAqZG1hYnVmLA0KPj4+Pj4gKwkJCXN0cnVjdCBkbWFfYnVmX3J3X2ZpbGUgKmJhY2spDQo+
Pj4+PiArew0KPj4+Pj4gKwlzdHJ1Y3Qgc3lzdGVtX2hlYXBfYnVmZmVyICpidWZmZXIgPSBkbWFi
dWYtPnByaXY7DQo+Pj4+PiArCWludCByZXQgPSAwOw0KPj4+Pj4gKwlfX3UzMiBvcCA9IGJhY2st
PmZsYWdzICYgRE1BX0JVRl9SV19GTEFHU19PUF9NQVNLOw0KPj4+Pj4gKwlib29sIGRpcmVjdF9p
byA9IGJhY2stPmZsYWdzICYgRE1BX0JVRl9SV19GTEFHU19ESVJFQ1Q7DQo+Pj4+PiArCXN0cnVj
dCBmaWxlICpmaWxwOw0KPj4+Pj4gKw0KPj4+Pj4gKwlpZiAob3AgIT0gRE1BX0JVRl9SV19GTEFH
U19SRUFEICYmIG9wICE9DQo+Pj4+IERNQV9CVUZfUldfRkxBR1NfV1JJVEUpDQo+Pj4+PiArCQly
ZXR1cm4gLUVJTlZBTDsNCj4+Pj4+ICsJaWYgKGRpcmVjdF9pbykgew0KPj4+Pj4gKwkJaWYgKCFQ
QUdFX0FMSUdORUQoYmFjay0+ZmlsZV9vZmZzZXQpIHx8DQo+Pj4+PiArCQkJIVBBR0VfQUxJR05F
RChiYWNrLT5idWZfb2Zmc2V0KSB8fA0KPj4+Pj4gKwkJCSFQQUdFX0FMSUdORUQoYmFjay0+YnVm
X2xlbikpDQo+Pj4+PiArCQlyZXR1cm4gLUVJTlZBTDsNCj4+Pj4+ICsJfQ0KPj4+Pj4gKwlpZiAo
IWJhY2stPmJ1Zl9sZW4gfHwgYmFjay0+YnVmX2xlbiA+IGRtYWJ1Zi0+c2l6ZSB8fA0KPj4+Pj4g
KwkJYmFjay0+YnVmX29mZnNldCA+PSBkbWFidWYtPnNpemUgfHwNCj4+Pj4+ICsJCWJhY2stPmJ1
Zl9vZmZzZXQgKyBiYWNrLT5idWZfbGVuID4gZG1hYnVmLT5zaXplKQ0KPj4+Pj4gKwkJcmV0dXJu
IC1FSU5WQUw7DQo+Pj4+PiArCWlmIChiYWNrLT5maWxlX29mZnNldCArIGJhY2stPmJ1Zl9sZW4g
PCBiYWNrLT5maWxlX29mZnNldCkNCj4+Pj4+ICsJCXJldHVybiAtRUlOVkFMOw0KPj4+Pj4gKw0K
Pj4+Pj4gKwlmaWxwID0gZmdldChiYWNrLT5mZCk7DQo+Pj4+PiArCWlmICghZmlscCkNCj4+Pj4+
ICsJCXJldHVybiAtRUJBREY7DQo+Pj4+PiArDQo+Pj4+PiArCW11dGV4X2xvY2soJmJ1ZmZlci0+
bG9jayk7DQo+Pj4+PiArCXJldCA9IHN5c3RlbV9oZWFwX3J3X2ZpbGUoYnVmZmVyLCBvcCA9PQ0K
Pj4+PiBETUFfQlVGX1JXX0ZMQUdTX1JFQUQsIGRpcmVjdF9pbywNCj4+Pj4+ICsJCQlmaWxwLCBi
YWNrLT5maWxlX29mZnNldCwgYmFjay0+YnVmX29mZnNldCwgYmFjay0NCj4+Pj4+IGJ1Zl9sZW4p
Ow0KPj4+Pj4gKwltdXRleF91bmxvY2soJmJ1ZmZlci0+bG9jayk7DQo+Pj4+PiArDQo+Pj4+PiAr
CWZwdXQoZmlscCk7DQo+Pj4+PiArCXJldHVybiByZXQ7DQo+Pj4+PiArfQ0KPj4+Pj4gKw0KPj4+
Pj4gIHN0YXRpYyB2b2lkIHN5c3RlbV9oZWFwX2RtYV9idWZfcmVsZWFzZShzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmKSAgew0KPj4+Pj4gIAlzdHJ1Y3Qgc3lzdGVtX2hlYXBfYnVmZmVyICpidWZmZXIg
PSBkbWFidWYtPnByaXY7IEBAIC0zMDgsNg0KPj4+PiArNDI1LDcNCj4+Pj4+IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgc3lzdGVtX2hlYXBfYnVmX29wcyA9IHsNCj4+Pj4+ICAJ
Lm1tYXAgPSBzeXN0ZW1faGVhcF9tbWFwLA0KPj4+Pj4gIAkudm1hcCA9IHN5c3RlbV9oZWFwX3Zt
YXAsDQo+Pj4+PiAgCS52dW5tYXAgPSBzeXN0ZW1faGVhcF92dW5tYXAsDQo+Pj4+PiArCS5yd19m
aWxlID0gc3lzdGVtX2hlYXBfZG1hX2J1Zl9yd19maWxlLA0KPj4+Pj4gIAkucmVsZWFzZSA9IHN5
c3RlbV9oZWFwX2RtYV9idWZfcmVsZWFzZSwgIH07DQo+Pj4+Pg0KPj4+DQo+IA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
