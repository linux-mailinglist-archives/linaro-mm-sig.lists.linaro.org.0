Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 404457542B6
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jul 2023 20:42:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 281944141F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jul 2023 18:42:46 +0000 (UTC)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by lists.linaro.org (Postfix) with ESMTPS id 77B4B3E94B
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jul 2023 18:42:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="Q/BCl6pA";
	spf=none (lists.linaro.org: domain of ville.syrjala@linux.intel.com has no SPF policy when checking 192.55.52.93) smtp.mailfrom=ville.syrjala@linux.intel.com;
	dmarc=pass (policy=none) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689360149; x=1720896149;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=hYKo7su7u2gAY/CVwklV+f6j8aLNS2V8V8EYn5Idbuw=;
  b=Q/BCl6pAVFrNo/ioKQ8lcn2zXnUiXr8wsTkA3itKcVt/c8YvutyYA8/c
   FoHrkppRVXmSPLOTXuL8X88qW2OlrlRfxIyrbecnVII1WZSBHh0b3VyIy
   doMR/Ef0rW74aVWgWPdrfMFYPT0TQadi73ou16kV6QLzdGJ4UkFU2bMlL
   /J+gjljuf3LYtAGekmX89yD6l5SnH1XUtQ3fzGPFCuySR5fCt2WroYYWf
   TpdgkFhLhHCl4+CKJx0x00wDwq9Ok7cP/K1xJzJ5v5MdhUpKbtZMgp4u1
   QtQPtJDJFHnzQ+EXRpQ+nU9IT/pTFm9Th7kPSUOS9fVD1qnxhUuJnA1Rv
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="363012987"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200";
   d="scan'208";a="363012987"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jul 2023 11:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10771"; a="812551454"
X-IronPort-AV: E=Sophos;i="6.01,206,1684825200";
   d="scan'208";a="812551454"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
  by FMSMGA003.fm.intel.com with SMTP; 14 Jul 2023 11:42:25 -0700
Received: by stinkbox (sSMTP sendmail emulation); Fri, 14 Jul 2023 21:42:24 +0300
Date: Fri, 14 Jul 2023 21:42:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <ZLGXEMdvBAVaNICJ@intel.com>
References: <20230713194745.1751-1-ville.syrjala@linux.intel.com>
 <defcbed9-7cfc-9499-9e08-02a06390cc8f@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <defcbed9-7cfc-9499-9e08-02a06390cc8f@amd.com>
X-Patchwork-Hint: comment
X-Spamd-Result: default: False [-12.09 / 15.00];
	REPLY(-4.00)[];
	DWL_DNSWL_HI(-3.50)[intel.com:dkim];
	BAYES_HAM(-3.00)[100.00%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[192.55.52.93:from];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	ASN(0.00)[asn:4983, ipnet:192.55.52.0/24, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_FIVE(0.00)[6];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 77B4B3E94B
X-Spamd-Bar: ------------
Message-ID-Hash: YAN2JWPX6FV5XQ43V3JBUJPKNO5EJN5X
X-Message-ID-Hash: YAN2JWPX6FV5XQ43V3JBUJPKNO5EJN5X
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-resv: Stop leaking on krealloc() failure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YAN2JWPX6FV5XQ43V3JBUJPKNO5EJN5X/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 14, 2023 at 08:56:15AM +0200, Christian K=F6nig wrote:
> Am 13.07.23 um 21:47 schrieb Ville Syrjala:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Currently dma_resv_get_fences() will leak the previously
> > allocated array if the fence iteration got restarted and
> > the krealloc_array() fails.
> >
> > Free the old array by hand, and make sure we still clear
> > the returned *fences so the caller won't end up accessing
> > freed memory. Some (but not all) of the callers of
> > dma_resv_get_fences() seem to still trawl through the
> > array even when dma_resv_get_fences() failed. And let's
> > zero out *num_fences as well for good measure.
> >
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: linaro-mm-sig@lists.linaro.org
> > Fixes: d3c80698c9f5 ("dma-buf: use new iterator in dma_resv_get_fences =
v3")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>=20
> Good catch, Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>
>=20
> Should I add a CC: stable and push to drm-misc-fixes?

Sure, if you don't mind. Thanks.

>=20
> Thanks,
> Christian.
>=20
> > ---
> >   drivers/dma-buf/dma-resv.c | 13 +++++++++----
> >   1 file changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> > index b6f71eb00866..38b4110378de 100644
> > --- a/drivers/dma-buf/dma-resv.c
> > +++ b/drivers/dma-buf/dma-resv.c
> > @@ -571,6 +571,7 @@ int dma_resv_get_fences(struct dma_resv *obj, enum =
dma_resv_usage usage,
> >   	dma_resv_for_each_fence_unlocked(&cursor, fence) {
> >  =20
> >   		if (dma_resv_iter_is_restarted(&cursor)) {
> > +			struct dma_fence **new_fences;
> >   			unsigned int count;
> >  =20
> >   			while (*num_fences)
> > @@ -579,13 +580,17 @@ int dma_resv_get_fences(struct dma_resv *obj, enu=
m dma_resv_usage usage,
> >   			count =3D cursor.num_fences + 1;
> >  =20
> >   			/* Eventually re-allocate the array */
> > -			*fences =3D krealloc_array(*fences, count,
> > -						 sizeof(void *),
> > -						 GFP_KERNEL);
> > -			if (count && !*fences) {
> > +			new_fences =3D krealloc_array(*fences, count,
> > +						    sizeof(void *),
> > +						    GFP_KERNEL);
> > +			if (count && !new_fences) {
> > +				kfree(*fences);
> > +				*fences =3D NULL;
> > +				*num_fences =3D 0;
> >   				dma_resv_iter_end(&cursor);
> >   				return -ENOMEM;
> >   			}
> > +			*fences =3D new_fences;
> >   		}
> >  =20
> >   		(*fences)[(*num_fences)++] =3D dma_fence_get(fence);

--=20
Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
