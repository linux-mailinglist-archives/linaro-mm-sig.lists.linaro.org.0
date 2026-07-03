Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 24tYIMOcR2oJcQAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 13:28:03 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A7914701D6D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 03 Jul 2026 13:28:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=ursulin.net header.s=google header.b=j7ZPJoNd;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org"
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B819E406AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Jul 2026 11:28:01 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by lists.linaro.org (Postfix) with ESMTPS id 07468400F5
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Jul 2026 11:27:42 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4938d5f86f3so3435265e9.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Jul 2026 04:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ursulin.net; s=google; t=1783078061; x=1783682861; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OuAm8vdkodpohgIaaoCfMJWpUHZMR+Yb1vVl/12/bjU=;
        b=j7ZPJoNdfxYJiTibuPuIsxsKNfBcVTWDMSs61KzT3c0P2Ec10Jn8DnIjuA06HJEMkP
         QADOtsmt3DphLO3mP6feyAZZBqSu5/6Ni3rKy2fHtAODN7IJg2AutY3Xw99p+qLReUps
         Iv40h3F8p+zgTw6iT79bRoJ2nLMqtrOiz3xA2AQ4Q7fn9ecDse4xVV/VVXbPsbLRszhI
         gSfXN2KD9CwwMVVFyFtIJNtdH6cHIA6tyiwUtM1sW1/EWX5yx0SJoPt9OXgayW6Z6kRX
         YpBVUc76nsCmD1hTSa85K4PlWdo9XuzYsNlsF4rznyP+j0Ap00AXODom+B5RYUu7Otod
         tc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783078061; x=1783682861;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OuAm8vdkodpohgIaaoCfMJWpUHZMR+Yb1vVl/12/bjU=;
        b=eKPdpzTmTWVtEFdOR+sRTVYiKvOEvGD+EmP/s15HvU4MlHoxjhc/j+3AY0zrWoPAcr
         We3g2sI1pThlwft4MxBK7xwtFanutqMtIsP3qO+jhjRgGMrzVM65bCxJ0hgcmGNQHG6c
         QD9R0xBfiDrdW+D7GswVRwYbRnxA8Xtf9NgZdvn07VLcKwhyTYQ3ZkI6jy5TwB23keb9
         NeIb1EFPDC03XIfOetqF2/tAisigYrBcxW5NzZJ/NYqWxDsmL/GsDJB1U2VXxWbYC9yc
         pABxbmx3BJIRLJIfVEh8Tm32S/d99yeo5nbFpmsLBrbf10upSKY9+zokJ1AKPl8QA/HP
         98wg==
X-Forwarded-Encrypted: i=1; AFNElJ8qn1Y4X/LpRZhGJt3hwRnoKkpQD/YqmYZ3dBVK5DSLli+5W59LsNS11aPkGRm3rnJNCS04NYPm/H2W1QjF@lists.linaro.org
X-Gm-Message-State: AOJu0YyupSXzKX7mDOk1AhPY5c1Z0jHWGj1JTtnXSP0XddD7ypSsjXA/
	GuUwsfV1GzU3mqn8aQwLw6MV7dei5GGBnHlW71IsIQ9iBKP5q3NILEbEKTYCBbrqFac=
X-Gm-Gg: AfdE7cnLa17xaLZtBvsJ++BrPESvEUjIQV7p0zwf81NGOHwE1NducX7XhMkibaSTrmv
	UgROapoK9+smbqxphX0iSzmGv/sDVM5//cBoHE6bvlsVhh7lf9A+hLM8XdpEoUiPmpB5Q44WnC2
	YymiVqRPq2hHHlZ0iAtztBzbngeh7zlI6dGNAcDYDver+x6eViA2u9I1db6BEp1LnyzGmZuG0fl
	CoJHJv8/7MpNcwAVvraf00XS4Iclm8njwrbviTT/8Qa9JG3x2aLL3/VIhIwVYZmLsBYUIne8YoW
	qqsjkUEq4csGktkacj3HB+mOC52t/XL9Jo6T7HO0xKC7y9S5ba+fMZeFTWje1B2XI32d5WzR6lm
	zWDwrJHu9weojXF0v5HlonzJ9rPnlx0fVjmwgyZETzuM2uJL8FZ1O7w0b6B59mrYkCxqwn0rCV3
	wRt8BXJ+WZVjmDjHEiVqWY8FVcaWbugPznIQ==
X-Received: by 2002:a05:600c:4b23:b0:493:bc4a:e7d4 with SMTP id 5b1f17b1804b1-493c9d416d4mr31257795e9.19.1783078060493;
        Fri, 03 Jul 2026 04:27:40 -0700 (PDT)
