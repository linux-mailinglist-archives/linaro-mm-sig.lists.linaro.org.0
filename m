Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 513176C60E1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 08:35:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5F80D3F48A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Mar 2023 07:35:42 +0000 (UTC)
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2076.outbound.protection.outlook.com [40.107.212.76])
	by lists.linaro.org (Postfix) with ESMTPS id 260243E975
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Mar 2023 07:35:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=jEujugME;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.212.76 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CsPOPRy6jhxAULufNYwPu3d3swbPiRaZ8HLhXCNQVJrrgld8jB1v8WlgX3zVnWTJQ6PAd10pIbzCx9dIxO7HL5BDsLq4ZRAgJ2cgWNLramGkbiljNhwJSd6wsl8uqKzjTLXot5WsTjCTcytSn5VZcyip5IrdKr1xEw6glZ91SjIzHRllM1Z4g2uugJos1SbefXlGGDyRpsA8qfETyczeUewmyXD/VR6dE4GqjsKarxp6oUfub5dya2NlYBK49p/FBrb0aTPhhFVTkXVwgNKPPnDL5GMlYbEDLZQ4/fbQQusDPg2sy5EA4vAqsKAzzgHMrpEbSRszp5dgamNuM59I1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N/6KQdYEUw/IslE/x8bdeM+K7Foq7xX5InTf5F96zjc=;
 b=GSZ83BItA2bzvf8S3g8g4V8xMayEjPSajnO01Zvr9+baGEZ5hciChNHKqhDFLq/vg7iTImPG1j3EOXK0FbTeOIkcNtdes7NBzYZOtuL65pvnzeyOCxzZkj+jnAxEAdR736eRkFnIx+lU5jQMDKyAwvz4wBLipdnhfQhoYm0+/nBzXxktffM/eKQNDNCXYTK82ZuuiuTmebt7/JIZepoClx65jbYRA5Wy04OYCs6Qac3hUfKW+gXcejQCh/c3bO1aHdj7RogtD3t9yPpSfij6keOrpkgB8vXYQOc8BoyGZyaY6geQrwsnx0ztfGWg06iK+oY1PabP60bf+n6qitVoTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N/6KQdYEUw/IslE/x8bdeM+K7Foq7xX5InTf5F96zjc=;
 b=jEujugME9hhvjdkq+H0CvPsBFL12xULFcmST9MU9Qe5AuGDkOzMRGAlgfJvdWcr7T3SdKHlM7ZUM5PcHnFcrNRMEtVtQzewrr5gZ+aLzUanQdvxl06yJ3GoMJqJ8ZiaalkPuo6u7NFdTDlbz4YB0xrBo358lZjrHzQXzwnndJag=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB6277.namprd12.prod.outlook.com (2603:10b6:8:a5::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Thu, 23 Mar
 2023 07:35:29 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::d23f:bb1:df95:3918%4]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 07:35:29 +0000
