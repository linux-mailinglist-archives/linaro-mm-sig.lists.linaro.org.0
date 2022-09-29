Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C572C5EF809
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 16:53:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 87D933F4C4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Sep 2022 14:53:58 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lists.linaro.org (Postfix) with ESMTP id 8F9DF3ED8C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Sep 2022 14:53:33 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CEC591650;
	Thu, 29 Sep 2022 07:53:39 -0700 (PDT)
Received: from [10.1.38.20] (e122027.cambridge.arm.com [10.1.38.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 693D83F792;
	Thu, 29 Sep 2022 07:53:30 -0700 (PDT)
Message-ID: <e613a225-dabf-7e87-2624-a3244df8a877@arm.com>
Date: Thu, 29 Sep 2022 15:53:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-GB
To: Arvind Yadav <Arvind.Yadav@amd.com>, Christian.Koenig@amd.com,
 andrey.grodzovsky@amd.com, shashank.sharma@amd.com,
 amaranath.somalapuram@amd.com, Arunpravin.PaneerSelvam@amd.com,
 sumit.semwal@linaro.org, gustavo@padovan.org, airlied@linux.ie,
 daniel@ffwll.ch, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20220914164321.2156-1-Arvind.Yadav@amd.com>
 <20220914164321.2156-6-Arvind.Yadav@amd.com>
From: Steven Price <steven.price@arm.com>
In-Reply-To: <20220914164321.2156-6-Arvind.Yadav@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ----
X-Rspamd-Queue-Id: 8F9DF3ED8C
X-Spamd-Result: default: False [-4.20 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_IN_DNSWL_HI(-0.50)[217.140.110.172:from];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:217.140.96.0/20];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:28939, ipnet:217.140.110.0/24, country:GB];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of steven.price@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=steven.price@arm.com;
	dmarc=pass (policy=none) header.from=arm.com
Message-ID-Hash: X2JJ22CRCE2DQFEIWJHWVWJIIC46QXBH
X-Message-ID-Hash: X2JJ22CRCE2DQFEIWJHWVWJIIC46QXBH
X-MailFrom: steven.price@arm.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 5/6] drm/sched: Use parent fence instead of finished
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X2JJ22CRCE2DQFEIWJHWVWJIIC46QXBH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 14/09/2022 17:43, Arvind Yadav wrote:
> Using the parent fence instead of the finished fence
> to get the job status. This change is to avoid GPU
> scheduler timeout error which can cause GPU reset.

I'm able to reproduce crashes on Panfrost and I believe this commit is
the cause. Specifically it's possible for job->s_fence->parent to be NULL.

The underlying issue seems to involve drm_sched_resubmit_jobs_ext() - if
the run_jobs() callback returns an error it will set s_fence->parent to
NULL after signalling s_fence->finished:

> 		fence = sched->ops->run_job(s_job);
> 		i++;
> 
> 		if (IS_ERR_OR_NULL(fence)) {
> 			if (IS_ERR(fence))
> 				dma_fence_set_error(&s_fence->finished, PTR_ERR(fence));
> 
> 			s_job->s_fence->parent = NULL;

I don't understand the reasoning behind this change, but it doesn't seem
right to be using the parent fence when we have code which can be
setting that pointer to NULL.

Since I don't understand the reasoning my only suggestion is to revert
this patch (and potentially the dependent patch "dma-buf: Check status
of enable-signaling bit on debug"?).

Can anyone suggest a better fix?

Thanks,

Steve

> Signed-off-by: Arvind Yadav <Arvind.Yadav@amd.com>
> Reviewed-by: Andrey Grodzovsky <andrey.grodzovsky@amd.com>
> ---
> 
> changes in v1,v2 - Enable signaling for finished fence in sche_main()
> is removed
> 
> ---
>  drivers/gpu/drm/scheduler/sched_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index e0ab14e0fb6b..2ac28ad11432 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -829,7 +829,7 @@ drm_sched_get_cleanup_job(struct drm_gpu_scheduler *sched)
>  	job = list_first_entry_or_null(&sched->pending_list,
>  				       struct drm_sched_job, list);
>  
> -	if (job && dma_fence_is_signaled(&job->s_fence->finished)) {
> +	if (job && dma_fence_is_signaled(job->s_fence->parent)) {
>  		/* remove job from pending_list */
>  		list_del_init(&job->list);
>  
> @@ -841,7 +841,7 @@ drm_sched_get_cleanup_job(struct drm_gpu_scheduler *sched)
>  
>  		if (next) {
>  			next->s_fence->scheduled.timestamp =
> -				job->s_fence->finished.timestamp;
> +				job->s_fence->parent->timestamp;
>  			/* start TO timer for next job */
>  			drm_sched_start_timeout(sched);
>  		}

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
