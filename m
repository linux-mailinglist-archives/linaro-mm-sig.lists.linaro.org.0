Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C9CC9190A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Nov 2025 11:06:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D78153F8F4
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 28 Nov 2025 10:06:45 +0000 (UTC)
Received: from BL2PR02CU003.outbound.protection.outlook.com (mail-eastusazon11011009.outbound.protection.outlook.com [52.101.52.9])
	by lists.linaro.org (Postfix) with ESMTPS id ABECE3F6F2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Nov 2025 10:06:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=m3CqhfTy;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 52.101.52.9 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sRbyHvmV/uKKGmdHu7vz+tds/7XiBiVmD/LXd3/n8YWnQHi/3giqVYwohtBfk8Xd+6x+GFUmg2tqx+bYKhxhWPIX1N52z4teSHL9S1ENjB4x/6BH8F2PdPcChzYhiMo794OtPYqdfY7GXaAI2y0QiEj5NPaExgUjcxTjnPWWv542ntf3whCsJk9sC2zAjc+pIiDqpKujip4ufxQZozw+oWI8u4kSgjtYaqjlu9dlyTUbSrBytnzkRRqVBoc9LuqW0eHy+BG5B+gcdBoGx0m8AwQuai0gBoAU+o/4yIEqDZn5OOnA57gnfybN3okxe5+ytcaboahyuvOelA0+XDF3IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=apXLzETwzBSq77xgo5RVtp46D+9fxRp/dEaxQDkN8EU=;
 b=xoPqS7F5e37ofpoxoSBNapZ9ZFFtC9MYQ2Tlp7bTa2FfJ9wOTEuc9iVh4xyaR6hneV0blaOx7KevA/jh9JtrRJHst3WHQ+QKGgvV9ANdgbFVwzGGdVic732F3OO6octx2q9Ix9SurFk57ejX82pouo2zUyBv+N0DZVZ5d7qC31ocEzYjUAp0lLLJbNTpM54VUXIAE4ysbWCcbAkRXJwjy4pNJdaPwel6k76eXqGFFjpmYPWW/RsCezagguLP5rAI4ALlWloqGd3b7EdkbLH5iQRXhZkdykVzyoK8jCMb24faLcIY9ae4SBU9vQPBk1QmLxzeG1YhzFp2mhBMmKZWow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=apXLzETwzBSq77xgo5RVtp46D+9fxRp/dEaxQDkN8EU=;
 b=m3CqhfTynO6omgcvhnQYaHSa6W31G5Nv2NScIlehkJQq2ZbK/QLPb+W6iENhgd+VfbD0GJxXgFgl9bu3qOkpd+Djp9M6UQ12iW1SMtXqLENVPouJ8j5xCK05SxGa030hHk/+Z4t5/h/B+obkkyq8bleQJpWQ0KqIXTu4OGOKRQ8=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ0PR12MB6854.namprd12.prod.outlook.com (2603:10b6:a03:47c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 28 Nov
 2025 10:06:23 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::46fb:96f2:7667:7ca5%4]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 10:06:22 +0000
Message-ID: <30c8a395-6870-4787-a954-6c9cbc68be62@amd.com>
Date: Fri, 28 Nov 2025 11:06:18 +0100
User-Agent: Mozilla Thunderbird
To: phasta@kernel.org, alexdeucher@gmail.com, simona.vetter@ffwll.ch,
 tursulin@ursulin.net, matthew.brost@intel.com,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, sumit.semwal@linaro.org
References: <20251113145332.16805-1-christian.koenig@amd.com>
 <20251113145332.16805-14-christian.koenig@amd.com>
 <3cf92ff5fa9c9c73c8464434b0e8e13e402091fd.camel@mailbox.org>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <3cf92ff5fa9c9c73c8464434b0e8e13e402091fd.camel@mailbox.org>
X-ClientProxiedBy: BN9PR03CA0421.namprd03.prod.outlook.com
 (2603:10b6:408:113::6) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ0PR12MB6854:EE_
