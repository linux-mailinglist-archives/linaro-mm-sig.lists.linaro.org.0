Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4887A6A9A11
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 16:00:32 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57DF13EF2A
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 15:00:31 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by lists.linaro.org (Postfix) with ESMTPS id D39843EA17
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 15:00:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=WRQ68Xo5;
	spf=none (lists.linaro.org: domain of ville.syrjala@linux.intel.com has no SPF policy when checking 192.55.52.151) smtp.mailfrom=ville.syrjala@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677855611; x=1709391611;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=aNNHDRDvXG9ASjCgwJ85IwtaQ6OKdjosypIMBKJPjJ8=;
  b=WRQ68Xo5ixpBVa1bdI5ojlznhfv+Go118DWeW8ngj5kxgxJ+18pWj+g/
   T/4COXJSdBp/IWI4SghyXF4oYhQ77kwHjjVf2j9ndcSaCCf/3nqKDDPlw
   ikKcGqbkEbbmXHkB7B+KijBlkA9gv7AV5qr+Q7d5zna5McgBb+PkWyZAm
   OOktNwRmiiKnJ7K2vIHqDXQOMMIUqFUrkhfTbnv10D5cul0ljNTGCluAk
   QfUsm+jvnL/ACQcbAkmr4v7rlDyJ8BSSEdCwuLMfk5Hoss2seJX9j+KSQ
   XEacsXz0tJOC0B1eZV9WwVKKaSSnA9wV0MCBX0a2myYs31+Plr7x2500Y
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="315458456"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="315458456"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 07:00:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="818495316"
X-IronPort-AV: E=Sophos;i="5.98,230,1673942400";
   d="scan'208";a="818495316"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
  by fmsmga001.fm.intel.com with SMTP; 03 Mar 2023 07:00:03 -0800
Received: by stinkbox (sSMTP sendmail emulation); Fri, 03 Mar 2023 17:00:03 +0200
Date: Fri, 3 Mar 2023 17:00:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <ZAILc/fxzBqLv1OF@intel.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com>
 <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
 <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
X-Patchwork-Hint: comment
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D39843EA17
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.59 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,lists.freedesktop.org,linaro.org,chromium.org,amd.com,gmail.com,daenzer.net,vger.kernel.org,lists.linaro.org,intel.com];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: V5EMWNCRQL3M657PPXZMOTTMKTPPNFH4
X-Message-ID-Hash: V5EMWNCRQL3M657PPXZMOTTMKTPPNFH4
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, Rob Clark <robdclark@chromium.org>, Luben Tuikov <luben.tuikov@amd.com>, Matt Turner <mattst88@gmail.com>, Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, intel-gfx@lists.freedesktop.org, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, open list <linux-kernel@vger.kernel.org>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5EMWNCRQL3M657PPXZMOTTMKTPPNFH4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 03, 2023 at 06:48:43AM -0800, Rob Clark wrote:
> On Fri, Mar 3, 2023 at 1:58 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
> >
> >
> > On 03/03/2023 03:21, Rodrigo Vivi wrote:
> > > On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
> > >> From: Rob Clark <robdclark@chromium.org>
> > >>
> > >
> > > missing some wording here...
> > >
> > >> v2: rebase
> > >>
> > >> Signed-off-by: Rob Clark <robdclark@chromium.org>
> > >> ---
> > >>   drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
> > >>   1 file changed, 20 insertions(+)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i=
915/i915_request.c
> > >> index 7503dcb9043b..44491e7e214c 100644
> > >> --- a/drivers/gpu/drm/i915/i915_request.c
> > >> +++ b/drivers/gpu/drm/i915/i915_request.c
> > >> @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct dm=
a_fence *fence)
> > >>      return i915_request_enable_breadcrumb(to_request(fence));
> > >>   }
> > >>
> > >> +static void i915_fence_set_deadline(struct dma_fence *fence, ktime_=
t deadline)
> > >> +{
> > >> +    struct i915_request *rq =3D to_request(fence);
> > >> +
> > >> +    if (i915_request_completed(rq))
> > >> +            return;
> > >> +
> > >> +    if (i915_request_started(rq))
> > >> +            return;
> > >
> > > why do we skip the boost if already started?
> > > don't we want to boost the freq anyway?
> >
> > I'd wager Rob is just copying the current i915 wait boost logic.
>=20
> Yup, and probably incorrectly.. Matt reported fewer boosts/sec
> compared to your RFC, this could be the bug

I don't think i915 calls drm_atomic_helper_wait_for_fences()
so that could explain something.

--=20
Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
