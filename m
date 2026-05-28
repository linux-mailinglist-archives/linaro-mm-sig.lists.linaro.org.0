Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WDR0JwFEGGoEiAgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 15:32:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A0F5F2C32
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 15:32:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 16B5840705
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2026 13:32:48 +0000 (UTC)
Received: from SN4PR0501CU005.outbound.protection.outlook.com (mail-southcentralusazon11011010.outbound.protection.outlook.com [40.93.194.10])
	by lists.linaro.org (Postfix) with ESMTPS id 6A31C3F4B6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2026 13:32:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=sBW54BXE;
	arc=pass ("microsoft.com:s=arcselector10001:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.93.194.10 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pQ5fjdsxu/hTV1cVhWMEwpNfL6ZaslCG3ocEXUUFdEgUB/RAO4wbzYdW/zKpAGPZJG1UkvFxEyBwRy46LhXmpGpd0XpV3UMdZw3UVTzDCyGxl7idOYWbtdpQHq6wQPBXvMNipPClmw6aT7xbePHUbzV+T9oUybU2dEm3b49uLkqSqM2/4BStft+6LdLylgSUEo3+Crlgg5fLb3Fo8CV9tTBoT9MdUigd6oGYJXtouTqyctmBT0hDabGO16MV3uwZbNq1lfV2LyEZzQGL4wgXTVVUYrT+ieU5NltSGWlIfx36O/C1Jv1VNOhd79zi0rWFhJIZ1ARDfhWwO3M/OofrRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+9YcsALWWSmBSbfZOIBoPsFgGYyV+IQTFs8S6vvagM=;
 b=j/IMIsPU6qnWBqvzrL4O/RBv+F+5nmmiIQWEsWsxjZZ0xGgmA3N1XQePubVBYK8fmvfz/7ZzIc/URhTKZO9E+OZXYnX1URHPnpLhvS3HqOp3Rnz9trWAz5bsPg+cuxYT2GYNg4gxovgFdWZta8scsvH5FtUtFtWXMUc2IYXDGTohU4FCat3AxRO89Osl8FuUNqt8ZSjDUVCEQXsKq5OdQ85V1GLZe38zLmoNCUqncMWnqHKTSr/DLvFWMGQFLeEJfg2J+wJPS+PdK6WSoRS7KsOaQ+2EkroLslIRfVW/uMC3uk0DF8NEXy9FJnF+t6TEf1ThwpCjjKHgGxHn4ZmOPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v+9YcsALWWSmBSbfZOIBoPsFgGYyV+IQTFs8S6vvagM=;
 b=sBW54BXE9oeqD+Ogppv0NxXKqKqnMZdoK+BN2Y7sYYhncLdE2XiT8QlZP/ApuS8ORZ2Sb8q+T61YDejVxxzz6c+cg2yuDjCRk6xICBg5KbAvVvaI6971fYCsOT8Ojlh2STGYZw5WmS2NYw3yUUSFhHDnJqWyrNFZdV+KgI416Sg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by DS0PR12MB7948.namprd12.prod.outlook.com (2603:10b6:8:152::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.12; Thu, 28 May
 2026 13:32:34 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 13:32:33 +0000
Message-ID: <62c256eb-1df4-4633-8040-222895b54f97@amd.com>
Date: Thu, 28 May 2026 15:32:28 +0200
User-Agent: Mozilla Thunderbird
To: w15303746062@163.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 sumit.semwal@linaro.org
References: <0e12ce28-f5b7-4ffa-849c-df9ad1796e22@amd.com>
 <20260528132932.1078483-1-w15303746062@163.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260528132932.1078483-1-w15303746062@163.com>
X-ClientProxiedBy: FR3P281CA0021.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::11) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|DS0PR12MB7948:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bde40f2-f034-42f4-6365-08debcbd92bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|7416014|366016|1800799024|4143699003|56012099006|11063799006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 
	WTvgizEDEpNARjStNY1t8ojVHnuzpxqMrCZHIYWRQAh8reJp6BT0XAJeBJHkI3YUMVKLnCidnVl9kH9CFxIqq141o/TVOYHRqbl4zDxPxdOS5NSijSAuFeR95O/pdbif1Cguo2OLVbOESM7ukrUP3KcsmGRHGPBCF9D6C+Wdw/ABN/sgPAYgomcJIsgz2AJCw8YhD+DQ+m1SXsrX5JZrLqnEGF32OSEKwONzVPOBc6nDF+OEJpwZsJyLA5OiBgYqIpUXxgPKV5h1FO/xIsNsJw/QLTfMHHcCMSNaQ1zNbCMw+ORNyiPIEAAImFdsQEsNBoRxRLsiTxJKn7ax9dfGUXOEJxd5n5a6OPcJIvEg3sw2cNtWKyyVWGhHD3yuzmCHJlG3gBE2IR5IwKxpguaYNd04cAnYZTPWiLY/rMBpU0XZRJDqcGe9MjLbfj1RUxx19AQ/HJ0PtedF2xEXY34OWyYpUBxM6hkxFH8TDYoIxIMlpVmFXH/ro8becGgc9hFhTsMdNWOrrqH3kwWwXCjKjkhm2W3P8OnWWdD5ziyxE0iY/IyzfBa1YF3o8VPuMHUUlCJQ74T8rwv7fkgGt53qtVzKnN7cvtjYA8kuC4KtzGrPW6ePfhZ0WBnwxK+vtVJVm3CUk7LDMWxHoxpuZhDxBiqMLG7vP08rik6Vfa5dfS4z7Tb5f6t553teyrX4Y0a+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(4143699003)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b3VFbTFyTUc1NGwwc3Bxa1N3V3hLSVgzVlUwbW1QcDF3WWQyNXBIL1BySjhV?=
 =?utf-8?B?Q05salZpVHViR0JZYkNiWHc4MklCaXlFU3hoME03U3FLRnhMUEVZeHJSVFNO?=
 =?utf-8?B?akdHNlJCMUZWWjV3QUZYTzQ3V29oeFc2UnZ5NURyeEpIMlJrNjVNYk1JcVVy?=
 =?utf-8?B?dmRDYmpYUXY3ZmRWVGFoL2hueFBlTG1XeDFUeTkxeDNVRmNGMUFrMXJNdm1Q?=
 =?utf-8?B?Nk00TUhzcWNZYzRiMXhSYTV5RVNVNEJMREdHaHpiRkRuMmgxblpRRlNHUkRs?=
 =?utf-8?B?SjBXWTBFc0l1djE4cmhWRVVrTUdIRWd2T2RGMytmZDVDcEJoZy9rYmxaM1FV?=
 =?utf-8?B?SlZDdTR6RjhlaGdLK25DcFhhdGM0ckZ2TmhCUzJaS2dzNU5TVUVLaDBVYm1V?=
 =?utf-8?B?MkFOdElDdkRpN1hFT2xwSkd4dDRhVzhGRVdvMTBsanZYSGd6OTVJRG1Ha0RF?=
 =?utf-8?B?Njg2R1FGU2dBZWF1S2lOZ3hjSDF2NDNHQ3RicURTQ3d2RENuZU81QnppdHk3?=
 =?utf-8?B?TUZtNnFiQm1WNFVyZjN4V1czQUlVM0MyeWd4Zm5TTThLNlJxRXFlTGJNZ1Qw?=
 =?utf-8?B?UlRjRWdMMTNkVjBmQ0h5ZHY4RXlIMFIwVUtJY2gvZTh1UXFvcDhUeTkvMk03?=
 =?utf-8?B?dUhibDF3ZkVKOUZZZG5MQi9NUEJRVmNHTDdaRzNodHk3amlhQ0xEVEsvQVp3?=
 =?utf-8?B?N1BTM1F2VkI3R3Z3WUJnWUc4cmhKdUxKb0NpdlNMUHhlSDM1Y1JQLzU2RlBx?=
 =?utf-8?B?OE9BajJJdzJzTGdySXpuR3ZVK1doc0xSRFBmUjJmeVZuN2I5WE9LMlVJYXhk?=
 =?utf-8?B?bVY5VzJaYkJJYXViVUsxcTdnUE9vd1VuS051blFIZEtmTmhpeTJuZG5Sd2Iw?=
 =?utf-8?B?WFhXVjRINHpRN1dRc3NNelBWU2ZjZFZaV2VwVnFhMGg3SG01aENuVnFhVVVr?=
 =?utf-8?B?UjVFRXU2WnFCRWdWaDZvaGt1LzkreExEcUlxK0JhODFWK1c2MmdWTDhTbEZs?=
 =?utf-8?B?NzdoY2o4dTBRbnF4eWhoWFVaZExVTXh1QWZEMHgxK29lK2JTcEhmYzFJdzZ1?=
 =?utf-8?B?V01SN1RoOU5Bc2dqYmN0QkNESjg4ZUdTbkhZaGNnN1VMb3FtMzZpZmZKa0Vy?=
 =?utf-8?B?aGtzSGtxc0dsT0pTWC92VEZQalpGcmhiS0ZKUk02YXBjbVgvVDNCMUl4UXd3?=
 =?utf-8?B?dGwrelhBV1N6alRZZGpZZGRSUzB4aEN4cHpVWEJ0YjlqQmNiL1oyT3V5c3VQ?=
 =?utf-8?B?YS9SWHRGbGdvY2prOFNqank4YW03ZmJhKzEwdFpHcmpQUGhWMU5MblZDSUE2?=
 =?utf-8?B?R1hFZWhBNnJhaGEwZ0tmSTUybDdmZmNQMS9NbGJuVWZBRi92Q2FzTXZyNHFX?=
 =?utf-8?B?Snpld2wzNkNFOGNZNjRqU0NYSkFQWThFajJaeFNtUFF3TnY1QlplWFB6SEta?=
 =?utf-8?B?cW5lZlVoRHFiU1JPN21xUDg4dXdZK0VWRXRDc0JmNTg0bnJrdmNmYWNRRFY2?=
 =?utf-8?B?NzBQYlZuOEZVTzc4eEtFK2dxMkkydUpyaVYxSEw0bmltLzB2Tm02Nkx1Z1I2?=
 =?utf-8?B?WGlmRVA4dGl0OFl4VEVjVGl0eXhsazFCamJva09TelFqcDFZdkk5d2VQYkNK?=
 =?utf-8?B?UURRN3F5TzZWMEl6cExrOTFpSXUrM3dlMUtyREFVQVNwMHpPMmowaXY2VUdI?=
 =?utf-8?B?bEU1emFmRGdwV044RUJwSkFpOWd0cEJKWW5KeTlIVVhTSjJPeDMxZUlIc2R1?=
 =?utf-8?B?eDM1eEEvTVRHcEpodytqWjdTRmV2cStpRnNLNXhsNklHUjBpeXl6ejh1Y010?=
 =?utf-8?B?STQ1M3FkYWk0SXcrdmxreTR6V0dURnBFVWt3d1ZXcHlMelBmZmI2TlNPWTh5?=
 =?utf-8?B?bkljcFdnTDJZYVM1NnNVTjVSOEptVGlvOG1sVFJZTjR4bmR6WkJqOVlyWUF2?=
 =?utf-8?B?RlJWOUNKV2lkWXJBU2l6THY2QlJvSmJMOUJ0U0dUdHBOVWI4MVd0S1BVeGNC?=
 =?utf-8?B?ckcwNmxzdGRLUGQyMmZKOE55N0k2MGZjSTdQS1ZCV0RMUjE5RVJCbVlkdmNx?=
 =?utf-8?B?T2QrWjVBUGJ1R3BRVWJWcmllbm01TnZmT3BqdnpuTzFiLzBqNEs1UWtpSEow?=
 =?utf-8?B?WVZxQ0VxalVhVXpXMURCR1hQZmkyZUtlY0pyR3RPL2ZlSk8vci96L082VXRo?=
 =?utf-8?B?K3RxWUlkTmFWOENSeVZWcGQwdXVwZlJzNWR3dElMM0VCT1dZM21aM2VnbkpJ?=
 =?utf-8?B?OEp5NjJneHhqU1VhMTJBV1k4a2dHT0JibEZOeWd1b2lDNzQwY1NRRVA0NjU4?=
 =?utf-8?Q?8haX1nJHoKaB3Ifjop?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bde40f2-f034-42f4-6365-08debcbd92bd
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 13:32:33.1616
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Oy8LF59FPZF1JpzYP6e7Gw8YnyZr4DvDrIGS25wZw09Ba5U0oqqc6UJcsRc4wiGd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB7948
X-Spamd-Bar: ----
Message-ID-Hash: ESSTBIEJJGNXX7IV4LTRZPGDUW553CWB
X-Message-ID-Hash: ESSTBIEJJGNXX7IV4LTRZPGDUW553CWB
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: jeffy.chen@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Mingyu Wang <25181214217@stu.xidian.edu.cn>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] drm/prime: fix dangling dmabuf entries after handle release
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ESSTBIEJJGNXX7IV4LTRZPGDUW553CWB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[163.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.963];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[amd.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: 18A0F5F2C32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/28/26 15:29, w15303746062@163.com wrote:
> From: Mingyu Wang <25181214217@stu.xidian.edu.cn>
> 
> When a GEM handle already exists in the drm_prime_file_private, repeated
> calls to DRM_IOCTL_PRIME_HANDLE_TO_FD can cause drm_prime_add_buf_handle()
> to insert multiple entries with the same handle into the handles rb_tree.
> Because the insertion walk moves left on equality, duplicate keys are
> structurally accepted by the tree.

That should never happen and would be a major bug.

All callers should check if a handler exists before calling drm_prime_add_buf_handle().

How do you see that a handle is added twice?

Regards,
Christian.

> 
> Later, when the handle is released via drm_gem_release() ->
> drm_gem_object_release_handle() -> drm_prime_remove_buf_handle(), the
> latter iterates the handles tree, removes the first matching node, and
> breaks out of the loop. Any remaining duplicate nodes that share the
> same handle are left orphaned in the dmabufs tree - they are no longer
> reachable through the handles tree and are never freed.
> 
> When the drm file is finally closed, drm_prime_destroy_file_private()
> triggers:
> 
>         WARN_ON(!RB_EMPTY_ROOT(&prime_fpriv->dmabufs));
> 
> because the dmabufs tree is still non-empty. With CONFIG_PANIC_ON_WARN
> this becomes a kernel panic:
> 
>         ------------[ cut here ]------------
>         WARNING: CPU: 0 PID: 19739 at drivers/gpu/drm/drm_prime.c:223 drm_prime_destroy_file_private+0x43/0x60
>         ...
>         Kernel panic - not syncing: kernel: panic_on_warn set ...
> 
> Fix this by restarting the lookup from the root of the handles tree
> after each successful removal, so that all duplicate nodes for the given
> handle are erased. The caller (drm_gem_object_release_handle) already
> holds prime_fpriv->lock, so this does not change the locking strategy.
> 
> Signed-off-by: Mingyu Wang <25181214217@stu.xidian.edu.cn>
> ---
> Changes in v2:
>  - Drop the unnecessary mutex_lock addition, as the caller (drm_gem_object_release_handle) already holds the lock.
>  - Rewrite the commit message to accurately reflect the root cause (duplicate handle insertions) rather than an assumed lack of synchronization.
>  - Restart the rb_tree lookup from the root instead of breaking the loop to ensure all orphaned duplicate nodes are thoroughly removed.
> 
>  drivers/gpu/drm/drm_prime.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index 9b44c78cd77f..dc28df1c6698 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -202,7 +202,10 @@ void drm_prime_remove_buf_handle(struct drm_prime_file_private *prime_fpriv,
> 
>                         dma_buf_put(member->dma_buf);
>                         kfree(member);
> -                       break;
> +                       /* Duplicate handles may exist; restart search from root
> +                        * to guarantee removal of all matching entries.
> +                        */
> +                       rb = prime_fpriv->handles.rb_node;
>                 } else if (member->handle < handle) {
>                         rb = rb->rb_right;
>                 } else {
> --
> 2.34.1
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