X-MS-Office365-Filtering-Correlation-Id: bc16f402-d5dc-4b0a-41d4-08de2e65c8ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?NWVxTkk2bzVpVnZmRTNwT05wRGpZd2pHTmVUM1hFbjJ1QTMxOXdFMUNvMDNu?=
 =?utf-8?B?MkxJK2p5aWsyZUhNZTVDZEdjODkyd1J4UnBDbUxudG5RYVRDT043UXpmRE1v?=
 =?utf-8?B?S0hHeTJ0anZjMllZcURINGhLazdmUjgvVFpVZUZocWszSTIxT0NUbGxTcVho?=
 =?utf-8?B?V2MvTzhta21MTGo4cVRNbG5CUDNCNjM4cmxmVWIyclhKK3FUdnhmYXVETkpL?=
 =?utf-8?B?aTg2R3E3QnNhY1k5S0s2eDZWazRBakg4Yit5U01xMnRQR29SRW1wKzUxVkRG?=
 =?utf-8?B?Zk5hQnZZc1lkUUtDWlVBcEhuV24xTkJQQ0pwdGZnMUpLNUJXb2gwWUphSklO?=
 =?utf-8?B?VzE4THZCaVAyTXVOcUk2bXZSQzJheXVhZnU1Ky9YWGdoL3UrUU9UcGh3ckV0?=
 =?utf-8?B?bkVKaTFLdVpkS1NWS3cyY04wdWx3MnRCSHBQcHlmZFVScnNjTGhZVGtVQ2sw?=
 =?utf-8?B?Z1habnVya1QrdFNaa1FCSUdiYi9nZUxzdVhrUitQQlRlUzk3N2c5SHB1NSt0?=
 =?utf-8?B?aW1vNUhQbnE4ODByWHVjK1FoVmNkUE9jRGhzWFd3OVIwaTN6KzErNnA0czhX?=
 =?utf-8?B?SlVQK1JXVXVBOE83OUF4UjEydG8wdlJOQkplaGtFbU5PV0JOQW4wWkNnOWFU?=
 =?utf-8?B?VTZ4RmFGVHJieDMrT0VSbkJvTkxOZ1gwYzRXd2Rsekc2Si95UEUvK2hWNUZE?=
 =?utf-8?B?dXRHU201V0hoL3VhSG82VXoyV2thUTQvM1J0eHlFNHRmQWtMbkYzbUpDSUg3?=
 =?utf-8?B?NHFNWUlndU40SjZ5eTdUUStnRFZmcnhxZmlNR2hBUm9zWS9Ua3BVZDZhTndw?=
 =?utf-8?B?RENZY0VnbFJoRHdBN1JJbXZWOWVoVGRSZGx0QldOM3FJTGdlY3VtejB4SzlB?=
 =?utf-8?B?eWpPcXMxVTVlRkEvTGxPTVpGUDhoNmR3dVpSZ1VJTXVkWnE1UkhNY0lTYlFu?=
 =?utf-8?B?U25MTXltVmJncStLbGVDTGFXSTlsY3JGQUxnNUVDRjB5Nk5lekJaRlRNWXJ5?=
 =?utf-8?B?bFFnN0tlNFFyZ24yNzh1VXJwYUdmVkhWUzRyMDNGL0dxL3JzT3gyOTlGSk9k?=
 =?utf-8?B?VkZFZlc0Qk9FV09OeG9JRXJScFdQeWtjMG9VZnMycEdlcmoyR01DTk5aZm1o?=
 =?utf-8?B?MUlGeHBQekluRDR0Zm85OGNYYUxiN256ZUM2NzV2N3pjNGtpMzNSZ0JQajlN?=
 =?utf-8?B?YjRuWkh0QzEvMHluNS9nZklDNjIxUThzZ1NzOHVtWXN2R0ZMSEJSYkNMbzkr?=
 =?utf-8?B?MzZYMElLeFJjU2RCNVI0dGM3ZHZwc283ay9iM29ua0RzdERGa0hPYnhpYWtP?=
 =?utf-8?B?Z2ZmT1VLM0JvK0t5bzJGZ0tnS2F6dmxoK3p4bzZjS2J1YU4vZnpwbm5NcWE5?=
 =?utf-8?B?b1dFSXlCc1NKT2JzN2QxT0E5R09FcmFDNlVneWpYT1dlRWNpMm5UQzlOUXFK?=
 =?utf-8?B?V0NmQmEwVTZKaExkb1FwWEliblFnaW1iek9waHB1YytoZkVyNXFITGdoRVVP?=
 =?utf-8?B?L1ZzL2l6dVpUMzZrak1zR0pXeFJWS3pGZDdoamtaYmNLS3BJaStpK1gvRjRj?=
 =?utf-8?B?akgxZWkzQVpha2RrRGhWWlFHWTlvTFhNU3hhd214SGFHWGx6UEZUdk53RzFG?=
 =?utf-8?B?M01ycTRaOE94NnljRDFyRVdienk5TEZkNnpBSUdnckt6a2lHNWVRTWprcW84?=
 =?utf-8?B?Q05PYXBkZ043RzE1aE96elZ4aE1CQWFCbUlEcTM5TnYrQXUwZCtVWDVFMFQz?=
 =?utf-8?B?ekcwR1M2a3JzYm1PYXlJeTJmVEVOa1J2cXVsckpuWitCV3hJYnFzbktHMVB5?=
 =?utf-8?B?Q1hVUVJEV1laU1QzaENBSGF4c1V3OFlpUUREbWc2cnZVbUxPdVVJQWlYOENX?=
 =?utf-8?B?Znp3Nkh6S1hVV1FoOFRJd0kvUmNDSFcxUTBTWmFTTFBuWFQvZ1h4blBta09r?=
 =?utf-8?B?SnQ3b0lQU0RxaTF1bXh1MlZibVJWa3Z0UlJWQ2NIbzFrYXh5OWl6aXJ5THlZ?=
 =?utf-8?B?RHVlZnhqbEV3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WVlHNzBzSzhYM01UTUFRWkE5VWcrVlk0R3ZiTVJIdVJXR0VEcVRtck1UcXE0?=
 =?utf-8?B?YUpKWklqU1ZoL1IvQzVuaWhvVDlFVzlkMFVJbzluV3N3NDJNbmNhSFhvR05h?=
 =?utf-8?B?TU1vY1VITStsUUlxZGV5cTdCM1dJU0tGbHRkZ2VlaSttaW1lVkRpVWh4ejNF?=
 =?utf-8?B?eG04c210YTBqUWJoK0NYemYwNUNESDVQN1pxTmdZbG82bjNWamJ6TkZUZXh0?=
 =?utf-8?B?TWxUbnRMbTY0ZmNxanJiTDBreHJuZkQzd25KcWJvUGE5S0MxSytnVEFzcElX?=
 =?utf-8?B?MDkzNXBKM0RjMW1ESUhiNHZKdkZqcC8xb3NhZlp3UUgrdk93OE54b3ptayti?=
 =?utf-8?B?VWY0Yk5MdHpCUiswbHZITmFNV0o5SzhvamFzamhwVWdjL1EzK2YyVERqejFl?=
 =?utf-8?B?MEZ4bENmc0ZrU3BPRVVBSnZFN1d6bDhhazMyZ0F2NXROZ1VobndyYzNKTXVZ?=
 =?utf-8?B?VzEvU09HVWdvaFFhQjA0eWZnWGFWL1g5L1RFTWZ6QjE4VThLSnB0Um1zVlRx?=
 =?utf-8?B?MW40alV6NTY3dU4zNVhRdzdGb1ltUmQwNTNSS0prZHBsZWNNajM1WENnVXMz?=
 =?utf-8?B?ajUvRVE2b3haYXNwRjRGNi9zQjZsYnZyc2paYXhtL0FMM21CRG5CNmpqdENl?=
 =?utf-8?B?QVRFcVJxdys2UFEzbXJHYXdrOTUyOHIwR3lNMTRPNS9rYUxOdVk0em9aWFUy?=
 =?utf-8?B?Z1JFVi8rc3RiYzFoZTdlY1NQdXNpMVpyWTErc0FPUllKeUdGbzRoSlNFVGNP?=
 =?utf-8?B?U2g3MzJ3UWFEaE5Ha1JrRFRHcFo4aU53cWdGT3VuTk9CWmsxblA2SUJkYnhW?=
 =?utf-8?B?L1NnY21NSU80OHNoeXB0ZytEOGxvdnhQVEFvc0cwalAwSWM0cWs5K1MwWksv?=
 =?utf-8?B?NWhwSnp5a2hLcmVqN0I2dG8zZFdqdlIrMERvaFlST04xZ0ErbG04UTArSmh2?=
 =?utf-8?B?UFQwNys3QW5WMWZCVjgyeGtXTmhIOWZOcnFPMUY0MElGck9ieFlwR3V4WWN4?=
 =?utf-8?B?bTIzd3hjZWRQY1FOMjh0a1VNNG5ZUWZrNUx3dHBVUGxYQ285OVRDL1Arbm9D?=
 =?utf-8?B?d2dGUVpmckIyTHc5cmdmVWRLWGdFbHZvajM5SkROckl3ejg3aTVPWUFPYS9D?=
 =?utf-8?B?OHorWWhrNlJjZktjRFRjT0VjWUJyOGlqM3M3VVJ4OGVKWDFSbUd3QXc5cC95?=
 =?utf-8?B?RHZCYkR6SzZMZGdSK2NVdjlsRjNxdjhBMTJzcHhjZ3JyZHk2bjBlbVVYZmNj?=
 =?utf-8?B?NXJ5SWJvQXB5Mkw2SThwU0RkaXZtSkkyVTRkZC9MRU9zdm5JU2RiWGhRQU0y?=
 =?utf-8?B?RmprK01QSnVIS1ZCL2l2OXV1VVplMW5GMVRydXFISUwyZzI5YmNFLzduRW1U?=
 =?utf-8?B?NUR1dkMrMnNXdEFjRGtRVVA2VUlBNUFINUZjbi9SMmd5ek5oZVFSYjdJQjZQ?=
 =?utf-8?B?OWlTZlVnZFB5WjBJTFJGTFg5K2hUL3lVcURoMytyVG9SS3ZoeFFyRTVGNE5S?=
 =?utf-8?B?VGdsTDNobGQwNUlBK1crVldEY29pbjFYbXFtODhrS0ZFYTAvdDJ0aGVJbTdN?=
 =?utf-8?B?NW53WStmSDkvNlY3SER3TDI5T050QUZWSWNqcmVuUjNESHdMY0dVQVJmMFdJ?=
 =?utf-8?B?Mk1WWUhoYkdmMmQ2bld0OTZ2RDhSTCtyVGcyQUtIUC9nK1BLMzJxaGo5N0U2?=
 =?utf-8?B?c1N2Kzk3dS9MeHlPK1Zsa296QTN3Y0tndGtKZENRUjFIL3luSEdGRmErOWtT?=
 =?utf-8?B?cm90bmNOemZYbm56cUpESEl6ZEZqLzEwMFNCTTBWTTcyVXZseXZleU9LRWhC?=
 =?utf-8?B?ZWJxVkJ3YjNraGk3SmJseCtseXVwdXBVMEk0cUVLUFphWmozVnNmNXRVU3E2?=
 =?utf-8?B?QXM5bHRNa0pxUFFnODdsTUZhbmtWTVBBem9zaHNrWGlxbTFKUmFxNk9samcy?=
 =?utf-8?B?QllCc0RJVTdKZnU5ckwvaVdkRllsRzFkSThISm8wZ3lsQ0RxZzRycmpMb1dK?=
 =?utf-8?B?Z2xZRGU2SXJwSnBkSjJmMitRMzQxekRCNlJuTU1OUzJHUHJ5cHdNTlZ4Mzl0?=
 =?utf-8?B?anpFQmFNbkV2ZDhndlZyR09ydlAvWjZGL3BWUjltZWdTbW9pck5KWllOOHNP?=
 =?utf-8?Q?DbJKwJF7hhyT86DuEhlamp9Xy?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc16f402-d5dc-4b0a-41d4-08de2e65c8ad
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 10:06:22.8684
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DoP5qJUatvmCGSfkUcwka69TXXolnY+rLFM4TkcbtYXDwu+2uYe6D5wevW49e14Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB6854
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:52.100.0.0/15];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[9];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,ffwll.ch,ursulin.net,intel.com,lists.freedesktop.org,lists.linaro.org,linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[52.101.52.9:from];
	MID_RHS_MATCH_FROM(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[amd.com:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: ABECE3F6F2
X-Spamd-Bar: -----
Message-ID-Hash: OBTOVOE7NKTMTK3NZ7F2INSDK5NQHRIA
X-Message-ID-Hash: OBTOVOE7NKTMTK3NZ7F2INSDK5NQHRIA
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 13/18] drm/amdgpu: independence for the amdkfd_fence! v2
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OBTOVOE7NKTMTK3NZ7F2INSDK5NQHRIA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gMTEvMjcvMjUgMTI6MTAsIFBoaWxpcHAgU3Rhbm5lciB3cm90ZToNCj4gT24gVGh1LCAyMDI1
LTExLTEzIGF0IDE1OjUxICswMTAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPj4gVGhpcyBz
aG91bGQgYWxsb3cgYW1ka2ZkX2ZlbmNlcyB0byBvdXRsaXZlIHRoZSBhbWRncHUgbW9kdWxlLg0K
Pj4NCj4+IHYyOiBpbXBsZW1lbnQgRmVsaXggc3VnZ2VzdGlvbiB0byBsb2NrIHRoZSBmZW5jZSB3
aGlsZSBzaWduYWxpbmcgaXQuDQo+Pg0KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5p
ZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPg0KPj4gLS0tDQo+PiDCoGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmQuaMKgwqDCoCB8wqAgNiArKysNCj4+IMKgLi4uL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmPCoCB8IDM5ICsrKysrKysrLS0t
LS0tLS0tLS0NCj4+IMKgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuY8Kg
wqDCoMKgwqAgfMKgIDcgKystLQ0KPj4gwqBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRf
c3ZtLmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDQgKy0NCj4+IMKgNCBmaWxlcyBjaGFuZ2VkLCAy
NyBpbnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkNCj4+DQo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZC5oIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2FtZGtmZC5oDQo+PiBpbmRleCA4YmRmY2RlMjAyOWIuLjYyNTRj
ZWYwNDIxMyAxMDA2NDQNCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9hbWRrZmQuaA0KPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Ft
ZGtmZC5oDQo+PiBAQCAtMTk2LDYgKzE5Niw3IEBAIGludCBrZmRfZGVidWdmc19rZmRfbWVtX2xp
bWl0cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpOw0KPj4gwqAjZW5kaWYNCj4+IMKg
I2lmIElTX0VOQUJMRUQoQ09ORklHX0hTQV9BTUQpDQo+PiDCoGJvb2wgYW1ka2ZkX2ZlbmNlX2No
ZWNrX21tKHN0cnVjdCBkbWFfZmVuY2UgKmYsIHN0cnVjdCBtbV9zdHJ1Y3QgKm1tKTsNCj4+ICt2
b2lkIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZik7DQo+PiDCoHN0cnVj
dCBhbWRncHVfYW1ka2ZkX2ZlbmNlICp0b19hbWRncHVfYW1ka2ZkX2ZlbmNlKHN0cnVjdCBkbWFf
ZmVuY2UgKmYpOw0KPj4gwqB2b2lkIGFtZGdwdV9hbWRrZmRfcmVtb3ZlX2FsbF9ldmljdGlvbl9m
ZW5jZXMoc3RydWN0IGFtZGdwdV9ibyAqYm8pOw0KPj4gwqBpbnQgYW1kZ3B1X2FtZGtmZF9ldmlj
dF91c2VycHRyKHN0cnVjdCBtbXVfaW50ZXJ2YWxfbm90aWZpZXIgKm1uaSwNCj4+IEBAIC0yMTAs
NiArMjExLDExIEBAIGJvb2wgYW1ka2ZkX2ZlbmNlX2NoZWNrX21tKHN0cnVjdCBkbWFfZmVuY2Ug
KmYsIHN0cnVjdCBtbV9zdHJ1Y3QgKm1tKQ0KPj4gwqAJcmV0dXJuIGZhbHNlOw0KPj4gwqB9DQo+
PiDCoA0KPj4gK3N0YXRpYyBpbmxpbmUNCj4+ICt2b2lkIGFtZGtmZF9mZW5jZV9zaWduYWwoc3Ry
dWN0IGRtYV9mZW5jZSAqZikNCj4+ICt7DQo+IA0KPiBJIHdvdWxkIGFkZCBhIHNob3J0IGNvbW1l
bnQgaGVyZTogIkVtcHR5IGZ1bmN0aW9uIGJlY2F1c2Ug4oCmIg0KPiANCj4+ICt9DQo+PiArDQo+
PiDCoHN0YXRpYyBpbmxpbmUNCj4+IMKgc3RydWN0IGFtZGdwdV9hbWRrZmRfZmVuY2UgKnRvX2Ft
ZGdwdV9hbWRrZmRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZikNCj4+IMKgew0KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYyBi
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYw0KPj4gaW5k
ZXggMDljOTE5ZjcyYjZjLi5mNzZjM2M1MmEyYTEgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfYW1ka2ZkX2ZlbmNlLmMNCj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9hbWRrZmRfZmVuY2UuYw0KPj4gQEAgLTEyNywyOSAr
MTI3LDkgQEAgc3RhdGljIGJvb2wgYW1ka2ZkX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0
IGRtYV9mZW5jZSAqZikNCj4+IMKgCQlpZiAoIXN2bV9yYW5nZV9zY2hlZHVsZV9ldmljdF9zdm1f
Ym8oZmVuY2UpKQ0KPj4gwqAJCQlyZXR1cm4gdHJ1ZTsNCj4+IMKgCX0NCj4+IC0JcmV0dXJuIGZh
bHNlOw0KPj4gLX0NCj4+IC0NCj4+IC0vKioNCj4+IC0gKiBhbWRrZmRfZmVuY2VfcmVsZWFzZSAt
IGNhbGxiYWNrIHRoYXQgZmVuY2UgY2FuIGJlIGZyZWVkDQo+PiAtICoNCj4+IC0gKiBAZjogZG1h
X2ZlbmNlDQo+PiAtICoNCj4+IC0gKiBUaGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCB3aGVuIHRoZSBy
ZWZlcmVuY2UgY291bnQgYmVjb21lcyB6ZXJvLg0KPj4gLSAqIERyb3BzIHRoZSBtbV9zdHJ1Y3Qg
cmVmZXJlbmNlIGFuZCBSQ1Ugc2NoZWR1bGVzIGZyZWVpbmcgdXAgdGhlIGZlbmNlLg0KPj4gLSAq
Lw0KPj4gLXN0YXRpYyB2b2lkIGFtZGtmZF9mZW5jZV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2Ug
KmYpDQo+PiAtew0KPj4gLQlzdHJ1Y3QgYW1kZ3B1X2FtZGtmZF9mZW5jZSAqZmVuY2UgPSB0b19h
bWRncHVfYW1ka2ZkX2ZlbmNlKGYpOw0KPj4gLQ0KPj4gLQkvKiBVbmNvbmRpdGlvbmFsbHkgc2ln
bmFsIHRoZSBmZW5jZS4gVGhlIHByb2Nlc3MgaXMgZ2V0dGluZw0KPj4gLQkgKiB0ZXJtaW5hdGVk
Lg0KPj4gLQkgKi8NCj4+IC0JaWYgKFdBUk5fT04oIWZlbmNlKSkNCj4+IC0JCXJldHVybjsgLyog
Tm90IGFuIGFtZGdwdV9hbWRrZmRfZmVuY2UgKi8NCj4+IC0NCj4+IMKgCW1tZHJvcChmZW5jZS0+
bW0pOw0KPj4gLQlrZnJlZV9yY3UoZiwgcmN1KTsNCj4+ICsJZmVuY2UtPm1tID0gTlVMTDsNCj4g
DQo+IFRoYXQgdGhlIHN0b3JhZ2UgYWN0dWFsbHkgdGFrZXMgcGxhY2UgaXMgZ3VhcmFudGVlZCBi
eSB0aGUgbG9jayB0YWtlbg0KPiB3aGVuIGNhbGxpbmcgdGhlIGZlbmNlIG9wcz8NCj4gDQo+PiAr
CXJldHVybiBmYWxzZTsNCj4+IMKgfQ0KPj4gwqANCj4+IMKgLyoqDQo+PiBAQCAtMTc0LDkgKzE1
NCwyMiBAQCBib29sIGFtZGtmZF9mZW5jZV9jaGVja19tbShzdHJ1Y3QgZG1hX2ZlbmNlICpmLCBz
dHJ1Y3QgbW1fc3RydWN0ICptbSkNCj4+IMKgCXJldHVybiBmYWxzZTsNCj4+IMKgfQ0KPj4gwqAN
Cj4+ICt2b2lkIGFtZGtmZF9mZW5jZV9zaWduYWwoc3RydWN0IGRtYV9mZW5jZSAqZikNCj4+ICt7
DQo+PiArCXN0cnVjdCBhbWRncHVfYW1ka2ZkX2ZlbmNlICpmZW5jZSA9IHRvX2FtZGdwdV9hbWRr
ZmRfZmVuY2UoZik7DQo+PiArCWxvbmcgZmxhZ3M7DQo+PiArDQo+PiArCWRtYV9mZW5jZV9sb2Nr
X2lycXNhZmUoZiwgZmxhZ3MpDQo+PiArCWlmIChmZW5jZS0+bW0pIHsNCj4+ICsJCW1tZHJvcChm
ZW5jZS0+bW0pOw0KPj4gKwkJZmVuY2UtPm1tID0gTlVMTDsNCj4+ICsJfQ0KPj4gKwlkbWFfZmVu
Y2Vfc2lnbmFsX2xvY2tlZChmKTsNCj4+ICsJZG1hX2ZlbmNlX3VubG9ja19pcnFyZXN0b3JlKGYs
IGZsYWdzKQ0KPj4gK30NCj4+ICsNCj4+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vf
b3BzIGFtZGtmZF9mZW5jZV9vcHMgPSB7DQo+PiDCoAkuZ2V0X2RyaXZlcl9uYW1lID0gYW1ka2Zk
X2ZlbmNlX2dldF9kcml2ZXJfbmFtZSwNCj4+IMKgCS5nZXRfdGltZWxpbmVfbmFtZSA9IGFtZGtm
ZF9mZW5jZV9nZXRfdGltZWxpbmVfbmFtZSwNCj4+IMKgCS5lbmFibGVfc2lnbmFsaW5nID0gYW1k
a2ZkX2ZlbmNlX2VuYWJsZV9zaWduYWxpbmcsDQo+PiAtCS5yZWxlYXNlID0gYW1ka2ZkX2ZlbmNl
X3JlbGVhc2UsDQo+PiDCoH07DQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRrZmQva2ZkX3Byb2Nlc3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1ka2ZkL2tmZF9wcm9j
ZXNzLmMNCj4+IGluZGV4IGEwODVmYWFjOWZlMS4uOGZhYzcwYjgzOWVkIDEwMDY0NA0KPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3Byb2Nlc3MuYw0KPj4gQEAgLTExNzMsNyArMTE3
Myw3IEBAIHN0YXRpYyB2b2lkIGtmZF9wcm9jZXNzX3dxX3JlbGVhc2Uoc3RydWN0IHdvcmtfc3Ry
dWN0ICp3b3JrKQ0KPj4gwqAJc3luY2hyb25pemVfcmN1KCk7DQo+PiDCoAllZiA9IHJjdV9hY2Nl
c3NfcG9pbnRlcihwLT5lZik7DQo+PiDCoAlpZiAoZWYpDQo+PiAtCQlkbWFfZmVuY2Vfc2lnbmFs
KGVmKTsNCj4+ICsJCWFtZGtmZF9mZW5jZV9zaWduYWwoZWYpOw0KPj4gwqANCj4+IMKgCWtmZF9w
cm9jZXNzX3JlbW92ZV9zeXNmcyhwKTsNCj4+IMKgCWtmZF9kZWJ1Z2ZzX3JlbW92ZV9wcm9jZXNz
KHApOw0KPj4gQEAgLTE5OTAsNyArMTk5MCw2IEBAIGtmZF9wcm9jZXNzX2dwdWlkX2Zyb21fbm9k
ZShzdHJ1Y3Qga2ZkX3Byb2Nlc3MgKnAsIHN0cnVjdCBrZmRfbm9kZSAqbm9kZSwNCj4+IMKgc3Rh
dGljIGludCBzaWduYWxfZXZpY3Rpb25fZmVuY2Uoc3RydWN0IGtmZF9wcm9jZXNzICpwKQ0KPj4g
wqB7DQo+PiDCoAlzdHJ1Y3QgZG1hX2ZlbmNlICplZjsNCj4+IC0JaW50IHJldDsNCj4+IMKgDQo+
PiDCoAlyY3VfcmVhZF9sb2NrKCk7DQo+PiDCoAllZiA9IGRtYV9mZW5jZV9nZXRfcmN1X3NhZmUo
JnAtPmVmKTsNCj4+IEBAIC0xOTk4LDEwICsxOTk3LDEwIEBAIHN0YXRpYyBpbnQgc2lnbmFsX2V2
aWN0aW9uX2ZlbmNlKHN0cnVjdCBrZmRfcHJvY2VzcyAqcCkNCj4+IMKgCWlmICghZWYpDQo+PiDC
oAkJcmV0dXJuIC1FSU5WQUw7DQo+PiDCoA0KPj4gLQlyZXQgPSBkbWFfZmVuY2Vfc2lnbmFsKGVm
KTsNCj4+ICsJYW1ka2ZkX2ZlbmNlX3NpZ25hbChlZik7DQo+PiDCoAlkbWFfZmVuY2VfcHV0KGVm
KTsNCj4+IMKgDQo+PiAtCXJldHVybiByZXQ7DQo+PiArCXJldHVybiAwOw0KPiANCj4gT2ggd2Fp
dCwgdGhhdCdzIHRoZSBjb2RlIEknbSBhbHNvIHRvdWNoaW5nIGluIG15IHJldHVybiBjb2RlIHNl
cmllcyENCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9jZWY4M2ZlZC01
OTk0LTRjNzctOTYyYy05YzdhYWM5ZjczMDZAYW1kLmNvbS8NCj4gDQo+IA0KPiBEb2VzIHRoaXMg
c2VyaWVzIHRoZW4gc29sdmUgdGhlIHByb2JsZW0gRmVsaXggcG9pbnRlZCBvdXQgaW4NCj4gZXZp
Y3RfcHJvY2Vzc193b3JrZXIoKT8NCg0KTm8gaXQgZG9lc24ndCwgSSB3YXNuJ3QgYXdhcmUgdGhh
dCB0aGUgaGlnaGVyIGxldmVsIGNvZGUgYWN0dWFsbHkgbmVlZHMgdGhlIHN0YXR1cy4gQWZ0ZXIg
YWxsIEZlbGl4IGlzIHRoZSBtYWludGFpbmVyIG9mIHRoaXMgcGFydC4NCg0KVGhpcyBwYXRjaCBo
ZXJlIG5lZWRzIHRvIGJlIHJlYmFzZWQgb24gdG9wIG9mIHlvdXJzIGFuZCBjaGFuZ2VkIGFjY29y
ZGluZ2x5IHRvIHN0aWxsIHJldHVybiB0aGUgZmVuY2Ugc3RhdHVzIGNvcnJlY3RseS4NCg0KQnV0
IHRoYW5rcyBmb3IgcG9pbnRpbmcgdGhhdCBvdXQuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoN
Cj4gDQo+IA0KPiBQLg0KPiANCj4gDQo+PiDCoH0NCj4+IMKgDQo+PiDCoHN0YXRpYyB2b2lkIGV2
aWN0X3Byb2Nlc3Nfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCj4+IGluZGV4IGMzMGRmYjhlYzIzNi4uNTY2OTUwNzAy
YjdkIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRrZmQva2ZkX3N2bS5j
DQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGtmZC9rZmRfc3ZtLmMNCj4+IEBAIC00
MjgsNyArNDI4LDcgQEAgc3RhdGljIHZvaWQgc3ZtX3JhbmdlX2JvX3JlbGVhc2Uoc3RydWN0IGty
ZWYgKmtyZWYpDQo+PiDCoA0KPj4gwqAJaWYgKCFkbWFfZmVuY2VfaXNfc2lnbmFsZWQoJnN2bV9i
by0+ZXZpY3Rpb25fZmVuY2UtPmJhc2UpKQ0KPj4gwqAJCS8qIFdlJ3JlIG5vdCBpbiB0aGUgZXZp
Y3Rpb24gd29ya2VyLiBTaWduYWwgdGhlIGZlbmNlLiAqLw0KPj4gLQkJZG1hX2ZlbmNlX3NpZ25h
bCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5jZS0+YmFzZSk7DQo+PiArCQlhbWRrZmRfZmVuY2Vfc2ln
bmFsKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNlLT5iYXNlKTsNCj4+IMKgCWRtYV9mZW5jZV9wdXQo
JnN2bV9iby0+ZXZpY3Rpb25fZmVuY2UtPmJhc2UpOw0KPj4gwqAJYW1kZ3B1X2JvX3VucmVmKCZz
dm1fYm8tPmJvKTsNCj4+IMKgCWtmcmVlKHN2bV9ibyk7DQo+PiBAQCAtMzYyOCw3ICszNjI4LDcg
QEAgc3RhdGljIHZvaWQgc3ZtX3JhbmdlX2V2aWN0X3N2bV9ib193b3JrZXIoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQ0KPj4gwqAJbW1hcF9yZWFkX3VubG9jayhtbSk7DQo+PiDCoAltbXB1dCht
bSk7DQo+PiDCoA0KPj4gLQlkbWFfZmVuY2Vfc2lnbmFsKCZzdm1fYm8tPmV2aWN0aW9uX2ZlbmNl
LT5iYXNlKTsNCj4+ICsJYW1ka2ZkX2ZlbmNlX3NpZ25hbCgmc3ZtX2JvLT5ldmljdGlvbl9mZW5j
ZS0+YmFzZSk7DQo+PiDCoA0KPj4gwqAJLyogVGhpcyBpcyB0aGUgbGFzdCByZWZlcmVuY2UgdG8g
c3ZtX2JvLCBhZnRlciBzdm1fcmFuZ2VfdnJhbV9ub2RlX2ZyZWUNCj4+IMKgCSAqIGhhcyBiZWVu
IGNhbGxlZCBpbiBzdm1fbWlncmF0ZV92cmFtX3RvX3JhbQ0KPiANCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxp
c3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
