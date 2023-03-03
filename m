Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA1E6A99CA
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 15:49:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 35EE43EF25
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 14:49:16 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	by lists.linaro.org (Postfix) with ESMTPS id 2BC153EC21
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 14:48:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=H8QbelVE;
	spf=pass (lists.linaro.org: domain of robdclark@gmail.com designates 209.85.167.182 as permitted sender) smtp.mailfrom=robdclark@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id r40so2003859oiw.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 03 Mar 2023 06:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677854936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=95fD1OMocm4n8bJJC6tFnFtkplpEQySvwjBizvI/Tpo=;
        b=H8QbelVEw4Vh8BarvpWGCoSzGSZZvuUsFbB+c82/q20vffUTswfFY2u+Tl0R3sXrbW
         cFKl8/7P2yLWoKR1UV5jhiJfMbPITDEreXyy3XUd3Bx+EePTrtoW9mrK6wscRkoJ+2aJ
         5fjoNNJzTeh5EoCDXG3GysgWY338xt4aBazpADFEOOpjcX08urE7ZuZGcrmHjRu/uNll
         6wekbPxRCxNR6/RU2Jo+llW1KSCE+U/RMRtNk1Bjv+Ogrl1ILAEF4/5YyQNmzXZeqBGb
         +m066zgXiE7fg+2WBqFBzKeXmpaWIPJHHVW6knXxmSiKugJXUMdzE/fK+fI6SYy+sDv7
         YpWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677854936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=95fD1OMocm4n8bJJC6tFnFtkplpEQySvwjBizvI/Tpo=;
        b=eawW8gXgcK10qoK8/S+udz3KG3x8nXsTCTtX+1Tu0mGsDuYIMi0pcy3LXMIW5j/ODX
         5s4YSGP/1iWYQsBwCER1sUkb+fZvld8c4o6BSNw2N2YjBfXJxQ9MAZbddo3XSPEgLdp4
         PUd9aPq5pNpwRnPkgWcb9qBUa4XRWAuoL/9u+3vAxzE5f4NDfuk1EIzdlqKxZ/aLBqik
         QCmZpD+9cE5N85DyZIEbPmZgYo/7y1JEh8jJ4LfhdwBRPSGOXadpxFzvyDYGoP89mupX
         uJvmzHG3CG4hm259iN80lMUG/LkBEOR8PxJyfmz54nhCSpPlBGcID8t7KTTt1AHLZ+3t
         psvA==
X-Gm-Message-State: AO0yUKXY2xuu5CXbWyPiaGjzJpP3pKDNIQgJEfeb20k5++HKw3313g3I
	3TF0sNdgAzu0oZbRGjZhcYVc+AtevaKumzRGEnE=
X-Google-Smtp-Source: AK7set+3e72I1aKOy6TuglUkJuSkxFy00dwwauEHhVb/G5t4QUiLGNGQh5N5d5lD2/Blvvsq/7AIUvcQeTiZih4TE1k=
X-Received: by 2002:a05:6808:354:b0:384:692c:56c9 with SMTP id
 j20-20020a056808035400b00384692c56c9mr624924oie.3.1677854936419; Fri, 03 Mar
 2023 06:48:56 -0800 (PST)
MIME-Version: 1.0
References: <20230302235356.3148279-1-robdclark@gmail.com> <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com> <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
In-Reply-To: <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 3 Mar 2023 06:48:43 -0800
Message-ID: <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2BC153EC21
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[209.85.167.182:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-0.998];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,amd.com,emersion.fr,chromium.org,linux.intel.com,linaro.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.182:from];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: ZZLGJWGHKJ6MFRIQH3NZMWMUVT5P4UCS
X-Message-ID-Hash: ZZLGJWGHKJ6MFRIQH3NZMWMUVT5P4UCS
X-MailFrom: robdclark@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Pekka Paalanen <ppaalanen@gmail.com>, Simon Ser <contact@emersion.fr>, Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Matt Turner <mattst88@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZZLGJWGHKJ6MFRIQH3NZMWMUVT5P4UCS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 3, 2023 at 1:58 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 03/03/2023 03:21, Rodrigo Vivi wrote:
> > On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
> >> From: Rob Clark <robdclark@chromium.org>
> >>
> >
> > missing some wording here...
> >
> >> v2: rebase
> >>
> >> Signed-off-by: Rob Clark <robdclark@chromium.org>
> >> ---
> >>   drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
> >>   1 file changed, 20 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> >> index 7503dcb9043b..44491e7e214c 100644
> >> --- a/drivers/gpu/drm/i915/i915_request.c
> >> +++ b/drivers/gpu/drm/i915/i915_request.c
> >> @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
> >>      return i915_request_enable_breadcrumb(to_request(fence));
> >>   }
> >>
> >> +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> >> +{
> >> +    struct i915_request *rq = to_request(fence);
> >> +
> >> +    if (i915_request_completed(rq))
> >> +            return;
> >> +
> >> +    if (i915_request_started(rq))
> >> +            return;
> >
> > why do we skip the boost if already started?
> > don't we want to boost the freq anyway?
>
> I'd wager Rob is just copying the current i915 wait boost logic.

Yup, and probably incorrectly.. Matt reported fewer boosts/sec
compared to your RFC, this could be the bug

> >> +
> >> +    /*
> >> +     * TODO something more clever for deadlines that are in the
> >> +     * future.  I think probably track the nearest deadline in
> >> +     * rq->timeline and set timer to trigger boost accordingly?
> >> +     */
> >
> > I'm afraid it will be very hard to find some heuristics of what's
> > late enough for the boost no?
> > I mean, how early to boost the freq on an upcoming deadline for the
> > timer?
>
> We can off load this patch from Rob and deal with it separately, or
> after the fact?

That is completely my intention, I expect you to replace my i915 patch ;-)

Rough idea when everyone is happy with the core bits is to setup an
immutable branch without the driver specific patches, which could be
merged into drm-next and $driver-next and then each driver team can
add there own driver patches on top

BR,
-R

> It's a half solution without a smarter scheduler too. Like
> https://lore.kernel.org/all/20210208105236.28498-10-chris@chris-wilson.co.uk/,
> or if GuC plans to do something like that at any point.
>
> Or bump the priority too if deadline is looming?
>
> IMO it is not very effective to fiddle with the heuristic on an ad-hoc
> basis. For instance I have a new heuristics which improves the
> problematic OpenCL cases for further 5% (relative to the current
> waitboost improvement from adding missing syncobj waitboost). But I
> can't really test properly for regressions over platforms, stacks,
> workloads.. :(
>
> Regards,
>
> Tvrtko
>
> >
> >> +
> >> +    intel_rps_boost(rq);
> >> +}
> >> +
> >>   static signed long i915_fence_wait(struct dma_fence *fence,
> >>                                 bool interruptible,
> >>                                 signed long timeout)
> >> @@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
> >>      .signaled = i915_fence_signaled,
> >>      .wait = i915_fence_wait,
> >>      .release = i915_fence_release,
> >> +    .set_deadline = i915_fence_set_deadline,
> >>   };
> >>
> >>   static void irq_execute_cb(struct irq_work *wrk)
> >> --
> >> 2.39.1
> >>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
