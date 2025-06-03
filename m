Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC9EACC775
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 15:14:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 954A844432
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 13:14:47 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2053.outbound.protection.outlook.com [40.107.236.53])
	by lists.linaro.org (Postfix) with ESMTPS id 3BF70443E7
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 13:14:34 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=FYfJztyU;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.236.53 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bVAPbsIB11hKik1v2R3KMxYTWUEQ9kURDb0TVJiIdmCn68sh6rKfs1kxA2KF72x3UkW8Twil2n48sIyADvbxZjwPeEQQ+g6SJI9X4CTdf/BsOlfYCxojNhQg892P1jmt/u6gboR267an6CYW4BPWuxFLJnzhEuy2pPXmrYW1Uu0FEx5Y3KvbYpua9ukvWpcA7TRK4gM7ctFfwaeh/SWk4MTrkScSRxess+ryNuHFl0motttXQwQM11dDlRzc+WnPL60vTatUNQQSCVVpZ2hNqaHoPSUZQKFq1v55dNfTcwD9TU0HOKswwjAU+xwWTSkcJsPagsyHqyrSAasLHUHT9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gBhfXodOL7h15vvVZagqWS/XWainCxsU+agCmvCZrOw=;
 b=uh+SyFdZ8JXDFUJRjxcs2oi8NH9yQ8yVNVymeNMpZpvhzBnQt91/A7iqDShTSadHLEK0AxrVm1D2MA3G4pXi21JVh/82nL8n9WLvObug+JhnaW+arx2TCR6WYrJq65mA9q0vR3ZZsfAfUn8BMC36d5s9Kw1g36L4hQ6TogFeySun/Lqltm2NcWjpNt6johPoYyu4KExdLd3U5YbVzOR13sda1yHg+SIOAv/RgS0TZODrc0ocYe5dwMID0vZLICXtwf6tBcdhBgQZtZNWDkJZ5SBaPs0avUEWo0mOrTo0I7KJQeCYEMA9iDeZyCrZM+bZzyLjb4kzr+r9Ef6F6LyDEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gBhfXodOL7h15vvVZagqWS/XWainCxsU+agCmvCZrOw=;
 b=FYfJztyUv9fe0V7i6pTdf9dMdIeKlmBD2is/GOwUkI3wPJhz7aSMRoYzC/AA2jGXUd2uguxhU3aI/vkV6dGhgJdSBlkut+EwQ4P0sZHBksYUJfObZQ3x2IXv1dsisd5kTIzvVXPN2wyPvHp0mzD7hxrRV2/iQr9mRJlZfnJKh7k=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB6732.namprd12.prod.outlook.com (2603:10b6:303:1ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Tue, 3 Jun
 2025 13:14:31 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%7]) with mapi id 15.20.8722.031; Tue, 3 Jun 2025
 13:14:31 +0000
Message-ID: <09c8fb7c-a337-4813-9f44-3a538c4ee8b1@amd.com>
Date: Tue, 3 Jun 2025 15:14:20 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@infradead.org>, wangtao <tao.wangtao@honor.com>
References: <20250603095245.17478-1-tao.wangtao@honor.com>
 <aD7x_b0hVyvZDUsl@infradead.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <aD7x_b0hVyvZDUsl@infradead.org>
X-ClientProxiedBy: MN2PR01CA0032.prod.exchangelabs.com (2603:10b6:208:10c::45)
 To PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB6732:EE_
