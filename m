Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id F17E498750A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Sep 2024 16:03:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0219544381
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 26 Sep 2024 14:03:31 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02on2084.outbound.protection.outlook.com [40.107.95.84])
	by lists.linaro.org (Postfix) with ESMTPS id 225373F7A9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Sep 2024 14:03:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=pTNyHu2K;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.95.84 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NumZetP54zJxEXatUijV5SpvxmDvKbF5r60qWcnBXE6IY1XGdC59xGTwwp+eYluqtY1Ay6FuLpX7i887Ex+j77i3AfCosIzNrLhpm3a1cbfyTNZ+yvRWpWB3fEC3HzvUyjH+juj5upKIePznnp2qDTRUSI+aYoS89gzAYkgLTCN41eblD3rw/yZEkbQjSgz/Mix0AZ8XR20e1MEW+aC0umEi8gZ6nrcvJtTWcJmhN+hHLAh3q0T9GJUF3M6PLPDGaPuHpAH3lWqbGCFN5Tdhfb8SrVHjakRUzRqps0RBketMXq8eqPoq2AC803ulAjKQ8c4x6jrn0676EmIHZttnrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j5Mfrckd316V4KsIdx/7169r/Hjdgl14NZcp2/IsiE0=;
 b=euHw+6yi42y65mdi6XtzjuGYH9ZquEau20ECIxqGydP1SvNVFf0NMENveVyhvDHf/L6uBK2Ssjr6pXFRGsRlz/c6Zey/9JeMARnToDdLJ6f8CEZwiEwcCJwV6PSmVTgvkAkEjXPSHmRO613uqrja2FMLQHobiGI45xzQ3ZJ/BTFUKh5tKePJ1gcGl3l+ENaIRtXtrlo98N9nq1yL8Xw6IuHLUOy4RSIUg02LbbWi/of4s/d0MuZ8dSw7EB1g6iBjDwzak8RuXKS0C7hgUu4fWAWY2ya3IGNtw5Sy3We+d2lKaMnZJzfNu16fIKo6kBPDKb8FOChNVCeEivOQGoKRZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j5Mfrckd316V4KsIdx/7169r/Hjdgl14NZcp2/IsiE0=;
 b=pTNyHu2KsB8OY1rx8x5lv358HXAr6oBAIie/vBbkmMnPxv9GLFVXCOZfY/QzyTyZ0taOf66noXGiy/nDF15de4S9ZLQc9WPfd+cS5fMRlxdvvgYctL6rtxLPqnYfOFsfij4q4TNyXYrxWq8KybYbnyugDI44+qkFcAEWIQA4bBs=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SA1PR12MB8699.namprd12.prod.outlook.com (2603:10b6:806:389::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Thu, 26 Sep
 2024 14:03:03 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%2]) with mapi id 15.20.8005.020; Thu, 26 Sep 2024
 14:03:03 +0000
Message-ID: <2ab11399-ffa0-4940-a965-fb95a5f3b20e@amd.com>
Date: Thu, 26 Sep 2024 16:02:45 +0200
User-Agent: Mozilla Thunderbird
To: Sumit Garg <sumit.garg@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
 <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
 <d8e0cb78-7cfb-42bf-b3a5-f765592e8dd4@ti.com>
 <mzur3odofwwrdqnystozjgf3qtvb73wqjm6g2vf5dfsqiehaxk@u67fcarhm6ge>
 <e967e382-6cca-4dee-8333-39892d532f71@gmail.com>
 <lk7a2xuqrctyywuanjwseh5lkcz3soatc2zf3kn3uwc43pdyic@edm3hcd2koas>
 <04caa788-19a6-4336-985c-4eb191c24438@amd.com>
 <2f9a4abe-b2fc-4bc7-9926-1da2d38f5080@linaro.org>
 <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CAFA6WYMd46quafJoGXjkCiPOKpYoDZdXwrNbG3QekyjB3_2FTA@mail.gmail.com>