Message-ID: <b9fb81f1-ac9e-cf3f-5cf4-f2d972d3ed3d@amd.com>
Date: Thu, 23 Mar 2023 08:35:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20230322224403.35742-1-robdclark@gmail.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20230322224403.35742-1-robdclark@gmail.com>
X-ClientProxiedBy: FR2P281CA0125.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9d::19) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM4PR12MB6277:EE_
X-MS-Office365-Filtering-Correlation-Id: 58be3c8e-7602-44a7-200b-08db2b712cff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QEjR4Lp3+hjfVzu3fHnP41i+ep6woL4rd7mINbv0iJUoBpQKdvkSh9vCGJbUX+gnRaJ6KmdLyfx6qwIX1dRtR1GZp7vlNoMrYiKXAL12Cus6rQVu5Xn8Bu/X+nxj7LWVmsi3inOyRYF2fxUhK9UAGSO4+lc6hglDBmapWFHz3CK2l24E5Qe7tgBKyYfB05Nh7MOy0gg8hkWtXRZ2d3M6vqVDlCC2gMh3C6hLKK/HE079jNoMoTixQX+z2oh7N70sKkfBkYmFrzbX5zTws08troOxBfS6yENKKIM2vl1/9Re9j0xF/8/u2fDDXG/pJnUYNjl7+D2TAv/sooQJOty8GGWHgtuDhFMv5xquGUFnbetPs+aAHdsupiwuGl8HP/6PkCreqWHYxka581S2oDGoXYqnHYIFAu0wdoVAyftDkhy+booq/3s7tG8tlcfUa6G99vitHOq5tBk7KAAsQLT1UoHfu05RWNV+RTqP+pVVdF3jrLpMSPiQUpIGVMToI33G1quWA7zIBkvOk8cHlFFq0Tv/K/hqsSFv/14lw2AS6mMipgQbmeqsThciqrMSUtUSERknMgvx7jlS7xotpO1qQJu7ua2J2XtPay81pLWMEpERWA5YANfPlEwOoKD0CGGRsVEi3pJsXVl/XYCE0XnyiwLNuc4E/qMgiUZUvNKFGihpDLHPOra5Kkm4TWwUhur2nM8AzLqu5Bm5OOa6kGexnDKMHBv0Sa7FUC49P6fNfH4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(396003)(39860400002)(366004)(346002)(376002)(451199018)(54906003)(66946007)(31686004)(6486002)(4326008)(478600001)(6512007)(41300700001)(66556008)(26005)(6666004)(8676002)(66476007)(186003)(5660300002)(2906002)(2616005)(8936002)(83380400001)(316002)(6506007)(38100700002)(36756003)(86362001)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WGUrMVZRS1lPdmVZNTUyZU1uR0pzbmttWGpwNE8wUVdwSFVjcVZkT1djejY0?=
 =?utf-8?B?UEsrUGtVZjZRNXJNcURaTDhMQ241MjNGV2s3MzZ4ZEI2WkI1TEthWjJ3RFha?=
 =?utf-8?B?ZGpOZUI5YjNoV0ZaakJMRmpNT0l5d1lUWmJBaUJKSVpKTEVHNUwza2kxSm9x?=
 =?utf-8?B?RzhhMGRsdmVxelEvVkZ4c3JzQmVDdzZsbGxXRXE3aWpSaURxWkVXSTAwaHZn?=
 =?utf-8?B?MWxGeXJrK0g5WHhmaWRHNnUwc0FUQzgyZVMyZTNhdGhsUmZPbjVpZis3MVh3?=
 =?utf-8?B?VTVWdDlySTlRV3d4dUVqNGFLaFI4a1NOU2VCVE8vQWVTdCt4bzR4R2lnWThY?=
 =?utf-8?B?V05qTlFLQjFzM1JhK2Z6WCtxQ1loYitaZkdzY281TGdBcHdxdlI0Qk5Kc29E?=
 =?utf-8?B?amdnWTgrRkF5eGxkTGdZOVNGbmtZc2FxNERybmhjMlh4SWtsc0pJVWVBRHZC?=
 =?utf-8?B?bEwwYWc4UmVjb3R6d1gzU1BDVzdrZFJKUlgwNXJBSHlEdGpKRjl1bk9QN09k?=
 =?utf-8?B?ZEJYcU42eHRGalRDdkl1djYvb0NZVjZsa1NEMldlVzZZUWR5c1IwblNWRm5u?=
 =?utf-8?B?TVV0bVpQQTVkOUpZWGc5OXhLTjhwVUxBZXNaK2d6RS9rOEVob0xKY216OXVP?=
 =?utf-8?B?bFhuTDBocVA4d3Z3dXh0OXVIM1BDSSt6SzhURmZqUnQxdWhxd0ZHSmhFSkpz?=
 =?utf-8?B?WFJEazNPQ2x5Wk5LT1BIQkRkY3JMZ2lGai8zT0grSTRpZGFSKzFROUVEZkZL?=
 =?utf-8?B?S21zbWFERGpaT1IvUHVjWmxuazU2S2NCU3dGendBbXhmdUExY1FPSlhocmU5?=
 =?utf-8?B?b3BPT210NFJwM3R2VTFTVExBaVNTVkVXS2QrSEY3QVg4MlV0Mk9xeTMzS05q?=
 =?utf-8?B?S3dKSUJQTXh3WEZxRHV3UmtBQXQyckdhbWp1NTY4N05oYUx0UnJPL2oyUG91?=
 =?utf-8?B?bitaSnNpMHF4Q3l1M1QzWkcyb1REaGRqWVlXTWM4dnQ5QXY4WDEwY050TlFG?=
 =?utf-8?B?Zk1aMkh5ZWZLUzkxMGpuUElPZ2dkaVE1Yjc1ZUlESnNuSlVwbjNTVlR6ZVR1?=
 =?utf-8?B?QzBnQjIrM0FjNVhNbFZySCs2N2ZvTFNoZCt4a1p4Rzl1ck9RMTNENVhjdkJC?=
 =?utf-8?B?eEhkdzN0OVhLWTZmMHhjcENib1VKUFdSd1hEUkhBcFF6aTZ2blY2Q3hJTlZv?=
 =?utf-8?B?eHNRZW9YUEdUNXdydXlRZXJacDFvQmt1K08ydU15ZTVvVUpOWkdRUHpLQXhM?=
 =?utf-8?B?Q1gzenVhaU9TK1hmTjBqVWdpV0FmOG5wQnNodkQrNEVXZEUxc2RUdHYvZ1lH?=
 =?utf-8?B?RkovS2xDOW1zU3BYWmgrZGVnOXJ1aTdmRSsreU5ESERMc3FlOE5WVzh1eENi?=
 =?utf-8?B?NlFhYTNScm9hWnQxdDBORkF0NDVvNXlSbDc3L2FNVlBVWEZKZlBVUC9HU1pP?=
 =?utf-8?B?VWRHWmtRTmVFRE9pUmFuQ2lER2VSUXNDME5oSWN6RGowbWxKMk9SZTdUMkhK?=
 =?utf-8?B?ZjhOZG1lVHN0c21rR1hWNnB1SWFCMGZZN2E1ZnRBWVZvVTRXcE5IVjJzWG1X?=
 =?utf-8?B?azE2M29KbWs0NG8zUTZzVHZJdGNkVFBKSENRRFlmREtEdVpOVEJVbjZnV3ZR?=
 =?utf-8?B?S09sd29QWDNQUmFLaUxaWERtVTlaUDZYRE9VUDEwUnlWNjZwckNSdGJQTmlo?=
 =?utf-8?B?V09XeEdhc2VsdzlOWjFYOHBGM0dmWlFoZFo3T0ZZMmlMTE9mcTA4cXVnUHMy?=
 =?utf-8?B?c2wxZVpoUUpDOFdPYWhFc3Q1eFpPQ2ZhQ3FyUk5ESU83UDd5a0E0WHZrbkNH?=
 =?utf-8?B?cDZPODFoUEZ2VWFjNWJ3Tmo2L1BLV0tuVGdkQ1NjSDRodzE3MmhRQzE1SElw?=
 =?utf-8?B?eEt1V05oSmExczhxOXBBSUhxdFNBbzFsR2J6WVE3TGtReGVqSGFPdmE1QUtD?=
 =?utf-8?B?ZExvMDhaOVlqUHZKakJvK3V6b2pSUXNOam9pNHgxM0Q4ZmczcDFEVjYwRmhw?=
 =?utf-8?B?TnBacHAzV3NxZUR4RDNDaVdVYmJhbW5YbnBGR2dJU2dlOE5RWkRHWHVESnM1?=
 =?utf-8?B?NHNZODc0a3haaWI1Q0ZKS1AzQURBaDhQaTEwdm9nUVpHQWJrUXYzQ094V3RD?=
 =?utf-8?Q?wrLq1olXyWJ/WHwIs0MK7bXoF?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58be3c8e-7602-44a7-200b-08db2b712cff
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 07:35:29.0835
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AfdapDcpEmDC9R/TpK065y6SGx+NZ2JbTF3gd25QY13nEpb9yorUcCWvazDemwD+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6277
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 260243E975
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,amd.com,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[amd.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.212.76:from];
	RCPT_COUNT_SEVEN(0.00)[10];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ENTN3E64ZSQ6JEJ55Q5SIY3LLGIJ7G7C
