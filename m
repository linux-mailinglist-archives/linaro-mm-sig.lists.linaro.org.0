Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A82EA6A95F1
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 12:21:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8D3073EF22
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 11:21:46 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id 969833EA17
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 11:21:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=fXtPRwZe;
	spf=none (lists.linaro.org: domain of andi.shyti@linux.intel.com has no SPF policy when checking 192.55.52.43) smtp.mailfrom=andi.shyti@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677842487; x=1709378487;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=xIS4YXxfvhSvuWWlxBQDqx765nVMX13XptcoF4Uarg8=;
  b=fXtPRwZeHpYpGvxnzir2DMbmi/Siu374uZnF5qiL46Bl1swmC06yaPyJ
   QmowWGaw1lYxqjSOLqQM/RJAJmhwanHHoWUoCil3vWxaKJJLtqudbkCfU
   pztsRZztjSSO0XSzTPhqMxxCHVolg6m1Ux/q9pqV6bfdx3E8cAbKwkxes
   qjRasq6hfC0mPazvxJLJAkWJ/Fl3lq0V1ISwqPAU1MeizmcpLxoNa7hIL
   4mj7iWlLlH9+XbzZvZ60WLrEyluy6F6dUdYHl2IM4LE5CR0BuveB2uMVQ
   naDw1C1wBmg5bmrBtdWG7FXepnplXRLlm+8T7DRIniIHFs5n7UMGua0w7
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="421293854"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="421293854"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 03:21:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="799204882"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="799204882"
Received: from mavainol-mobl.ger.corp.intel.com (HELO intel.com) ([10.252.57.100])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 03:21:20 -0800
Date: Fri, 3 Mar 2023 12:21:17 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZAHYLUAf2e4PyRdT@ashyti-mobl2.lan>
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com>
 <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 969833EA17
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.30 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,chromium.org,lists.freedesktop.org,daenzer.net,vger.kernel.org,amd.com,lists.linaro.org,ffwll.ch,emersion.fr,linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
Message-ID-Hash: F5FJHL4B7UZIZ365GFILNSWDEEYMUHUK
X-Message-ID-Hash: F5FJHL4B7UZIZ365GFILNSWDEEYMUHUK
X-MailFrom: andi.shyti@linux.intel.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>, intel-gfx@lists.freedesktop.org, Michel =?iso-8859-15?Q?D=E4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Christian =?iso-8859-15?Q?K=F6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Simon Ser <contact@emersion.fr>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [Intel-gfx] [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F5FJHL4B7UZIZ365GFILNSWDEEYMUHUK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 03, 2023 at 09:58:36AM +0000, Tvrtko Ursulin wrote:
> 
> On 03/03/2023 03:21, Rodrigo Vivi wrote:
> > On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
> > > From: Rob Clark <robdclark@chromium.org>
> > > 
> > 
> > missing some wording here...
> > 
> > > v2: rebase
> > > 
> > > Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > ---
> > >   drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
> > >   1 file changed, 20 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > > index 7503dcb9043b..44491e7e214c 100644
> > > --- a/drivers/gpu/drm/i915/i915_request.c
> > > +++ b/drivers/gpu/drm/i915/i915_request.c
> > > @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dma_fence *fence)
> > >   	return i915_request_enable_breadcrumb(to_request(fence));
> > >   }
> > > +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_t deadline)
> > > +{
> > > +	struct i915_request *rq = to_request(fence);
> > > +
> > > +	if (i915_request_completed(rq))
> > > +		return;
> > > +
> > > +	if (i915_request_started(rq))
> > > +		return;
> > 
> > why do we skip the boost if already started?
> > don't we want to boost the freq anyway?
> 
> I'd wager Rob is just copying the current i915 wait boost logic.
> 
> > > +
> > > +	/*
> > > +	 * TODO something more clever for deadlines that are in the
> > > +	 * future.  I think probably track the nearest deadline in
> > > +	 * rq->timeline and set timer to trigger boost accordingly?
> > > +	 */
> > 
> > I'm afraid it will be very hard to find some heuristics of what's
> > late enough for the boost no?
> > I mean, how early to boost the freq on an upcoming deadline for the
> > timer?
> 
> We can off load this patch from Rob and deal with it separately, or after
> the fact?
> 
> It's a half solution without a smarter scheduler too. Like https://lore.kernel.org/all/20210208105236.28498-10-chris@chris-wilson.co.uk/,
> or if GuC plans to do something like that at any point.

Indeed, we already have the deadline implementation (and not just
that), we just need to have some willingness to apply it.

Andi

> Or bump the priority too if deadline is looming?
> 
> IMO it is not very effective to fiddle with the heuristic on an ad-hoc
> basis. For instance I have a new heuristics which improves the problematic
> OpenCL cases for further 5% (relative to the current waitboost improvement
> from adding missing syncobj waitboost). But I can't really test properly for
> regressions over platforms, stacks, workloads.. :(
> 
> Regards,
> 
> Tvrtko
> 
> > 
> > > +
> > > +	intel_rps_boost(rq);
> > > +}
> > > +
> > >   static signed long i915_fence_wait(struct dma_fence *fence,
> > >   				   bool interruptible,
> > >   				   signed long timeout)
> > > @@ -182,6 +201,7 @@ const struct dma_fence_ops i915_fence_ops = {
> > >   	.signaled = i915_fence_signaled,
> > >   	.wait = i915_fence_wait,
> > >   	.release = i915_fence_release,
> > > +	.set_deadline = i915_fence_set_deadline,
> > >   };
> > >   static void irq_execute_cb(struct irq_work *wrk)
> > > -- 
> > > 2.39.1
> > > 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
