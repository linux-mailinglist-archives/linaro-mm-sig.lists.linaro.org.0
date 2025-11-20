Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC73C72E3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 09:32:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 955E83F811
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 Nov 2025 08:32:51 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011070.outbound.protection.outlook.com [40.93.194.70])
	by lists.linaro.org (Postfix) with ESMTPS id 80F413F69B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 20 Nov 2025 08:32:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=UvmPEtCL;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.70 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oy1adKNts9gR1TIX4pX/eNuDo05TRIp9has//tsNMLDyZYmzkk7vfU9hKG1/8Qe+sSThOn6BbOlZQw2X4MBBMKmR2oDEovCUqR6qDWGHfnjx7pXL1/Hwl378ngD5jkj9rWpu270LnFgqa3O9cyWaMsy9CKvp//QehO1lK5KUwlLfdSnQzfY10TwHsjLGKwT6PLPoDEQCBDQB+1CCaRiKQ1ORySsWg8tlG2NtsuizyXuiwENL0gKxnXfsLq9E1epZr71TqSdkPwiTmA2mfQr/ygZXyyPTza6U8JPfzBcSTvCNxJ4vSG6On04y7qJgaVJzwU269L5v3RO7EjiXHOQihQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NsKT8NtNBSIWWXLiz+ADR0aSU+r3n63tviQ9dZ/h0yw=;
 b=XPLm9Awr3wN7rJt28cU8nhR+55BtTwEhRBz+O3mUJCGD9JKPcTbjDMVM8Kf0wVkQuY2vgdU0qoMWbkL78CAlsHSVNjLMJ9I6WMomuAXnQp7Xf+2yzS/PnNwEJEmA0Tdc0K+f5iR71NPDiY0cMcAp79Ly1aKz5xfjAoe8m/4TGWV8oJweYVgNlc+orH8UuZYwalgc7zBQRQ1X5LGv8NQA20KnSJmxinXoHm4gb/NaByslpRQf8FBF1YrGAK4vQYxKlZpy24TtyTbXg34yCF7jnjasmpVgYoefnYvs8EIATTbfgyO0Zwti8ysBX5q1GG4olvIH2doGRrY1246Cb8BtMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NsKT8NtNBSIWWXLiz+ADR0aSU+r3n63tviQ9dZ/h0yw=;
 b=UvmPEtCLgu4+aH5ghICuNGjHtB3Nc2lmi6wLZrK6fC9965ax7/zY8MdjSdnn6tQ+fRPhdJiXt2QWcUwn1A+/BAks2zL/jI0PHKNRWHim11iSq4F+wT7HPVjnN/UXDB9iOi6Tr9hv9mkVE02eIYu27TCnrZ9voi5KIgb31Ya/g54=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by CH1PPF0316D269B.namprd12.prod.outlook.com (2603:10b6:61f:fc00::604) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.11; Thu, 20 Nov
 2025 08:32:32 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9320.021; Thu, 20 Nov 2025
 08:32:32 +0000
Message-ID: <1e238415-1080-40b3-abb4-7fd31033d6de@amd.com>
Date: Thu, 20 Nov 2025 09:32:22 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20251111-dmabuf-vfio-v8-0-fd9aa5df478f@nvidia.com>
 <20251111-dmabuf-vfio-v8-6-fd9aa5df478f@nvidia.com>
 <8a11b605-6ac7-48ac-8f27-22df7072e4ad@amd.com>
 <20251119132511.GK17968@ziepe.ca>
 <69436b2a-108d-4a5a-8025-c94348b74db6@amd.com>
 <20251119193114.GP17968@ziepe.ca>
 <c115432c-b63d-4b99-be18-0bf96398e153@amd.com>
 <20251120074137.GR18335@unreal>
 <209499e2-6a06-4291-ad4c-77230926c665@amd.com>
 <20251120080635.GT18335@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20251120080635.GT18335@unreal>