X-ClientProxiedBy: FR2P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::15) To SJ0PR12MB5673.namprd12.prod.outlook.com
 (2603:10b6:a03:42b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SA1PR12MB8699:EE_
X-MS-Office365-Filtering-Correlation-Id: 22ae5aae-454d-4c65-fcce-08dcde33ef95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L3ltcWtWU1J2SGNXWHZXYWFFYUR2Lzk0V2xNYnUvOVZRL0lQR0dxVDlJY080?=
 =?utf-8?B?NjJZaVNxZW1hQjJrNzEwYkdNQUNtTUNoQUk4WGpPbWF3ZE11U0FqSGF3S1Ry?=
 =?utf-8?B?SHdHVlFYS3gyN2EvUWpxanVpQlRiQ0pyR1NZZytMODBuM1NXMEVKWndZNXQ0?=
 =?utf-8?B?QWJ0Z0N0TWU5cWtWeCtHenhMR3o1dGc5NXJEbXNUcXQzNkxYUjZHOHJ2dXFp?=
 =?utf-8?B?ZTMrOGJrN1BPMnlGaTlLNHNuUCs0dVBlM3FpeTNQaUhjK3BRei83WXNZQnNv?=
 =?utf-8?B?VVRJMWhZZ21vcWxBblFoYUx4QUVybzh0QWd6bVFWR05SOXhxZ1FRN2IrL24z?=
 =?utf-8?B?THRMTUJHb1hkM3RKT0d5VlUvaWNMc0NML1JUcWdDZnA3SlM4bHhBUFRGY3Ir?=
 =?utf-8?B?QkFSK1hWTkhIamRQMXlzcEFhR1lvTXZtb2RjR2RnWXRSbHdqcGs4dnFneTFl?=
 =?utf-8?B?ZmdKeTI5K1g5YkYwKzlsNFR1SXBpanVkRGFxRk9VUUFMZDhRVWwxbk5nbzVL?=
 =?utf-8?B?ZzZUT3hXeSttUmswRWpNdldheGFKTjNoQTRIOS82anNNT3luYVZrMzdiVnNl?=
 =?utf-8?B?S0pFM29oRHROR1pCT05XdjVaSFFtUXl1dGw3b3JGbU9kbS9Ddy9NQlVraUNK?=
 =?utf-8?B?dmR3dmlnZHVWSjZPQjVDMmQ1YTJkc21RNVJZaytRRjE1TEJJcDVvaGdWa2pQ?=
 =?utf-8?B?Z0FMTHhtTHBmVVVHeEdBdVdBN21LKzBnbjI4ZG15WDFPMUdSeXVYTm1CNkFi?=
 =?utf-8?B?ZmJabUFvNkZUV3JUdkJ2c2IzaXRSMG45NzZmWFltNVRLVXNmYmFYUHdITWN3?=
 =?utf-8?B?RUdVazZ5WldwcktYL280b3dlWmRZN2UraEFMaEY1M1BHZzJ1VDBBdjFOQnox?=
 =?utf-8?B?SVRQWVdFaDl0TmRjMWg3QXU5SmxCMDJiS0Zoai9XTGd6YXdGZWNuRzR5OGFC?=
 =?utf-8?B?MkZibytNQTJtU1NZYVlIMGpvREFoWC9PUllpZXF1Yy85THJja2s3Nk9sYVBV?=
 =?utf-8?B?K2NhV3NTVHhoNm1jSGx2ekUxdmpSVnE3YUZxbk1xM2ZMQjdwUTZFUldRV0Ux?=
 =?utf-8?B?WGZaYm9zd2p5MVM4Ri9TQTZqWHUwMXNrVERmRTJyQW1uZGhuVWZ4anljNUF3?=
 =?utf-8?B?OWZrM2M3WXNRMFJaRHZ2MmZ5Qm1hVWVBdjgxWlRXNWttYmFiN0NtSmJCNlRy?=
 =?utf-8?B?bHRHQ2l5ZkJXODZuWjAzdWtkZTdNWGhhTm9tS1pocUpxVkJSVGxBeWV2TG5t?=
 =?utf-8?B?SVdkRUdQVGo2c0E5Ymk5ZXZCM3NwdHFNeE1FVisramJRS2haZmEzZllWd05o?=
 =?utf-8?B?WVIyMkszMjF6V3loajJTYlRXTmR2NjV5TzRaSXRBalZaMGtZS0swUUhLUmdV?=
 =?utf-8?B?dGZqWDNYbytaTWllVVlyVWdkSHBTWnB6aEtZZVphYmlEcHpQT0FPWUc4MEZt?=
 =?utf-8?B?aDZpY282YXkrOFdWYzBXbWZxWThVTU1PeFBzTnhJNHN4cktwM0swcnVpbDBu?=
 =?utf-8?B?ZmVDVk45ZDZaMzNTNkxWZTRlRkxvZkMzQjNxNms2djc0U3VjSnE0T0FaSXVK?=
 =?utf-8?B?NVM0ZkkySnFaQzBDZjhXL0JjMTVuNXhYdmVHb1BrejByV2FrWEdTMk9RZTRa?=
 =?utf-8?B?bjA4WXNDekZmYTVENHFOcm8ycUI0UjJ6VUI0Mm5qaTlvTVJPczNPVVlCVVpu?=
 =?utf-8?B?TjQ5ZVFhUDA5cHR0Qng5b3FHNzFwVktMdStZbjhrOU9HMFVoa3laTE5RPT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V01kaGpEVVZFeDhIcUFlaGpacStUVjhpS1BqSTRsMVdVbnRROGZsMzc5TTgy?=
 =?utf-8?B?TW8xYU4ycmdYNXBqcU1ZU3VvR1BJeHVyVERKRGlCcW9tOEpZSDJ6cWM0NS95?=
 =?utf-8?B?eVpGVm5pR011dzZ2SzRObjJDUlB3QTJnU3F1OXI4UEoyeUVTRG5qRm5QcTU1?=
 =?utf-8?B?TW8yMGg3NkxQUGJCZWZBSUNXMDlmZmtLOVA3NnZYS3h1R3gvbWhqaHFXa2E2?=
 =?utf-8?B?emp4b3dQMktOQkUzV01ZSFRzT3hkWllIdVFURHNmcWFSdi90RE5pWnpnVmFm?=
 =?utf-8?B?dWlPSDNiVGRhNWpZSjhLUVkxakhXL1VxQkNnckczZCtXZmxsK0FwUG1hSGc4?=
 =?utf-8?B?TVZQSnZ4dXByTWRIekNHV002cUdxQkZFc3psUi9QL3hkaTNwQjBZcTZ0M2FE?=
 =?utf-8?B?OU5MSEFiVVUvQU5Pc3pGSHpuMXdEa0dqcE16SmFxUXZWdXNkMHc2ZWluL01u?=
 =?utf-8?B?MGNzenduREFtQmZRNVB4OUZLYm9odnJPb2N2a09IMDYzbnNKbGV6bXoyaWdJ?=
 =?utf-8?B?ajEzblZ6T2RsUjFVVUlIajN3ejhIOU9IbUExUmZPTDdkUUxITzM0UDJkMXZQ?=
 =?utf-8?B?Z3ZKOWd0NytNQ2dqZ1BxWE11QnpVMHhuUkxMUUpOK1ltQXFLbkUzWWhwUTJT?=
 =?utf-8?B?U1JKUk96TTVBYnRwOUsyaGhwQjlXTzN1c2ZWZzNWT0dDeXByL3NoaXlxb2Zv?=
 =?utf-8?B?djU2c2dIci9XM0YzZ0FTdkRDSHJmQUtLOVQyVzl0NTQvY0thTThDMjNDcnI1?=
 =?utf-8?B?a0VLVFNxbGZQQVJKNzZMa3c0dXBsR3pZREwwbnNvZFNuYWxyOWl1bkpFQWtH?=
 =?utf-8?B?UWRBeTNxYitxV2QyWmJYVTRQdlc0SFhGQStBZm1IeDdQM3dpTzlIZTI5MHkx?=
 =?utf-8?B?L3ordlA2cGwxUEJSbzJiUStTaW43L0V3QjJWWVVrYktEc1BPcVBPYUpqMFJB?=
 =?utf-8?B?ZFAzN0VQZjRJeEJrbHYzN1lFeTJsVjA1clc3NC9KaDhFT3V6cTBtSU12MHEx?=
 =?utf-8?B?UkFlTnJtMmhzSXUxMWtTekIycFNPUklBQWEvYmRKMTBvSk5UZmd0VTYrUnB4?=
 =?utf-8?B?a2pJK0FPSlNyMStycElqRXp4SnNRWVYyRXNTRDV6OTNCVzNoT1N6VDNiNnJH?=
 =?utf-8?B?TWphOWRrd1d1OUV0UGdwaXI0SlloS3M2MCtEK2IwUFNZK3pzWkZURVMxNHU3?=
 =?utf-8?B?dDZQbEY0d2ZpWGF2UUl1OFpqejZmc0tXbHdScU1VRzJMOE4vQ0RpZUVqMEw4?=
 =?utf-8?B?KzFLUVhTWFZ4WFNlYmZZaHhNWGhKQkJIdEJKQ2R4QVdhUVp2ckZXQjZKVGFa?=
 =?utf-8?B?NkdBZHJsaE5CVldjUGVRWG1rSG1QWDJ6V2NveVd5dEJCbFdubGI1VEVwWlBp?=
 =?utf-8?B?cUVGYnJieStFMmRsSnFaazVXVlhXRTh2VG9kK1VGWjhoNTBaK2xCMno0THRO?=
 =?utf-8?B?Q1FaUElEczlQVFVKa1kwSTBwUnhPZS9sMWNaSWI5b2FlWDVoWm9HSi9wdmMy?=
 =?utf-8?B?L1YxQm03QVhlWXFod3NkZThWSkNseHRSN3Q3WVVHV0UyOE1IdTlNRmpHTmpU?=
 =?utf-8?B?M3pvTXdUYTcyV0RleFhISDRJQzlJMWliRVpaUEZ5WitHODdtak9aUjlxZkZ4?=
 =?utf-8?B?UUJ6eUkyNEFpVTZBaTZMTWE2M1ArRTlJNnBOMU54ZURyUzIxVWJ1UkVQR0tp?=
 =?utf-8?B?K3UvanFRQ2ZZMHdGa2hmNUk0UkowaE0wN3NLaDF3ZHBORjVpN3J2NUw5YU9t?=
 =?utf-8?B?K1VDdzZ2QjUvQyszQ3NsdmMrQnUxdjJzeHRDdmJRcFYyelFZYnNZTDd6ZUdT?=
 =?utf-8?B?cVYrOWYycEZHb010QUtqeWFPTDNndlgzT0dzOUFnWXdlRzltQm1vSGhhMEZD?=
 =?utf-8?B?Ymo2V2VCbFVRMnJXUUJNNzIrQW1DcFdXSHBSV0FoQlc5dmo0blpQV1UrYnJW?=
 =?utf-8?B?OFA1UVNJTmM0L3VVODI5cFUwbUwyYTBFM3JQSHJDaWVyTTRNbFNqY01MdUlX?=
 =?utf-8?B?RDh4aFJtRmhHWFJtR0NWSllCa3dUT3VrQWoybWZvUnExTmd6Q1BOSE40UGVU?=
 =?utf-8?B?SG53MTB6ZXJhTGxhdCt3UWorV3BaMWI5VUdGbGtZY1BJUEg3MkZkbDdLY0Q2?=
 =?utf-8?Q?u8jA=3D?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22ae5aae-454d-4c65-fcce-08dcde33ef95
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR12MB5673.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 14:03:03.4161
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lSpUjBUP2I84eC8+dvk/Lfn8GyVgbBtaBXjcoQng3JCV5y/JrQ/9uA3hCVL86cBw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8699
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 225373F7A9
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.95.84:from];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,collabora.com,arm.com,google.com,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: DBCAYSTK3WMDSPVGYOWWQI4TI4VQI5LB
X-Message-ID-Hash: DBCAYSTK3WMDSPVGYOWWQI4TI4VQI5LB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Andrew Davis <afd@ti.com>, Jens Wiklander <jens.wiklander@linaro.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DBCAYSTK3WMDSPVGYOWWQI4TI4VQI5LB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMjYuMDkuMjQgdW0gMTU6NTIgc2NocmllYiBTdW1pdCBHYXJnOg0KPiBbUmVzZW5kIGluIHBs
YWluIHRleHQgZm9ybWF0IGFzIG15IGVhcmxpZXIgbWVzc2FnZSB3YXMgcmVqZWN0ZWQgYnkNCj4g
c29tZSBtYWlsaW5nIGxpc3RzXQ0KPg0KPiBPbiBUaHUsIDI2IFNlcHQgMjAyNCBhdCAxOToxNywg
U3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BsaW5hcm8ub3JnPiB3cm90ZToNCj4+IE9uIDkvMjUvMjQg
MTk6MzEsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+Pg0KPj4gQW0gMjUuMDkuMjQgdW0gMTQ6
NTEgc2NocmllYiBEbWl0cnkgQmFyeXNoa292Og0KPj4NCj4+IE9uIFdlZCwgU2VwIDI1LCAyMDI0
IGF0IDEwOjUxOjE1QU0gR01ULCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4NCj4+IEFtIDI1
LjA5LjI0IHVtIDAxOjA1IHNjaHJpZWIgRG1pdHJ5IEJhcnlzaGtvdjoNCj4+DQo+PiBPbiBUdWUs
IFNlcCAyNCwgMjAyNCBhdCAwMToxMzoxOFBNIEdNVCwgQW5kcmV3IERhdmlzIHdyb3RlOg0KPj4N
Cj4+IE9uIDkvMjMvMjQgMTozMyBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToNCj4+DQo+PiBI
aSwNCj4+DQo+PiBPbiBGcmksIEF1ZyAzMCwgMjAyNCBhdCAwOTowMzo0N0FNIEdNVCwgSmVucyBX
aWtsYW5kZXIgd3JvdGU6DQo+Pg0KPj4gSGksDQo+Pg0KPj4gVGhpcyBwYXRjaCBzZXQgaXMgYmFz
ZWQgb24gdG9wIG9mIFlvbmcgV3UncyByZXN0cmljdGVkIGhlYXAgcGF0Y2ggc2V0IFsxXS4NCj4+
IEl0J3MgYWxzbyBhIGNvbnRpbnVhdGlvbiBvbiBPbGl2aWVyJ3MgQWRkIGRtYS1idWYgc2VjdXJl
LWhlYXAgcGF0Y2ggc2V0IFsyXS4NCj4+DQo+PiBUaGUgTGluYXJvIHJlc3RyaWN0ZWQgaGVhcCB1
c2VzIGdlbmFsbG9jIGluIHRoZSBrZXJuZWwgdG8gbWFuYWdlIHRoZSBoZWFwDQo+PiBjYXJ2b3V0
LiBUaGlzIGlzIGEgZGlmZmVyZW5jZSBmcm9tIHRoZSBNZWRpYXRlayByZXN0cmljdGVkIGhlYXAg
d2hpY2gNCj4+IHJlbGllcyBvbiB0aGUgc2VjdXJlIHdvcmxkIHRvIG1hbmFnZSB0aGUgY2FydmVv
dXQuDQo+Pg0KPj4gSSd2ZSB0cmllZCB0byBhZHJlc3MgdGhlIGNvbW1lbnRzIG9uIFsyXSwgYnV0
IFsxXSBpbnRyb2R1Y2VzIGNoYW5nZXMgc28gSSdtDQo+PiBhZnJhaWQgSSd2ZSBoYWQgdG8gc2tp
cCBzb21lIGNvbW1lbnRzLg0KPj4NCj4+IEkga25vdyBJIGhhdmUgcmFpc2VkIHRoZSBzYW1lIHF1
ZXN0aW9uIGR1cmluZyBMUEMgKGluIGNvbm5lY3Rpb24gdG8NCj4+IFF1YWxjb21tJ3MgZG1hLWhl
YXAgaW1wbGVtZW50YXRpb24pLiBJcyB0aGVyZSBhbnkgcmVhc29uIHdoeSB3ZSBhcmUNCj4+IHVz
aW5nIGdlbmVyaWMgaGVhcHMgaW5zdGVhZCBvZiBhbGxvY2F0aW5nIHRoZSBkbWEtYnVmcyBvbiB0
aGUgZGV2aWNlDQo+PiBzaWRlPw0KPj4NCj4+IEluIHlvdXIgY2FzZSB5b3UgYWxyZWFkeSBoYXZl
IFRFRSBkZXZpY2UsIHlvdSBjYW4gdXNlIGl0IHRvIGFsbG9jYXRlIGFuZA0KPj4gZXhwb3J0IGRt
YS1idWZzLCB3aGljaCB0aGVuIGdldCBpbXBvcnRlZCBieSB0aGUgVjRMIGFuZCBEUk0gZHJpdmVy
cy4NCj4+DQo+PiBUaGlzIGdvZXMgdG8gdGhlIGhlYXJ0IG9mIHdoeSB3ZSBoYXZlIGRtYS1oZWFw
cyBpbiB0aGUgZmlyc3QgcGxhY2UuDQo+PiBXZSBkb24ndCB3YW50IHRvIGJ1cmRlbiB1c2Vyc3Bh
Y2Ugd2l0aCBoYXZpbmcgdG8gZmlndXJlIG91dCB0aGUgcmlnaHQNCj4+IHBsYWNlIHRvIGdldCBh
IGRtYS1idWYgZm9yIGEgZ2l2ZW4gdXNlLWNhc2Ugb24gYSBnaXZlbiBoYXJkd2FyZS4NCj4+IFRo
YXQgd291bGQgYmUgdmVyeSBub24tcG9ydGFibGUsIGFuZCBmYWlsIGF0IHRoZSBjb3JlIHB1cnBv
c2Ugb2YNCj4+IGEga2VybmVsOiB0byBhYnN0cmFjdCBoYXJkd2FyZSBzcGVjaWZpY3MgYXdheS4N
Cj4+DQo+PiBVbmZvcnR1bmF0ZWx5IGFsbCBwcm9wb3NhbHMgdG8gdXNlIGRtYS1idWYgaGVhcHMg
d2VyZSBtb3ZpbmcgaW4gdGhlDQo+PiBkZXNjcmliZWQgZGlyZWN0aW9uOiBsZXQgYXBwIHNlbGVj
dCAoc29tZWhvdykgZnJvbSBhIHBsYXRmb3JtLSBhbmQNCj4+IHZlbmRvci0gc3BlY2lmaWMgbGlz
dCBvZiBkbWEtYnVmIGhlYXBzLiBJbiB0aGUga2VybmVsIHdlIGF0IGxlYXN0IGtub3cNCj4+IHRo
ZSBwbGF0Zm9ybSBvbiB3aGljaCB0aGUgc3lzdGVtIGlzIHJ1bm5pbmcuIFVzZXJzcGFjZSBnZW5l
cmFsbHkgZG9lc24ndA0KPj4gKGFuZCBzaG91bGRuJ3QpLiBBcyBzdWNoLCBpdCBzZWVtcyBiZXR0
ZXIgdG8gbWUgdG8ga2VlcCB0aGUga25vd2xlZGdlIGluDQo+PiB0aGUga2VybmVsIGFuZCBhbGxv
dyB1c2Vyc3BhY2UgZG8gaXRzIGpvYiBieSBjYWxsaW5nIGludG8gZXhpc3RpbmcNCj4+IGRldmlj
ZSBkcml2ZXJzLg0KPj4NCj4+IFRoZSBpZGVhIG9mIGxldHRpbmcgdGhlIGtlcm5lbCBmdWxseSBh
YnN0cmFjdCBhd2F5IHRoZSBjb21wbGV4aXR5IG9mIGludGVyDQo+PiBkZXZpY2UgZGF0YSBleGNo
YW5nZSBpcyBhIGNvbXBsZXRlbHkgZmFpbGVkIGRlc2lnbi4gVGhlcmUgaGFzIGJlZW4gcGxlbnR5
IG9mDQo+PiBldmlkZW5jZSBmb3IgdGhhdCBvdmVyIHRoZSB5ZWFycy4NCj4+DQo+PiBCZWNhdXNl
IG9mIHRoaXMgaW4gRE1BLWJ1ZiBpdCdzIGFuIGludGVudGlvbmFsIGRlc2lnbiBkZWNpc2lvbiB0
aGF0DQo+PiB1c2Vyc3BhY2UgYW5kICpub3QqIHRoZSBrZXJuZWwgZGVjaWRlcyB3aGVyZSBhbmQg
d2hhdCB0byBhbGxvY2F0ZSBmcm9tLg0KPj4NCj4+IEhtbSwgb2suDQo+Pg0KPj4gV2hhdCB0aGUg
a2VybmVsIHNob3VsZCBwcm92aWRlIGFyZSB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIHdoYXQg
dHlwZSBvZg0KPj4gbWVtb3J5IGEgZGV2aWNlIGNhbiB3b3JrIHdpdGggYW5kIGlmIGNlcnRhaW4g
bWVtb3J5IGlzIGFjY2Vzc2libGUgb3Igbm90Lg0KPj4gVGhpcyBpcyB0aGUgcGFydCB3aGljaCBp
cyB1bmZvcnR1bmF0ZWx5IHN0aWxsIG5vdCB3ZWxsIGRlZmluZWQgbm9yDQo+PiBpbXBsZW1lbnRl
ZCBhdCB0aGUgbW9tZW50Lg0KPj4NCj4+IEFwYXJ0IGZyb20gdGhhdCB0aGVyZSBhcmUgYSB3aG9s
ZSBidW5jaCBvZiBpbnRlbnRpb25hbCBkZXNpZ24gZGVjaXNpb24gd2hpY2gNCj4+IHNob3VsZCBw
cmV2ZW50IGRldmVsb3BlcnMgdG8gbW92ZSBhbGxvY2F0aW9uIGRlY2lzaW9uIGluc2lkZSB0aGUg
a2VybmVsLiBGb3INCj4+IGV4YW1wbGUgRE1BLWJ1ZiBkb2Vzbid0IGtub3cgd2hhdCB0aGUgY29u
dGVudCBvZiB0aGUgYnVmZmVyIGlzIChleGNlcHQgZm9yDQo+PiBpdCdzIHRvdGFsIHNpemUpIGFu
ZCB3aGljaCB1c2UgY2FzZXMgYSBidWZmZXIgd2lsbCBiZSB1c2VkIHdpdGguDQo+Pg0KPj4gU28g
dGhlIHF1ZXN0aW9uIGlmIG1lbW9yeSBzaG91bGQgYmUgZXhwb3NlZCB0aHJvdWdoIERNQS1oZWFw
cyBvciBhIGRyaXZlcg0KPj4gc3BlY2lmaWMgYWxsb2NhdG9yIGlzIG5vdCBhIHF1ZXN0aW9uIG9m
IGFic3RyYWN0aW9uLCBidXQgcmF0aGVyIG9uZSBvZiB0aGUNCj4+IHBoeXNpY2FsIGxvY2F0aW9u
IGFuZCBhY2Nlc3NpYmlsaXR5IG9mIHRoZSBtZW1vcnkuDQo+Pg0KPj4gSWYgdGhlIG1lbW9yeSBp
cyBhdHRhY2hlZCB0byBhbnkgcGh5c2ljYWwgZGV2aWNlLCBlLmcuIGxvY2FsIG1lbW9yeSBvbiBh
DQo+PiBkR1BVLCBGUEdBIFBDSWUgQkFSLCBSRE1BLCBjYW1lcmEgaW50ZXJuYWwgbWVtb3J5IGV0
YywgdGhlbiBleHBvc2UgdGhlDQo+PiBtZW1vcnkgYXMgZGV2aWNlIHNwZWNpZmljIGFsbG9jYXRv
ci4NCj4+DQo+PiBTbywgZm9yIGVtYmVkZGVkIHN5c3RlbXMgd2l0aCB1bmlmaWVkIG1lbW9yeSBh
bGwgYnVmZmVycyAobWF5YmUgZXhjZXB0DQo+PiBQQ0llIEJBUnMpIHNob3VsZCBjb21lIGZyb20g
RE1BLUJVRiBoZWFwcywgY29ycmVjdD8NCj4+DQo+Pg0KPj4gIEZyb20gd2hhdCBJIGtub3cgdGhh
dCBpcyBjb3JyZWN0LCB5ZXMuIFF1ZXN0aW9uIGlzIHJlYWxseSBpZiB0aGF0IHdpbGwgc3RheSB0
aGlzIHdheS4NCj4+DQo+PiBOZXVyYWwgYWNjZWxlcmF0b3JzIGxvb2sgYSBsb3Qgc3RyaXBwZWQg
ZG93biBGUEdBcyB0aGVzZSBkYXlzIGFuZCB0aGUgYmVuZWZpdCBvZiBsb2NhbCBtZW1vcnkgZm9y
IEdQVXMgaXMga25vd24gZm9yIGRlY2FkZXMuDQo+Pg0KPj4gQ291bGQgYmUgdGhhdCBkZXNpZ25z
IHdpdGggbG9jYWwgc3BlY2lhbGl6ZWQgbWVtb3J5IHNlZSBhIHJldml2YWwgYW55IHRpbWUsIHdo
byBrbm93cy4NCj4+DQo+PiBJZiB0aGUgbWVtb3J5IGlzIG5vdCBwaHlzaWNhbGx5IGF0dGFjaGVk
IHRvIGFueSBkZXZpY2UsIGJ1dCByYXRoZXIganVzdA0KPj4gbWVtb3J5IGF0dGFjaGVkIHRvIHRo
ZSBDUFUgb3IgYSBzeXN0ZW0gd2lkZSBtZW1vcnkgY29udHJvbGxlciB0aGVuIGV4cG9zZQ0KPj4g
dGhlIG1lbW9yeSBhcyBETUEtaGVhcCB3aXRoIHNwZWNpZmljIHJlcXVpcmVtZW50cyAoZS5nLiBj
ZXJ0YWluIHNpemVkIHBhZ2VzLA0KPj4gY29udGlndW91cywgcmVzdHJpY3RlZCwgZW5jcnlwdGVk
LCAuLi4pLg0KPj4NCj4+IElzIGVuY3J5cHRlZCAvIHByb3RlY3RlZCBhIHBhcnQgb2YgdGhlIGFs
bG9jYXRpb24gY29udHJhY3Qgb3Igc2hvdWxkIGl0DQo+PiBiZSBlbmZvcmNlZCBzZXBhcmF0ZWx5
IHZpYSBhIGNhbGwgdG8gVEVFIC8gU0NNIC8gYW55dGhpbmcgZWxzZT8NCj4+DQo+Pg0KPj4gV2Vs
bCB0aGF0IGlzIGEgcmVhbGx5IGdvb2QgcXVlc3Rpb24gSSBjYW4ndCBmdWxseSBhbnN3ZXIgZWl0
aGVyLiBGcm9tIHdoYXQgSSBrbm93IG5vdyBJIHdvdWxkIHNheSBpdCBkZXBlbmRzIG9uIHRoZSBk
ZXNpZ24uDQo+Pg0KPiBJTUhPLCBJIHRoaW5rIERtaXRyeSdzIHByb3Bvc2FsIHRvIHJhdGhlciBh
bGxvdyB0aGUgVEVFIGRldmljZSB0byBiZQ0KPiB0aGUgYWxsb2NhdG9yIGFuZCBleHBvcnRlciBv
ZiBETUEtYnVmcyByZWxhdGVkIHRvIHJlc3RyaWN0ZWQgbWVtb3J5DQo+IG1ha2VzIHNlbnNlIHRv
IG1lLiBTaW5jZSBpdCdzIHJlYWxseSB0aGUgVEVFIGltcGxlbWVudGF0aW9uIChPUC1URUUsDQo+
IEFNRC1URUUsIFRTLVRFRSBvciBmdXR1cmUgUVRFRSkgd2hpY2ggc2V0cyB1cCB0aGUgcmVzdHJp
Y3Rpb25zIG9uIGENCj4gcGFydGljdWxhciBwaWVjZSBvZiBhbGxvY2F0ZWQgbWVtb3J5LiBBRkFJ
SywgdGhhdCBoYXBwZW5zIGFmdGVyIHRoZQ0KPiBETUEtYnVmIGdldHMgYWxsb2NhdGVkIGFuZCB0
aGVuIHVzZXItc3BhY2UgY2FsbHMgaW50byBURUUgdG8gc2V0IHVwDQo+IHdoaWNoIG1lZGlhIHBp
cGVsaW5lIGlzIGdvaW5nIHRvIGFjY2VzcyB0aGF0IHBhcnRpY3VsYXIgRE1BLWJ1Zi4gSXQNCj4g
Y2FuIGFsc28gYmUgYSBzdGF0aWMgY29udHJhY3QgZGVwZW5kaW5nIG9uIGEgcGFydGljdWxhciBw
bGF0Zm9ybQ0KPiBkZXNpZ24uDQo+DQo+IEFzIEplbnMgbm90ZWQgaW4gdGhlIG90aGVyIHRocmVh
ZCwgd2UgYWxyZWFkeSBtYW5hZ2Ugc2hhcmVkIG1lbW9yeQ0KPiBhbGxvY2F0aW9ucyAoZnJvbSBh
IHN0YXRpYyBjYXJ2ZS1vdXQgb3IgZHluYW1pY2FsbHkgbWFwcGVkKSBmb3INCj4gY29tbXVuaWNh
dGlvbnMgYW1vbmcgTGludXggYW5kIFRFRSB0aGF0IHdlcmUgYmFzZWQgb24gRE1BLWJ1ZnMgZWFy
bGllcg0KPiBidXQgc2luY2Ugd2UgZGlkbid0IHJlcXVpcmVkIHRoZW0gdG8gYmUgc2hhcmVkIHdp
dGggb3RoZXIgZGV2aWNlcywgc28NCj4gd2UgcmF0aGVyIHN3aXRjaGVkIHRvIGFub255bW91cyBt
ZW1vcnkuDQo+DQo+ICBGcm9tIHVzZXItc3BhY2UgcGVyc3BlY3RpdmUsIGl0J3MgY2xlYW5lciB0
byB1c2UgVEVFIGRldmljZSBJT0NUTHMgZm9yDQo+IERNQS1idWYgYWxsb2NhdGlvbnMgc2luY2Ug
aXQgYWxyZWFkeSBrbm93cyB3aGljaCB1bmRlcmx5aW5nIFRFRQ0KPiBpbXBsZW1lbnRhdGlvbiBp
dCdzIGNvbW11bmljYXRpbmcgd2l0aCByYXRoZXIgdGhhbiBmaXJzdCBmaWd1cmluZyBvdXQNCj4g
d2hpY2ggRE1BIGhlYXAgdG8gdXNlIGZvciBhbGxvY2F0aW9uIGFuZCB0aGVuIGNvbW11bmljYXRp
bmcgd2l0aCBURUUNCj4gaW1wbGVtZW50YXRpb24uDQoNCisxDQoNCkknbSBub3QgdGhhdCBkZWVw
bHkgaW50byB0aGUgZnVuY3Rpb25hbGl0eSB0aGUgVEVFIGRldmljZSBJT0NUTHMgZXhwb3NlLCAN
CnNvIGNhbid0IGp1ZGdlIGlmIHdoYXQncyBzYWlkIGFib3ZlIGlzIGNvcnJlY3Qgb3Igbm90Lg0K
DQpCdXQgaW4gZ2VuZXJhbCBidWlsZGluZyBvbiB0b3Agb2YgZXhpc3RpbmcgaW5mcmFzdHJ1Y3R1
cmUgYW5kIA0KaW5mb3JtYXRpb24gaXMgYSByZWFsbHkgc3Ryb25nIGFyZ3VtZW50IGZvciBhIGRl
c2lnbi4NCg0KU28gZnJvbSBteSAxMCBtaWxlIGhpZ2ggcG9pbnQgb2YgdmlldyB0aGF0IHNvdW5k
cyBsaWtlIHRoZSB3YXkgdG8gZ28uDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4NCj4gLVN1
bWl0DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlz
dHMubGluYXJvLm9yZwo=
