Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2D16D7E1C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 15:53:00 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E4BD73F90A
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 13:52:59 +0000 (UTC)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by lists.linaro.org (Postfix) with ESMTPS id 801273EE12
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 13:52:48 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=P+Lx3ar4;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.46) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-4fd1f2a0f82so56340a12.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 06:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680702767; x=1683294767;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gXtQjGw17H5KOM9fCmdg0BPHMgZVeRXg+E6JWWNf2fI=;
        b=P+Lx3ar4PUX0HJk98OXE7iFGrn7nhB+lYPUC8wXGiqKRy6S70N3Ng45OxWoAGkfH1s
         bNGpklNDiWeffGTYk5+TLlWg/ifLkO87VVaScR4HmPnJwhm+ZkQqXXkQwIS1t6bm72zP
         mSLYN71g8EKZQ6qxtP5GskYiCOT405XyL84Mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680702767; x=1683294767;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gXtQjGw17H5KOM9fCmdg0BPHMgZVeRXg+E6JWWNf2fI=;
        b=rZw8vmuNVkwzekVPSfzKjIkndyjdzhiH7GYrVj5+iNSkCvwXh2kYsdDlkZ6cscanIN
         ZtF0ToJyN7gCH4KYTeY+VYSoxYjmAB6eYTw2qiRUjdTfK+ipOS33v00muUgB12euLYu3
         VBQACBo74px6YhL3RQZEbeBPzgegHanwHBRIi6Id+MuXMgOnMsCyt84g3abLrMudzkSA
         qJ/uabDq25lwTswn3BtHoeHsx1Txa/z85V1Hip8IXNYVbGhRATwfkchWIbeAqkt+DAC+
         XpThPo+m7VkQA+roGkxqulhRu9Sny1PbiIjan3TPoiKhgNvLWz4kPGBobnYTWQvMjJAY
         yyCA==
X-Gm-Message-State: AAQBX9dv8/DLx8cpDGX0YZZpaXt4ewZPXdITZZ0v8x2NIR5HbnKBna1z
	ZUU2KYN2e3FIe4iBFLqsSWHDkg==
X-Google-Smtp-Source: AKy350YRt7QlO0W2+ZPyrVbabYLe9e11BeFrLSx/MNYzH+68ns/TWKRF8HkPS+0QYOxACPnonTzaJA==
X-Received: by 2002:a05:6402:524e:b0:4fd:2978:d80 with SMTP id t14-20020a056402524e00b004fd29780d80mr2100686edd.1.1680702767368;
        Wed, 05 Apr 2023 06:52:47 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id ee55-20020a056402293700b004aef147add6sm7218800edb.47.2023.04.05.06.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 06:52:46 -0700 (PDT)
Date: Wed, 5 Apr 2023 15:52:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZC19LIsNlhFC+7ME@phenom.ffwll.local>
Mail-Followup-To: Asahi Lina <lina@asahilina.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Miguel Ojeda <ojeda@kernel.org>,
	Alex Gaynor <alex.gaynor@gmail.com>,
	Wedson Almeida Filho <wedsonaf@gmail.com>,
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
	=?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Luben Tuikov <luben.tuikov@amd.com>,
	Jarkko Sakkinen <jarkko@kernel.org>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Karol Herbst <kherbst@redhat.com>,
	Ella Stanforth <ella@iglunix.org>,
	Faith Ekstrand <faith.ekstrand@collabora.com>,
	Mary <mary@mary.zone>, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org,
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
	linux-sgx@vger.kernel.org, asahi@lists.linux.dev