Received: from [192.168.0.116] ([90.240.106.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477dde1a4fdsm18439490f8f.26.2026.07.03.04.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 04:27:40 -0700 (PDT)
Message-ID: <a4091099-1931-4ca2-a81a-9c3321b123a8@ursulin.net>
Date: Fri, 3 Jul 2026 12:27:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Philipp Stanner <phasta@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>, Danilo Krummrich <dakr@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, Marco Pagani
 <marco.pagani@linux.dev>, Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Boris Brezillon <boris.brezillon@collabora.com>
References: <20260701085920.3253248-2-phasta@kernel.org>
 <20260701085920.3253248-3-phasta@kernel.org>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260701085920.3253248-3-phasta@kernel.org>
X-Spamd-Bar: ---
Message-ID-Hash: SVEAHRJ3BYJTLG3IK4WPDVVA5JONIJLJ
X-Message-ID-Hash: SVEAHRJ3BYJTLG3IK4WPDVVA5JONIJLJ
X-MailFrom: tursulin@ursulin.net
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/5] drm/sched: Protect entity->last_scheduled with spinlock
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SVEAHRJ3BYJTLG3IK4WPDVVA5JONIJLJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[ursulin.net:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DMARC_NA(0.00)[ursulin.net];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:matthew.brost@intel.com,m:dakr@kernel.org,m:ckoenig.leichtzumerken@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:marco.pagani@linux.dev,m:tvrtko.ursulin@igalia.com,m:boris.brezillon@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:ckoenigleichtzumerken@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[kernel.org,intel.com,gmail.com,linux.intel.com,suse.de,ffwll.ch,linaro.org,linux.dev,igalia.com,collabora.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ursulin.net:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7914701D6D


On 01/07/2026 09:59, Philipp Stanner wrote:
> The entity->last_scheduled field has always been set and read with
> special RCU functions in addition to memory barriers.
> 
> This was added in
> 
> commit 70102d77ff22 ("drm/scheduler: add drm_sched_entity_error and use rcu for last_scheduled")
> 
> however, no proper justification for that mechanism was provided. There
> seems to be no obvious reason, since the entity lock is available and
> taken at all places that evaluate the last_scheduled field. The only
> exception is drm_sched_entity_error(), which is not performance critical
> in any way.
> 
> Improve robustness, readability and maintainability by replacing RCU and
> barriers with the lock.

First thing, and regardless of other strands of discussion, I think it 
should be squashed with 3/5 instead of that one undoing the introduction 
of lock-unlock-lock-unlock.

For what the main topic is concerned, I really like the removal of all 
the rcu_dereference_check(, true) lines and the memory barriers.

But I also think the commit message should explain better what code 
paths are now taking an extra lock - under which circumstances is the 
lock now taken for all scheduler users, and which amdgpu paths use 
drm_sched_entity_error() a lot so could be affected. I doubt it creates 
a measurable performance impact but it needs to be explained.

I am also happy to give it a spin on the Steam Deck to see if I can 
observe anything.

> Signed-off-by: Philipp Stanner <phasta@kernel.org>
> ---
>   drivers/gpu/drm/scheduler/sched_entity.c | 50 ++++++++++--------------
>   include/drm/gpu_scheduler.h              |  9 ++---
>   2 files changed, 25 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/scheduler/sched_entity.c b/drivers/gpu/drm/scheduler/sched_entity.c
> index c51101ec70c1..91aec20611ad 100644
> --- a/drivers/gpu/drm/scheduler/sched_entity.c
> +++ b/drivers/gpu/drm/scheduler/sched_entity.c
> @@ -135,7 +135,6 @@ int drm_sched_entity_init(struct drm_sched_entity *entity,
>   	entity->num_sched_list = num_sched_list;
>   	entity->sched_list = num_sched_list > 1 ? sched_list : NULL;
>   	entity->rq = &sched_list[0]->rq;
> -	RCU_INIT_POINTER(entity->last_scheduled, NULL);
>   	RB_CLEAR_NODE(&entity->rb_tree_node);
>   	init_completion(&entity->entity_idle);
>   
> @@ -201,10 +200,10 @@ int drm_sched_entity_error(struct drm_sched_entity *entity)
>   	struct dma_fence *fence;
>   	int r;
>   
> -	rcu_read_lock();
> -	fence = rcu_dereference(entity->last_scheduled);
> +	spin_lock(&entity->lock);
> +	fence = entity->last_scheduled;
>   	r = fence ? fence->error : 0;
> -	rcu_read_unlock();
> +	spin_unlock(&entity->lock);
>   
>   	return r;
>   }
> @@ -287,9 +286,10 @@ void drm_sched_entity_kill(struct drm_sched_entity *entity)
>   	/* Make sure this entity is not used by the scheduler at the moment */
>   	wait_for_completion(&entity->entity_idle);
>   
> -	/* The entity is guaranteed to not be used by the scheduler */
> -	prev = rcu_dereference_check(entity->last_scheduled, true);
> +	spin_lock(&entity->lock);
> +	prev = entity->last_scheduled;
>   	dma_fence_get(prev);
> +	spin_unlock(&entity->lock);
>   	while ((job = drm_sched_entity_queue_pop(entity))) {
>   		struct drm_sched_fence *s_fence = job->s_fence;
>   
> @@ -381,8 +381,7 @@ void drm_sched_entity_fini(struct drm_sched_entity *entity)
>   		entity->dependency = NULL;
>   	}
>   
> -	dma_fence_put(rcu_dereference_check(entity->last_scheduled, true));
> -	RCU_INIT_POINTER(entity->last_scheduled, NULL);
> +	dma_fence_put(entity->last_scheduled);
>   	drm_sched_entity_stats_put(entity->stats);
>   }
>   EXPORT_SYMBOL(drm_sched_entity_fini);
> @@ -507,6 +506,10 @@ drm_sched_job_dependency(struct drm_sched_job *job,
>   
>   struct drm_sched_job *drm_sched_entity_pop_job(struct drm_sched_entity *entity)
>   {
> +	/* Helper to avoid dropping the reference while the entity lock is held,
> +	 * just to have some more robustness.
> +	 */

I don't get this comment. Neither the placement or the content.

Regards,

Tvrtko

> +	struct dma_fence *prev_last_scheduled;
>   	struct drm_sched_job *sched_job;
>   
>   	sched_job = drm_sched_entity_queue_peek(entity);
> @@ -523,19 +526,14 @@ struct drm_sched_job *drm_sched_entity_pop_job(struct drm_sched_entity *entity)
>   	if (entity->guilty && atomic_read(entity->guilty))
>   		dma_fence_set_error(&sched_job->s_fence->finished, -ECANCELED);
>   
> -	dma_fence_put(rcu_dereference_check(entity->last_scheduled, true));
> -	rcu_assign_pointer(entity->last_scheduled,
> -			   dma_fence_get(&sched_job->s_fence->finished));
> -
> -	/*
> -	 * If the queue is empty we allow drm_sched_entity_select_rq() to
> -	 * locklessly access ->last_scheduled. This only works if we set the
> -	 * pointer before we dequeue and if we a write barrier here.
> -	 */
> -	smp_wmb();
> +	spin_lock(&entity->lock);
> +	prev_last_scheduled = entity->last_scheduled;
> +	entity->last_scheduled = dma_fence_get(&sched_job->s_fence->finished);
> +	spin_unlock(&entity->lock);
>   
>   	spsc_queue_pop(&entity->job_queue);
>   
> +	dma_fence_put(prev_last_scheduled);
>   	drm_sched_rq_pop_entity(entity);
>   
>   	/* Jobs and entities might have different lifecycles. Since we're
> @@ -561,21 +559,15 @@ void drm_sched_entity_select_rq(struct drm_sched_entity *entity)
>   	if (spsc_queue_count(&entity->job_queue))
>   		return;
>   
> -	/*
> -	 * Only when the queue is empty are we guaranteed that
> -	 * drm_sched_run_job_work() cannot change entity->last_scheduled. To
> -	 * enforce ordering we need a read barrier here. See
> -	 * drm_sched_entity_pop_job() for the other side.
> -	 */
> -	smp_rmb();
> -
> -	fence = rcu_dereference_check(entity->last_scheduled, true);
> +	spin_lock(&entity->lock);
> +	fence = entity->last_scheduled;
>   
>   	/* stay on the same engine if the previous job hasn't finished */
> -	if (fence && !dma_fence_is_signaled(fence))
> +	if (fence && !dma_fence_is_signaled(fence)) {
> +		spin_unlock(&entity->lock);
>   		return;
> +	}
>   
> -	spin_lock(&entity->lock);
>   	sched = drm_sched_pick_best(entity->sched_list, entity->num_sched_list);
>   	rq = sched ? &sched->rq : NULL;
>   	if (rq != entity->rq) {
> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> index d61c19e78182..176ff1f936cd 100644
> --- a/include/drm/gpu_scheduler.h
> +++ b/include/drm/gpu_scheduler.h
> @@ -100,7 +100,8 @@ struct drm_sched_entity {
>   	 * @lock:
>   	 *
>   	 * Lock protecting the run-queue (@rq) to which this entity belongs,
> -	 * @priority and the list of schedulers (@sched_list, @num_sched_list).
> +	 * @priority, @last_scheduled and the list of schedulers (@sched_list,
> +	 * @num_sched_list).
>   	 */
>   	spinlock_t			lock;
>   
> @@ -202,11 +203,9 @@ struct drm_sched_entity {
>   	/**
>   	 * @last_scheduled:
>   	 *
> -	 * Points to the finished fence of the last scheduled job. Only written
> -	 * by drm_sched_entity_pop_job(). Can be accessed locklessly from
> -	 * drm_sched_job_arm() if the queue is empty.
> +	 * Points to the finished fence of the last scheduled job.
>   	 */
> -	struct dma_fence __rcu		*last_scheduled;
> +	struct dma_fence		*last_scheduled;
>   
>   	/**
>   	 * @last_user: last group leader pushing a job into the entity.

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
