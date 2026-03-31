Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPT8K2Pjy2n0MAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 17:08:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 405E536B6ED
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 17:08:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA243401D3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 Mar 2026 15:08:17 +0000 (UTC)
Received: from PH0PR06CU001.outbound.protection.outlook.com (mail-westus3azon11011018.outbound.protection.outlook.com [40.107.208.18])
	by lists.linaro.org (Postfix) with ESMTPS id 7E2893F9BE
	for <linaro-mm-sig@lists.linaro.org>; Tue, 31 Mar 2026 15:08:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=RhowXUvR;
	dmarc=pass (policy=reject) header.from=nvidia.com;
	spf=pass (lists.linaro.org: domain of jgg@nvidia.com designates 40.107.208.18 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rS9Q+feRa4Uv6hosJ+9OHmIYEmeE4Wf6mcOx+ZCUcyF6bp8cGRO37qWzFrFt3SnXzYRrjNJ8l1K4ch1iGVAoDQ+DhiwNQOdDrv3JdeGLKg41PbdsK/Xwm+qqXUYiUo1hcWqOJByuksdZk3zhMYGqbhLfRoz/UyAC4ZnelpvfxXjvE0MAa7YVQ/srMrhjZBWS2Cy9Q8C/1IzfMDrze8AejupgNaywCB+cNH4FKB1u5WCRPHi2ChBFx2saE7Byh/vyBSrFT8NOc9yrqlqYoFP/p6gLkuhVsMWB7zenG4HcfcHzlgaNf3khEVaZeA6eVgaxbgu3FHyVwTS/EAo65h9w8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9UzxmegpFi/LsJRp88qvuza19CshhDFC3P5+l0yJI8o=;
 b=WFklvFMMHgwPdERq6CBHCE6rTdlCqJ7AifmaBVh8qxNXqUCCqEi2wxrI4SfCUfAa4YyaGAMiEaT/8cJvdmHRuvfxuoAvdTheIn5tuG7ldzvxGN558ijJsj3f/Zn6UYHvbcY2c2HYa2mAsHDClw0vb98zK7ovgG+T0hVkVbyINRlIO4RR7CdM9bnBf8EWqSOqVkbAqORJnuyp1DDAiQEjrQH216dyle9udDhKLGKEV73Q5HKHDqwQAXrbPoCG6yyuCRUodd5WBxf/1FOUvpQ0FqgXTJp5s++bkOvEAi3Z0oeVtqLuXXVnyVKOgqBL4nS7riiYQ/sfgktNxyk0R/SYfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9UzxmegpFi/LsJRp88qvuza19CshhDFC3P5+l0yJI8o=;
 b=RhowXUvRrhTZnROvjxTFsAfveQ36LyTZyp+X2fSlv6qvKXcVc6YmIM8Jz/o9n9UgTxMH5TJaxcqCpCeYu8roCmS29sXF/bEs7HMK5193qn2gFafRBSkFcbeCb+8dV7hVqZVd/d58OelRGb3zzaHZi/mS3yS5SMZ6o2KurAkr8RKZdUDtGjm1kByL3CnhaPXFTMOKfcBcgF+vPEzEql+t/jcaAoUeAzZ3z6nM16KvrifC4QTW2mbfGkdFVDit+SxyMqZyfbzYq4Uf7Y4abhZGbyEzS0Fn4Zdeo2ETnI7VYxW+MBTdSVfG9QgTtVASNQtTezDQQA0lX18fhfn9acHwQw==
Received: from LV8PR12MB9620.namprd12.prod.outlook.com (2603:10b6:408:2a1::19)
 by LV9PR12MB9805.namprd12.prod.outlook.com (2603:10b6:408:2ee::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Tue, 31 Mar
 2026 15:08:10 +0000
Received: from LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528]) by LV8PR12MB9620.namprd12.prod.outlook.com
 ([fe80::299d:f5e0:3550:1528%5]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 15:08:09 +0000
Date: Tue, 31 Mar 2026 12:08:08 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20260331150808.GA2308548@nvidia.com>
References: <20260325192352.437608-1-jiri@resnulli.us>
 <20260325192352.437608-2-jiri@resnulli.us>
Content-Disposition: inline
In-Reply-To: <20260325192352.437608-2-jiri@resnulli.us>
X-ClientProxiedBy: BL1PR13CA0329.namprd13.prod.outlook.com
 (2603:10b6:208:2c1::34) To LV8PR12MB9620.namprd12.prod.outlook.com
 (2603:10b6:408:2a1::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR12MB9620:EE_|LV9PR12MB9805:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bf0a993-feb7-4bed-57ca-08de8f3751b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|366016|7416014|376014|1800799024|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	g3cHcJBWD2SJOFXYsXiCmsrClaB6XNGDE+01PgLpy74dgnJC9m6nSoBXVzt+xXlxiobl/WkY6FJl1weX7qjvnL2VWdmtonivOiRhz3digakJh1b2M4YIBhQabstq6iAUQXBTkZuimSw4k77fqex+nbM7GnKjw7as5FXhf9JVlXqFzgHcUiQmwKKtZdgXTUHu9dFHwCfhH3s1BGejk7h+QZGPQoIZh7oueH7vrfoAgaCeQfqpoeGHU5xzW6BjMSNSwQ0QHc2fUaIgaXJHZckUloyteW9E7A+/cydNeogxcAqjX188kg/77VjFQLcnp4sWZ+byl6svRNYhQtJpM5Rhm0SJnavel4nXlO8rWTc7cRrXHOC/9qlDk3roXOjlOxIeJAfUTclB20X2K5/H1LgdcOzgiXHJJdeT9neZouPkxcO2hMb3qBsHz9FI1R9c7Zcr9rC84kl9bynOOKfWJ1vKt5zJ+kuAwyq/oSg5081OcKJfzujZr/RDCueHbvydAjZv6U7XdvDcWEEjIGQZ+BC5Ytgt3y7odDb6434L5DAALs7j/xMQopTvPBAQ6OeOFAVeDPlsGYmIIMwIuT4wvoF1wMS8lMyxdJ7FiOOFbAGkse1ZaFFTot6muVHjfOICWWpCnimafaTKOMQgjCGXYp8J18+Yq9WnwZvM8gREhfItsdoXzv+6xHcW+YwjZ8QFgyZabpUEAr9o1if29ebu1L/7VYjvq9eBUQQ30JpvsaYpDi8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV8PR12MB9620.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?gL0i2WaRpa73pDuBldyaPADsk8WqWoK7wGEuWqREQJbr+EfDB93t5Jl7kkgf?=
 =?us-ascii?Q?AMcbOZe6hAQTCUH3m+NVjpY3pfEy/i3ICbNVMYSRMb4Xo7VjU+mL7Db0UFtD?=
 =?us-ascii?Q?gw7CPRmwkfMI8breY+e2j9Dcoo+6294nvtB27KLkQqcVTBUTJdjmWC0XvkRi?=
 =?us-ascii?Q?Hj8xqFaRg+yck6w1qNqCjTaMfsI5EJI4gKVj2NDu6DTTGxOjTanZR2uaZD3Y?=
 =?us-ascii?Q?0+ZS/R9rQMJvNwcD+93mRKcLqzinoEY2CLZhiUSSAW5Ha94p+TRySOhtm071?=
 =?us-ascii?Q?EejNeJNJYh8qJLBECg82XzUZTUAgzUmnoVDiFxkzfjfDbFL0GMIxCp+RwDR5?=
 =?us-ascii?Q?qxH6p3NHaMjhcJoN5eK4DsnwHiz8wBrwx+etv3U1eqFkEFXPik1P9EFySrQO?=
 =?us-ascii?Q?DQGkd1bnZU9yAQCls9pu7lSwmMSvXWRcEavMdL2LtEE+sdb7ZSSizrDcAY65?=
 =?us-ascii?Q?3duRQOuaA5b8wcPBdRo9ej2ed3wnwZoBUMISUp869F69DBetNv3gJ1cbaQl8?=
 =?us-ascii?Q?2srDmoKtYq+jxu0L87OJZ457MU6aE8y7hgwuIK/OzS+kwJ68t2smmNpPE4rd?=
 =?us-ascii?Q?5rbumeG/+2pud2mFrCGcg/PSUm668C+LiFNsRWmLbLd33NQ4x65bw0AnkTIx?=
 =?us-ascii?Q?CrfO2ZAgFFhi8l9Nk9hrPOh/UEcR75K8EmfValjPQJhODHcqFG7GUj7FRqqc?=
 =?us-ascii?Q?vtg6LZErhYW8dauZyyHH80pH9qUQ9ZuHg30SkGy6adOnbV+5Kcfggok+lPBH?=
 =?us-ascii?Q?RQY2Pgc2FozNf2GGyS1uJhGgTPDnzv0z3X+16oxAvums9/jtLY3HuXGk/z52?=
 =?us-ascii?Q?QSmLlk20WSaV5DjPygzFMG28/f04h1GPgcW2t5bNMQeklftB69lirAWKhrR/?=
 =?us-ascii?Q?O/uISmaOCcwbyczCWiFJj9UZzTIRvnWMlW5ziemxh6vpItlFdNcGJs9lD6g6?=
 =?us-ascii?Q?LeJkmS5ipyQwEIzLFvhVPFNRNYTrx93oe90arWPZoNImeYGVM0J+uJUUqMaQ?=
 =?us-ascii?Q?4KKwlWw6WhlIxnlM6UEvP5ClvkXB3EUy+jggOkL6gh4tAqhbfeu6V+xVz0x0?=
 =?us-ascii?Q?++yPw6BB2zlClpuwSCbG/bSHT3ZQ3dnmyCFzJrlnWLQ5q1IZOEcXP6fI3Sfj?=
 =?us-ascii?Q?0eB3qaA1Uy/mYXLS5PDrPkV7s22ez7tsH3SAG0QJ8eKWets1MjFixw7wXDsa?=
 =?us-ascii?Q?AUAYbGEjNSM4DlMZZD1LSF5GTTM+sjss7z1Dh/soP41PhM0y30JrrSedkvLw?=
 =?us-ascii?Q?O3gYoj/rysWw7B7a/gJYksnKmbFQawzlW9SDiaZHYmQAoWSATWzqdFVvPONt?=
 =?us-ascii?Q?N9GQ6lq9/ZwwvbnO5JokMOd/hmBkkigDhRWdU6B+OE0vHWuKUi9yFK7xnufj?=
 =?us-ascii?Q?ZiW3/hypPyZJrc0SMs7q4kEjny0LcI3xIiS+Dbj4x7L7Tj+Xxho0tbaLOwFk?=
 =?us-ascii?Q?/Q03AmQeJeySecI2+osU/4SYm3Pr19kVilxTWsNzhNbgE1MDlqGRpZ1GknOI?=
 =?us-ascii?Q?elV7IlJcjS3eNgek/5gmENhg9RQHXS6Vj1lgaxkIeOSEhaUzpRs6WV/5zvSV?=
 =?us-ascii?Q?b3WavD+VJDnncKs8227kihfSPMXFUE47gsVBxfc0Wg5+xSAzMuE+txoi7az8?=
 =?us-ascii?Q?BycS+LQa1Wly5UaZjianwOYklIbOQBQdhfcwGmZRWTFb68Ov/F30cSLOrEm9?=
 =?us-ascii?Q?+lbzXnktkH/kRoNly41NSewTW2igoXZBGRaISue/UPDm5pq/?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf0a993-feb7-4bed-57ca-08de8f3751b5
X-MS-Exchange-CrossTenant-AuthSource: LV8PR12MB9620.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 15:08:09.1999
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CxMQewX7Kc8lfG40C4L+ySaFqR4t/PVFhZCtQCPXLWZBpmUEi12fYS1xjjOKXu/q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV9PR12MB9805
X-Spamd-Bar: ----
Message-ID-Hash: VXF7BF5B4W5GU5NIW6NBCXDAKECEC6FO
X-Message-ID-Hash: VXF7BF5B4W5GU5NIW6NBCXDAKECEC6FO
X-MailFrom: jgg@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 1/2] dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VXF7BF5B4W5GU5NIW6NBCXDAKECEC6FO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[nvidia.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[Nvidia.com:s=selector2];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[24];
	DKIM_TRACE(0.00)[Nvidia.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jgg@nvidia.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.938];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,nvidia.com:mid]
X-Rspamd-Queue-Id: 405E536B6ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 08:23:51PM +0100, Jiri Pirko wrote:
> From: Jiri Pirko <jiri@nvidia.com>
> 
> Current CC designs don't place a vIOMMU in front of untrusted devices.
> Instead, the DMA API forces all untrusted device DMA through swiotlb
> bounce buffers (is_swiotlb_force_bounce()) which copies data into
> shared memory on behalf of the device.
> 
> When a caller has already arranged for the memory to be shared
> via set_memory_decrypted(), the DMA API needs to know so it can map
> directly using the unencrypted physical address rather than bounce
> buffering. Following the pattern of DMA_ATTR_MMIO, add
> DMA_ATTR_CC_SHARED for this purpose. Like the MMIO case, only the
> caller knows what kind of memory it has and must inform the DMA API
> for it to work correctly.
> 
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
> ---
> v4->v5:
> - rebased on top od dma-mapping-for-next
> - s/decrypted/shared/
> v3->v4:
> - added some sanity checks to dma_map_phys and dma_unmap_phys
> - enhanced documentation of DMA_ATTR_CC_DECRYPTED attr
> v1->v2:
> - rebased on top of recent dma-mapping-fixes
> ---
>  include/linux/dma-mapping.h | 10 ++++++++++
>  include/trace/events/dma.h  |  3 ++-
>  kernel/dma/direct.h         | 14 +++++++++++---
>  kernel/dma/mapping.c        | 13 +++++++++++--
>  4 files changed, 34 insertions(+), 6 deletions(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