X-ClientProxiedBy: FR4P281CA0319.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|CH1PPF0316D269B:EE_
X-MS-Office365-Filtering-Correlation-Id: 0749fc4f-c1e6-4553-06ce-08de280f593a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZTlacmFXeUxxWllEM0d6QXZLT2p3RU5PQ0xaUjM5RWgveVN6d25INXlHZFQv?=
 =?utf-8?B?VHNPenM4TWszYWpmSGRidUk2Unp1YmVEam8wY0psR1laYVl3cXY5b1gxVnVy?=
 =?utf-8?B?N1B3amw5blN0RnJ2UDFuSkp4MVJGbDVya01FOFkyYnFQUmE3eitjT1RJN0Rl?=
 =?utf-8?B?Z3hVSzAwVnNDOWhoWmZyTS9ycDFkN0F6a21Cbk5MZkpiS2VRWUhqZUR3R1JY?=
 =?utf-8?B?dmhzcmFPR3hmNEpkZnFHbTB4RjFPOTJWWWJ5blV4c01LcGNYZURDckFtNHB0?=
 =?utf-8?B?Z21hc2tZcGl6WjZSUmFjeSsxZFp4M1c4aWtsMStiK1V5dDNGZGNXcGtUT1V4?=
 =?utf-8?B?N05XSjdHd3NwSmVpRU9XRnZvcC9zRGhGMGR5Z2h4TzdxL1d4ZEk5ZTM3Y1Y2?=
 =?utf-8?B?RThhc0VFUy9uQXpFRzczZllJZHVrNGltUStaZkR2ZmREZ09pZEtyWVVsVEVy?=
 =?utf-8?B?MER0WTBscGZXajFYWVI1bTRUelFNL0V1NjZ1WHUzUTVBd3lSNlJETHpHSDEy?=
 =?utf-8?B?am5GdlRnWWo5RnU0SmtwdTI2ZElRd2p3VUNlZXBwQzQ5b0F5VzI4ZWxOWEFa?=
 =?utf-8?B?NGFmRGxNY1M2RmdsVHpuSzhsZDVBbEpaaGJrTDN0TnB3dFMwOW1xbmxleVlu?=
 =?utf-8?B?djZzUnhLMjNvd2k4eUIxblg3WFYxSlpBSm5hT01VbmZ1U2hXZW9iYkN1TTl1?=
 =?utf-8?B?aktiV3RIWXVkeXBTcDhRNkljbmhpN0ZGSTZHcThNbHFQNjZDQ2ZaWmlNZVps?=
 =?utf-8?B?cVVZOTVEbVVBYlpWdUtoTFdjbEh3eEZWNzdILzE5UWJQalV0bjBJSUtUVEFW?=
 =?utf-8?B?WUF5M21DeStTMGx3NFV5MzVyU0JURHNHVmRXYUQrWkc2dXZpdWJ0RThLNlY3?=
 =?utf-8?B?QW1IY0dJdngxYXlEbzY3WDJpaE9EK2pSQmZaSzlrckozRW5iK05MOUMxckh4?=
 =?utf-8?B?WjFrWjJ0MUd5blgvM3B3VXJwUm52QnNFTU9PTjNoUUI4NC9rWGEvM0Y0dWhI?=
 =?utf-8?B?Sk15Tk5mNXZxVnVPRitOc2dKU2lObENzWWNoWk5MSVlKNDBsKzhZMW1sRGlv?=
 =?utf-8?B?bmlJYklJTjBNNGlFeFpuWHVqMVJVRWhUMXpXbTRDTHZGa0l5eE1wS1pScDZk?=
 =?utf-8?B?SEhJL0VkZnRFWFJGNjRCNUd3cDZVSjJZNXFVSjBvcWxJbjR2YzRMTC9xeFQz?=
 =?utf-8?B?TWlHMW1ZMVZ4T2lBK3hLVVZoRVlGQTJQT0U3T25Dbk4yR3pvYTQ2aXVKY3Iv?=
 =?utf-8?B?NmY1R0ZSaTVVbE5KaEdyak1DRlJKWnJFdy84eGoyUzNIc2RCb3EzS0s3ZzJU?=
 =?utf-8?B?cFZZeUFNSkE0bVBoN0FuZUZDQWJEclZMQmtlS2Z6SHM2WVFlWHlzK25JTzdq?=
 =?utf-8?B?MzJ0cWpyMFo3WkFwY0tpZld6SG82a05FT0t3V3c0NG9aSUdDZWpiRE9sUzJa?=
 =?utf-8?B?RlI3ZE45K2gwN1Z1ZWRRemVnYUVhVlVmSSttUFpQUVFMWm5RcVhiM3RnckhX?=
 =?utf-8?B?blBVQlhaamF4bjVaOXFrSlZYbHVRWitQRXRMOWJzQ1ozN284WWhna1JGMGEr?=
 =?utf-8?B?aGhLUDJUbTBaVDRZamM5WndXbGIwbWdPdldNUFZSY3RVTTRoZUw1c1Z5cWQr?=
 =?utf-8?B?Qk1oaXg3dkRKSzdycGx2aEVMTzE5WUZ1bTJrZ1djRjVHV2dIdWxLSUpDOG5F?=
 =?utf-8?B?TnYrOVVENU9KcDFPdC8yZFVmeHU3TEpTM3k2SDFrRWdWSTYrSzJQRFNZbTRk?=
 =?utf-8?B?dFhSeThnZXBkOHIzUytJUEY1QzFXWk9JZUNOUlk4TndlTWN1bDBLMlNVNFZZ?=
 =?utf-8?B?RmpWK1RZZ3AzRWpRdy9ubXgyYUFaVnhNRjNOcCtiNVpiUEd4TnFldXdaNWhp?=
 =?utf-8?B?NTluRmJ6Q2F0UEpZdWlpdk1ZRHRwZFFFdUxya21TbnhGSzVlSkpDQktqU2pv?=
 =?utf-8?B?aHZadVQwdE5aMzNXOEtTNSs2K0V1Ukc4dzBQTUZzM2FseXFjcWZwczhOQUtx?=
 =?utf-8?B?RUczWnRhSCtRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RjB3dThvb293dm9mVEg5Smd2aG5DTTAvWTlZTk1SNVZCYXNtU2pSeHlROVhO?=
 =?utf-8?B?UjlhZkpaSnFPcU9VL1A1eUNzc1BtQlZibDZpRzU5VGxVeFNiYlBPR3E0czVh?=
 =?utf-8?B?WWVFelVXdTJKUDJqM3gzTEMrS1ozdWJ4M09nK0tkUlpUK1ljTU5OeEZRRlNF?=
 =?utf-8?B?NkJHL2xWa3VaZ0I3ZWtzbTAvTlVhNWpvazRiZFhkUWZmVFMrOUVZQ2dMUkRY?=
 =?utf-8?B?dHNqR2RTWnhKRDlwdkczN2tYV3A3alNKK2N2dndsM1YyV3dKaURKRUJmRldn?=
 =?utf-8?B?U3d2SXczVGFhZExjYjcrbDc5VGRlKy8rcklvdEorNG1Sa2hRUmRheXdwZENT?=
 =?utf-8?B?Si8vdU9BaUZncUFacU1UaXFQVmVjN081VmFLRTVQa1FjUnN3bmtWcWhpWEdn?=
 =?utf-8?B?aGwzT1VyS1dwUjVFejREV3l5YmVXVzlBcnRRaWlwSmdYQTU2NVkvTjlPT1lq?=
 =?utf-8?B?N3ZSSUFSUG5vdlFYL1hUQmVsWEl5aFkwTXhNWngxdjBLaTBxL0N6dVNwcE1s?=
 =?utf-8?B?S0pFWWpYWmFOK1UzSVM1KzcyNXBmbTkva1d6NWRENm9qUE9lSTh3aWV5a0dG?=
 =?utf-8?B?VWhrWXNYZTNCcTFRVEpHcWpGNU1sUGw5Vk9rS0V2ZEkzOHduNkZLQWsrU3kr?=
 =?utf-8?B?NHZXR3ViNC9UTnJZWG9OYVZWNzZ1emFqQS81N3JZcjJIdUY0V3lEa0tScFlM?=
 =?utf-8?B?TnF5QTRHb2RKaGxCMUk1WnQ2WEFSYjJHS1ZhMklSQm5TbmN1N3lvZktGa01D?=
 =?utf-8?B?R0FKaHdDNE9nOFpSbEdrak9IaWZFYVRyMFMrVDB3SWREek9yS21idnNhYk5J?=
 =?utf-8?B?T1BOMVJjZ0lHNWw0TjlrWisxYzBEZFZXdFlKcUF0NlZLZStacUhhTUZRRGts?=
 =?utf-8?B?S2htK2pFTEcwTkZDV3JRNmZ2NnhKRmdOQ0VPNGpwOVZ0SThDS1pZQ3BRdzgv?=
 =?utf-8?B?TnoxNTNHN1NYSlFXN09MMVpQQnYzUVpHVkpIaVhRZHhINVU3WEpTRXh1MFg3?=
 =?utf-8?B?QnhYQk5Henl2d29iSEZlc3ZwMmRoVnExa1htQVQxRm1KR04vL2IzVENBekh6?=
 =?utf-8?B?S2dIalV1WWg2dXZ5RUFmZElrNnlscXZIK01MTy9GTUhDS2xUK3NjMERjbU1y?=
 =?utf-8?B?YVYwVkVDVlBhSjc2NWdRVkloZ1hYUG1kRFk0bXlWUGpCYW9qcW1COVY3elRR?=
 =?utf-8?B?YmZJbnRYdFRoM3lFNGg1WXgzL0xXeU1UbEdmelRGT2hTTzRrM3lWcDNMUyt6?=
 =?utf-8?B?RUNGRUJHdENRTHhUMlRTTmNYc2xyd0YxK3l5RDRDSXR2ZEVpUzdBazdlMDM0?=
 =?utf-8?B?MDFtTVYxTW16Rk1RV3pSblpQYTFHNUI0KzE4OEZaY0piOUt4ZEx3YmZENkdM?=
 =?utf-8?B?NDcvUE14bytTejZhb2Z5MTU5YUU5bUd3WHVKZ2srMzB4Q2Y5dW8vS1pMVnF5?=
 =?utf-8?B?QjZUVnJUL2VDUk16YXowQTJLcGVGck5Hb1lWRi9EL3ZsWERzV2ZPeUowWko0?=
 =?utf-8?B?SDIvNHRzYzM1RndFcGNUdk1wbWIrUXFLb045SWZJRzdVREZ4MXd6cDZzUytC?=
 =?utf-8?B?cTZCaElWU0xWQkVCK1NMU080akxzck1jUlhEZWFORjZFTzBHWVBSdjRZdlhC?=
 =?utf-8?B?L21UazF1UVlpdnlGR3VHSDNFSFo1VzJONkdvUERmaFlLT04xSWRQRjI3U0hn?=
 =?utf-8?B?RlBwUmZrTlpYY0NMUDFrTE9yaUVGejkxOS9zWDAvQmNjRWc4MW5Bd0RpUVBP?=
 =?utf-8?B?U1NTTGFsMHhGY1pVcC9xSWN4OXV3d2plVFJEN29MSWpkTjkvSWxUYndKUm9z?=
 =?utf-8?B?ZmQrZ0tnZzg3c3lMTXo0aUdKZkdqUDh4QkFMWERDQkdtSTkxbmh4WVpuNTFQ?=
 =?utf-8?B?elczT29Ea2g1SHptWnczd0l2ajFUbm9ZWjhONVpha2o1ZFdWVXpta3ZZZC9E?=
 =?utf-8?B?TXhHYmpIWGxneDBSRE9zV0FRZmVhU3F4RkFVNlpLN256SG5wQmg4NFF6c3FG?=
 =?utf-8?B?bWkxMmhzYU5DQWNkM2R5cVZSRHUrMGlsQXdwcWUzalNUMVBhaFJhU1UxUmhT?=
 =?utf-8?B?V3FlZzlTcWhGNlJDekZwRmVSS3VhT2JTSjJsT0JxL0lPN0FoZmxPYi9hSHBD?=
 =?utf-8?Q?ZE0fycsprUnykG+5wtal5vHLi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0749fc4f-c1e6-4553-06ce-08de280f593a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2025 08:32:32.1408
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kZdLvBXqIwu8uoDXsHLCCtCgT4ZVisSUsWjAN3ksgxRIYzSSW0jCitq1h04fxw1+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH1PPF0316D269B
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.92.0.0/15];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.93.194.70:from];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	URIBL_BLOCKED(0.00)[amd.com:dkim,amd.com:mid,amd.com:from_smtp,amd.com:from_mime];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 80F413F69B
X-Spamd-Bar: -----
Message-ID-Hash: NYRNSA4FMBXNR6XDEOFKVR6KLRQD3TDC
X-Message-ID-Hash: NYRNSA4FMBXNR6XDEOFKVR6KLRQD3TDC
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Gunthorpe <jgg@ziepe.ca>, Bjorn Helgaas <bhelgaas@google.com>, Logan Gunthorpe <logang@deltatee.com>, Jens Axboe <axboe@kernel.dk>, Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Kees Cook <kees@kernel.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Ankit Agrawal <ankita@nvidia.com>, Yishai Hadas <yishaih@nvidia.com>, Shameer Kolothum <skolothumtho@nvidia.com>, Kevin Tian <kevin.tian@intel.com>, Alex Williamson <alex@shazbot.org>, Krishnakant Jaju <kjaju@nvidia.com>, Matt Ochs <mochs@nvidia.com>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, linux-block@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org, linux-doc@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kvm@vger.kernel.org, linux-hardening@vger.kernel.org, Alex Ma
 stro <amastro@fb.com>, Nicolin Chen <nicolinc@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v8 06/11] dma-buf: provide phys_vec to scatter-gather mapping routine
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NYRNSA4FMBXNR6XDEOFKVR6KLRQD3TDC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjAvMjUgMDk6MDYsIExlb24gUm9tYW5vdnNreSB3cm90ZToNCj4gT24gVGh1LCBOb3Yg
MjAsIDIwMjUgYXQgMDg6NTQ6MzdBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+
IE9uIDExLzIwLzI1IDA4OjQxLCBMZW9uIFJvbWFub3Zza3kgd3JvdGU6DQo+Pj4gT24gVGh1LCBO
b3YgMjAsIDIwMjUgYXQgMDg6MDg6MjdBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToN
Cj4+Pj4gT24gMTEvMTkvMjUgMjA6MzEsIEphc29uIEd1bnRob3JwZSB3cm90ZToNCj4+Pj4+IE9u
IFdlZCwgTm92IDE5LCAyMDI1IGF0IDAyOjQyOjE4UE0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcg
d3JvdGU6DQo+Pj4+Pg0KPj4+Pj4+Pj4+ICsJY2FzZSBQQ0lfUDJQRE1BX01BUF9USFJVX0hPU1Rf
QlJJREdFOg0KPj4+Pj4+Pj4+ICsJCWRtYS0+c3RhdGUgPSBremFsbG9jKHNpemVvZigqZG1hLT5z
dGF0ZSksIEdGUF9LRVJORUwpOw0KPj4+Pj4+Pj4+ICsJCWlmICghZG1hLT5zdGF0ZSkgew0KPj4+
Pj4+Pj4+ICsJCQlyZXQgPSAtRU5PTUVNOw0KPj4+Pj4+Pj4+ICsJCQlnb3RvIGVycl9mcmVlX2Rt
YTsNCj4+Pj4+Pj4+PiArCQl9DQo+Pj4+Pj4+Pj4gKw0KPj4+Pj4+Pj4+ICsJCWRtYV9pb3ZhX3Ry
eV9hbGxvYyhhdHRhY2gtPmRldiwgZG1hLT5zdGF0ZSwgMCwgc2l6ZSk7DQo+Pj4+Pj4+Pg0KPj4+
Pj4+Pj4gT2gsIHRoYXQgaXMgYSBjbGVhciBuby1nbyBmb3IgdGhlIGNvcmUgRE1BLWJ1ZiBjb2Rl
Lg0KPj4+Pj4+Pj4NCj4+Pj4+Pj4+IEl0J3MgaW50ZW50aW9uYWxseSB1cCB0byB0aGUgZXhwb3J0
ZXIgaG93IHRvIGNyZWF0ZSB0aGUgRE1BDQo+Pj4+Pj4+PiBhZGRyZXNzZXMgdGhlIGltcG9ydGVy
IGNhbiB3b3JrIHdpdGguDQo+Pj4+Pj4+DQo+Pj4+Pj4+IEkgY2FuJ3QgZnVsbHkgdW5kZXJzdGFu
ZCB0aGlzIHJlbWFyaz8NCj4+Pj4+Pg0KPj4+Pj4+IFRoZSBleHBvcnRlciBzaG91bGQgYmUgYWJs
ZSB0byBkZWNpZGUgaWYgaXQgYWN0dWFsbHkgd2FudHMgdG8gdXNlDQo+Pj4+Pj4gUDJQIHdoZW4g
dGhlIHRyYW5zZmVyIGhhcyB0byBnbyB0aHJvdWdoIHRoZSBob3N0IGJyaWRnZSAoZS5nLiB3aGVu
DQo+Pj4+Pj4gSU9NTVUvYnJpZGdlIHJvdXRpbmcgYml0cyBhcmUgZW5hYmxlZCkuDQo+Pj4+Pg0K
Pj4+Pj4gU3VyZSwgYnV0IHRoaXMgaXMgYSBzaW1wbGlmaWVkIGhlbHBlciBmb3IgZXhwb3J0ZXJz
IHRoYXQgZG9uJ3QgaGF2ZQ0KPj4+Pj4gY2hvaWNlcyB3aGVyZSB0aGUgbWVtb3J5IGNvbWVzIGZy
b20uDQo+Pj4+DQo+Pj4+IFRoYXQgaXMgZXh0cmVtZWx5IHF1ZXN0aW9uYWJsZSBhcyBqdXN0aWZp
Y2F0aW9uIHRvIHB1dCB0aGF0IGluIGNvbW1vbiBETUEtYnVmIGNvZGUuDQo+Pj4+DQo+Pj4+PiBJ
IGZ1bGx5IGV4cGV0IHRvIHNlZSBjaGFuZ2VzIHRvIHRoaXMgdG8gc3VwcG9ydCBtb3JlIHVzZSBj
YXNlcywNCj4+Pj4+IGluY2x1ZGluZyB0aGUgb25lIGFib3ZlLiBXZSBzaG91bGQgZG8gdGhvc2Ug
Y2hhbmdlcyBhbG9uZyB3aXRoIHVzZXJzDQo+Pj4+PiBtYWtpbmcgdXNlIG9mIHRoZW0gc28gd2Ug
Y2FuIGV2YWx1YXRlIHdoYXQgd29ya3MgYmVzdC4NCj4+Pj4NCj4+Pj4gWWVhaCwgZXhhY3RseSB0
aGF0J3MgbXkgY29uY2Vybi4NCj4+Pj4NCj4+Pj4+PiBCdXQgb25seSB0YWtlIHRoYXQgYXMgQWNr
ZWQtYnksIEkgd291bGQgbmVlZCBhdCBsZWFzdCBhIGRheSAob3INCj4+Pj4+PiB3ZWVrKSBvZiBm
cmVlIHRpbWUgdG8gd3JhcCBteSBoZWFkIGFyb3VuZCBhbGwgdGhlIHRlY2huaWNhbCBkZXRhaWxz
DQo+Pj4+Pj4gYWdhaW4uIEFuZCB0aGF0IGlzIHNvbWV0aGluZyBJIHdvbid0IGhhdmUgYmVmb3Jl
IEphbnVhcnkgb3IgZXZlbg0KPj4+Pj4+IGxhdGVyLg0KPj4+Pj4NCj4+Pj4+IFN1cmUsIGl0IGlz
IGFsb3QsIGFuZCBJIHRoaW5rIERSTSBjb21tdW5pdHkgaW4gZ2VuZXJhbCBzaG91bGQgY29tZSB1
cA0KPj4+Pj4gdG8gc3BlZWQgb24gdGhlIG5ldyBETUEgQVBJIGFuZCBob3cgd2UgYXJlIHB1c2hp
bmcgdG8gc2VlIFAyUCB3b3JrDQo+Pj4+PiB3aXRoaW4gTGludXguDQo+Pj4+Pg0KPj4+Pj4gU28g
dGhhbmtzLCB3ZSBjYW4gdGFrZSB0aGUgQWNrZWQtYnkgYW5kIHByb2dyZXNzIGhlcmUuIEludGVy
ZXN0ZWQNCj4+Pj4+IHBhcnRpZXMgY2FuIHBpY2sgaXQgdXAgZnJvbSB0aGlzIHBvaW50IHdoZW4g
dGltZSBhbGxvd3MuDQo+Pj4+DQo+Pj4+IFdhaXQgYSBzZWNvbmQuIEFmdGVyIHNsZWVwaW5nIGEg
bmlnaHQgb3ZlciBpdCBJIHRoaW5rIG15IGluaXRpYWwgdGFrZSB0aGF0IHdlIHJlYWxseSBzaG91
bGQgbm90IHB1dCB0aGF0IGludG8gY29tbW9uIERNQS1idWYgY29kZSBzZWVtcyB0byBob2xkIHRy
dWUuDQo+Pj4+DQo+Pj4+IFRoaXMgaXMgdGhlIHVzZSBjYXNlIGZvciBWRklPLCBidXQgSSBhYnNv
bHV0ZWx5IHdhbnQgdG8gYXZvaWQgb3RoZXIgZHJpdmVycyBmcm9tIHJlLXVzaW5nIHRoaXMgY29k
ZSB1bnRpbCBiZSBoYXZlIG1vcmUgZXhwZXJpZW5jZSB3aXRoIHRoYXQuDQo+Pj4+DQo+Pj4+IFNv
IHRvIG1vdmUgZm9yd2FyZCBJIG5vdyBzdHJvbmdseSB0aGluayB3ZSBzaG91bGQga2VlcCB0aGF0
IGluIFZGSU8gdW50aWwgc29tZWJvZHkgZWxzZSBjb21lcyBhbG9uZyBhbmQgbmVlZHMgdGhhdCBo
ZWxwZXIuDQo+Pj4NCj4+PiBJdCB3YXMgcHV0IGluIFZGSU8gYXQgdGhlIGJlZ2lubmluZywgYnV0
IENocmlzdG9waCBvYmplY3RlZCB0byBpdCwNCj4+PiBiZWNhdXNlIHRoYXQgd2lsbCByZXF1aXJl
IGV4cG9ydGluZyBzeW1ib2wgZm9yIHBjaV9wMnBkbWFfbWFwX3R5cGUoKS4NCj4+PiB3aGljaCB3
YXMgdW5pdmVyc2FsbHkgYWdyZWVkIGFzIG5vdCBnb29kIGlkZWEuDQo+Pg0KPj4gWWVhaCwgdGhh
dCBpcyBleGFjdGx5IHdoYXQgSSBvYmplY3QgaGVyZSA6KQ0KPj4NCj4+IFdlIGNhbiBoYXZlIHRo
ZSBoZWxwZXIgaW4gRE1BLWJ1ZiAqaWYqIHBjaV9wMnBkbWFfbWFwX3R5cGUoKSBpcyBjYWxsZWQg
YnkgZHJpdmVycyBvciBhdCBsZWFzdCBhY2Nlc3NpYmxlLiBUaGF0J3Mgd2hhdCBJIHBvaW50ZWQg
b3V0IGluIHRoZSBvdGhlciBtYWlsIGJlZm9yZSBhcyB3ZWxsLg0KPj4NCj4+IFRoZSBleHBvcnRl
ciBtdXN0IGJlIGFibGUgdG8gbWFrZSBkZWNpc2lvbnMgYmFzZWQgb24gaWYgdGhlIHRyYW5zYWN0
aW9uIHdvdWxkIGdvIG92ZXIgdGhlIGhvc3QgYnJpZGdlIG9yIG5vdC4NCj4+DQo+PiBCYWNrZ3Jv
dW5kIGlzIHRoYXQgaW4gYSBsb3Qgb2YgdXNlIGNhc2VzIHlvdSByYXRoZXIgd2FudCB0byBtb3Zl
IHRoZSBiYWNraW5nIHN0b3JlIGludG8gc3lzdGVtIG1lbW9yeSBpbnN0ZWFkIG9mIGtlZXBpbmcg
aXQgaW4gbG9jYWwgbWVtb3J5IGlmIHRoZSBkcml2ZXIgZG9lc24ndCBoYXZlIGRpcmVjdCBhY2Nl
c3Mgb3ZlciBhIGNvbW1vbiB1cHN0cmVhbSBicmlkZ2UuDQo+Pg0KPj4gQ3VycmVudGx5IGRyaXZl
cnMgZGVjaWRlIHRoYXQgYmFzZWQgb24gaWYgSU9NTVUgaXMgZW5hYmxlZCBvciBub3QgKGFuZCBh
IGZldyBvdGhlciBxdWlya3MpLCBidXQgZXNzZW50aWFsbHkgeW91IGFic29sdXRlbHkgd2FudCBh
IGZ1bmN0aW9uIHdoaWNoIGdpdmVzIHRoaXMgaW5mb3JtYXRpb24gdG8gZXhwb3J0ZXJzLiBGb3Ig
dGhlIFZGSU8gdXNlIGNhc2UgaXQgZG9lc24ndCBtYXR0ZXIgYmVjYXVzZSB5b3UgY2FuJ3Qgc3dp
dGNoIHRoZSBCQVIgZm9yIHN5c3RlbSBtZW1vcnkuDQo+Pg0KPj4gVG8gdW5ibG9jayB5b3UsIHBs
ZWFzZSBhZGQgYSBiaWcgZmF0IGNvbW1lbnQgaW4gdGhlIGtlcm5lbGRvYyBvZiB0aGUgbWFwcGlu
ZyBleHBsYWluaW5nIHRoaXMgYW5kIHRoYXQgaXQgbWlnaHQgYmUgbmVjZXNzYXJ5IGZvciBleHBv
cnRlcnMgdG8gY2FsbCBwY2lfcDJwZG1hX21hcF90eXBlKCkgYXMgd2VsbC4NCj4gDQo+IFRoYW5r
cywNCj4gDQo+IFdoYXQgZG8geW91IHRoaW5rIGFib3V0IGl0Pw0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLW1hcHBpbmcuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLW1hcHBpbmcuYw0KPiBpbmRleCBhNjliYjczZGI4NmQuLjA1ZWM4NGEwMTU3YiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYtbWFwcGluZy5jDQo+ICsrKyBiL2RyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLW1hcHBpbmcuYw0KPiBAQCAtODQsNiArODQsMTEgQEAgc3RydWN0
IGRtYV9idWZfZG1hIHsNCj4gICAqIFBBR0VfU0laRSBhbGlnbmVkLg0KPiAgICoNCj4gICAqIEEg
bWFwcGluZyBtdXN0IGJlIHVubWFwcGVkIGJ5IHVzaW5nIGRtYV9idWZfZnJlZV9zZ3QoKS4NCj4g
KyAqDQo+ICsgKiBOT1RFOiBXaGlsZSB0aGlzIGZ1bmN0aW9uIGlzIGludGVuZGVkIGZvciBETUEt
YnVmIGltcG9ydGVycywgaXQgaXMgY3JpdGljYWwNCj4gKyAqIHRoYXQgdGhlIERNQS1idWYgZXhw
b3J0ZXIgaXMgY2FwYWJsZSBvZiBwZXJmb3JtaW5nIHBlZXItdG8tcGVlciAoUDJQKSBETUENCj4g
KyAqIGRpcmVjdGx5IGJldHdlZW4gUENJIGRldmljZXMsIHdpdGhvdXQgcm91dGluZyB0cmFuc2Fj
dGlvbnMgdGhyb3VnaCB0aGUgaG9zdA0KPiArICogYnJpZGdlLg0KDQpXZWxsIGZpcnN0IG9mIGFs
bCB0aGlzIGZ1bmN0aW9uIGlzIGludGVuZGVkIGZvciBleHBvcnRlcnMgbm90IGltcG9ydGVycy4N
Cg0KTWF5YmUgd3JpdGUgc29tZXRoaW5nIGxpa2UgIlRoaXMgZnVuY3Rpb24gaXMgaW50ZW5kZWQg
Zm9yIGV4cG9ydGVycy4gSWYgZGlyZWN0IHRyYWZmaWMgcm91dGluZyBpcyBtYW5kYXRvcnkgZXhw
b3J0ZXIgc2hvdWxkIGNhbGwgcm91dGluZyBwY2lfcDJwZG1hX21hcF90eXBlKCkgYmVmb3JlIGNh
bGxpbmcgdGhpcyBmdW5jdGlvbi4iLg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+ICAgKi8N
Cj4gIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9waHlzX3ZlY190b19zZ3Qoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoLA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cnVjdCBwMnBkbWFfcHJvdmlkZXIgKnByb3ZpZGVyLA0KPiAoRU5EKQ0KPiAN
Cj4gDQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCj4+DQo+Pj4NCj4+PiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvYVBZckVyb3lXVk92QXUtNUBpbmZyYWRlYWQub3JnLw0KPj4+
DQo+Pj4gVGhhbmtzDQo+Pj4NCj4+Pj4NCj4+Pj4gUmVnYXJkcywNCj4+Pj4gQ2hyaXN0aWFuLg0K
Pj4+Pg0KPj4+Pj4NCj4+Pj4+IFdlIGNhbiBhbHNvIGhhdmUgYSBtaW5pLWNvbW11bml0eSBjYWxs
IHRvIGdpdmUgYSBzdW1tYXJ5L2V0YyBvbiB0aGVzZQ0KPj4+Pj4gdG9waWNzLg0KPj4+Pj4NCj4+
Pj4+IFRoYW5rcywNCj4+Pj4+IEphc29uDQo+Pj4+DQo+Pg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