X-MS-Office365-Filtering-Correlation-Id: ba518060-3538-4a70-bb3a-08dda2a093af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SytZSFNuNHpqbWc3QngzYmh5U0Q4dnhjS094d2doWWRIL0NPeVh3TEVaeCtx?=
 =?utf-8?B?ZFhUWnFvNjVHYzZMUlNQa0t5N3RZOHV2NnQ2S01SWGhEUEd1bWJmTEdqZ1F5?=
 =?utf-8?B?Uk9ZTzVobURUb05NSTJtMXpPV3VKNkpzUktiMHRmdFRZRzVzVmZ4OTV6MVpi?=
 =?utf-8?B?WXdnYzJEbDhqVkkrUWsvdXZ1QXBTVHR0SDdCa2gvRDVHbEE2UUZFQmxsMktC?=
 =?utf-8?B?QzQzdElnNnhNdWl1a0VHNnc0Y09xVGJoK0t6WGR4TUs1SkdHTDZkS3JGQmxq?=
 =?utf-8?B?a1RxeHNwU1B4bXhRMGU1TGFDcm00bUgzT1dsT0MvcytXMHpReS93WVlOVDVn?=
 =?utf-8?B?L0dpaG1WOGw4M1k4MWViV3RucUtuZXRqUzZ0YTdCVHJneFYrMUR0RWgwMmxC?=
 =?utf-8?B?NXRLcU9tZEV3a0ZrRlRuOVZqcGJlR1FIN3FWUmtaWkxDU2RzTktYNUpkTlha?=
 =?utf-8?B?Zm93MTg1QjdRU2I4VHNTL2NLN290NW5xQUF1U1c5RVlqTmVjamNIZzRwdWpT?=
 =?utf-8?B?d08wdVNzbXVkUjN0V0JMMnB2RjU4M2dYMXg5WTNibEV0WDZSK0NucUJyK1lZ?=
 =?utf-8?B?S0kvOExHeFRkZ2tQUW5KcmNEeTlsN0RmTlFidDBWZGhIMjR4VXd5OHdPRlBU?=
 =?utf-8?B?aldhTHo0Z0psWXVJSkg5MC9DRzZFQVFKY3ZFVUtRSGNLN2lycHpxSFRlNzI0?=
 =?utf-8?B?TE5uWjdBSVlpWTd0cWVSLzJKUEpORzVSRVYwSFZneVl6L1hMeHhtMGZkMmUr?=
 =?utf-8?B?clZHMThDOWQyV3dLMkFkMmZHVHoxVlRrUFVrRzRXd0lqOGZDeU1kTkIxTEIz?=
 =?utf-8?B?ZkR6ckgyOExyajlGRGFCV3Jkc1JTMXgzWXptcjNUOVdHbm9kMkVpZWFmaXNo?=
 =?utf-8?B?YTkwdEkyRzRsa1I2REQ2ZlFhRzl4cXBDRW9WNkp2WWozaXFrcUtvYnNuWVhp?=
 =?utf-8?B?K2NTV1lCM2lHWnhxSjJBREJCcFkxVG9jdWkxcWE5OXpsdlNSQ1Rtakp3TnFE?=
 =?utf-8?B?NHJpZXFFbDBLV1NsTi9zZVg3dmx6aFlWWXNFdEdmMUphWVZtTlY5OGpiYVNO?=
 =?utf-8?B?ZjArYjB3UG9Gbk5qNTdLQjJGMktGWnZvVC9WellMaC9PcFNyOUlyNkxZaFhi?=
 =?utf-8?B?SE4yTzdhckg2Y0ZOZ09OS3FreG9qbTNoSGhxZDlPMStoOFdqKzNnSUYxNmZT?=
 =?utf-8?B?L0N4WlNMNFBGT043N2hPQ2g5cWZHYVpuL1pCL2FaL2EraGs5K3ZTbUZzcjd3?=
 =?utf-8?B?QlFRR0RvSkx5N2ZnWVl4OHNLdzBoTGFFYUI1S3RYK0JqWjFFazJWMWd2MVl4?=
 =?utf-8?B?eENrQ1lBckVPWHVXVzRBMFhSZlpGRk9EVUFPRE5xTnd3VlFjczRZWGhlTHMy?=
 =?utf-8?B?Y1YrUnhCaEppTTlydHF6Sm9PYUVkUkZtcUVYa0lLYWUzZ3NHTmRDMHBGUkhs?=
 =?utf-8?B?dGJMS1M3UlJicEVaU2ZWVmtKTWN5SmF0aEJoN1VwbjhlMU1wd3RiUld3S2ZY?=
 =?utf-8?B?QjROQm15RHJYeUcvMlQ4cjNMM01YbE1qZ1F5eSsxMjZBbXNFa0MyYXFvaytJ?=
 =?utf-8?B?UmZlMndFcFpWUzZKdnpocWNJOE1udStIbitFcWNjZFNmYnF1dk1YTDlwemhq?=
 =?utf-8?B?U0pPTTBjM3JuQndaWVN3cFRSNEMrcVlkb3E1VmJEc1pqeWIvUUlUaGlFYXhV?=
 =?utf-8?B?ZFY4cCtWcDhDRnBzYTEyR3hHQ1BNaWZoQXRWdGh5ZU9ZZjJTYU1RejlSdlBh?=
 =?utf-8?B?VFMvQkUrQlQ3b0ZSVmswUGE3VUpHVHUweTJYQmNDUjJ4aFJ3RkI0c3dxTWhq?=
 =?utf-8?B?NlhkVzBlZnJkT0NjdFFhdGEyMmZLV3VMOHFYU0h6QjNBUnhWamVpMklNcXVt?=
 =?utf-8?B?YjdYQXk2Yk50OGlXWUFJcmlvbFFlUDFuak1JdW5KbFhkWW5MN3FnT0RsNXhC?=
 =?utf-8?Q?mg+YnhcHuH4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTdJRGhMSVJhUjNWR0hFdDhzdmJpUlVLUDNrblAyVXUrV09pZGFnUEx5VDVs?=
 =?utf-8?B?cHhEZVhZS3piREVVOWdxRi9QcEhXdUdJNzZ3VkhrWlpmYXI0TWhONFJ4MXVC?=
 =?utf-8?B?UmZOZXU3cEpPT0FKSmNLL2JOWTJFc0RQSUs2M2x5cDdQWFhacUtVeWVYTnk5?=
 =?utf-8?B?T1R5RUZQVnFucTdmYktoaDZoSENhbmVsdjh2bHlxd1o1VWIzMWhKbmprb0Jt?=
 =?utf-8?B?QnV2SUpPM2l4bCsvVUh1UUc1UGdXNmVhdDAzd3Y5NHRSSHkxWi8yWEFUb0dl?=
 =?utf-8?B?dnNBKzRIYXhFZTFjaEVVK1YweGlMeDNvaHpCcUY2WTNySytFNUZKc2lkVUxu?=
 =?utf-8?B?TXBXek5kRlRNODdUdnNjdW9FalkycUw1cjBiN0JaMFlYZHh4dWc0SkFHRC96?=
 =?utf-8?B?K3pEM0VJVWJMZzRSNTk4MWYwOFpmSEpVUW1uK1NOd0I1Ni9Ybkt2ZDB3MWFl?=
 =?utf-8?B?M3JDdXJFeUlzZWh6ZlNsaU5sUFBsSXhmckxBaWpXR2JOSjNEdGRVY3psSy8w?=
 =?utf-8?B?ZEhUeDh3Y2R4dkMxS0F1WFg2MXRSOW1MK1FGOFh1T3dJaHE1dFFsTmNtL0Zl?=
 =?utf-8?B?NFhjZ2VndGJuNmxRMFRITHk1UE0yTFZQM2ZJWEEyUTYvR2NJelJoUFdzUWZ0?=
 =?utf-8?B?a1Z1ZGRHYlFMdTBBQUcyM0EwN3ZSOVNZa3FoVy9sd0Nqb0hCZFJRSGpUU2do?=
 =?utf-8?B?a2xNczlEUjRkZnJ6Vzg2SC9vVDdka3RyUGhReHJlU2h3WFM5ZHBKUDBEOEtn?=
 =?utf-8?B?TWF0Q0ZET0pkdzBqelRPMnBtTTA3Z3BVT0lsY3VYN29TdC8wWndNUUlDR1Ux?=
 =?utf-8?B?SGdnYmF0Ti9XWnVXKzdsdlhrZk1ZeUo2c3gxYUxuMUFkdm51UGZzVlpWVWpq?=
 =?utf-8?B?Q1MyT2ZwOGs4RldvblVsZHlUQW1ZcDFncmY3Znp3eXo5cnk2Zm5HRm1ZeDRF?=
 =?utf-8?B?RlQ3aEZ6cDUyb1ZJV1FlcTJMUlgyZkxRdGlJS3h5UWJWbTN2amxkaGUxTUNz?=
 =?utf-8?B?YTJSNXpPWG9kdnQ4czFWc1FoNmNlekNhbUxGUXZwdzhQVlhZMU83WGhua0ky?=
 =?utf-8?B?UXhjaDRDYSsxY0E2S1RYeVBVRjE5UzRDRFhwVU9sMm1kQmh2dHk4TWgxUmdl?=
 =?utf-8?B?clV5T0FDM0tua2VNeFlHU08xa29PdEVzT081U1dEbUg0NWU1RVFudjlid0E3?=
 =?utf-8?B?ZElvVTdHd3o5TVRNMTZFNDRPdm5HTzVwMmRiL3FJdXJkdzl2V3ZQUlRWclB6?=
 =?utf-8?B?dEdUdHF4dlpIUTc3akora1pSU3RrL284M3V4RlgzRU1abllqWUFFVFNxOHM0?=
 =?utf-8?B?dzFUYUIzZ2N5OXFGUmY5Ny9uK0NiaXZ5cGVWYXBVdStFZW9BM3I1R0dlV3Ax?=
 =?utf-8?B?aUFnanluS3VnOTE5aTRWcDV1dHQvbTVBTjdrY3NWSEgwUkZLSWwwS1lHUVAx?=
 =?utf-8?B?bmt6K3cyaXF5U3lhdjdheEJ2ZVlnVnUzY2hGZFd0QVNxN1o3YmtDeWtSTUxW?=
 =?utf-8?B?bEJCSDg3VFJrbmpOZTVGbHZSVDBHdm85T0dsT0ZrOUVWZk1BWllqQ05nNUQ5?=
 =?utf-8?B?T2JSVndFb2NUVC82MlNHRTRXbVNzdElEbnErcVY2OUp3RUVaWkVTYkpZRitm?=
 =?utf-8?B?d2FCZDNubVlPMTFVYzFIeHorR1hJZWFlRzRtM3hyYW94VmhjcVE1TzRBbDhC?=
 =?utf-8?B?clFrK3NjVmVnWVhlMEVpcHlQTlFQbU5Hbmw3c1BZT0F4bmYxKzhDVlpjbkhQ?=
 =?utf-8?B?bXFqTmphUWljR01sK1NKN1NRTjhQdEJNWmdIMERZQ0V6ajliTjZWdzRRN2dU?=
 =?utf-8?B?ZlJGS0lodDVxME9UWUo3cWRlK2hNanMyYUk4Q01Rc0pyM2dQUjZ0YmVHUDBD?=
 =?utf-8?B?ZnRwWHY3VjN0anl5Q21VZEdmQW8wUHdoU2JRZjV4VDlDUG1VdHZ0ZzRuVGNW?=
 =?utf-8?B?N2J0c1lYREhPQUVKNEUxYXR3WmdNeUY3SGpNcG54ejJNWS9ZL1BibWtPKzJB?=
 =?utf-8?B?WTgweThrandmR1ljd1FZcW94RUU4bHl3NFFJWXpWbjU0NG9nSnE3MFFMU21H?=
 =?utf-8?B?LzVna1pnQ0xtMmZUK2ZzR0QxMExGQXdPZ1BtR1V3K2c0cWpwUVhMNC9oTzNU?=
 =?utf-8?Q?4RcbKRxH5ydcYO9mopi6w51t6?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba518060-3538-4a70-bb3a-08dda2a093af
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 13:14:31.4988
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wrO5h+eTeMPV3z0qd3TMzjzxJiiSKblQiE35C/ihnNcd/MLmC1gIwHnc3wXkLYqi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6732
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-8.54 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.54)[97.95%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.236.53:from];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,redhat.com,intel.com,zeniv.linux.org.uk,kernel.org,google.com,linux-foundation.org,gmail.com,collabora.com,arm.com,suse.cz,linux.alibaba.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org,honor.com];
	RCVD_IN_DNSWL_NONE(0.00)[40.107.236.53:from];
	FROM_EQ_ENVFROM(0.00)[];
	DNSWL_BLOCKED(0.00)[2603:10b6:510:13c::22:received];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Queue-Id: 3BF70443E7
X-Spamd-Bar: --------
Message-ID-Hash: 6MMCE5JWEGGVQC47UELK3BTFLPX7OMYG
X-Message-ID-Hash: 6MMCE5JWEGGVQC47UELK3BTFLPX7OMYG
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: sumit.semwal@linaro.org, kraxel@redhat.com, vivek.kasireddy@intel.com, viro@zeniv.linux.org.uk, brauner@kernel.org, hughd@google.com, akpm@linux-foundation.org, amir73il@gmail.com, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, jack@suse.cz, baolin.wang@linux.alibaba.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, bintian.wang@honor.com, yipengxiang@honor.com, liulu.liu@honor.com, feng.han@honor.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/4] Implement dmabuf direct I/O via copy_file_range
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6MMCE5JWEGGVQC47UELK3BTFLPX7OMYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 6/3/25 15:00, Christoph Hellwig wrote:
> This is a really weird interface.  No one has yet to explain why dmabuf
> is so special that we can't support direct I/O to it when we can support
> it to otherwise exotic mappings like PCI P2P ones.

With udmabuf you can do direct I/O, it's just inefficient to walk the page tables for it when you already have an array of all the folios.

Regards,
Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
