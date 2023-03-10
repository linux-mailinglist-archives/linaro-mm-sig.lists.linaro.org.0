Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DCD6BBAF0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 18:32:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF43F3F32B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Mar 2023 17:32:21 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	by lists.linaro.org (Postfix) with ESMTPS id 4F3893F0BD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 15:45:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=VEz9ohMu;
	spf=pass (lists.linaro.org: domain of jadahl@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=jadahl@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id t11so7173884lfr.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Mar 2023 07:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678463158;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0AGkxAlBYXX/Z2S16SKpXnZXTnF2Z5IaHkyIEFDi/ME=;
        b=VEz9ohMuno+DEbnSf4WW21JokIcYlbj2EJU+8DEQSOSi0Pxfjd/6xLH4vNXSRGf9H0
         QZk4achaOlWOedHmxfWjYy1PR1i0E0QqIsZw/WPEmk2P7oHhvff5Y/Kmg2fFAnUkp592
         n81tWygRoF+b95Cr24Cb4ekDWujuXuSuFD1R66txhW5gLTx7SqLRdvqX+WRBfubTlpxs
         f+9yWFImjDIKgevYqYHwKEhE1gaKHcX/hKoT2UoS1Q057myCAjZJ8ELiRR4rBAQqO37Y
         sUy4hJH29SPxhN1ww9RmweIrZUpizpLXeA8Z6mQbrlmZpX+IIL8rZbRGO28KpDrdIMid
         bnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678463158;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0AGkxAlBYXX/Z2S16SKpXnZXTnF2Z5IaHkyIEFDi/ME=;
        b=CNPRhCze+6fW2fLq5Kyn+R9ZUYjgsPZz0pTQsmcBaLSsiF7UOEHdSae2NY8SBwAhbC
         ZX1Fxh87+GQpFQy+mvOZJ8PJgpsN0XK1AXiL49xpHBr5TcAjbWVn4SAo5Phk2+v4i1hh
         DiVW4vn5tpD6XQSTqY4qysd+LrrO0B3Vj5NRbtX2c8ePkADjM9EvmgL0u1HdoMqUJemA
         c6Wye7KdZ1eJdJTLp0MRBET4hTM/qLJo84Yh05FD8+PVpyiRGHoQPvn1kEg3pUFnJ4gL
         6Ktma5KchpbITcNM+HAOHDcPEy3EV8LeXSUxrLlYSwygq3SuTAfZLdTq/3Kxxf/J4mZ/
         qulw==
X-Gm-Message-State: AO0yUKVoZG6QVjswNHc/EEZUbg3aYpJmVV8zc7dBV8FguuADldlCqADi
	gT0WdFpxpFOqFSVURYplkc4=
X-Google-Smtp-Source: AK7set8SLblBVupI+yVdlPp0ni+W1a7WVdI12StisJp4d6ODMGYLfW8aS9MEVe4/AXMoJXkFELJQ6A==
X-Received: by 2002:ac2:5238:0:b0:4d8:6e26:c74c with SMTP id i24-20020ac25238000000b004d86e26c74cmr7520718lfl.53.1678463157768;
        Fri, 10 Mar 2023 07:45:57 -0800 (PST)
Received: from gmail.com (host-95-193-64-255.mobileonline.telia.com. [95.193.64.255])
        by smtp.gmail.com with ESMTPSA id q11-20020a19a40b000000b004a6f66eed7fsm24181lfc.165.2023.03.10.07.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 07:45:57 -0800 (PST)
Date: Fri, 10 Mar 2023 16:45:54 +0100
From: Jonas =?iso-8859-1?Q?=C5dahl?= <jadahl@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <ZAtQspuFjPtGy7ze@gmail.com>
References: <20230308155322.344664-1-robdclark@gmail.com>
 <20230308155322.344664-2-robdclark@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230308155322.344664-2-robdclark@gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 4F3893F0BD
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[amd.com:email];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.42:from];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,chromium.org,collabora.com,lwn.net,gmail.com,vger.kernel.org,linaro.org,lists.linaro.org,amd.com,intel.com,padovan.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: jadahl@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BMDDASSEFCKBREPA4XSWROSEJVWUFAZR
X-Message-ID-Hash: BMDDASSEFCKBREPA4XSWROSEJVWUFAZR
X-Mailman-Approved-At: Wed, 15 Mar 2023 17:25:05 +0000
CC: dri-devel@lists.freedesktop.org, Rob Clark <robdclark@chromium.org>, Pekka Paalanen <pekka.paalanen@collabora.com>, Jonathan Corbet <corbet@lwn.net>, intel-gfx@lists.freedesktop.org, "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Bagas Sanjaya <bagasdotme@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Gustavo Padovan <gustavo@padovan.org>, Matt Turner <mattst88@gmail.com>, freedreno@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 01/15] dma-buf/dma-fence: Add deadline awareness
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BMDDASSEFCKBREPA4XSWROSEJVWUFAZR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 08, 2023 at 07:52:52AM -0800, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
>=20
> Add a way to hint to the fence signaler of an upcoming deadline, such as
> vblank, which the fence waiter would prefer not to miss.  This is to aid
> the fence signaler in making power management decisions, like boosting
> frequency as the deadline approaches and awareness of missing deadlines
> so that can be factored in to the frequency scaling.
>=20
> v2: Drop dma_fence::deadline and related logic to filter duplicate
>     deadlines, to avoid increasing dma_fence size.  The fence-context
>     implementation will need similar logic to track deadlines of all
>     the fences on the same timeline.  [ckoenig]
> v3: Clarify locking wrt. set_deadline callback
> v4: Clarify in docs comment that this is a hint
> v5: Drop DMA_FENCE_FLAG_HAS_DEADLINE_BIT.
> v6: More docs
> v7: Fix typo, clarify past deadlines
>=20
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
> Acked-by: Pekka Paalanen <pekka.paalanen@collabora.com>
> Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>
> ---

