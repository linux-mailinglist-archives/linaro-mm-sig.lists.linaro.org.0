Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA2F6D7DE8
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 15:40:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6ABD13EE30
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Apr 2023 13:40:33 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by lists.linaro.org (Postfix) with ESMTPS id C7E0A3EE12
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Apr 2023 13:40:22 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=I5E2dILR;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.208.52) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5029d4d90fbso54153a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 05 Apr 2023 06:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1680702022; x=1683294022;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b9JAWiy7ir3X1MkEG4eNi/e4F+J8Za1YQw6cD7xkcWQ=;
        b=I5E2dILRk/qwr/JqR3XN+WpGsAtsDJaxeFQY1kUaSs0iN97G9an9tQIRfByNhSo3Fv
         Ff7L1Qa6nX+1WNgzPrDJCXNhBjfKdK+ltAGeuDGEIOao3yXMv9PbqZW75aBC3kcWfhHT
         GgTwkxsMaG6WpXcP3/tIq5SA+L5RLr7H0a6uQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680702022; x=1683294022;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b9JAWiy7ir3X1MkEG4eNi/e4F+J8Za1YQw6cD7xkcWQ=;
        b=C8BrYzpoOL711pvITNz7QnaFkhE/qcRif/KRwiv976Syzoi95+Z0O3lpXutgd9fSTo
         wIqAUWRW4Y6Q3+159ZESNFJCteMvGEMyKQMikfOWQEGDdLFMjhm65WUaaGXTHGSuYM9g
         67VfEfCTVvPPS6YXmyQTsLi7akZ2SgK9xJFI+5GZRUWksKBpRXu2l2fBAMGAQThQ3p3P
         2ZWDv0a+yiKXB2wMvMVZRtnsFs8C4Wl7JGr4FlOrI8C1clQnVx+o0iv5msj7LWF6xiRX
         +e6KoyfQW3IKq7a9pIFGsTTfqaGf9cWva7SQB/3umXxdxCTufvBJ5Q2foELKmR3ekge7
         BN4g==
X-Gm-Message-State: AAQBX9eyaK1fehkIP7ff+B32vzyOaP40so1JS51YifLM0aZzYSYQSoDP
	aURcVZjt5eZmoRom7QlqseJ7dA==
X-Google-Smtp-Source: AKy350b3xCy9gL5DOFrdll8pOoEph0xjt04z4AL+Sh79KZNLfnPVo8bTbbVanjj+1/+QMr0G8qmUvA==
X-Received: by 2002:a05:6402:4413:b0:502:1f7b:f0a6 with SMTP id y19-20020a056402441300b005021f7bf0a6mr2233711eda.0.1680702021702;
        Wed, 05 Apr 2023 06:40:21 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id s25-20020a50d499000000b005027dd7c403sm6937947edi.66.2023.04.05.06.40.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 06:40:21 -0700 (PDT)
Date: Wed, 5 Apr 2023 15:40:19 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Asahi Lina <lina@asahilina.net>
Message-ID: <ZC16Q8MhHEcutX1b@phenom.ffwll.local>
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
 <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230307-rust-drm-v1-10-917ff5bc80a8@asahilina.net>
X-Operating-System: Linux phenom 6.1.0-7-amd64
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C7E0A3EE12
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.30 / 15.00];
	DWL_DNSWL_HI(-3.50)[ffwll.ch:dkim];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	R_SPF_NA(0.00)[no SPF record];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,garyguo.net,protonmail.com,linaro.org,amd.com,rosenzweig.io,redhat.com,iglunix.org,collabora.com,mary.zone,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[29];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.52:from];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 5DTLE65XKNCBZXSNMVBXNROIBFENR5YV
X-Message-ID-Hash: 5DTLE65XKNCBZXSNMVBXNROIBFENR5YV
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?iso-8859-1?Q?Bj=F6rn?= Roy Baron <bjorn3_gh@protonmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Luben Tuikov <luben.tuikov@amd.com>, Jarkko Sakkinen <jarkko@kernel.org>, Dave Hansen <dave.hansen@linux.intel.com>, Alyssa Rosenzweig <alyssa@rosenzweig.io>, Karol Herbst <kherbst@redhat.com>, Ella Stanforth <ella@iglunix.org>, Faith Ekstrand <faith.ekstrand@collabora.com>, Mary <mary@mary.zone>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-sgx@vger.kernel.org, asah
 i@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 10/18] drm/scheduler: Add can_run_job callback
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5DTLE65XKNCBZXSNMVBXNROIBFENR5YV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Mar 07, 2023 at 11:25:35PM +0900, Asahi Lina wrote:
> Some hardware may require more complex resource utilization accounting
> than the simple job count supported by drm_sched internally. Add a
> can_run_job callback to allow drivers to implement more logic before
> deciding whether to run a GPU job.
> 
> Signed-off-by: Asahi Lina <lina@asahilina.net>

