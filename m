Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C836A9A82
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 16:20:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 887673EF25
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  3 Mar 2023 15:20:33 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by lists.linaro.org (Postfix) with ESMTPS id C52573EEC4
	for <linaro-mm-sig@lists.linaro.org>; Fri,  3 Mar 2023 15:20:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b=Lp6Iboqp;
	spf=none (lists.linaro.org: domain of ville.syrjala@linux.intel.com has no SPF policy when checking 192.55.52.43) smtp.mailfrom=ville.syrjala@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1677856811; x=1709392811;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=jxfoKhZctFeAgg5bNNOJh9ngGIHvIiP4e7+MeSFwFSM=;
  b=Lp6IboqprKqQpXIgqGA9WkY07OX0vnCHOn/6twTUi/wA+JLkzUdIrLXF
   /vxzcnguc0uwx6B5EpVLrDSqOgb2Pcx1LCSz6NsZoe+1muRrKiRpwPoZ+
   y1PXuNBsHiIeNs5OSwW2XPr9i3Q1z7wSD7XQJEMOfJFv/5W50Lqu7nZpY
   9BiG+7p0CO2tR5k7RJAGZWAJme8NMVup57FgVj6VHSVkyBWZYfm/xGGeJ
   2/jcOSQJ6Qg4aL9pM1cXP2FVgroLrZM+FfZrc2LbQTLZdrMqOmr6WSOsP
   UsWnWUFTD+i3H7QyT/8ldBR/rswku8XjRNHvUIfDp4BonxMqkZ2/tSm3J
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="421336282"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400";
   d="scan'208";a="421336282"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2023 07:19:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="764457624"
X-IronPort-AV: E=Sophos;i="5.98,231,1673942400";
   d="scan'208";a="764457624"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
  by FMSMGA003.fm.intel.com with SMTP; 03 Mar 2023 07:19:40 -0800
Received: by stinkbox (sSMTP sendmail emulation); Fri, 03 Mar 2023 17:19:40 +0200
Date: Fri, 3 Mar 2023 17:19:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <ZAIQDBD+HPbQA5sr@intel.com>
References: <20230302235356.3148279-1-robdclark@gmail.com>
 <20230302235356.3148279-16-robdclark@gmail.com>
 <ZAFnqbycMleLmRe9@intel.com>
 <3bded9d7-9796-4a9b-7c11-aac994d4fdc6@linux.intel.com>
 <CAF6AEGs6QYTESuwB8E9cTbv9LqQX16tz6-geeu9BCyFos9=sOA@mail.gmail.com>
 <ZAILc/fxzBqLv1OF@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZAILc/fxzBqLv1OF@intel.com>
X-Patchwork-Hint: comment
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: C52573EEC4
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.59 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[chromium.org,linux.intel.com,intel.com,gmail.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,amd.com,lists.linaro.org,linaro.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[]
Message-ID-Hash: P3MHBGPGIUXOAVRS2QYIKJ3SJEXCPP7U
X-Message-ID-Hash: P3MHBGPGIUXOAVRS2QYIKJ3SJEXCPP7U
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Pekka Paalanen <ppaalanen@gmail.com>, Luben Tuikov <luben.tuikov@amd.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Matt Turner <mattst88@gmail.com>, freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v9 15/15] drm/i915: Add deadline based boost support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P3MHBGPGIUXOAVRS2QYIKJ3SJEXCPP7U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 03, 2023 at 05:00:03PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Mar 03, 2023 at 06:48:43AM -0800, Rob Clark wrote:
> > On Fri, Mar 3, 2023 at 1:58 AM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> > >
> > >
> > > On 03/03/2023 03:21, Rodrigo Vivi wrote:
> > > > On Thu, Mar 02, 2023 at 03:53:37PM -0800, Rob Clark wrote:
> > > >> From: Rob Clark <robdclark@chromium.org>
> > > >>
> > > >
> > > > missing some wording here...
> > > >
> > > >> v2: rebase
> > > >>
> > > >> Signed-off-by: Rob Clark <robdclark@chromium.org>
> > > >> ---
> > > >>   drivers/gpu/drm/i915/i915_request.c | 20 ++++++++++++++++++++
> > > >>   1 file changed, 20 insertions(+)
> > > >>
> > > >> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm=
/i915/i915_request.c
> > > >> index 7503dcb9043b..44491e7e214c 100644
> > > >> --- a/drivers/gpu/drm/i915/i915_request.c
> > > >> +++ b/drivers/gpu/drm/i915/i915_request.c
> > > >> @@ -97,6 +97,25 @@ static bool i915_fence_enable_signaling(struct =
dma_fence *fence)
> > > >>      return i915_request_enable_breadcrumb(to_request(fence));
> > > >>   }
> > > >>
> > > >> +static void i915_fence_set_deadline(struct dma_fence *fence, ktim=
e_t deadline)
> > > >> +{
> > > >> +    struct i915_request *rq =3D to_request(fence);
> > > >> +
> > > >> +    if (i915_request_completed(rq))
> > > >> +            return;
> > > >> +
> > > >> +    if (i915_request_started(rq))
> > > >> +            return;
> > > >
> > > > why do we skip the boost if already started?
> > > > don't we want to boost the freq anyway?
> > >
> > > I'd wager Rob is just copying the current i915 wait boost logic.
> >=20
> > Yup, and probably incorrectly.. Matt reported fewer boosts/sec
> > compared to your RFC, this could be the bug
>=20
> I don't think i915 calls drm_atomic_helper_wait_for_fences()
> so that could explain something.

Oh, I guess this wasn't even supposed to take over the current=20
display boost stuff since you didn't remove the old one.

The current one just boosts after a missed vblank. The deadline
could use your timer approach I suppose and boost already a bit
earlier in the hopes of not missing the vblank.

--=20
Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