Hi Rob!

>  Documentation/driver-api/dma-buf.rst |  6 +++
>  drivers/dma-buf/dma-fence.c          | 59 ++++++++++++++++++++++++++++
>  include/linux/dma-fence.h            | 22 +++++++++++
>  3 files changed, 87 insertions(+)
>=20
> diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/driver-=
api/dma-buf.rst
> index 622b8156d212..183e480d8cea 100644
> --- a/Documentation/driver-api/dma-buf.rst
> +++ b/Documentation/driver-api/dma-buf.rst
> @@ -164,6 +164,12 @@ DMA Fence Signalling Annotations
>  .. kernel-doc:: drivers/dma-buf/dma-fence.c
>     :doc: fence signalling annotation
> =20
> +DMA Fence Deadline Hints
> +~~~~~~~~~~~~~~~~~~~~~~~~
> +
> +.. kernel-doc:: drivers/dma-buf/dma-fence.c
> +   :doc: deadline hints
> +
>  DMA Fences Functions Reference
>  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> =20
> diff --git a/drivers/dma-buf/dma-fence.c b/drivers/dma-buf/dma-fence.c
> index 0de0482cd36e..f177c56269bb 100644
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -912,6 +912,65 @@ dma_fence_wait_any_timeout(struct dma_fence **fences=
, uint32_t count,
>  }
>  EXPORT_SYMBOL(dma_fence_wait_any_timeout);
> =20
> +/**
> + * DOC: deadline hints
> + *
> + * In an ideal world, it would be possible to pipeline a workload suffic=
iently
> + * that a utilization based device frequency governor could arrive at a =
minimum
> + * frequency that meets the requirements of the use-case, in order to mi=
nimize
> + * power consumption.  But in the real world there are many workloads wh=
ich
> + * defy this ideal.  For example, but not limited to:
> + *
> + * * Workloads that ping-pong between device and CPU, with alternating p=
eriods
> + *   of CPU waiting for device, and device waiting on CPU.  This can res=
ult in
> + *   devfreq and cpufreq seeing idle time in their respective domains an=
d in
> + *   result reduce frequency.
> + *
> + * * Workloads that interact with a periodic time based deadline, such a=
s double
> + *   buffered GPU rendering vs vblank sync'd page flipping.  In this sce=
nario,
> + *   missing a vblank deadline results in an *increase* in idle time on =
the GPU
> + *   (since it has to wait an additional vblank period), sending a signa=
l to
> + *   the GPU's devfreq to reduce frequency, when in fact the opposite is=
 what is
> + *   needed.

This is the use case I'd like to get some better understanding about how
this series intends to work, as the problematic scheduling behavior
triggered by missed deadlines has plagued compositing display servers
for a long time.

I apologize, I'm not a GPU driver developer, nor an OpenGL driver
developer, so I will need some hand holding when it comes to
understanding exactly what piece of software is responsible for
communicating what piece of information.

> + *
> + * To this end, deadline hint(s) can be set on a &dma_fence via &dma_fen=
ce_set_deadline.
> + * The deadline hint provides a way for the waiting driver, or userspace=
, to
> + * convey an appropriate sense of urgency to the signaling driver.
> + *
> + * A deadline hint is given in absolute ktime (CLOCK_MONOTONIC for users=
pace
> + * facing APIs).  The time could either be some point in the future (suc=
h as
> + * the vblank based deadline for page-flipping, or the start of a compos=
itor's
> + * composition cycle), or the current time to indicate an immediate dead=
line
> + * hint (Ie. forward progress cannot be made until this fence is signale=
d).

Is it guaranteed that a GPU driver will use the actual start of the
vblank as the effective deadline? I have some memories of seing
something about vblank evasion browsing driver code, which I might have
misunderstood, but I have yet to find whether this is something
userspace can actually expect to be something it can rely on.

Can userspace set a deadline that targets the next vblank deadline
before GPU work has been flushed e.g. at the start of a paint cycle, and
still be sure that the kernel has the information it needs to know it should
make its clocks increase their speed in time for when the actual work
has been actually flushed? Or is it needed that the this deadline is set
at the end?

What I'm more or less trying to ask is, will a mode setting compositor
be able to tell the kernel to boost its clocks at the time it knows is
best, and how will it in practice achieve this?

For example relying on the atomic mode setting commit setting the
deadline is fundamentally flawed, since user space will at times want to
purposefully delay committing until as late as possible, without doing
so causing an increased risk of missing the deadline due to the kernel
not speeding up clocks at the right time for GPU work that has already
been flushed long ago.

Relying on commits also has no effect on GPU work queued by
a compositor drawing only to dma-bufs that are never intended to be
presented using mode setting. How can we make sure a compositor can
provide hints that the kernel will know to respect despite the
compositor not being drm master?


Jonas

> + *
> + * Multiple deadlines may be set on a given fence, even in parallel.  Se=
e the
> + * documentation for &dma_fence_ops.set_deadline.
> + *
> + * The deadline hint is just that, a hint.  The driver that created the =
fence
> + * may react by increasing frequency, making different scheduling choice=
s, etc.
> + * Or doing nothing at all.
> + */
> +
> +/**
> + * dma_fence_set_deadline - set desired fence-wait deadline hint
> + * @fence:    the fence that is to be waited on
> + * @deadline: the time by which the waiter hopes for the fence to be
> + *            signaled
> + *
> + * Give the fence signaler a hint about an upcoming deadline, such as
> + * vblank, by which point the waiter would prefer the fence to be
> + * signaled by.  This is intended to give feedback to the fence signaler
> + * to aid in power management decisions, such as boosting GPU frequency
> + * if a periodic vblank deadline is approaching but the fence is not
> + * yet signaled..
> + */
> +void dma_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> +{
> +	if (fence->ops->set_deadline && !dma_fence_is_signaled(fence))
> +		fence->ops->set_deadline(fence, deadline);
> +}
> +EXPORT_SYMBOL(dma_fence_set_deadline);
> +
>  /**
>   * dma_fence_describe - Dump fence describtion into seq_file
>   * @fence: the 6fence to describe
> diff --git a/include/linux/dma-fence.h b/include/linux/dma-fence.h
> index 775cdc0b4f24..d54b595a0fe0 100644
> --- a/include/linux/dma-fence.h
> +++ b/include/linux/dma-fence.h
> @@ -257,6 +257,26 @@ struct dma_fence_ops {
>  	 */
>  	void (*timeline_value_str)(struct dma_fence *fence,
>  				   char *str, int size);
> +
> +	/**
> +	 * @set_deadline:
> +	 *
> +	 * Callback to allow a fence waiter to inform the fence signaler of
> +	 * an upcoming deadline, such as vblank, by which point the waiter
> +	 * would prefer the fence to be signaled by.  This is intended to
> +	 * give feedback to the fence signaler to aid in power management
> +	 * decisions, such as boosting GPU frequency.
> +	 *
> +	 * This is called without &dma_fence.lock held, it can be called
> +	 * multiple times and from any context.  Locking is up to the callee
> +	 * if it has some state to manage.  If multiple deadlines are set,
> +	 * the expectation is to track the soonest one.  If the deadline is
> +	 * before the current time, it should be interpreted as an immediate
> +	 * deadline.
> +	 *
> +	 * This callback is optional.
> +	 */
> +	void (*set_deadline)(struct dma_fence *fence, ktime_t deadline);
>  };
> =20
>  void dma_fence_init(struct dma_fence *fence, const struct dma_fence_ops =
*ops,
> @@ -583,6 +603,8 @@ static inline signed long dma_fence_wait(struct dma_f=
ence *fence, bool intr)
>  	return ret < 0 ? ret : 0;
>  }
> =20
> +void dma_fence_set_deadline(struct dma_fence *fence, ktime_t deadline);
> +
>  struct dma_fence *dma_fence_get_stub(void);
>  struct dma_fence *dma_fence_allocate_private_stub(void);
>  u64 dma_fence_context_alloc(unsigned num);
> --=20
> 2.39.2
>=20
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
