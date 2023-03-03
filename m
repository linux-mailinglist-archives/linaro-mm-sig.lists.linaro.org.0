Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFE36A9A00
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 15:56:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DB5663EF2A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 14:56:45 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	by lists.linaro.org (Postfix) with ESMTPS id E50A53E896
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 14:56:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=ptzbIgpn;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.161.41 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oo1-f41.google.com with SMTP id bd3-20020a4aee03000000b00517affa07c0so459951oob.7
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 06:56:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677855386;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j/4RouuzL8ECEZl/Td7VxjLgxpMUQ1N2h9CsjJHqpzQ=;
        b=ptzbIgpn9x7yaYK4ePpO+ZiSffSoMq+TiyEeGrcUpgC7fYXaP6ADJzwM16U7GDuFde
         2sNuCnj5mqDCbKVfikxSVYdCGVKraZ4DZ+uWearU7e2hB6MXMEX4D2jZyhPOUkNK0SRc
         AEFCNSFlpnU9roEI1YW3jeaNZuUxUriGffS6kom2nqE2dkdadcnCSDwDuKbVUtAYNLWH
         gGM1utAcuu8tVAYEv5U2T1CGAHNp7OCVjKO2hd7BGJhpXgRXNagZv29COrKdt2rT+U3W
         Ij+Y+ru6fDRq+qeeIaa682wAPKXVFfGU7CcwPs3VBtsb9+C5pT4vEFVKjNGQUD2IZZFo
         Easg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677855386;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/4RouuzL8ECEZl/Td7VxjLgxpMUQ1N2h9CsjJHqpzQ=;
        b=xcOoTBq2Ue1rzVzUcCStkqcei3NZiwhJ88/qNHvuRenEIxguMocI63p5U6E/+Ifk94
         z9v/I8De9wazqX5Qcpjy1l2AC2yLKJIAkrBDDy9XNQYNr3uqB6ssPELqm5KmmGjrxzNv
         7HSz6EnR1rDdLGb52wHZLfIsgH5PcRFjpM8pP+4YyRptR9iW5cIux02UcLG6UT8KbrGk
         YFKkv1L3ckc4VFK4Pw2GqIl2oZ6r4H+dSugfFwN0jgLmZcUdcZIluGKSotruALyTN/F0
         ySL4ii/q1YB+ngv8eDRLrSiy8IWtIMq9TbvIFGzKfi3vM+uP4AMxbQK9biHZvzWpKoy9
         e0Mg==
X-Gm-Message-State: AO0yUKV6aDC6gqW+V911RJge0Gy/1Th8SEfN+ZyEUrSYZPvlLw7yulhK
	9LxALFGpub9wbHbD4bX3+vck8sjIdDQZRFkYWwg=
X-Google-Smtp-Source: AK7set9DozOLls/GqeNNYMtL9qqeRU16SuGiQ/es+hts/l4SEgNO+U56KdamwzBeKrgQ3qz4RsqVVO2+e9OtUlVXskE=
X-Received: by 2002:a4a:ae84:0:b0:525:270c:25e with SMTP id
 u4-20020a4aae84000000b00525270c025emr749593oon.1.1677855386220; Fri, 03 Mar
 2023 06:56:26 -0800 (PST)
MIME-Version: 1.0
References: <20230302235356.3148279-1-robdclark@gmail.com> <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com>
In-Reply-To: <ZAFnqbycMleLmRe9@intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 3 Mar 2023 06:56:15 -0800
Message-ID: <CAF6AEGvAR9BG+PxLZXhOP_YzAcujjfp5oL8SObppvQYxdFvuXQ@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E50A53E896
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.161.41:from];
	TAGGED_RCPT(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: MNEBO475U5LB46QSI32TRWDOXEBJMQUF
X-Message-ID-Hash: MNEBO475U5LB46QSI32TRWDOXEBJMQUF
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MNEBO475U5LB46QSI32TRWDOXEBJMQUF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 2, 2023 at 7:21 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
> > From: Rob Clark <robdclark@chromium.org>
> >
>
> missing some wording here...

the wording should be "Pls replace this patch, kthx" ;-)

>
> > v2: rebase
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 7503dcb9043b..44491e7e214c 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
> >       return i915_request_enable_breadcrumb(to_request(fence));
> >  }
> >
> > +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> > +{
> > +     struct i915_request *rq = to_request(fence);
> > +
> > +     if (i915_request_completed(rq))
> > +             return;
> > +
> > +     if (i915_request_started(rq))
> > +             return;
>
> why do we skip the boost if already started?
> don't we want to boost the freq anyway?
>
> > +
> > +     /*
> > +      * TODO something more clever for deadlines that are in the
> > +      * future.  I think probably track the nearest deadline in
> > +      * rq->timeline and set timer to trigger boost accordingly?
> > +      */
>
> I'm afraid it will be very hard to find some heuristics of what's
> late enough for the boost no?
> I mean, how early to boost the freq on an upcoming deadline for the
> timer?

So, from my understanding of i915 boosting, it applies more
specifically to a given request (vs msm which just bumps up the freq
until the next devfreq sampling period which then recalculates target
freq based on busy cycles and avg freq over the last sampling period).
For msm I just set a timer for 3ms before the deadline and boost if
the fence isn't signaled when the timer fires.  It is kinda impossible
to predict, even for userspace, how long a job will take to complete,
so the goal isn't really to finish the specified job by the deadline,
but instead to avoid devfreq landing at a local minimum (maximum?)

AFAIU what I _think_ would make sense for i915 is to do the same thing
you do if you miss a vblank pageflip deadline if the deadline passes
without the fence signaling.

BR,
-R

> > +
> > +     intel_rps_boost(rq);
> > +}
> > +
> >  static signed long i915_fence_wait(struct dma_fence *fence,
> >                                  bool interruptible,
> >                                  signed long timeout)
> > @@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
> >       .signaled = i915_fence_signaled,
> >       .wait = i915_fence_wait,
> >       .release = i915_fence_release,
> > +     .set_deadline = i915_fence_set_deadline,
> >  };
> >
> >  static void irq_execute_cb(struct irq_work *wrk)
> > --
> > 2.39.1
> >
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
