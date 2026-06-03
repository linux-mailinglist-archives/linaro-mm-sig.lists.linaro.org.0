Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9AxVOdIuIGonyQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 15:40:34 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 6298F638292
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 03 Jun 2026 15:40:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b=WkOl1BsB;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44E5640A0F
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Jun 2026 13:40:33 +0000 (UTC)
Received: from SJ2PR03CU001.outbound.protection.outlook.com (mail-westusazon11012040.outbound.protection.outlook.com [52.101.43.40])
	by lists.linaro.org (Postfix) with ESMTPS id 1C21440A03
	for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Jun 2026 13:40:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N3NExXJQ6oWekVnMMDfE+xEsboKkduMI3+TBZer+//I0be1nWIgB9MPeFDPiXcx680UMEetCO1j4zER5/YxLvFpZQsCxlXZSkphKhl+OFRWAO+NswV9N00DtuXL6suD++81GDWnHGyoCqSptyhQOFHg+6UiwfmW9LpwT+ncsnJ7yG9LvLjo6WC407b/HvCfrDykWHbZKStYXSt0SiU0vuILfzaEEj5U6UjjGbrpXh0pUWLLGfEf/AZdAto6Adngl3eS0B0lK2OF1AYyhIUKbrz7OfRHf5+xXz7Q/LkN3Rwyl1Lw7xw7Hu46ZAHonuv1F20a2nWTz0ifSKA5j6iVgzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XX5kWf/hBf1QlFB99I7mhEf/2cvKTzGcDwVH0Dpl5Ho=;
 b=Zah1/h/FE19PrLjY6UbNlFh+xLqUmhOTfdJlr5iNKd8gEsfPFugAZcQrs5bvFwQP2cVLZq9oXA061unzY7MjJ3rUPaBgLLAm+qXYU0ljv+YoDIg6uUpzAOv0bfCz9O3xoiGNTf/GSKdy3n7R24guWsQfvX4afkQ5F0N/OScbsg4fG+tjln4e4cjg3Ghw9Q86aGQ3sZdkntYFM3yIoBxWtsJQVC5b5BBPCpEKNy24YeT3ZyZw5utdGoYkvE+CvfefXI1QAmswxfVdVs9B4uDC6YJfb5YRbTvxqxozwcHkWBGD2v9Dk8DcSe/BKR//pOX8KDMInTQpAooMLX6YfnfpWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XX5kWf/hBf1QlFB99I7mhEf/2cvKTzGcDwVH0Dpl5Ho=;
 b=WkOl1BsB8+5BaWT6l571Js9uqXiO58+NyA/R6Ur7U1X0pycsV/Kerjm6BQ1jSMKsHsgTgd9JcoRhBIYsVftz6ky5JUVZr0VBwcW7L4gZz2sjd1Xbmdb+k7LWZIHB5hNuE8ZXMiWWf+or+x2QooxuW9ZERFda+yb/FwBpTTC+Y7c=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH8PR12MB7304.namprd12.prod.outlook.com (2603:10b6:510:217::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 13:40:19 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0071.011; Wed, 3 Jun 2026
 13:40:19 +0000
Message-ID: <0feaad40-8bde-46c4-a251-07a1bd6ac79d@amd.com>
Date: Wed, 3 Jun 2026 15:40:10 +0200
User-Agent: Mozilla Thunderbird
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>
References: <20260519-qda-series-v1-0-b2d984c297f8@oss.qualcomm.com>
 <20260519-qda-series-v1-11-b2d984c297f8@oss.qualcomm.com>
 <3dddb7e8-5837-4038-9823-ce419cb49ec2@amd.com>
 <e465ed15-1568-467b-ac6b-94f903b46776@oss.qualcomm.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <e465ed15-1568-467b-ac6b-94f903b46776@oss.qualcomm.com>
X-ClientProxiedBy: BL0PR0102CA0023.prod.exchangelabs.com
 (2603:10b6:207:18::36) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH8PR12MB7304:EE_
X-MS-Office365-Filtering-Correlation-Id: 521eb7a3-aee8-40fa-f56b-08dec175a6eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|1800799024|376014|7416014|921020|6133799003|3023799007|22082099003|18002099003|11063799006|5023799004|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: 
	kW2ouNX2OIqk+EsytkWS+zXSF1Y8ehOjjPFR1L/K+zn7keV7dVAL3qSu1KhZhd+sr6nxL5OM7n5HqTWgNeuKRBqjvfdcFD1li/JUsopOdPOGym2ekBnHjLS6OV/p6uq9A1Dj2NcPItn3/ff8Z5uZw1IvlsfHCBVYgY4tYh9h7iwh2k4w7krKcUr07L9JR9XgEWBLAF4qzKzEfx8TsOCcDCcW5vYCrVVt9ZRZ3dRDAN9LxG7YoVcVSsBugnyTZrkSLA4r/bQEENTQ1uLZ+jPDbQ4H2MS4f4bZqfm6c2Q2Wfeq2MB4rDAFSwehKmLWVCduSAHpsfp+SScDbljRrFF9GQzSduLz5qUwlykN958tq0akzdPpkkeW1uqec84vTH3gYDOFOdreU8VMGTfy7ej7vhOwUfq26wuLxgWGPCisqK7NGXiyg5Ozq2B8GLo4TjNk2f4JTTcYWeSgz9F85hU7iOB8ELX/k8mWpEoGED1Qn8aG0oZqb0w7bAfoepdgNKMJV6+lMYpTZcPEfnbiozBlh44oEp34dvY86WMSf23h47s7N/fyef8UyzRGUN+hvTpPbesml8AFjg3ImkTIyh3Ie4sg76wmMREmUKbcR1227x2GJDLjefsSY+xEhzC937ePo++Zci4vVRMCDwXJPhyRE1xYBgXBVPv0HBbNEypM55deRIBSez10hDjIY0LNuM1DgYa8keC6ks3Ts6uT1FyfJcGER/Jen8UFh89wGU8k/5k=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(6133799003)(3023799007)(22082099003)(18002099003)(11063799006)(5023799004)(4143699003)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TWJ5a0RvQlJRRTRCbklsYjI5MlVxalBpM3UwcGR4cmVTMmF3UjFza01naHM3?=
 =?utf-8?B?UGtGb29CUFQyYmNtNDVGbXZ3SEl0d1BaNkw5ODBDNXYrU1BwdVVZOTJtd2Rr?=
 =?utf-8?B?ay9hSWcwV3Z2aDBJK0U1Zk03ZlBGZ2MzNm43c2RKQUNEbnBEOVM3NkVUTTRM?=
 =?utf-8?B?UW9NZTY5SWVLb2traUlVZWZqZSszNXpTQi9oaUZQa0FMOHVieThaYWViVVNO?=
 =?utf-8?B?QzF1RitEdkxPVFhkRTNUMGVsZHFVRVgvMTNMRVE0VW94bnlBUmdlR0x0TmNm?=
 =?utf-8?B?UXpnZ0w2MERxU2Q2UVdQTG8rUldwL3F2OVhLTU1zUy9QdGRjbWNrVEhHUHZl?=
 =?utf-8?B?RlVQMUZNVUpTd3hPamFFMTlpUitOV0dQTjE4M3dob3VGb21kMmpBNE53cU1w?=
 =?utf-8?B?YWI4MDF0VkNBOWZwdlAyM3lnMTFmZk5GTHNuMVNobXZsRUZhVWd0TE9UcXRs?=
 =?utf-8?B?d1c0aDROcDZ6RTZZMjFhVWErbkJpWGQwUEEwdUI4cjF1UklaS1NrOHRrS3VE?=
 =?utf-8?B?QWtnM05mMDRuL3RYbkpyRVJKNHdzcDBvdFlyNitTVmdXY0hLQlcrWEZFaEJt?=
 =?utf-8?B?RllRZ1dlT2Q1UXdwMldZNlZac050bHVxVHFZZTZSSThTeXNrYTdmcXZ0UWx0?=
 =?utf-8?B?OFpNUHpiT0UyR1I5UWduOFVLSWNuMWQ5ODloTm9SNlhWeXdxL05VeWNnQU82?=
 =?utf-8?B?MmJxemVCOTlUTXFIUUZ4R2NDWmxFTzV4M1Rud1l4L2oyR1RUbnNzZFpVMmI4?=
 =?utf-8?B?VVVFOGVSTVNRQWg3VE10MHpHREk4bVVMS3RHVDRsNk9YVEpwVUw2b05TeTlW?=
 =?utf-8?B?NXBUaGVLMk9CSklpL1MxNFJiZzE3RERPSmJWTk51OTVsZ1BFbVZQbEZZNHhB?=
 =?utf-8?B?NVExYnFCQXFXMlhCVXp4YlJ5cUlNK2dkSmpaN2RMbEJiNWw5dXlYTmxOQVNG?=
 =?utf-8?B?NWhUNVZjMDZ5SDQvd3RTOGhFMUVQNkZXMWtYa3JIR2dQTUR1VlMvbWNKVFZq?=
 =?utf-8?B?M0NJUzQyb0RXV0JHYnRXMXI3OVovbVM5WnpZUzNqVVdGVThSSTVqWnkwSno1?=
 =?utf-8?B?bVJOUHFZWUEvNVgxMkhaODEvRG5JZ2ZFTVo3UmpocmN5Sy9QUmdENll6SkJ5?=
 =?utf-8?B?cEIrWUkzM1BSejVEZlpheGVNc3lBWVl5TkpPY1lCNS9CdE5tM0Y5OUp4N0k2?=
 =?utf-8?B?aEtOZ0VjSXAyRTJXVTM5WVpUZVh2c0s0WkpRNXQ1amNjaHVhSWpmQzh4cG1X?=
 =?utf-8?B?NXdOUkNJS3p4OVI3WklhUmllbDRDZ0NuZFJKZHN4cjJvQlpob0Fzb3ZZZTFY?=
 =?utf-8?B?bm8yRHYyNDgxZUhnK09tRjB6VjVvaU01QXVWMTBZR04rYWhIeVZXYnQ5cnJs?=
 =?utf-8?B?NEI2R1N3RnJ6M0lvSFNCT2Ixc1dabEJFM3hMVExQbFljenRwT2tuL1RRSXhY?=
 =?utf-8?B?cGxycFQwNFNvYzQ5eUdmWGIxcDUrQllwSEQ3OThoT3l1TVVBZG1vNVd3K3la?=
 =?utf-8?B?cjArbStlM2lldEV6MFowV3ZYTHFiRW4rR0NnZjRTMGg3dUNjMWlmaUMzc3B2?=
 =?utf-8?B?bkcwV2tpNzNhclY0dFAyYnhNMjduTHZhWVNBZ3liUnNPSzlFQ0xaK0hvd1U4?=
 =?utf-8?B?blNURC8xekJBSG5pOUNGV29DbDRmelJwWTBkNWZGYWloK2crcWtxOXpNaFlO?=
 =?utf-8?B?WlNzNDFpTmhLVW5TYUE1LzBxWFZ6Q3JOeGdidG9Id1k1N3hobHU2WHFoSkJZ?=
 =?utf-8?B?RXY0bkJZVExWbWwxY1Jzb2NFUEh0TFVBb3dZUmRiYmhENEhFZXhyUGRCZHEv?=
 =?utf-8?B?eUNVbHNoYVBDS0xPSHBGN2F5ak9wUjhNbzhNYkF6cHo2ZVBGZjN4YURneTBU?=
 =?utf-8?B?Uld3REo5Nk9yZllMQ3FOYmZhUmh3VXRXUDJ0RnVQTGg0TFF2NWxGUXJWQUVG?=
 =?utf-8?B?dzNqQk5tNFdDdmRkcVVFbSswVnBaaHgzZWhQZEpKZ2FsRFp4M2FXZWxxRTJ3?=
 =?utf-8?B?dGcva1FOalNCTFF5bFR6T0gyL3J2czU4b3lJM0laZHNhcU8ramZVOHVRUkoy?=
 =?utf-8?B?RGJ4b29RWkNVcmh2L0RJdkpSQUdwTlZCUTZyNWFGdXFpT21Qd2NpZERYU1ln?=
 =?utf-8?B?MjNDU3dWMVFmaXlHMHNjNWpFbHBpU2oxc0NFZXRydHpLOFJGWVFhdUcvM2JF?=
 =?utf-8?B?d0Y4YS92Nlo5a1ZkRGZJUGVLUGJXT1RZakNFc29xWVdEc21pUi9yU2RTejI4?=
 =?utf-8?B?cGFIOCtvOVhwUzdMQm1uUWVqMkxuU2k5c3g1TFNYVkRyQVhpWmVLREdEYUQy?=
 =?utf-8?Q?80QWgYVnKaw57Q5lmz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 521eb7a3-aee8-40fa-f56b-08dec175a6eb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2026 13:40:19.2817
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OiBtNsdpWeQ8Iauq4qFrZ+y6c7FET0EUW4zZ7CgueU5WnkzUhWDWUNzGTbEN9dSz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB7304
X-Spamd-Bar: ----
Message-ID-Hash: PTNDQUKYJZMWLBLFLHAFY3UEO7UHWAFH
X-Message-ID-Hash: PTNDQUKYJZMWLBLFLHAFY3UEO7UHWAFH
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Bharath Kumar <quic_bkumar@quicinc.com>, Chenna Kesava Raju <quic_chennak@quicinc.com>, srini@kernel.org, dmitry.baryshkov@oss.qualcomm.com, andersson@kernel.org, konradybcio@kernel.org, robin.clark@oss.qualcomm.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 11/15] accel/qda: Add PRIME DMA-BUF import support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PTNDQUKYJZMWLBLFLHAFY3UEO7UHWAFH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ekansh.gupta@oss.qualcomm.com,m:ogabbay@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:quic_bkumar@quicinc.com,m:quic_chennak@quicinc.com,m:srini@kernel.org,m:dmitry.baryshkov@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robin.clark@oss.qualcomm.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-doc@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,lwn.net,linuxfoundation.org,8bytes.org,arm.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:from_mime,amd.com:mid,qualcomm.com:email,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6298F638292

