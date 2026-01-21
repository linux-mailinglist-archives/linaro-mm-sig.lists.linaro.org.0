Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id rPLNJG2PcGlQYgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:33:49 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id F124F53A00
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 09:33:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1568B3F6FF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 08:33:47 +0000 (UTC)
Received: from SN4PR2101CU001.outbound.protection.outlook.com (mail-southcentralusazon11012037.outbound.protection.outlook.com [40.93.195.37])
	by lists.linaro.org (Postfix) with ESMTPS id 61C6C3F6BD
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 08:33:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=Vk2deEeC;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.195.37 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=teIBefKFNd4FhnO7DRqpn5vomGSFGfjO/W4ahStVoVu69mMIr7WJFzmXqJ+GCA9BR0cMdaiYu5aWrEM5W1hdUOge04ZBjLiZnyC6OqVTBpqu7EObHxaGos32p0L/NWh2O+0oNdJAME9zPnZuPtuFVtkCeHlSS4u8YY98vgWgi3y/WYMFwZ2RWgJohy/EI1avFoK1cAWenBO91A4vAYPVyxlWmErxaG6kkDjo7Hzcv/5nVtPLbvBJFI7GCWPBHmL7HDKJ5z+9wxj8aBmr7vj1gbJVpeOGFpEuLfdmBF3CzvSUBOUDlV/9SrBjiqCL0Bx5l7BiUJ1uFRtUWhpmxFm5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ClBS+oBA9W5t8/yley4yGCiyQpZDtw903Z/EEcKauQ0=;
 b=B/cnli3cF6WAf+P76pEXrCclXNnhLsh9ClB42+x+SrL7e8k7vyv/rE6J03eH4GjREd95OfmpqVItLtgOa9qWz2IlvePzftC1vwNBKYi/v7pEdn4NdQORwbHpSyN63PUQ9LuBOEQw0YVCRbmPqVxbq49jaZTYWycmhECqpZag5WJivXi+FnOqvpA7rlXlRP3aGmYb7LaJtaEq3xLZyGpWAFWjKYtqfCh9+0ePR/XyVRy1DUl80a2XhubNGAyJNKtAmFyd7u7LokUnaId8wqwiVju+AZuvLBwCVJa/0VZqaE3Sp8LaEkGDtlVnethxne8kPwgsNS6txWPN4wFC8OPSZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ClBS+oBA9W5t8/yley4yGCiyQpZDtw903Z/EEcKauQ0=;
 b=Vk2deEeCJvvKlHVtPtTU0WV3wPdbCQbXIbgkCsub+DLJBhUoi4PAUGcrhdnqAhm8QzX1zZQr55swZq7HtPlO6XjHEYEvXOlSiJ7tieohoA7CTHU6bVegnfbK8mOxpByz/7hFqQT39Xb0PwtnwYN9zWKHMITb6Kyu4SmyBXUvyzA=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by IA0PR12MB7531.namprd12.prod.outlook.com (2603:10b6:208:43f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 08:33:37 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 08:33:36 +0000
Message-ID: <59762c7e-f00b-49c6-bfab-ff647d3fe05d@amd.com>
Date: Wed, 21 Jan 2026 09:33:27 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>, Sumit Semwal
 <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>,
 Ankit Agrawal <ankita@nvidia.com>,
 Vivek Kasireddy <vivek.kasireddy@intel.com>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-1-b7e0b07b8214@nvidia.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260120-dmabuf-revoke-v3-1-b7e0b07b8214@nvidia.com>
X-ClientProxiedBy: FR4P281CA0043.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c7::17) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|IA0PR12MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: 328ffb78-28a2-4a17-a353-08de58c7c55f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|921020;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SmhoN3hUTmhtR3Q2SnBqZ1dIL1FqSFIxS3ZiTW80blVxRlg0RGJBR2ZYanZr?=
 =?utf-8?B?dDJlcmhOT2VUMlpZY3hhN1E5d1VKV2hjUnIvUCsrbVk0NmZTTCszTDBhMjZy?=
 =?utf-8?B?dnZpZE1ZNzRBNEtkdUxIWmZZRDY2emJJeWpmZFU2SUh0bFpSclVrNVNtMXJ1?=
 =?utf-8?B?dTFmeGIveDE4MGF0S3JiWWRRYUtGQU9aWkZNQndueGR5eWdneEtsMEpJYVN1?=
 =?utf-8?B?SGZnVGdUWEpBdnVBa2laWWdSTFVxYXFiR3VuK3B2SXd4YUxOOTFrdTBSUGtJ?=
 =?utf-8?B?R25ocVRFck9sNGxXYXY1aFA3cnlPR3ZocVZUT0ZzMzQwR3VOMEx6S05zN1FT?=
 =?utf-8?B?MTh3KzZDNXY1U3ZkRUFaY2FHM2RaVEJBYVZ1WVd2KzJ1bENGV0JUOWRwM2Rj?=
 =?utf-8?B?VGFvc0tRMGJHN3BLOHVYblhOY1hhK2lFckFQVThZckljMXZEMXR3LzNkS0pF?=
 =?utf-8?B?SDBlWllhbU9UN3hpT0RaQ251S0hNTCtOemxMV2VhNkY5RTUwTVowenlTbG00?=
 =?utf-8?B?YWFpVzJUUnZHVzNqT3dzQ2JmSWNFbGZvUmhTM2tFRnZxQ0ZKcmJRTlhuK0VI?=
 =?utf-8?B?VGd1cGx5TVY1RkNKMFVYY2VwczlhY1FkMGI4elM3N3JiUDF0REpqcmRDOFYx?=
 =?utf-8?B?eml6ck5wVjcwWU96OG5EMS8yWmJLZkFBaXZxVTVtWFpoUFZyclhaLzdJNHJs?=
 =?utf-8?B?ZEhsb0hlVVpaejY1OE02bWhZTWV1OW9PaVk5VU5McFI5SnpiSDJlVWNKMXNY?=
 =?utf-8?B?Qm9weExaT2NyQUVscy8rNE9nM084VVY3L1BxazBmMEwyY2d0cmhmaXI0SWYr?=
 =?utf-8?B?ejdZMWNCbTBUcVVQV1dQa0RpMWNxQ3J1RG9pc3ZwcUtTaXJOK3JCdDRtV3Nh?=
 =?utf-8?B?ZzkzeHhOaGdDUHZCTmcyUHh6TVorSFgvNEpad1BtTmlqd3N1UXJMU2JBSE0w?=
 =?utf-8?B?MHV2ekdCTW1sM1FkN0w2YTg2YTVkWDBMcHpieVhDZnpZQ3N1eEJPKzdCYndP?=
 =?utf-8?B?T2Z3eXhVTXZUZUdZR1VoNC80RHd0Nno5T1ZJbzNYNFNKUzB5ZnRJSkhPSmdQ?=
 =?utf-8?B?Slc0VW9Kd0tIVUZnakNNL1V6T0duV3hFZTVxSS8rbnNCenFSTGR5SW1VK3Jl?=
 =?utf-8?B?dU9SUEU5eXJybXh2aHZ0WHdzNUNjWmRlK3AwMmx0SlIzb2NPSVVmMEE5eFVS?=
 =?utf-8?B?dHZkbjJSNU5odkFZSFVEV2hZOXVQWThLWEtLdjA5ZXBtWGs0SFhTY0U3SldF?=
 =?utf-8?B?dE82MkFjbUVqRk9VeklOTmlDbUVxRGNSWHVkUytRbldjQXhNQ2hsRExaV3N0?=
 =?utf-8?B?YXNVa1B4RitjT3JTbjhhSGJmYmpqSE5sbFQvamZ1VXJqbDhaNFBGdVBxYmw5?=
 =?utf-8?B?MVpmVnJaUUowRHZ1MklEUFpjMHdEWWNYc2ZBVEdkb1d0YVg5K2oxcVBxaGEr?=
 =?utf-8?B?dVVROW1haSs4TTBuZDdaMFV1N3llR2VJYVN2bktKaHJCUkdnMkFFdTlQWjlm?=
 =?utf-8?B?NkNPNzR1cEE1UmNibWRuSW5UVEcyS2E1ajJuUFNJWDV1Zmt5SE55UVJQdTJH?=
 =?utf-8?B?RUw3QlRGZ1ZBSWN3VVM1V1ZxTjJkMFRKMUVNRG9xZGVRdVlEdVR5R3E0Vmtq?=
 =?utf-8?B?RzdKU3BqMG9SaHpaSEgvVTllNUdVNlg1emNoRnpGSWswaXdGL21Kc1QrVGQv?=
 =?utf-8?B?NlE1Tjhld3NLb3lXSUZWMGZXakh0VTZjakNKTWN4aXYvVGZwemFpQ1RTK0V1?=
 =?utf-8?B?aTJWaHZKTFBYYi9qcG1sSTBMb2dqc0xaMEpJOEtaN0RWb3VrZ05Db1NGdS9i?=
 =?utf-8?B?eTA5NHhFa0tuZ3NuaEhQbXZxWWNyQ3ZWczlIak9TaEF0VEpOZVZMVHNQQlFW?=
 =?utf-8?B?YXVWWlRpSlExaHo3bDgxdFpWU0U4eGNxWUp1U0NSY1UvVmxSRm5CUzlxZFFp?=
 =?utf-8?B?b3VTOVhxWHRLaitJN3BDQjI0L0k2aFNkdVozMVJzTU5GQ2xjWk5nbUwvZmpU?=
 =?utf-8?B?UTdlek9BR2RjSy8zVWNmdjBBOW5EY2R0bTFIYUlpbHhocFhHVTVLVnlYUnZm?=
 =?utf-8?B?M1h4bnA3TDlBNzhnZEhWb1ZUSldXaWU5UjZVSCtsQWhwZldJbEhlTnp1Nysr?=
 =?utf-8?B?NWV6czBIQ0ZvVGQ1WnZSQXAzK1JKWkxDK3JHOTVlS2hoaW5UaWlWa3dTazVO?=
 =?utf-8?B?MkE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SWh5YjdmNXJKbmtReVRjK1FUdzRvWmZkakVteXN6Y0UzKzMvdk90NjBhWDlr?=
 =?utf-8?B?eThoc2NsTm4zQ0lubzBxMnM3ck0wUUJTdkd4b3ZnNGRWYlUyaERJMkVRSER4?=
 =?utf-8?B?cFIxOVl0WUdRcC9RU21YM2J2NjNPRGlrZUgxdWwvWDJ2NGlKSzdjWW9qV2lT?=
 =?utf-8?B?eE05TGk1Z01tczk4cDRtWjhzOGFkQ0lKajQ3Tmk4MjZMaWYwU1FlZU16N1l0?=
 =?utf-8?B?U0lvVnJsWUk4U1JScTZ4THpHN1dXK28zRzVXVE5Zbjg2OU9RM1FDS1FzNytY?=
 =?utf-8?B?OE1aUTZQMTh2Tjh4anVKcVkrTUVPaXFxd0RjaGY1U1lYRkNNbWxYdFZ5RGs1?=
 =?utf-8?B?QS9QTStJUisvdHlyNTBLVHUwNk1acDFBL0JaYmFXSDBBSnZNOXVoWWoxSjBx?=
 =?utf-8?B?aTdabzA5WTlZais0TWRaTDVnM0hZOHo1enN5bkVnZEpUWFFEYkdaMk93VGh0?=
 =?utf-8?B?dDhpOHpzdXNraWRsczhjZkRoZ0ZHREZtTVBNZVJ2RU9jdTBLaFBhSWRXcHpY?=
 =?utf-8?B?QUVnQzZ6Rkp0QllCV3BaR1k0Y2o5M3ZLYTFzdXl2c1EyWVljZE9lRTBmMmJY?=
 =?utf-8?B?Q0JCSVI5dnNZN2RHaTNwZEw0OVJTR1oyYWJ4bkNkZE5Bd2JHYzRIazVwSlFw?=
 =?utf-8?B?UkNIOVJNNXArOU5DT2FyWncreVJET3RncmhtS1dIMnhoaC9YL2h4SktIWXVo?=
 =?utf-8?B?Q2NwQ1VNWXB2OHZHVUdvSHhLR0F0VmhzcWlyV3J1dElxdDhudUgzaVl0OVY2?=
 =?utf-8?B?ZlNjVTFsMHFycjdpNHEwOWlKWXkxTnNQVzJvcjJrbFZhbi9MUXQxTEVJQXBn?=
 =?utf-8?B?alRRYUd1aVAzanJoS2N2bXNiQysrTTF2MTliNmxyYk52SzJFbE9WQlcyUnhn?=
 =?utf-8?B?em9oTEJvVGZrNThtU1NBVXhpV3RqWEFIc3A5MHppMWE0OW52QndFTE8rUFBX?=
 =?utf-8?B?b1dCWTl2VnB6b1A5TDZzb1RxM3BPT3o2TEpiNnlLN0VWNkFDaExlSDRENXdm?=
 =?utf-8?B?TGN3bGFpd3c0cWMvTWZQQkZ3d003VkY0SkRlMzE2L1h4Zi9jRHcyYjY1U2RB?=
 =?utf-8?B?OTJiRnYyNXhNQU9EWEU0c2J1U1dOYUVncGJjdDB1N0dkMUdxMlU4NVZKMW03?=
 =?utf-8?B?bEZOVlpDT3RET25HUDNhazYzR2pVMy9VVHZzcHFjQ0JnOWNHbi82dDhVcEdG?=
 =?utf-8?B?T2NRd0VuUlY0TnErM1JnTGRaaDk2R0dvcHVjNWUxRDA3UjZtQ3lZOUtTMS9X?=
 =?utf-8?B?cFdNYUZYNXJKWkVYdzhBUE1OSm1qckhkMHcrbWJVWUpmbEtZdkdzMHdrMFRp?=
 =?utf-8?B?R1NNRDN3ajlkeXd6RXI1VElTTmlueXNlWGhxek9lOWs1WFArNXMvZC9neXdE?=
 =?utf-8?B?TWZjK3oxN0pPYmluc2k1VG5wc0tDWVc5Y0JFVlhPcUlReFRFNnIrTTNtV0RK?=
 =?utf-8?B?eWN1RXR6OU55eEI5WUd6eWU3NHhoNVJtRUk1ZkhyQk1FcXRPenhTZHorNTBQ?=
 =?utf-8?B?Qk5jdDhOdkhncTZuMGhxd2R5RWZpbzhvWlJhNnIvMmpyWlpVWVd0R05MVW1L?=
 =?utf-8?B?Ulo3cDBkZTZXMGg4ZHBSbDg0bHJBejlJM1NBSFRwT2wzZCtMSlFJVVFJSTdv?=
 =?utf-8?B?YzZSdlpxcE56bUgrSm1yWVRybEJ1c2duTEpJYWxQY3hQZi9uUWgyMjV0bDNH?=
 =?utf-8?B?MnZ1VHNMNmc5Y0g5eEIxK2E2a25BNzFPSHFIWnBOSTFXNEt4Vzk2Q2hxNVFP?=
 =?utf-8?B?OWgxWEdLYm1abVpnV1ovNTZ3WVEvdEhaME8rMnBlNGdQWFdJeDNWSG5RY0JP?=
 =?utf-8?B?VEJLMjdXMGVnYjV6eXU0TGRLWUpTd0UzZUZiWTB1QitxaVg0N0ZCTEd6ODNZ?=
 =?utf-8?B?SmhUUGFpbVhCQ2xZT2cyMnpBREV6WFF4NzZPaitIUGJTdEZBNTNrVEdTdzVo?=
 =?utf-8?B?YkI3NWJRUGRJN2oyL0JpSmRVcitPWXVUZmdHUEVQcFhiRG5vQ3cwRlNhRG9H?=
 =?utf-8?B?RmdGSHhwdkh0TzlhSi9QQktQWWlpZHpnd3B0TTRlVHRrNE1ldFRSUUY2Yzdn?=
 =?utf-8?B?Y2NrbHFBODJwdGlKeHdzdGpBMjhmQmhnSjdvTEtIMHprN1V4SDFlV2NEbmFw?=
 =?utf-8?B?MmhNcWV0NG5uNWF0SmZJZUErSU1OOUcvZE1SSVZ4cUxQaUZvZE9wY3FvTFUr?=
 =?utf-8?B?K2dJQ2wyT0FmTGJCY2xndEZjdlpBQTY3MTFHdU5ZalJtR2RxdXJrUllIR0Vk?=
 =?utf-8?B?d0x4emtvbDFpeE45WVFPaFlXaHc3T2Nta1VxcFFNL2xmdERaeGk2dVZ1OHZB?=
 =?utf-8?Q?uvjtKdD1+d7JDgFnls?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 328ffb78-28a2-4a17-a353-08de58c7c55f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 08:33:36.8621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IiXV6pAOAbeuvLyD/omQzKuzoS5sOLIIW/+RqI+o7hwcnMmH3OstJiWn7ej+97mg
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR12MB7531
X-Spamd-Bar: -----
Message-ID-Hash: 2RXZI7ECCIJFGWYXQK36RWX7GIWWQ6KN
X-Message-ID-Hash: 2RXZI7ECCIJFGWYXQK36RWX7GIWWQ6KN
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/7] dma-buf: Rename .move_notify() callback to a clearer identifier
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2RXZI7ECCIJFGWYXQK36RWX7GIWWQ6KN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [3.09 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,amd.com,gmail.com,ffwll.ch,redhat.com,collabora.com,chromium.org,linux.intel.com,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,linaro.org:email,nvidia.com:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: F124F53A00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBGcm9tOiBMZW9uIFJv
bWFub3Zza3kgPGxlb25yb0BudmlkaWEuY29tPg0KPiANCj4gUmVuYW1lIHRoZSAubW92ZV9ub3Rp
ZnkoKSBjYWxsYmFjayB0byAuaW52YWxpZGF0ZV9tYXBwaW5ncygpIHRvIG1ha2UgaXRzDQo+IHB1
cnBvc2UgZXhwbGljaXQgYW5kIGhpZ2hsaWdodCB0aGF0IGl0IGlzIHJlc3BvbnNpYmxlIGZvciBp
bnZhbGlkYXRpbmcNCj4gZXhpc3RpbmcgbWFwcGluZ3MuDQo+IA0KPiBTdWdnZXN0ZWQtYnk6IENo
cmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gUmV2aWV3ZWQtYnk6
IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogTGVvbiBSb21hbm92c2t5IDxsZW9ucm9AbnZpZGlhLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwgNiArKystLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgfCA0ICsrLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jICAgICAgfCAyICstDQo+ICBkcml2
ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jICAgICAgIHwgNiArKystLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS94ZS94ZV9kbWFfYnVmLmMgICAgICAgICAgICAgfCAyICstDQo+ICBkcml2
ZXJzL2luZmluaWJhbmQvY29yZS91bWVtX2RtYWJ1Zi5jICAgICAgIHwgNCArKy0tDQo+ICBkcml2
ZXJzL2luZmluaWJhbmQvaHcvbWx4NS9tci5jICAgICAgICAgICAgIHwgMiArLQ0KPiAgZHJpdmVy
cy9pb21tdS9pb21tdWZkL3BhZ2VzLmMgICAgICAgICAgICAgICB8IDIgKy0NCj4gIGluY2x1ZGUv
bGludXgvZG1hLWJ1Zi5oICAgICAgICAgICAgICAgICAgICAgfCA2ICsrKy0tLQ0KPiAgOSBmaWxl
cyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1i
dWYuYw0KPiBpbmRleCBlZGFhOWU0ZWU0YWUuLjU5Y2M2NDdiZjQwZSAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1
Zi5jDQo+IEBAIC05NDgsNyArOTQ4LDcgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3Qg
ZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsDQo+ICAJaWYgKFdBUk5fT04oIWRt
YWJ1ZiB8fCAhZGV2KSkNCj4gIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ICANCj4gLQlp
ZiAoV0FSTl9PTihpbXBvcnRlcl9vcHMgJiYgIWltcG9ydGVyX29wcy0+bW92ZV9ub3RpZnkpKQ0K
PiArCWlmIChXQVJOX09OKGltcG9ydGVyX29wcyAmJiAhaW1wb3J0ZXJfb3BzLT5pbnZhbGlkYXRl
X21hcHBpbmdzKSkNCj4gIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7DQo+ICANCj4gIAlhdHRh
Y2ggPSBremFsbG9jKHNpemVvZigqYXR0YWNoKSwgR0ZQX0tFUk5FTCk7DQo+IEBAIC0xMDU1LDcg
KzEwNTUsNyBAQCBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX3BpbiwgIkRNQV9CVUYiKTsN
Cj4gICAqDQo+ICAgKiBUaGlzIHVucGlucyBhIGJ1ZmZlciBwaW5uZWQgYnkgZG1hX2J1Zl9waW4o
KSBhbmQgYWxsb3dzIHRoZSBleHBvcnRlciB0byBtb3ZlDQo+ICAgKiBhbnkgbWFwcGluZyBvZiBA
YXR0YWNoIGFnYWluIGFuZCBpbmZvcm0gdGhlIGltcG9ydGVyIHRocm91Z2gNCj4gLSAqICZkbWFf
YnVmX2F0dGFjaF9vcHMubW92ZV9ub3RpZnkuDQo+ICsgKiAmZG1hX2J1Zl9hdHRhY2hfb3BzLmlu
dmFsaWRhdGVfbWFwcGluZ3MuDQo+ICAgKi8NCj4gIHZvaWQgZG1hX2J1Zl91bnBpbihzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+ICB7DQo+IEBAIC0xMjYyLDcgKzEyNjIsNyBA
QCB2b2lkIGRtYV9idWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWYgKmRtYWJ1ZikNCg0KVGhp
bmtpbmcgbW9yZSBhYm91dCBpdCB3ZSBjYW4ga2VlcCB0aGUgZnVuY3Rpb24gbmFtZXMgYXMgdGhl
eSBhcmUgaW4gdGhlIGltcG9ydGVycywgYnV0IHJlbmFtaW5nIHJlbmFtaW5nIHRoaXMgZnJhbWV3
b3JrIGZ1bmN0aW9uIGFzIHdlbGwgd291bGQgYmUgcmVhbGx5IG5pY2UgdG8gaGF2ZS4NCg0KUmVn
YXJkcywNCkNocmlzdGlhbi4NCg0KPiAgDQo+ICAJbGlzdF9mb3JfZWFjaF9lbnRyeShhdHRhY2gs
ICZkbWFidWYtPmF0dGFjaG1lbnRzLCBub2RlKQ0KPiAgCQlpZiAoYXR0YWNoLT5pbXBvcnRlcl9v
cHMpDQo+IC0JCQlhdHRhY2gtPmltcG9ydGVyX29wcy0+bW92ZV9ub3RpZnkoYXR0YWNoKTsNCj4g
KwkJCWF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5pbnZhbGlkYXRlX21hcHBpbmdzKGF0dGFjaCk7DQo+
ICB9DQo+ICBFWFBPUlRfU1lNQk9MX05TX0dQTChkbWFfYnVmX21vdmVfbm90aWZ5LCAiRE1BX0JV
RiIpOw0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYu
Yw0KPiBpbmRleCBlMjJjZmE3YzZkMzIuLjg2MzQ1NDE0OGIyOCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jDQo+IEBAIC00NTAsNyArNDUwLDcg
QEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRlX29iaihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1
Y3QgZG1hX2J1ZiAqZG1hX2J1ZikNCj4gIH0NCj4gIA0KPiAgLyoqDQo+IC0gKiBhbWRncHVfZG1h
X2J1Zl9tb3ZlX25vdGlmeSAtICZhdHRhY2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRpb24NCj4g
KyAqIGFtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5IC0gJmF0dGFjaC5pbnZhbGlkYXRlX21hcHBp
bmdzIGltcGxlbWVudGF0aW9uDQo+ICAgKg0KPiAgICogQGF0dGFjaDogdGhlIERNQS1idWYgYXR0
YWNobWVudA0KPiAgICoNCj4gQEAgLTUyMSw3ICs1MjEsNyBAQCBhbWRncHVfZG1hX2J1Zl9tb3Zl
X25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+ICANCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVmX2F0dGFjaF9v
cHMgPSB7DQo+ICAJLmFsbG93X3BlZXIycGVlciA9IHRydWUsDQo+IC0JLm1vdmVfbm90aWZ5ID0g
YW1kZ3B1X2RtYV9idWZfbW92ZV9ub3RpZnkNCj4gKwkuaW52YWxpZGF0ZV9tYXBwaW5ncyA9IGFt
ZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+ICB9Ow0KPiAgDQo+ICAvKioNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL3ZpcnRpby92aXJ0Z3B1X3ByaW1lLmMNCj4gaW5kZXggY2U0OTI4MjE5OGNiLi4xOWM3OGRk
MmNhNzcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmlt
ZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV9wcmltZS5jDQo+IEBA
IC0yODgsNyArMjg4LDcgQEAgc3RhdGljIHZvaWQgdmlydGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gIA0KPiAgc3RhdGljIGNvbnN0
IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgdmlydGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7
DQo+ICAJLmFsbG93X3BlZXIycGVlciA9IHRydWUsDQo+IC0JLm1vdmVfbm90aWZ5ID0gdmlydGdw
dV9kbWFfYnVmX21vdmVfbm90aWZ5DQo+ICsJLmludmFsaWRhdGVfbWFwcGluZ3MgPSB2aXJ0Z3B1
X2RtYV9idWZfbW92ZV9ub3RpZnkNCj4gIH07DQo+ICANCj4gIHN0cnVjdCBkcm1fZ2VtX29iamVj
dCAqdmlydGdwdV9nZW1fcHJpbWVfaW1wb3J0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jIGIvZHJpdmVy
cy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYw0KPiBpbmRleCA1ZGY5OGRlNWJhM2MuLjFm
MmNjYTVjMmY4MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2Rt
YV9idWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvdGVzdHMveGVfZG1hX2J1Zi5jDQo+
IEBAIC0yMyw3ICsyMyw3IEBAIHN0YXRpYyBib29sIHAycF9lbmFibGVkKHN0cnVjdCBkbWFfYnVm
X3Rlc3RfcGFyYW1zICpwYXJhbXMpDQo+ICBzdGF0aWMgYm9vbCBpc19keW5hbWljKHN0cnVjdCBk
bWFfYnVmX3Rlc3RfcGFyYW1zICpwYXJhbXMpDQo+ICB7DQo+ICAJcmV0dXJuIElTX0VOQUJMRUQo
Q09ORklHX0RNQUJVRl9NT1ZFX05PVElGWSkgJiYgcGFyYW1zLT5hdHRhY2hfb3BzICYmDQo+IC0J
CXBhcmFtcy0+YXR0YWNoX29wcy0+bW92ZV9ub3RpZnk7DQo+ICsJCXBhcmFtcy0+YXR0YWNoX29w
cy0+aW52YWxpZGF0ZV9tYXBwaW5nczsNCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgY2hlY2tf
cmVzaWRlbmN5KHN0cnVjdCBrdW5pdCAqdGVzdCwgc3RydWN0IHhlX2JvICpleHBvcnRlZCwNCj4g
QEAgLTYwLDcgKzYwLDcgQEAgc3RhdGljIHZvaWQgY2hlY2tfcmVzaWRlbmN5KHN0cnVjdCBrdW5p
dCAqdGVzdCwgc3RydWN0IHhlX2JvICpleHBvcnRlZCwNCj4gIA0KPiAgCS8qDQo+ICAJICogRXZp
Y3QgZXhwb3J0ZXIuIEV2aWN0aW5nIHRoZSBleHBvcnRlZCBibyB3aWxsDQo+IC0JICogZXZpY3Qg
YWxzbyB0aGUgaW1wb3J0ZWQgYm8gdGhyb3VnaCB0aGUgbW92ZV9ub3RpZnkoKSBmdW5jdGlvbmFs
aXR5IGlmDQo+ICsJICogZXZpY3QgYWxzbyB0aGUgaW1wb3J0ZWQgYm8gdGhyb3VnaCB0aGUgaW52
YWxpZGF0ZV9tYXBwaW5ncygpIGZ1bmN0aW9uYWxpdHkgaWYNCj4gIAkgKiBpbXBvcnRlciBpcyBv
biBhIGRpZmZlcmVudCBkZXZpY2UuIElmIHRoZXkncmUgb24gdGhlIHNhbWUgZGV2aWNlLA0KPiAg
CSAqIHRoZSBleHBvcnRlciBhbmQgdGhlIGltcG9ydGVyIHNob3VsZCBiZSB0aGUgc2FtZSBiby4N
Cj4gIAkgKi8NCj4gQEAgLTE5OCw3ICsxOTgsNyBAQCBzdGF0aWMgdm9pZCB4ZV90ZXN0X2RtYWJ1
Zl9pbXBvcnRfc2FtZV9kcml2ZXIoc3RydWN0IHhlX2RldmljZSAqeGUpDQo+ICANCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIG5vcDJwX2F0dGFjaF9vcHMgPSB7DQo+
ICAJLmFsbG93X3BlZXIycGVlciA9IGZhbHNlLA0KPiAtCS5tb3ZlX25vdGlmeSA9IHhlX2RtYV9i
dWZfbW92ZV9ub3RpZnkNCj4gKwkuaW52YWxpZGF0ZV9tYXBwaW5ncyA9IHhlX2RtYV9idWZfbW92
ZV9ub3RpZnkNCj4gIH07DQo+ICANCj4gIC8qDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0veGUveGVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KPiBp
bmRleCA3Yzc0YTMxZDQ0ODYuLjFiOWNkMDQzZTUxNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3hlL3hlX2RtYV9idWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUveGVfZG1h
X2J1Zi5jDQo+IEBAIC0yODcsNyArMjg3LDcgQEAgc3RhdGljIHZvaWQgeGVfZG1hX2J1Zl9tb3Zl
X25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpDQo+ICANCj4gIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIHhlX2RtYV9idWZfYXR0YWNoX29wcyA9
IHsNCj4gIAkuYWxsb3dfcGVlcjJwZWVyID0gdHJ1ZSwNCj4gLQkubW92ZV9ub3RpZnkgPSB4ZV9k
bWFfYnVmX21vdmVfbm90aWZ5DQo+ICsJLmludmFsaWRhdGVfbWFwcGluZ3MgPSB4ZV9kbWFfYnVm
X21vdmVfbm90aWZ5DQo+ICB9Ow0KPiAgDQo+ICAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX1hF
X0tVTklUX1RFU1QpDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2luZmluaWJhbmQvY29yZS91bWVt
X2RtYWJ1Zi5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KPiBpbmRl
eCAwZWMyZTQxMjBjYzkuLmQ3N2E3MzljZmU3YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9pbmZp
bmliYW5kL2NvcmUvdW1lbV9kbWFidWYuYw0KPiArKysgYi9kcml2ZXJzL2luZmluaWJhbmQvY29y
ZS91bWVtX2RtYWJ1Zi5jDQo+IEBAIC0xMjksNyArMTI5LDcgQEAgaWJfdW1lbV9kbWFidWZfZ2V0
X3dpdGhfZG1hX2RldmljZShzdHJ1Y3QgaWJfZGV2aWNlICpkZXZpY2UsDQo+ICAJaWYgKGNoZWNr
X2FkZF9vdmVyZmxvdyhvZmZzZXQsICh1bnNpZ25lZCBsb25nKXNpemUsICZlbmQpKQ0KPiAgCQly
ZXR1cm4gcmV0Ow0KPiAgDQo+IC0JaWYgKHVubGlrZWx5KCFvcHMgfHwgIW9wcy0+bW92ZV9ub3Rp
ZnkpKQ0KPiArCWlmICh1bmxpa2VseSghb3BzIHx8ICFvcHMtPmludmFsaWRhdGVfbWFwcGluZ3Mp
KQ0KPiAgCQlyZXR1cm4gcmV0Ow0KPiAgDQo+ICAJZG1hYnVmID0gZG1hX2J1Zl9nZXQoZmQpOw0K
PiBAQCAtMTk1LDcgKzE5NSw3IEBAIGliX3VtZW1fZG1hYnVmX3Vuc3VwcG9ydGVkX21vdmVfbm90
aWZ5KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4gIA0KPiAgc3RhdGljIHN0
cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgaWJfdW1lbV9kbWFidWZfYXR0YWNoX3Bpbm5lZF9vcHMg
PSB7DQo+ICAJLmFsbG93X3BlZXIycGVlciA9IHRydWUsDQo+IC0JLm1vdmVfbm90aWZ5ID0gaWJf
dW1lbV9kbWFidWZfdW5zdXBwb3J0ZWRfbW92ZV9ub3RpZnksDQo+ICsJLmludmFsaWRhdGVfbWFw
cGluZ3MgPSBpYl91bWVtX2RtYWJ1Zl91bnN1cHBvcnRlZF9tb3ZlX25vdGlmeSwNCj4gIH07DQo+
ICANCj4gIHN0cnVjdCBpYl91bWVtX2RtYWJ1ZiAqDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lu
ZmluaWJhbmQvaHcvbWx4NS9tci5jIGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L21seDUvbXIuYw0K
PiBpbmRleCAzMjVmYTA0Y2JlOGEuLjk3MDk5ZDNiMTY4OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9pbmZpbmliYW5kL2h3L21seDUvbXIuYw0KPiArKysgYi9kcml2ZXJzL2luZmluaWJhbmQvaHcv
bWx4NS9tci5jDQo+IEBAIC0xNjIwLDcgKzE2MjAsNyBAQCBzdGF0aWMgdm9pZCBtbHg1X2liX2Rt
YWJ1Zl9pbnZhbGlkYXRlX2NiKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkNCj4g
IA0KPiAgc3RhdGljIHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgbWx4NV9pYl9kbWFidWZfYXR0
YWNoX29wcyA9IHsNCj4gIAkuYWxsb3dfcGVlcjJwZWVyID0gMSwNCj4gLQkubW92ZV9ub3RpZnkg
PSBtbHg1X2liX2RtYWJ1Zl9pbnZhbGlkYXRlX2NiLA0KPiArCS5pbnZhbGlkYXRlX21hcHBpbmdz
ID0gbWx4NV9pYl9kbWFidWZfaW52YWxpZGF0ZV9jYiwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBz
dHJ1Y3QgaWJfbXIgKg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2Vz
LmMgYi9kcml2ZXJzL2lvbW11L2lvbW11ZmQvcGFnZXMuYw0KPiBpbmRleCBkYmU1MWVjYjlhMjAu
Ljc2ZjkwMGZhMTY4NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2Vz
LmMNCj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdWZkL3BhZ2VzLmMNCj4gQEAgLTE0NTEsNyAr
MTQ1MSw3IEBAIHN0YXRpYyB2b2lkIGlvcHRfcmV2b2tlX25vdGlmeShzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpDQo+ICANCj4gIHN0YXRpYyBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hf
b3BzIGlvcHRfZG1hYnVmX2F0dGFjaF9yZXZva2Vfb3BzID0gew0KPiAgCS5hbGxvd19wZWVyMnBl
ZXIgPSB0cnVlLA0KPiAtCS5tb3ZlX25vdGlmeSA9IGlvcHRfcmV2b2tlX25vdGlmeSwNCj4gKwku
aW52YWxpZGF0ZV9tYXBwaW5ncyA9IGlvcHRfcmV2b2tlX25vdGlmeSwNCj4gIH07DQo+ICANCj4g
IC8qDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaCBiL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oDQo+IGluZGV4IDBiYzQ5MjA5MDIzNy4uMWIzOTc2MzVjNzkzIDEwMDY0NA0K
PiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2Rt
YS1idWYuaA0KPiBAQCAtNDA3LDcgKzQwNyw3IEBAIHN0cnVjdCBkbWFfYnVmIHsNCj4gIAkgKiAg
IHRocm91Z2ggdGhlIGRldmljZS4NCj4gIAkgKg0KPiAgCSAqIC0gRHluYW1pYyBpbXBvcnRlcnMg
c2hvdWxkIHNldCBmZW5jZXMgZm9yIGFueSBhY2Nlc3MgdGhhdCB0aGV5IGNhbid0DQo+IC0JICog
ICBkaXNhYmxlIGltbWVkaWF0ZWx5IGZyb20gdGhlaXIgJmRtYV9idWZfYXR0YWNoX29wcy5tb3Zl
X25vdGlmeQ0KPiArCSAqICAgZGlzYWJsZSBpbW1lZGlhdGVseSBmcm9tIHRoZWlyICZkbWFfYnVm
X2F0dGFjaF9vcHMuaW52YWxpZGF0ZV9tYXBwaW5ncw0KPiAgCSAqICAgY2FsbGJhY2suDQo+ICAJ
ICoNCj4gIAkgKiBJTVBPUlRBTlQ6DQo+IEBAIC00NTgsNyArNDU4LDcgQEAgc3RydWN0IGRtYV9i
dWZfYXR0YWNoX29wcyB7DQo+ICAJYm9vbCBhbGxvd19wZWVyMnBlZXI7DQo+ICANCj4gIAkvKioN
Cj4gLQkgKiBAbW92ZV9ub3RpZnk6IFtvcHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhlIERN
QS1idWYgaXMgbW92aW5nDQo+ICsJICogQGludmFsaWRhdGVfbWFwcGluZ3M6IFtvcHRpb25hbF0g
bm90aWZpY2F0aW9uIHRoYXQgdGhlIERNQS1idWYgaXMgbW92aW5nDQo+ICAJICoNCj4gIAkgKiBJ
ZiB0aGlzIGNhbGxiYWNrIGlzIHByb3ZpZGVkIHRoZSBmcmFtZXdvcmsgY2FuIGF2b2lkIHBpbm5p
bmcgdGhlDQo+ICAJICogYmFja2luZyBzdG9yZSB3aGlsZSBtYXBwaW5ncyBleGlzdHMuDQo+IEBA
IC00NzUsNyArNDc1LDcgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyB7DQo+ICAJICogTmV3
IG1hcHBpbmdzIGNhbiBiZSBjcmVhdGVkIGFmdGVyIHRoaXMgY2FsbGJhY2sgcmV0dXJucywgYW5k
IHdpbGwNCj4gIAkgKiBwb2ludCB0byB0aGUgbmV3IGxvY2F0aW9uIG9mIHRoZSBETUEtYnVmLg0K
PiAgCSAqLw0KPiAtCXZvaWQgKCptb3ZlX25vdGlmeSkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKTsNCj4gKwl2b2lkICgqaW52YWxpZGF0ZV9tYXBwaW5ncykoc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAqYXR0YWNoKTsNCj4gIH07DQo+ICANCj4gIC8qKg0KPiANCg0KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBt
YWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2Ny
aWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3Jn
Cg==
