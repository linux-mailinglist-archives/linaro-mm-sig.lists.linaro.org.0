Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kPj2B0GxcGmKZAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:58:09 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 928F1559B8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 11:58:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A67C8401CC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Jan 2026 10:58:07 +0000 (UTC)
Received: from CY7PR03CU001.outbound.protection.outlook.com (mail-westcentralusazon11010042.outbound.protection.outlook.com [40.93.198.42])
	by lists.linaro.org (Postfix) with ESMTPS id 75D54401B6
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Jan 2026 10:58:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=ZKcl1Yod;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.198.42 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1oFvLy5CQr5NUvkjT5MhuriZ7bygi5IkNSe/Ou9PZ1rFFLb7/m4O6TWKrP7XelfVYH4sIE/MCpKD4IMJQo1ZXzmYQXuHWzh1N5SVcVmcRSRub4trAzTv4qAcEPPa1jBQxyhc3tel6vVKY7UtKtr8JJqWnD3DsZLko40TFtQYdByje8pC6nmCw292qoiMSmGPoEPBQcWeGGLP1TIjjU5jdCSuB0msgKz7q8urY7X1rRVTvtSkdz3y0F9kFEXD7+iYUwnilq1h8SUupXvOHofcmZxUZkbHnhdp5LyByoYynpDJfx0cXGOCSK5uMzfIgJrIj2XU7xQktE7CxO7FvxmPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NQiQmUMK8nqIXoP3Ke5JWgql+62HnBBJ0VHUnRuGISE=;
 b=WgJ1K6WeKhjfkGZ82Fl/FOqHCOSvXuSKIPWt+CyqdfYR3A/GbSjDZikXvesBdvfzdPb6NWstrthcXooEkqxLMo9Qxl9SvyFZ8ZG1oA/3e1EAUERvm1fvc7ex5bxwsaBfehwmcf0desdp7EezVMhSGmp2D+j1giNqMijSxiwZIFNMbPYIzpvTcP6rd82kqfaGnc73WI8hDWy8KMGpNaGFMKYUyVrVRPHaT0boQA8xAPp46BS/yEiUQKbaKBzC2Tqu8DmSX/PMyW0Ta5jlIBqnhAO51AtPt3TCDrbKNlh+h/qUflxKTC+0iuMyc3OkXf70NgixmWH4+SlK+D4lMytxbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NQiQmUMK8nqIXoP3Ke5JWgql+62HnBBJ0VHUnRuGISE=;
 b=ZKcl1YodPgYP6sqP8l8BAppdI+8lRvjZpuCjGzUJOpeI5zH18WUj8Rma3ZK51MkjMATno6sjx/TrykcpHpnzmO3fUzxTYoOqXal5KulM/0vwMtb53yaC1gVBAggMZvbD+S4LqULT3Gs0Rj771hYiBAX7j6tACDz3JOnxBwJinMw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB5736.namprd12.prod.outlook.com (2603:10b6:510:1e3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 10:57:57 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 10:57:57 +0000
Message-ID: <693f302b-e859-47a3-ab00-626ced35ee78@amd.com>
Date: Wed, 21 Jan 2026 11:57:45 +0100
User-Agent: Mozilla Thunderbird
To: Leon Romanovsky <leon@kernel.org>
References: <20260120-dmabuf-revoke-v3-0-b7e0b07b8214@nvidia.com>
 <20260120-dmabuf-revoke-v3-2-b7e0b07b8214@nvidia.com>
 <24c7a7e6-b1bd-4407-b62d-4d9ea4cdeee4@amd.com>
 <20260121101421.GZ13201@unreal>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260121101421.GZ13201@unreal>
X-ClientProxiedBy: FR4P281CA0270.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e8::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB5736:EE_
X-MS-Office365-Filtering-Correlation-Id: cb2d42ee-b7cd-4742-bbaf-08de58dbef56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VVRQM0Rmb0ZYSCt4T0JuOTBVN2l5bDM1K0RJOEJKaE9aSzloOWgyNFVnR2JV?=
 =?utf-8?B?Z29qcCtPMlY1bFlLa2MrcFpKVG1TSTBaTFZLRFRZbzRWNGwveHNyY0xMOUxW?=
 =?utf-8?B?TVlpWGtmVHRHUi9UVko4VGxsY3RYb0FIR0M0Yi9BYjRublVyYVZEV2FoTWNU?=
 =?utf-8?B?V1JpeGF5VmxjVStRcFZvaGJEdFRLaldWVUhXWkx4V0s3OG14VGVjSnFlekxx?=
 =?utf-8?B?OXgyb29JK2NFbTVMVE9pNm5VNERRZ1hLM3lJeklhQ1dwNjk3cno5d0cxTTFV?=
 =?utf-8?B?RXNmMnEwcUR1cFViU1VqYnpnUjZleE9lOWcrNThwa25zbzcwUFJmc1VOSE5B?=
 =?utf-8?B?VkI3bDIrck1yekVhSkhmUjNVbnI5OVIxS085ZXdneUhKN0I5dW9FU2N0Y2Z6?=
 =?utf-8?B?SFFwY2I1NlJGV3RIUDN4SEVLZU9Pa2hDdHMrcHM1YzRNQ3B2M2FJa2tKbXUr?=
 =?utf-8?B?MEE1aW9RZ3gxRFg3VUxBYkFkcnViRmdSVGhpMUt0Q2RSSGtzbUQ4c2NVRGo4?=
 =?utf-8?B?cE9rdlY5R1V2eWo4QUgzZGhEV0x4NG5ZNkF2UnZHRGxOZEViWEdNN3JLZlNw?=
 =?utf-8?B?L3IrelZ5NEpBenpJdlpyUVVkWi9jMStuZTZ5dXlheGlYbDlkZlloS2NhQnlC?=
 =?utf-8?B?ZmtSZWNxeVVIYzZXSmFCVlpjN3RRRU9YaUNyNlZ6eTVSbDdBOVZTbmZKdlNY?=
 =?utf-8?B?UmNMblh2OGJDTml2SFMyY0tMRDBmNTFqQUpvbTczM2dSWnp4WjRBc2lLOVNl?=
 =?utf-8?B?SW5FZ2s5S2pWS3hPWmdSdk9WM3AwdkZZRmQ0UVJnd1JoWkZJVkJ4NW8vcmhL?=
 =?utf-8?B?Q0Jkcy9PdGxzcW02cThrVEJGeVVlN1ZJL0F6VHpxUURsb1RsaUxNUHQyaEJx?=
 =?utf-8?B?YjlEWjFab1JzZUlyaHV0SUFmRE5OSnBYanV2ejBpcTdiQlNyMis5VElpd0FW?=
 =?utf-8?B?OXB1ZEhsc2FzMCs0a0JJUEdGY1hONTEwaEYxdVVhWmlRbk53MnhMd0FmUHdX?=
 =?utf-8?B?TzNLM0NaVml2bGpZSGIwbzBkY05aYkV3Rk82NFEwTDZBMzJieGZ5UmJZNVIr?=
 =?utf-8?B?S290T1hESEs5S1pLL2p0cXhENHNreUl1SG93NitqdUZKbzRLVmpGMGtycmV4?=
 =?utf-8?B?bHhXcFExSFpZbitURkt4Q0xwcDJNNGVXbVFmTDNEVFBBRmtoTnFUTDJXUEFx?=
 =?utf-8?B?d0trSFpYWnRRaU11Y0dURHJFUGtwL3R3TFJUazBIZHY2SGI3TEk5ZW1lLzhp?=
 =?utf-8?B?NDdmdjE1V0lIc0ZtZGwzY2plK1ordWt3RmpVTklrbE42WXdYeFJMSnJIbFlz?=
 =?utf-8?B?TDNGc1hxbTJGYkFQRUFKemdxVEdmbzVYWERIQWFCZERwNEFjN0ExVlk5NG8z?=
 =?utf-8?B?eWJvNjkva01hR2xqL2lWUHdsUTFmV1hqcWgxUFV6cGNYR0pUMFVxWkcrWk9U?=
 =?utf-8?B?UTFJT0ZYN09iYmR6ZnpsdStXenpVcFR4aTNzTjF5dVhyTTZoek56MFgyQm1Y?=
 =?utf-8?B?ZjVtWHRBVnJqZ21BSmpTOUxldUMwUmZOSHpxTEpiZUtXMmxPT1ZNRmd1Y3p0?=
 =?utf-8?B?YUNHSUhPSkpBNWNtbnl3Q1hNa2JOajJpbFc1c2svRllIaEFhb0I5eW4vcFVP?=
 =?utf-8?B?Y0JBRjJ1bUJwaXIxVVlXTlRGYk5RZDFlZmorbXVBSHYvdmtITkZQMStHTERD?=
 =?utf-8?B?SFlTamNuZUsvdTU0dUQraGZ3WFhocUNnODhWOS9wWm40bFY1WG5jMFlVU2xo?=
 =?utf-8?B?amdWRVFsMVdFc1lLNlBPbUVPZCtwQk1kOUtvaEFBS3VoZGZiaUdqa1Z3enZv?=
 =?utf-8?B?S2ZMSlR6YUFPUUpYWkphS3JlZERiYk4wU09NNzltL2sxWmxJRlhJVnR6Z2lO?=
 =?utf-8?B?SnFLMUtWTCswejlxSkR5SzRmb3dCb1dlc2dlODlOSlB5MXJHWVJySVJvRDhB?=
 =?utf-8?B?T2pkeE5QU1pEY201eWJPelVEV0VOemN4YUFPZlFCZW82QnRWTjJMdVRpMzRm?=
 =?utf-8?B?aytBL1NqU051dUMrb3ZFdldBTmRoYVlnYnYxN3NuQngxMnZmcmVLK1o2dHdS?=
 =?utf-8?B?UXo3eWF0c2VEN084aERaOVJXSVRZSmMzY2NDYmJqY2VJSnBmVnRzZEcvTkVi?=
 =?utf-8?Q?lA0U=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V2l0cTEvUmI4eFBRWXVudk5mbUZFOVM3dTFyRVI5bU4xNS9LRFpjT25lNC9l?=
 =?utf-8?B?Tng4N3Y5Snc1aXZlbzdEU2ltamxSQkRWN1d3Z3lGY0dSaTAyTlIxVE56Q09E?=
 =?utf-8?B?K2tIUWY5SFUxSEZqSllZMnZyZk9yUjRzY01RT3RDLytpZk02UWFOQ1RCR0lK?=
 =?utf-8?B?SU5CUjRYVGpURVhwL28xaWt3MS9UenlEemc5NEpTQVhudEd1VHRmelRDUlNv?=
 =?utf-8?B?cnJzWmpoeVN6dlJQNjB3RHJLakdQSW5Xeno5dnJKTk0xVHhncGFYZjV6S2JG?=
 =?utf-8?B?SjUrNUZtTEFGMEVlQ0ZDWTVMaWs4U1JlbSs2bkFaSzRGbnFwMGFwWlZsOG94?=
 =?utf-8?B?cGtQbEJJNnJmS1hOck8ySTdaeExKL2FEa21XL2V1UHhJbDRsM081d1l0dWVl?=
 =?utf-8?B?YWFjamFlK0ZQc3pnaUhnenZGQnB4RVl2UHhoMVVnZDJGUUUwM1ArSjIrU2Nx?=
 =?utf-8?B?dTFHaEt3Z1VPdU5ibkR5RWMxVC9ieXMxRWc0TGJVZlFxcnZFaW1SZVVXdkx1?=
 =?utf-8?B?R3g2UmtwZTZPbmI2L0s2cGdBQ3NUUDkvc2dIaGpmMnlUajJSS2R6T2RLc3F6?=
 =?utf-8?B?MHljWm1DNFpSSDNWY1RseSthY1lycDNUSGFUNDhSWXB6MmtWWU1YeE5PWGIy?=
 =?utf-8?B?SWNURlN0SncvU1RLbFZ6eHZzU05VOXhHU3lGVmhwR3ExV1FlTHM1eXdzV05G?=
 =?utf-8?B?dXBMOTRXWW11L3hSNEFrUEx0UnNlTzVLdE9OK3h2Mld5bFJ0aWhKYm5McTNo?=
 =?utf-8?B?cTdFUjJ0SEhBNGNKZ3o4aTY0cHFsUEZ1NVpzdXNQSFVmTFQvZnFETkVTMXc3?=
 =?utf-8?B?bS9XRllYUXF0SC90K0lHSmdTWFJSb1FrZ3E1QmVhZUZsdDZaaytmMjhHeW50?=
 =?utf-8?B?YTBVZTVPQWdyc2NKamF5VE4xcE00V1gzcE5UUVVzZmdVRzV4ZXFZUXQydkdw?=
 =?utf-8?B?RWl2WU1CVHZ6Y2VoS0Y3RkhjWGJLVHJEUXhGS05VV3VlZTUwdXZYUzQ4QWtl?=
 =?utf-8?B?bGVEalZpTHdCNDh4emNCMXlnbFoydllIQUtWVFhQbkF4d3BJVlE2a28wRFFo?=
 =?utf-8?B?eSsyWVpVZWlPSkFOUGxjQWF2cXBiQVpqQmFNbWMvalNiMCt3THUyS0w4aWI0?=
 =?utf-8?B?T1NKcXVLTE1vcHgwb2psa2VtYWh6NFBsWENxWVFuZFAyUi9Eb1QwTHB6SEtX?=
 =?utf-8?B?SHZWVTROV0h2ZnFPLzdOdWFtbFIxZUlCWlRVZUNLbjMrV01LN0tNVi90dGFK?=
 =?utf-8?B?SHBCeUhpWEF4OGZ3Z1BsVnYvTVovcnhxMVNFQWlReW91MFRyOXFMaGkrMUor?=
 =?utf-8?B?U0s2UGdsaTNGbVIycEdHa3hKNmVSbzZnYjJ6YXR2QTZhQ0lGcVhYZnVETkg4?=
 =?utf-8?B?QnNNbU9JOVpJdld6MGxIdmgvVHhCNmVPUWE1enk0bTkwWDd0NEE5UFFoNTdW?=
 =?utf-8?B?OEJJZnpuM2VZaEpkdjA2SDBhM1g2cWZROWNtUmk1cXB0a1p2VzkwSk15akd4?=
 =?utf-8?B?UmxTOVM0RjExMERkSE1PRGFmUkNlVXYrVGFWZm50OFl3TXJGaWlEa1UydUZm?=
 =?utf-8?B?M1VXMHR3Q3l1TUNWU1Y3Q1NZOUtjc092NXdqc3A0L3c3WFVuTGR3TWFtaWU3?=
 =?utf-8?B?eFRSN3JMVFhQQ2U1MG16Q2o5aFQzdFZRcFFsK1pPbmxFMmlmOTNJdE9pUUtl?=
 =?utf-8?B?LzJCUkNmMUEvUXp6R2Z6QUJCSTYxalFQcndBSm04VVcyMWF5SHYyMmFzNStv?=
 =?utf-8?B?N3JqaGQyRkhjalQycnQyQ2toMjE2SElrOXNPWGdUUHNMQk44K00vY09UTElD?=
 =?utf-8?B?d0MxamlkS2FaNjBCcXI3V0VGZ3pGZzExeC9VYkJmLzgwVTcwa24wdFRlZnJC?=
 =?utf-8?B?WkFaV2V6R3lCSVFmRjhDVmI0UU5uOU1CU2FXWmNoT3JiSmhCVjF2UFd0WW1W?=
 =?utf-8?B?RlB4WVFkMDRublArSUhHaUlnSVdOSEsxQ24zL28yZDUxU2prM25QbkxHRXd3?=
 =?utf-8?B?RmZKUHNsQlZQcGFuMXpqdG02NE1EcTllYmZkcncwUGVuTEJ3eEV5cjYxdytF?=
 =?utf-8?B?dThNWG5TbFlqWFVLaS9QUERoTmZpU1o5bGh4TGFyUFY4RHI2VVJONjhCZDNj?=
 =?utf-8?B?K1hudkpQdCtVUi9UcTlUT3U5L2lyM1E0ZTBsQUtqaUx2S3lPdFVjUGY0MEo1?=
 =?utf-8?B?ZTVEcnFJZElrZTlzampoUWdyMzdPMVphaUdCZTFFV0JlWWtacFZsOHYzQm91?=
 =?utf-8?B?NEtLOHZjMjdaYTVkbVBIaUlRSERKT2xlaytxazh4ZFZnYVJ4Z3Z0ZExDelQ5?=
 =?utf-8?Q?xqM9jk9FzzNvUY30lH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb2d42ee-b7cd-4742-bbaf-08de58dbef56
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2026 10:57:57.0919
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w1HWx8A9tVnNr+Ul2VeoKBasGwsWi3/SYoJOvwFDzfJSZnRKLIMF+a57bLWnr+p9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5736
X-Spamd-Bar: -----
Message-ID-Hash: SVQTWENZ76JAUMHZDKTU4EB4OMRXY77G
X-Message-ID-Hash: SVQTWENZ76JAUMHZDKTU4EB4OMRXY77G
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@v
 ger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/7] dma-buf: Always build with DMABUF_MOVE_NOTIFY
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SVQTWENZ76JAUMHZDKTU4EB4OMRXY77G/>
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
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,intel.com,ziepe.ca,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,v,lists.linux.dev];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,amd.com:mid,lists.linaro.org:rdns,lists.linaro.org:helo,nvidia.com:email]
X-Rspamd-Queue-Id: 928F1559B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gMS8yMS8yNiAxMToxNCwgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPiBPbiBXZWQsIEphbiAy
MSwgMjAyNiBhdCAwOTo1NTozOEFNICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4g
T24gMS8yMC8yNiAxNTowNywgTGVvbiBSb21hbm92c2t5IHdyb3RlOg0KPj4+IEZyb206IExlb24g
Um9tYW5vdnNreSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4NCj4+PiBETUFCVUZfTU9WRV9OT1RJ
Rlkgd2FzIGludHJvZHVjZWQgaW4gMjAxOCBhbmQgaGFzIGJlZW4gbWFya2VkIGFzDQo+Pj4gZXhw
ZXJpbWVudGFsIGFuZCBkaXNhYmxlZCBieSBkZWZhdWx0IGV2ZXIgc2luY2UuIFNpeCB5ZWFycyBs
YXRlciwNCj4+PiBhbGwgbmV3IGltcG9ydGVycyBpbXBsZW1lbnQgdGhpcyBjYWxsYmFjay4NCj4+
Pg0KPj4+IEl0IGlzIHRoZXJlZm9yZSByZWFzb25hYmxlIHRvIGRyb3AgQ09ORklHX0RNQUJVRl9N
T1ZFX05PVElGWSBhbmQNCj4+PiBhbHdheXMgYnVpbGQgRE1BQlVGIHdpdGggc3VwcG9ydCBmb3Ig
aXQgZW5hYmxlZC4NCj4+Pg0KPj4+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hy
aXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4+IFNpZ25lZC1vZmYtYnk6IExlb24gUm9tYW5vdnNr
eSA8bGVvbnJvQG52aWRpYS5jb20+DQo+Pj4gLS0tDQo+Pj4gIGRyaXZlcnMvZG1hLWJ1Zi9LY29u
ZmlnICAgICAgICAgICAgICAgICAgICAgfCAxMiAtLS0tLS0tLS0tLS0NCj4+PiAgZHJpdmVycy9k
bWEtYnVmL2RtYS1idWYuYyAgICAgICAgICAgICAgICAgICB8IDEyICsrLS0tLS0tLS0tLQ0KPj4+
ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIHwgMTAgKysrLS0t
LS0tLQ0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9LY29uZmlnICAgICAgICAgIHwg
IDIgKy0NCj4+PiAgZHJpdmVycy9ncHUvZHJtL3hlL3Rlc3RzL3hlX2RtYV9idWYuYyAgICAgICB8
ICAzICstLQ0KPj4+ICBkcml2ZXJzL2dwdS9kcm0veGUveGVfZG1hX2J1Zi5jICAgICAgICAgICAg
IHwgMTIgKysrKy0tLS0tLS0tDQo+Pj4gIDYgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygr
KSwgNDAgZGVsZXRpb25zKC0pDQo+Pj4NCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L0tjb25maWcgYi9kcml2ZXJzL2RtYS1idWYvS2NvbmZpZw0KPj4+IGluZGV4IGI0NmViOGE1NTJk
Ny4uODRkNWU5YjI0ZTIwIDEwMDY0NA0KPj4+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9LY29uZmln
DQo+Pj4gKysrIGIvZHJpdmVycy9kbWEtYnVmL0tjb25maWcNCj4+PiBAQCAtNDAsMTggKzQwLDYg
QEAgY29uZmlnIFVETUFCVUYNCj4+PiAgCSAgQSBkcml2ZXIgdG8gbGV0IHVzZXJzcGFjZSB0dXJu
IG1lbWZkIHJlZ2lvbnMgaW50byBkbWEtYnVmcy4NCj4+PiAgCSAgUWVtdSBjYW4gdXNlIHRoaXMg
dG8gY3JlYXRlIGhvc3QgZG1hYnVmcyBmb3IgZ3Vlc3QgZnJhbWVidWZmZXJzLg0KPj4+ICANCj4+
PiAtY29uZmlnIERNQUJVRl9NT1ZFX05PVElGWQ0KPj4+IC0JYm9vbCAiTW92ZSBub3RpZnkgYmV0
d2VlbiBkcml2ZXJzIChFWFBFUklNRU5UQUwpIg0KPj4+IC0JZGVmYXVsdCBuDQo+Pj4gLQlkZXBl
bmRzIG9uIERNQV9TSEFSRURfQlVGRkVSDQo+Pj4gLQloZWxwDQo+Pj4gLQkgIERvbid0IHBpbiBi
dWZmZXJzIGlmIHRoZSBkeW5hbWljIERNQS1idWYgaW50ZXJmYWNlIGlzIGF2YWlsYWJsZSBvbg0K
Pj4+IC0JICBib3RoIHRoZSBleHBvcnRlciBhcyB3ZWxsIGFzIHRoZSBpbXBvcnRlci4gVGhpcyBm
aXhlcyBhIHNlY3VyaXR5DQo+Pj4gLQkgIHByb2JsZW0gd2hlcmUgdXNlcnNwYWNlIGlzIGFibGUg
dG8gcGluIHVucmVzdHJpY3RlZCBhbW91bnRzIG9mIG1lbW9yeQ0KPj4+IC0JICB0aHJvdWdoIERN
QS1idWYuDQo+Pj4gLQkgIFRoaXMgaXMgbWFya2VkIGV4cGVyaW1lbnRhbCBiZWNhdXNlIHdlIGRv
bid0IHlldCBoYXZlIGEgY29uc2lzdGVudA0KPj4+IC0JICBleGVjdXRpb24gY29udGV4dCBhbmQg
bWVtb3J5IG1hbmFnZW1lbnQgYmV0d2VlbiBkcml2ZXJzLg0KPj4+IC0NCj4+PiAgY29uZmlnIERN
QUJVRl9ERUJVRw0KPj4+ICAJYm9vbCAiRE1BLUJVRiBkZWJ1ZyBjaGVja3MiDQo+Pj4gIAlkZXBl
bmRzIG9uIERNQV9TSEFSRURfQlVGRkVSDQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jDQo+Pj4gaW5kZXggNTljYzY0
N2JmNDBlLi5jZDNiNjBjZTQ4NjMgMTAwNjQ0DQo+Pj4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYw0KPj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMNCj4+PiBAQCAtODM3
LDE4ICs4MzcsMTAgQEAgc3RhdGljIHZvaWQgbWFuZ2xlX3NnX3RhYmxlKHN0cnVjdCBzZ190YWJs
ZSAqc2dfdGFibGUpDQo+Pj4gIA0KPj4+ICB9DQo+Pj4gIA0KPj4+IC1zdGF0aWMgaW5saW5lIGJv
b2wNCj4+PiAtZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoc3RydWN0IGRtYV9idWZfYXR0
YWNobWVudCAqYXR0YWNoKQ0KPj4NCj4+IEkgd291bGQgcmF0aGVyIGxpa2UgdG8ga2VlcCB0aGUg
d3JhcHBlciBhbmQgZXZlbiBhZGQgc29tZSBleHBsYW5hdGlvbiB3aGF0IGl0IG1lYW5zIHdoZW4g
dHJ1ZSBpcyByZXR1cm5lZC4NCj4gDQo+IFdlIGhhdmUgZGlmZmVyZW50IG9waW5pb24gaGVyZS4g
SSBkb24ndCBsaWtlIHNpbmdsZSBsaW5lIGZ1bmN0aW9ucyB3aGljaA0KPiBhcmUgY2FsbGVkIG9u
bHkgdHdpY2UuIEknbGwga2VlcCB0aGlzIGZ1bmN0aW9uIHRvIGVuc3VyZSBwcm9ncmVzcyB0aGUN
Cj4gc2VyaWVzLg0KDQpZZWFoLCBJIGFncmVlIHdpdGggdGhhdCBidXQgSSBsaWtlIHRvIGhhdmUg
dGhlIG9wcG9ydHVuaXR5IHRvIGRvY3VtZW50IHRoaW5ncy4NCg0KRXNwZWNpYWxseSBzaW5jZSB0
aGUgbWVhbmluZyBjaGFuZ2VkIG92ZXIgdGltZS4NCg0KVGhhbmtzLA0KQ2hyaXN0aWFuLg0KDQo+
IA0KPiBUaGFua3MNCj4gDQo+Pg0KPj4gQXBhcnQgZnJvbSB0aGF0IGxvb2tzIGdvb2QgdG8gbWUu
DQo+Pg0KPj4gUmVnYXJkcywNCj4+IENocmlzdGlhbi4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