X-Message-ID-Hash: ENTN3E64ZSQ6JEJ55Q5SIY3LLGIJ7G7C
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC] drm/scheduler: Unwrap job dependencies
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ENTN3E64ZSQ6JEJ55Q5SIY3LLGIJ7G7C/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am 22.03.23 um 23:44 schrieb Rob Clark:
> From: Rob Clark <robdclark@chromium.org>
>
> Container fences have burner contexts, which makes the trick to store at
> most one fence per context somewhat useless if we don't unwrap array or
> chain fences.

Mhm, we intentionally kept them not unwrapped since this way they only 
occupy one fence slot.

But it might be better to unwrap them if you add many of those dependencies.

>
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
> tbh, I'm not sure why we weren't doing this already, unless there is
> something I'm overlooking
>
>   drivers/gpu/drm/scheduler/sched_main.c | 43 +++++++++++++++++---------
>   1 file changed, 28 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index c2ee44d6224b..f59e5335afbb 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -41,20 +41,21 @@
>    * 4. Entities themselves maintain a queue of jobs that will be scheduled on
>    *    the hardware.
>    *
>    * The jobs in a entity are always scheduled in the order that they were pushed.
>    */
>   
>   #include <linux/kthread.h>
>   #include <linux/wait.h>
>   #include <linux/sched.h>
>   #include <linux/completion.h>
> +#include <linux/dma-fence-unwrap.h>
>   #include <linux/dma-resv.h>
>   #include <uapi/linux/sched/types.h>
>   
>   #include <drm/drm_print.h>
>   #include <drm/drm_gem.h>
>   #include <drm/gpu_scheduler.h>
>   #include <drm/spsc_queue.h>
>   
>   #define CREATE_TRACE_POINTS
>   #include "gpu_scheduler_trace.h"
> @@ -665,41 +666,27 @@ void drm_sched_job_arm(struct drm_sched_job *job)
>   	sched = entity->rq->sched;
>   
>   	job->sched = sched;
>   	job->s_priority = entity->rq - sched->sched_rq;
>   	job->id = atomic64_inc_return(&sched->job_id_count);
>   
>   	drm_sched_fence_init(job->s_fence, job->entity);
>   }
>   EXPORT_SYMBOL(drm_sched_job_arm);
>   
> -/**
> - * drm_sched_job_add_dependency - adds the fence as a job dependency
> - * @job: scheduler job to add the dependencies to
> - * @fence: the dma_fence to add to the list of dependencies.
> - *
> - * Note that @fence is consumed in both the success and error cases.
> - *
> - * Returns:
> - * 0 on success, or an error on failing to expand the array.
> - */
> -int drm_sched_job_add_dependency(struct drm_sched_job *job,
> -				 struct dma_fence *fence)
> +static int _add_dependency(struct drm_sched_job *job, struct dma_fence *fence)