References: <20230307-rust-drm-v1-0-917ff5bc80a8@asahilina.net>
 <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-11-917ff5bc80a8@asahilina.net>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 801273EE12
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.80 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[29];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.208.46:from];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.46:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ODVUSKVNNTK54U74OAOA2B56QBSLURFC
X-Message-ID-Hash: ODVUSKVNNTK54U74OAOA2B56QBSLURFC
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 11/18] drm/scheduler: Clean up jobs when the scheduler is torn down
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ODVUSKVNNTK54U74OAOA2B56QBSLURFC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:36PM +0900, Asahi Lina wrote:
> drm_sched_fini() currently leaves any pending jobs dangling, which
> causes segfaults and other badness when job completion fences are
> signaled after the scheduler is torn down.
> 
> Explicitly detach all jobs from their completion callbacks and free
> them. This makes it possible to write a sensible safe abstraction for
> drm_sched, without having to externally duplicate the tracking of
> in-flight jobs.
> 
> This shouldn't regress any existing drivers, since calling
> drm_sched_fini() with any pending jobs is broken and this change should
> be a no-op if there are no pending jobs.
> 
> Signed-off-by: Asahi Lina <lina@asahilina.net>
> ---
>  drivers/gpu/drm/scheduler/sched_main.c | 27 +++++++++++++++++++++++++--
>  1 file changed, 25 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index 5c0add2c7546..0aab1e0aebdd 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -1119,10 +1119,33 @@ EXPORT_SYMBOL(drm_sched_init);
>  void drm_sched_fini(struct drm_gpu_scheduler *sched)
>  {
>  	struct drm_sched_entity *s_entity;
> +	struct drm_sched_job *s_job, *tmp;
>  	int i;
>  
> -	if (sched->thread)
> -		kthread_stop(sched->thread);
> +	if (!sched->thread)
> +		return;
> +
> +	/*
> +	 * Stop the scheduler, detaching all jobs from their hardware callbacks
> +	 * and cleaning up complete jobs.
> +	 */
> +	drm_sched_stop(sched, NULL);
> +
> +	/*
> +	 * Iterate through the pending job list and free all jobs.
> +	 * This assumes the driver has either guaranteed jobs are already stopped, or that
> +	 * otherwise it is responsible for keeping any necessary data structures for
> +	 * in-progress jobs alive even when the free_job() callback is called early (e.g. by
> +	 * putting them in its own queue or doing its own refcounting).
> +	 */

This comment makes me wonder whether we shouldn't go one step further and
have a drm_sched_quiescent, which waits for any in-flight jobs to complete
and cancels everything else. Because even if rust guarantees that you
don't have any memory bugs, if you just leak things by sprinkling
reference-counted pointer wrappers everywhere you still have a semantic
bug.

Except now it's much harder to realize that because there's no Oops and
KASAN doesn't tell you about it either. I think it would be much better if
the scheduler code and rust abstraction provider drivers the correct
lifetimes and very strongly encourage them to only have borrowed
references and not additional refcounting of their own.

I think Christian mentioned that this would block in close() or context
destruction, which is no good at all. And with the 1:1
drm_scheduler:drm_sched_entity design for there's no other place. This is
way I've suggested in the Xe threads that we should make the current
drm_scheduler an implementation detail hidden from drivers, with a new
drm_scheduler which is always per-engine for all cases as the driver api
interface.  And the internal scheduler attached to either that (for
current drivers) or drm_sched_entity (for fw scheduling drivers) as
needed. With that
- the sched_entity cleanup could take care of this code here for the fw
  scheduler case
- the drm_sched_fini could take care of blocking appropriately before the
  driver is unloaded for any lagging in-flight jobs, without blocking
  userspace
- drivers should not end up with any need to reference-count either
  per-ctx/drm_sched_entity or per-drm_sched_job data, ever

Because any comment that's along the lines of "drivers need to refcount"
is bad business, because it either means leaks (rust) or crashes (C). I
much prefer when drivers have to put in extra effort to get things wrong
because by default the lifetimes are Just Right(tm).
-Daniel

> +	list_for_each_entry_safe(s_job, tmp, &sched->pending_list, list) {
> +		spin_lock(&sched->job_list_lock);
> +		list_del_init(&s_job->list);
> +		spin_unlock(&sched->job_list_lock);
> +		sched->ops->free_job(s_job);
> +	}
> +
> +	kthread_stop(sched->thread);
>  
>  	for (i = DRM_SCHED_PRIORITY_COUNT - 1; i >= DRM_SCHED_PRIORITY_MIN; i--) {
>  		struct drm_sched_rq *rq = &sched->sched_rq[i];
> 
> -- 
> 2.35.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