Ok scheduler rules, or trying to summarize the entire discussion:

dma_fence rules are very tricky. The two main chapters in the docs are

https://dri.freedesktop.org/docs/drm/driver-api/dma-buf.html?highlight=dma_buf#dma-fence-cross-driver-contract
https://dri.freedesktop.org/docs/drm/driver-api/dma-buf.html?highlight=dma_buf#indefinite-dma-fences

Unforutunately I don't think it's possible to check this at compile time,
thus far all we can do is validate at runtime. I've posted two patches for
this:

https://lore.kernel.org/dri-devel/20201023122216.2373294-17-daniel.vetter@ffwll.ch/
https://lore.kernel.org/dri-devel/20201023122216.2373294-20-daniel.vetter@ffwll.ch/

Unfortunately most drivers are buggy and get this completely wrong, so
realistically we'd need to make this a per-driver opt-out and annotate all
current drivers. Well except amdgpu is correct by now I think (they'd
still need to test that). And Rob Clark is working on patches to fix up
msm.

I think best here is if you work together with Rob to make sure these
annotations are mandatory for any rust drivers (I don't want new buggy
drivers at least). Would also be great to improve the kerneldoc for all
the driver hooks to explain these restrictions and link to the relevant
kerneldocs (there's also one for the dma_fence signalling annotations
which might be worth linking too).

I don't see any way to make this explicit in rust types, it's really only
something runtime tests (using lockdep) can catch. Somewhat disappointing.

For the other things discussed here:

- Option<Dma_Fence> as the return value for ->prepare_job makes sense to
  me.

- I don't see any way a driver can use ->can_run_job without breaking the
  above rules, that really doesn't sound like a good idea to me.

Cheers, Daniel

> ---
>  drivers/gpu/drm/scheduler/sched_main.c | 10 ++++++++++
>  include/drm/gpu_scheduler.h            |  8 ++++++++
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/scheduler/sched_main.c b/drivers/gpu/drm/scheduler/sched_main.c
> index 4e6ad6e122bc..5c0add2c7546 100644
> --- a/drivers/gpu/drm/scheduler/sched_main.c
> +++ b/drivers/gpu/drm/scheduler/sched_main.c
> @@ -1001,6 +1001,16 @@ static int drm_sched_main(void *param)
>  		if (!entity)
>  			continue;
>  
> +		if (sched->ops->can_run_job) {
> +			sched_job = to_drm_sched_job(spsc_queue_peek(&entity->job_queue));
> +			if (!sched_job) {
> +				complete_all(&entity->entity_idle);
> +				continue;
> +			}
> +			if (!sched->ops->can_run_job(sched_job))
> +				continue;
> +		}
> +
>  		sched_job = drm_sched_entity_pop_job(entity);
>  
>  		if (!sched_job) {
> diff --git a/include/drm/gpu_scheduler.h b/include/drm/gpu_scheduler.h
> index 9db9e5e504ee..bd89ea9507b9 100644
> --- a/include/drm/gpu_scheduler.h
> +++ b/include/drm/gpu_scheduler.h
> @@ -396,6 +396,14 @@ struct drm_sched_backend_ops {
>  	struct dma_fence *(*prepare_job)(struct drm_sched_job *sched_job,
>  					 struct drm_sched_entity *s_entity);
>  
> +	/**
> +	 * @can_run_job: Called before job execution to check whether the
> +	 * hardware is free enough to run the job.  This can be used to
> +	 * implement more complex hardware resource policies than the
> +	 * hw_submission limit.
> +	 */
> +	bool (*can_run_job)(struct drm_sched_job *sched_job);
> +
>  	/**
>           * @run_job: Called to execute the job once all of the dependencies
>           * have been resolved.  This may be called multiple times, if
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