Please keep the drm_sched_job_ prefix here even for static functions. 
The symbol _add_dependency just sucks in a backtrace, especially when 
it's tail optimized.

>   {
>   	struct dma_fence *entry;
>   	unsigned long index;
>   	u32 id = 0;
>   	int ret;
>   
> -	if (!fence)
> -		return 0;
> -
>   	/* Deduplicate if we already depend on a fence from the same context.
>   	 * This lets the size of the array of deps scale with the number of
>   	 * engines involved, rather than the number of BOs.
>   	 */
>   	xa_for_each(&job->dependencies, index, entry) {
>   		if (entry->context != fence->context)
>   			continue;
>   
>   		if (dma_fence_is_later(fence, entry)) {
>   			dma_fence_put(entry);
> @@ -709,20 +696,46 @@ int drm_sched_job_add_dependency(struct drm_sched_job *job,
>   		}
>   		return 0;
>   	}
>   
>   	ret = xa_alloc(&job->dependencies, &id, fence, xa_limit_32b, GFP_KERNEL);
>   	if (ret != 0)
>   		dma_fence_put(fence);
>   
>   	return ret;
>   }
> +
> +/**
> + * drm_sched_job_add_dependency - adds the fence as a job dependency
> + * @job: scheduler job to add the dependencies to
> + * @fence: the dma_fence to add to the list of dependencies.
> + *
> + * Note that @fence is consumed in both the success and error cases.
> + *
> + * Returns:
> + * 0 on success, or an error on failing to expand the array.
> + */
> +int drm_sched_job_add_dependency(struct drm_sched_job *job,
> +				 struct dma_fence *fence)

Maybe name the new function drm_sched_job_unwrap_add_dependency or 
something like this.

I need to double check, but I think for some cases we don't need or 
don't even want this in the driver.

Christian.

> +{
> +	struct dma_fence_unwrap iter;
> +	struct dma_fence *f;
> +	int ret = 0;
> +
> +	dma_fence_unwrap_for_each (f, &iter, fence) {
> +		ret = _add_dependency(job, f);
> +		if (ret)
> +			break;
> +	}
> +
> +	return ret;
> +}
>   EXPORT_SYMBOL(drm_sched_job_add_dependency);
>   
>   /**
>    * drm_sched_job_add_resv_dependencies - add all fences from the resv to the job
>    * @job: scheduler job to add the dependencies to
>    * @resv: the dma_resv object to get the fences from
>    * @usage: the dma_resv_usage to use to filter the fences
>    *
>    * This adds all fences matching the given usage from @resv to @job.
>    * Must be called with the @resv lock held.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
