Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7604B83D5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 10:19:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06A9F3EE8E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Feb 2022 09:19:44 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id CD2643ECE4
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Feb 2022 09:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1645003180; x=1676539180;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=W7JJ5S6ygKVdkRCpl3XvCOgtF+37zc1PmPKZVKrCQZU=;
  b=SM4I48fhFcBsp6WHVm9Qw257/kyt/ywPBOdJ1NSjHcAmL1KnNEVouwYX
   HPT6kw7yCrowW4aDQZ5uwl9yvEiEQbLjSfDpxQRz/coVjks48k9TtaH58
   hsgkjVax3wxRskDlOtETwINDsdcwXJ2P+BECeMY4i2lv0jLSHEN69daU1
   RuA2caXsVTobK/77EKGmfOD20qcUFBy0Fl/iVMwZz5cbj/150b9xdkafE
   DzXAfSUn9XHp68v5HoKChzOxrcdsZG+AjuYWiw3XeCa/40eA0Snl2iG4g
   iJ3ceCWMexAUKuADQjileioLkwTuJZI6Ak7BBdfligI/e6CTCeSp7JLF0
   A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="248157174"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="248157174"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Feb 2022 01:19:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600";
   d="scan'208";a="498578877"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
  by orsmga006.jf.intel.com with SMTP; 16 Feb 2022 01:19:34 -0800
Received: by stinkbox (sSMTP sendmail emulation); Wed, 16 Feb 2022 11:19:33 +0200
Date: Wed, 16 Feb 2022 11:19:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YgzBpX2SKCh4cb19@intel.com>
References: <20220216083849.91239-1-jiapeng.chong@linux.alibaba.com>
 <87h78z5gmp.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h78z5gmp.fsf@intel.com>
X-Patchwork-Hint: comment
Message-ID-Hash: H4DYB4FOSCWMWT7GMPTJAU2CEG5ZHGN6
X-Message-ID-Hash: H4DYB4FOSCWMWT7GMPTJAU2CEG5ZHGN6
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, tvrtko.ursulin@linux.intel.com, airlied@linux.ie, intel-gfx@lists.freedesktop.org, Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, rodrigo.vivi@intel.com, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/i915/gt: fix unsigned integer to signed assignment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H4DYB4FOSCWMWT7GMPTJAU2CEG5ZHGN6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 16, 2022 at 11:02:06AM +0200, Jani Nikula wrote:
> On Wed, 16 Feb 2022, Jiapeng Chong <jiapeng.chong@linux.alibaba.com> wrot=
e:
> > Eliminate the follow smatch warning:
> >
> > drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4640
> > guc_create_virtual() warn: assigning (-2) to unsigned variable
> > 've->base.instance'.
> >
> > drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4641
> > guc_create_virtual() warn: assigning (-2) to unsigned variable
> > 've->base.uabi_instance'.
> >
> > Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> > Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
>=20
> The report seems to be valid, but I don't think this is the fix.
>=20
> Where do we even check for invalid instance/uabi_instance in code?

The whole thing seems rather poorly documented as there's a matching
uabi struct with __u16's and the negative values are defined right
there in the uapi header as well.

>=20
> BR,
> Jani.
>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu=
/drm/i915/gt/intel_engine_types.h
> > index 36365bdbe1ee..dc7cc06c68e7 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -328,10 +328,10 @@ struct intel_engine_cs {
> >  	intel_engine_mask_t logical_mask;
> > =20
> >  	u8 class;
> > -	u8 instance;
> > +	s8 instance;
> > =20
> >  	u16 uabi_class;
> > -	u16 uabi_instance;
> > +	s16 uabi_instance;
> > =20
> >  	u32 uabi_capabilities;
> >  	u32 context_size;
>=20
> --=20
> Jani Nikula, Intel Open Source Graphics Center

--=20
Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