T24gNi8zLzI2IDA4OjExLCBFa2Fuc2ggR3VwdGEgd3JvdGU6DQo+IE9uIDE5LTA1LTIwMjYgMTI6
MjUsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6DQo+PiBPbiA1LzE5LzI2IDA4OjE2LCBFa2Fuc2gg
R3VwdGEgdmlhIEI0IFJlbGF5IHdyb3RlOg0KPj4+IEZyb206IEVrYW5zaCBHdXB0YSA8ZWthbnNo
Lmd1cHRhQG9zcy5xdWFsY29tbS5jb20+DQouLi4NCj4+PiArc3RhdGljIGludCBxZGFfbWVtb3J5
X21hbmFnZXJfbWFwX2ltcG9ydGVkKHN0cnVjdCBxZGFfbWVtb3J5X21hbmFnZXIgKm1lbV9tZ3Is
DQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBx
ZGFfZ2VtX29iaiAqZ2VtX29iaiwNCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IHFkYV9pb21tdV9kZXZpY2UgKmlvbW11X2RldikNCj4+PiArew0K
Pj4+ICsgICAgICAgc3RydWN0IHNjYXR0ZXJsaXN0ICpzZzsNCj4+PiArICAgICAgIGRtYV9hZGRy
X3QgZG1hX2FkZHI7DQo+Pj4gKw0KPj4+ICsgICAgICAgaWYgKCFnZW1fb2JqLT5pc19pbXBvcnRl
ZCB8fCAhZ2VtX29iai0+c2d0IHx8ICFpb21tdV9kZXYpIHsNCj4+PiArICAgICAgICAgICAgICAg
ZHJtX2VycihnZW1fb2JqLT5iYXNlLmRldiwgIkludmFsaWQgcGFyYW1ldGVycyBmb3IgaW1wb3J0
ZWQgYnVmZmVyIG1hcHBpbmdcbiIpOw0KPj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsNCj4+PiArICAgICAgIH0NCj4+PiArDQo+Pj4gKyAgICAgICBzZyA9IGdlbV9vYmotPnNndC0+
c2dsOw0KPj4+ICsgICAgICAgaWYgKCFzZykgew0KPj4+ICsgICAgICAgICAgICAgICBkcm1fZXJy
KGdlbV9vYmotPmJhc2UuZGV2LCAiSW52YWxpZCBzY2F0dGVyLWdhdGhlciBsaXN0IGZvciBpbXBv
cnRlZCBidWZmZXJcbiIpOw0KPj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4+
PiArICAgICAgIH0NCj4+PiArDQo+Pj4gKyAgICAgICBnZW1fb2JqLT5pb21tdV9kZXYgPSBpb21t
dV9kZXY7DQo+Pj4gKw0KPj4+ICsgICAgICAgLyoNCj4+PiArICAgICAgICAqIEFmdGVyIGRtYV9i
dWZfbWFwX2F0dGFjaG1lbnRfdW5sb2NrZWQoKSwgc2dfZG1hX2FkZHJlc3MoKSByZXR1cm5zIHRo
ZQ0KPj4+ICsgICAgICAgICogSU9NTVUgdmlydHVhbCBhZGRyZXNzLCBub3QgdGhlIHBoeXNpY2Fs
IGFkZHJlc3MuIFRoZSBJT01NVSBtYXBzIHRoZQ0KPj4+ICsgICAgICAgICogZW50aXJlIGJ1ZmZl
ciBhcyBhIGNvbnRpZ3VvdXMgcmFuZ2UgaW4gdGhlIElPTU1VIGFkZHJlc3Mgc3BhY2UgZXZlbiBp
Zg0KPj4+ICsgICAgICAgICogdGhlIHVuZGVybHlpbmcgcGh5c2ljYWwgbWVtb3J5IGlzIG5vbi1j
b250aWd1b3VzLiBUaGVyZWZvcmUgdGhlIGZpcnN0DQo+Pj4gKyAgICAgICAgKiBzZyBlbnRyeSdz
IERNQSBhZGRyZXNzIGlzIHRoZSBzdGFydCBvZiB0aGUgY29tcGxldGUgY29udGlndW91cw0KPj4+
ICsgICAgICAgICogSU9NTVUtbWFwcGVkIHJhbmdlIGFuZCBpcyBzdWZmaWNpZW50IHRvIGRlc2Ny
aWJlIHRoZSBidWZmZXIgdG8gdGhlIERTUC4NCj4+PiArICAgICAgICAqLw0KPj4+ICsgICAgICAg
ZG1hX2FkZHIgPSBzZ19kbWFfYWRkcmVzcyhzZyk7DQo+Pj4gKyAgICAgICBkbWFfYWRkciArPSAo
KHU2NClpb21tdV9kZXYtPnNpZCA8PCAzMik7DQo+Pj4gKyAgICAgICBnZW1fb2JqLT5kbWFfYWRk
ciA9IGRtYV9hZGRyOw0KPj4NCj4+IFRoYXQgaGFuZGxpbmcgaGVyZSBpcyBjb21wbGV0ZWx5IGJy
b2tlbiBzaW5jZSBpdCBhc3N1bWVzIHRoYXQgdGhlIGV4cG9ydGVyIG1hcHMgdGhlIGJ1ZmZlciBh
cyBjb250aWdpb3VzIHJhbmdlLg0KPj4NCj4+IEJ1dCB0aGF0J3MgaW4gbm8gd2F5IGd1YXJhbnRl
ZWQuDQo+IEknbGwgY29sbGVjdCBtb3JlIGRldGFpbHMgYW5kIHdpbGwgdHJ5IHRvIGltcGxlbWVu
dCB0aGlzIGluIHRoZSByaWdodA0KPiB3YXksIG1heWJlIGJ5IGl0ZXJhdGluZyB0aGUgZnVsbCBz
Z190YWJsZS4+DQoNCllvdSBjb3VsZCBhbHNvIGRvY3VtZW50IGV4cGxpY2l0bHkgdGhhdCB5b3Ug
Y2FuIG9ubHkgaW1wb3J0IGNvbnRpZ3VvdXMgYnVmZmVycyAoZS5nLiBETUEtYnVmIGhlYXAgQ01B
IGV0Yy4uLi4pIGFuZCB0aGVuIGNsZWFubHkgcmVqZWN0IG5vbiBjb250aWd1b3VzIGJ1ZmZlcnMg
aGVyZS4NCg0KV2UgaGF2ZSBxdWl0ZSBhIG51bWJlciBvZiBkcml2ZXJzL0hXIHdpdGggdGhhdCBs
aW1pdGF0aW9uLCBzbyBvbmx5IGFjY2VwdGluZyBjb250aWd1b3VzIGJ1ZmZlcnMgaXMgcGVyZmVj
dGx5IG9rLg0KDQpZb3UganVzdCBjYW4ndCBzaWxlbnRseSBhc3N1bWUgdGhhdCBJT01NVSB3b3Vs
ZCBhbHdheXMgbWFwIHRoZSBlbnRpcmUgYnVmZmVyIGFzIG9uZSBjb250aWd1b3VzIHJhbmdlLCBj
YXVzZSB0aGF0IGlzIGNlcnRhaW5seSBub3QgdHJ1ZS4NCg0KUmVnYXJkcywNCkNocmlzdGlhbi4N
Cg0KDQo+PiBSZWdhcmRzLA0KPj4gQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
