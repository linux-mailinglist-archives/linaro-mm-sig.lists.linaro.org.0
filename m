Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9i7cNkyvVGqupQMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 11:26:36 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5041274945C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 11:26:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=amd.com header.s=selector1 header.b="ZLgeT/E6";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=amd.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4B0F40C0E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2026 09:20:24 +0000 (UTC)
Received: from BN1PR04CU002.outbound.protection.outlook.com (mail-eastus2azon11010049.outbound.protection.outlook.com [52.101.56.49])
	by lists.linaro.org (Postfix) with ESMTPS id CCF2C40966
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2026 09:20:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPwx9tu90c9w1shAmTUVb/p7OmWRbC0uhU5n2gOq2cZN7959iWp8zf6VVStDrm3oEI0wGbjm3OB88VdEwMPl2M90reuei0ZsVHN12pdbhDasW4AX/DaSQLgTegtut5gsQD93n9lx4w9v5LOYU81aGZymR7a8/pzVhqtdUZVRv+3fsQ6FCPIM4BB78bNSJcz44w43XP103d7cG+7KJlvgfetsmix84rbzuiMYaDU5HQNlDWekCkfNLr3IBbxK5sIfUfjJ1UmYkIPCJUjYGzpNfiUdPcdMOTrOTvfnQyQjyOKEWb0ooqa/4wrx2fv4quSBYrkBTobERWcZb8tGPRy/4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YKiAQpcpocLrynnbHYWnSs+Xau7JUQkxyzo5xsI2ME4=;
 b=oCF9KjC3KBICwySvZVSZlA7lGWXN/1rh+tEtO2G0+Ym+gsQ6NSH96qHOdn9dxA91GDtLW5zDQ2DDN2WIk3NOgoBz+na7X5O6nfKzrYiyC/yue5OXB7TZ7+PnR8dbHCvSmkUh9DYEsaqbuvBtkzsq8et1gHFPNPe/PtLS6kxM9vTpx1/+d/n8toSZhusynjGN6a1q4bcyUYLxm1mu/FnVSX3brDDUXpJmX6b3zKg5UU2uwAUSAUMz98wI2nzfJeovxKCg19Q2sMdK7wKtmnioVjLhOd53T/cARqMn/xPu9ZbVjxczAIXmVb/bSce9LRMk3Wtl2cwomdS1k6JVaboaqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKiAQpcpocLrynnbHYWnSs+Xau7JUQkxyzo5xsI2ME4=;
 b=ZLgeT/E6NcZcWllcnqn70i7jHCCbSWFesB8j5mgq7+/Wybjy4qxynB8C6hxA2etCVySzmDW+wdnrrQ/1ML2dnSVqFVtuNQu8PLlKdrO9bIo9PguzZjZDU/9suA6APGlbbBadfT26UvTl4cgIdmHh05lBQOBG2T2E+T8x3eSGbTg=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by MW4PR12MB6973.namprd12.prod.outlook.com (2603:10b6:303:20a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 09:20:11 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 09:20:11 +0000
Message-ID: <49b4c4e0-d0a0-4301-afc6-5f6acf5e9424@amd.com>
Date: Mon, 13 Jul 2026 11:20:01 +0200
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>, Pavel Begunkov <asml.silence@gmail.com>
References: <cover.1777475843.git.asml.silence@gmail.com>
 <20260713071828.GB30168@lst.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260713071828.GB30168@lst.de>
X-ClientProxiedBy: FR5P281CA0011.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f2::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|MW4PR12MB6973:EE_
X-MS-Office365-Filtering-Correlation-Id: 19b2df55-2d77-4a20-7cc7-08dee0bff094
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|23010399003|7416014|366016|1800799024|18002099003|22082099003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 
	Maa6C0aIAEqIxiKREQcKjsXtpqN5WbTixaqoWHINISpoQwrpPoO+0WRKMHOw6LblHPp7Rx7r9Dy50/RB/lsQFqT2Y+l/OKCgAl1HZk6FPRfBB6cR1LPyGMrtwsf2qsARC1C7zWZzZg8CCLIjsHBFuHDZ8arkDfE+RAgvwAKiQcEvND1voahvJi0cUthnFfeKlZKg0So3wWqAzbN0ysW7P4tHZosH9DbwyTB7w3z/1F4VkgAKuz2afQxGaTEWzfvGk3wffyj7sisiDuW/MfU9macu6eXy8t6oTxWZh+7XNDkrIdnT9epWV3FSiO4de6suPW9vupzMRW3VV3au3KHI3/qZamDuTj45rrZfApAtY1m0DPfN6irszDyvw/lPeeVz0uVlOR1J299bZ87nBUgjX0wrhb54RW2Tqb0bML+ymyPJ1GSn+zCbBkdFbxa3W06iLPl1Rv3F+oXwemWNdggBS4Qw6D0b3e3Z0WMqyJfCJPz0OpyztMZNylIYVr4YdksGbJRr/broCxcuQ3ZIn6+PcCe1WmOL6r+dJX8YZjGvX3Y9OE/s2sNrudaN/S165faI5KHMbe7zJap/lnu+EcMvPJEeYWt7vyIE3u9cAOxEP7i3dgeJqNrJdWt0enRyS10EqhX6AZ/HLF87mfvAZqzWyYgtlm5cqBnYVXzIIh0rl4g=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(7416014)(366016)(1800799024)(18002099003)(22082099003)(4143699003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QlZZOEU4S0Y4NGJyUy9ibGltU0RpZWtRNjBFL3JwVGNIUU45SmE5VHlVai9x?=
 =?utf-8?B?b3psM3VNN2VKWFo4a0FIMkpwbXdaODBJUDRCTjN6Nk5mNlJ1SmtqWThxYUw1?=
 =?utf-8?B?UnY0RkYrcHc4WUdpVlgwQnlzajJGSGM3SjhIWkVFKzJTUzhWaSt4Q0NKaTJy?=
 =?utf-8?B?bUdGUUQxSnh0RENHRGFwZll0Q2ZRZ24xSkxaVHhNYkZOdmJMOGc2N2grSUpR?=
 =?utf-8?B?bGtGOFFsRmxSM2ZSY2pZM3I3UXVwa2VaMmFIN0pzUi9GY0NYVHhCVHpLUHYv?=
 =?utf-8?B?bnYzemVkUnI3eFBQYzlGWVJWby9LT0tSMkRIa0pUaDE1TjY1WHlJTW5QUkVU?=
 =?utf-8?B?R29ZODJmK1pZT2pKNGZMR3N1YmRob3FTTVM3TGV4b1ZEWmR4SG56amhyL01s?=
 =?utf-8?B?Q1RmTTQ2bzlEcDY0UndCa09lY25MMitUL1Bod05weURsbnVkdkRzTnhVM0lV?=
 =?utf-8?B?WGFDOG1SZDVDOGYrTGpRTlM2SlFmekV0aXEwaXZGQ01YblhJMXNjOElNZXJD?=
 =?utf-8?B?bExLYUw0bHF6cC9wNzI3bklZTzMraGk5Rk4zTjExYjZlbk1jS0NaOFBlbkIr?=
 =?utf-8?B?Rkw3UmdPOUxvNDZVM1hnTnNtUGVLSVRMaHhvcXM2Szh5V01vR0hZZmovRS80?=
 =?utf-8?B?cHNocS85VjIwVHpxNnhHcmJuMDFDTFNxRUVpM2hwQ1Ivdi8vYUJnZ2R6U1Fj?=
 =?utf-8?B?UzFMM2xocnJMUzNQbUpBWENaN1ZaSnN4eUlqNFI0ZmpldFBhYUZyT1VmVURl?=
 =?utf-8?B?REhSSURlWHZJVWlkYXI0eVJCYVpVekdWTGxERWNENUxmcU1rUkc1dHdmVzdm?=
 =?utf-8?B?M2RKZmRySk1Bd1N3VnN1MFF6NXMzbUQyV0lZeWN2MDBwZUl5VStTdVAvTUlS?=
 =?utf-8?B?YkdUMm1ZQ3JWMExhWnpCSHFUTzYxcDJKY3FqelU3WDBQMngxNmNBSHlMYmdU?=
 =?utf-8?B?VmJhMFVXZElUSDJUUklmSFhMN09DQ29VeWsveDBYTjJhc2owOTZ4MDA0eFcv?=
 =?utf-8?B?blN3YWppeHIxcmF3VmNIN1dPM3pnNVVQZHJjMnZBRVV0Q2JmM1pEWUgwTUI4?=
 =?utf-8?B?VEtZOUY5aHIxQmQvakdSdndOQ01QVnVLYi9aWG1jcXF2Rk9oa3pZbzBXdXNq?=
 =?utf-8?B?OVFJU2NLZktkcytmTkZkUTdIL2VxRzRvSytnL3BQTXpyODNkN2dNL3VXRHJR?=
 =?utf-8?B?SURybEpwWk52Wi9hbkViaVRDZUZEUSs2L3g3RTJvMDVjMVFiQjhlU1RVMDh4?=
 =?utf-8?B?MmttZWdwUVBSSzd0TXh5bW1FNjdvdEJJeGltNCtCQi9JMWdxdzliUnJJNUVP?=
 =?utf-8?B?aW9nNks1Nmp1bWxoMUlMSEdXa3hWcGtobXZYSnlvVk9DTFh5emRXMS9UcVh0?=
 =?utf-8?B?SFE3SHVod3hxNm5oRXE3RkhpbVo5VFlDckV1c0Fwek84MjZEaU5OVmFLaGhs?=
 =?utf-8?B?OThSZDlkaGhybU5ZTzdBS05SSUJiSW00aXplSFBqUW16dUFCbVd6b25lbzdC?=
 =?utf-8?B?RUQwN2I5eHFpVFV6YmNESGNmSlJlaGhaeUJFQzVSZm9QT3ZzOTc0WlV5QnB4?=
 =?utf-8?B?VW16ZWNLSWdDVi92cktBalA2L0I5UGFtWXYya2Z2V0lUOEN1SHdpSmdqSHZq?=
 =?utf-8?B?bkpHLzNGY0IwbzVNV2FkdEZwSVJ0ekh1b09rN0xaVUxteExub0lVMnFRZFlV?=
 =?utf-8?B?YWtPa3NmQVZENjBWZ3cvV1MxdjRVNlpacGZuSTVSMHg5S2lPRTBzSUdGRm5v?=
 =?utf-8?B?OEtUSDQxcnBMRC9hbG5hQ0ZiWFpMUWRjbU52amxzV3FuaFZzM1JlS3JnRXpa?=
 =?utf-8?B?VnFiRWw5YlVuRit3VmJ3R0p5RjJIQ291SmNGYUVTR2VpZGRmcUhrekFHQXNS?=
 =?utf-8?B?VzFOalVsK1VZZXByWExIOGViMGtqbU96akRRZ2xnYzVOZjhSVUtsOHlBQVRT?=
 =?utf-8?B?M1hRRDRmZTFuUC9TV3dTUklGZ1hwY3k5SENsOFpPUmdzZkN4eDdIVVpFODZZ?=
 =?utf-8?B?UkhrM1FIVXZFUUJ5YlJxR1BJVFljS29JSWdCTUgzRTJlSE9aNGV6OEQyaTRn?=
 =?utf-8?B?QUNMbjZUMkljQjUzdkwrQkFjN3UvbFlFM1k3a0NqVldpdG9qMWxMNDk0U2k0?=
 =?utf-8?B?YXdVbnZ6dHdCcFlJNm40dnMwNXgzcGhEWmNoY0tLc0dJSk02SzB6TnB3TmFK?=
 =?utf-8?B?U2RBbUZ5Y3k0OG9sRVBRUnZNOEs3S2t5bjhmL1cxdWFtT2JMSS8rcU1HOENV?=
 =?utf-8?B?N2U3Q2QvWEovZUw1Q2RLN2xBWHo3NFhjRnBLRDRhbzM3ZzNzVE8zRlo4UDA2?=
 =?utf-8?Q?NQF5UXo/cbVDCVBchz?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19b2df55-2d77-4a20-7cc7-08dee0bff094
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:20:11.6336
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqF35hSEX2A8JC8BZmm3J/p6xURQIdzOgnmvbZwr6oRn/3dZYNNuXP9vh4B8xsxH
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB6973
X-Spamd-Bar: ----
Message-ID-Hash: 5O2DJWWBPHXGR7LOEKXJQA2K5QDCMIU5
X-Message-ID-Hash: 5O2DJWWBPHXGR7LOEKXJQA2K5QDCMIU5
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>, Alexander Viro <viro@zeniv.linux.org.uk>, Christian Brauner <brauner@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Sumit Semwal <sumit.semwal@linaro.org>, linux-block@vger.kernel.org, linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org, linux-fsdevel@vger.kernel.org, io-uring@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Nitesh Shetty <nj.shetty@samsung.com>, Kanchan Joshi <joshi.k@samsung.com>, Anuj Gupta <anuj20.g@samsung.com>, Tushar Gohad <tushar.gohad@intel.com>, William Power <william.power@intel.com>, Phil Cayton <phil.cayton@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 00/10] Add dmabuf read/write via io_uring
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5O2DJWWBPHXGR7LOEKXJQA2K5QDCMIU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hch@lst.de,m:asml.silence@gmail.com,m:axboe@kernel.dk,m:kbusch@kernel.org,m:sagi@grimberg.me,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:akpm@linux-foundation.org,m:sumit.semwal@linaro.org,m:linux-block@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-nvme@lists.infradead.org,m:linux-fsdevel@vger.kernel.org,m:io-uring@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:nj.shetty@samsung.com,m:joshi.k@samsung.com,m:anuj20.g@samsung.com,m:tushar.gohad@intel.com,m:william.power@intel.com,m:phil.cayton@intel.com,m:jgg@nvidia.com,m:asmlsilence@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[lst.de,gmail.com];
	GREYLIST(0.00)[pass,body];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[amd.com:-];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:mid,amd.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5041274945C

On 7/13/26 09:18, Christoph Hellwig wrote:
> Hi Pavel,
> 
> do you plan to resend this series?  A lot of people are eagerly waiting
> for it to land.
> 

Seconded, we have a lot of people desperately waiting for that.

Thanks,
Christian.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
