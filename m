Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E957D74C2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 21:50:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BAE613F98E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Oct 2023 19:50:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
	by lists.linaro.org (Postfix) with ESMTPS id EF4443EFCF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Oct 2023 19:49:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=intel.com header.s=Intel header.b="MVaenp/7";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=none (lists.linaro.org: domain of ville.syrjala@linux.intel.com has no SPF policy when checking 134.134.136.20) smtp.mailfrom=ville.syrjala@linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1698263397; x=1729799397;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=6bjyCn+5RGDR80Oxqpw3WAaYkuJ8eyFL07jKhBVi4rA=;
  b=MVaenp/7XOlexYksmSwEfsWQak9zBdr6mlLNDLr9+vRVqzLute6Czpl+
   idCeIIAOKJrWdb1thuoSWAbUt1U2RDuieDsmR9lYw7OXZFh+h6TonjS92
   vePCmKrrCTC5j0P0Psce40D/c1BV/wG3uj6aHc0VxroY4FSBQz74MmkfB
   SvoceFnsaHg+sva3A6FG4w6m4YoznJvfPwP9U1oEkYMMXccAoz1E3/cMN
   L8VzSApYAq7t8fwPBL1OH5iRlbkWMa2ysknojvun5F1/J2jjksAzbDWmn
   Dyz9DrK/KJRZtvqlJDMRNd88TEZH9pr2SJIVtl6GVukgBL0p0D731ocfQ
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="377752963"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200";
   d="scan'208";a="377752963"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Oct 2023 12:49:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="735494248"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200";
   d="scan'208";a="735494248"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
  by orsmga006.jf.intel.com with SMTP; 25 Oct 2023 12:49:47 -0700
Received: by stinkbox (sSMTP sendmail emulation); Wed, 25 Oct 2023 22:49:46 +0300
Date: Wed, 25 Oct 2023 22:49:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <ZTlxWiX7-vKeLQsc@intel.com>
References: <20231025103957.3776-1-keith.zhao@starfivetech.com>
 <20231025103957.3776-6-keith.zhao@starfivetech.com>
 <6db09f77-31e8-4f2e-a987-e3745d0e8c24@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6db09f77-31e8-4f2e-a987-e3745d0e8c24@linaro.org>
X-Patchwork-Hint: comment
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EF4443EFCF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.69 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.71)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[134.134.136.20:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	URIBL_BLOCKED(0.00)[starfivetech.com:email,intel.com:dkim];
	FREEMAIL_CC(0.00)[starfivetech.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,kernel.org,eecs.berkeley.edu,esmil.dk,amd.com,suse.de,hotmail.com,edgeble.ai,dabbelt.com,linaro.org,sifive.com];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:4983, ipnet:134.134.136.0/24, country:US];
	TAGGED_RCPT(0.00)[dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 3GVNV5YQOIDH4SRJCSEJ3AHGCX47DDGM
X-Message-ID-Hash: 3GVNV5YQOIDH4SRJCSEJ3AHGCX47DDGM
X-MailFrom: ville.syrjala@linux.intel.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Keith Zhao <keith.zhao@starfivetech.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Conor Dooley <conor+dt@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>, christian.koenig@amd.com, Thomas Zimmermann <tzimmermann@suse.de>, Bjorn Andersson <andersson@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, Maxime Ripard <mripard@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Jack Zhu <jack.zhu@starfivetech.com>, Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley <paul.walmsley@sifive.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuang.liang@starfivetech.com>, Shawn Guo <shawnguo@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 5/6] drm/vs: Add KMS crtc&plane
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3GVNV5YQOIDH4SRJCSEJ3AHGCX47DDGM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 10:28:56PM +0300, Dmitry Baryshkov wrote:
> On 25/10/2023 13:39, Keith Zhao wrote:
> > add 2 crtcs and 8 planes in vs-drm
> >=20
> > Signed-off-by: Keith Zhao <keith.zhao@starfivetech.com>
> > ---
> >   drivers/gpu/drm/verisilicon/Makefile   |    8 +-
> >   drivers/gpu/drm/verisilicon/vs_crtc.c  |  257 ++++
> >   drivers/gpu/drm/verisilicon/vs_crtc.h  |   43 +
> >   drivers/gpu/drm/verisilicon/vs_dc.c    | 1002 ++++++++++++
> >   drivers/gpu/drm/verisilicon/vs_dc.h    |   80 +
> >   drivers/gpu/drm/verisilicon/vs_dc_hw.c | 1959 ++++++++++++++++++++++++
> >   drivers/gpu/drm/verisilicon/vs_dc_hw.h |  492 ++++++
> >   drivers/gpu/drm/verisilicon/vs_drv.c   |    2 +
> >   drivers/gpu/drm/verisilicon/vs_plane.c |  526 +++++++
> >   drivers/gpu/drm/verisilicon/vs_plane.h |   58 +
> >   drivers/gpu/drm/verisilicon/vs_type.h  |   69 +
> >   11 files changed, 4494 insertions(+), 2 deletions(-)
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.c
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_hw.h
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
> >   create mode 100644 drivers/gpu/drm/verisilicon/vs_type.h
> >=20
> > diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/ver=
isilicon/Makefile
> > index 7d3be305b..1d48016ca 100644
> > --- a/drivers/gpu/drm/verisilicon/Makefile
> > +++ b/drivers/gpu/drm/verisilicon/Makefile
> > @@ -1,7 +1,11 @@
> >   # SPDX-License-Identifier: GPL-2.0
> >  =20
> > -vs_drm-objs :=3D vs_drv.o \
> > -		vs_modeset.o
> > +vs_drm-objs :=3D vs_dc_hw.o \
> > +		vs_dc.o \
> > +		vs_crtc.o \
> > +		vs_drv.o \
> > +		vs_modeset.o \
> > +		vs_plane.o
> >  =20
> >   obj-$(CONFIG_DRM_VERISILICON) +=3D vs_drm.o
> >  =20
> > diff --git a/drivers/gpu/drm/verisilicon/vs_crtc.c b/drivers/gpu/drm/ve=
risilicon/vs_crtc.c
> > new file mode 100644
> > index 000000000..8a658ea77
> > --- /dev/null
> > +++ b/drivers/gpu/drm/verisilicon/vs_crtc.c
> > @@ -0,0 +1,257 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> > + *
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/debugfs.h>
> > +#include <linux/media-bus-format.h>
> > +
> > +#include <drm/drm_atomic_helper.h>
> > +#include <drm/drm_atomic.h>
> > +#include <drm/drm_crtc.h>
> > +#include <drm/drm_gem_atomic_helper.h>
> > +#include <drm/drm_vblank.h>
> > +#include <drm/vs_drm.h>
> > +
> > +#include "vs_crtc.h"
> > +#include "vs_dc.h"
> > +#include "vs_drv.h"
> > +
> > +static void vs_crtc_reset(struct drm_crtc *crtc)
> > +{
> > +	struct vs_crtc_state *state;
> > +
> > +	if (crtc->state) {
> > +		__drm_atomic_helper_crtc_destroy_state(crtc->state);
> > +
> > +		state =3D to_vs_crtc_state(crtc->state);
> > +		kfree(state);
> > +		crtc->state =3D NULL;
> > +	}
>=20
> You can call your crtc_destroy_state function directly here.
>=20
> > +
> > +	state =3D kzalloc(sizeof(*state), GFP_KERNEL);
> > +	if (!state)
> > +		return;
> > +
> > +	__drm_atomic_helper_crtc_reset(crtc, &state->base);
> > +}
> > +
> > +static struct drm_crtc_state *
> > +vs_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
> > +{
> > +	struct vs_crtc_state *ori_state;
>=20
> It might be a matter of taste, but it is usually old_state.
>=20
> > +	struct vs_crtc_state *state;
> > +
> > +	if (!crtc->state)
> > +		return NULL;
> > +
> > +	ori_state =3D to_vs_crtc_state(crtc->state);
> > +	state =3D kzalloc(sizeof(*state), GFP_KERNEL);
> > +	if (!state)
> > +		return NULL;
> > +
> > +	__drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);
> > +
> > +	state->output_fmt =3D ori_state->output_fmt;
> > +	state->encoder_type =3D ori_state->encoder_type;
> > +	state->bpp =3D ori_state->bpp;
> > +	state->underflow =3D ori_state->underflow;
>=20
> Can you use kmemdup instead?
>=20
> > +
> > +	return &state->base;
> > +}
> > +
> > +static void vs_crtc_atomic_destroy_state(struct drm_crtc *crtc,
> > +					 struct drm_crtc_state *state)
> > +{
> > +	__drm_atomic_helper_crtc_destroy_state(state);
> > +	kfree(to_vs_crtc_state(state));
> > +}
> > +
> > +static int vs_crtc_enable_vblank(struct drm_crtc *crtc)
> > +{
> > +	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
> > +	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
> > +
> > +	vs_dc_enable_vblank(dc, true);
> > +
> > +	return 0;
> > +}
> > +
> > +static void vs_crtc_disable_vblank(struct drm_crtc *crtc)
> > +{
> > +	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
> > +	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
> > +
> > +	vs_dc_enable_vblank(dc, false);
> > +}
> > +
> > +static const struct drm_crtc_funcs vs_crtc_funcs =3D {
> > +	.set_config		=3D drm_atomic_helper_set_config,
> > +	.page_flip		=3D drm_atomic_helper_page_flip,
>=20
> destroy is required, see drm_mode_config_cleanup()
>=20
> > +	.reset			=3D vs_crtc_reset,
> > +	.atomic_duplicate_state =3D vs_crtc_atomic_duplicate_state,
> > +	.atomic_destroy_state	=3D vs_crtc_atomic_destroy_state,
>=20
> please consider adding atomic_print_state to output driver-specific bits.
>=20
> > +	.enable_vblank		=3D vs_crtc_enable_vblank,
> > +	.disable_vblank		=3D vs_crtc_disable_vblank,
> > +};
> > +
> > +static u8 cal_pixel_bits(u32 bus_format)
>=20
> This looks like a generic helper code, which can go to a common place.
>=20
> > +{
> > +	u8 bpp;
> > +
> > +	switch (bus_format) {
> > +	case MEDIA_BUS_FMT_RGB565_1X16:
> > +	case MEDIA_BUS_FMT_UYVY8_1X16:
> > +		bpp =3D 16;
> > +		break;
> > +	case MEDIA_BUS_FMT_RGB666_1X18:
> > +	case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
> > +		bpp =3D 18;
> > +		break;
> > +	case MEDIA_BUS_FMT_UYVY10_1X20:
> > +		bpp =3D 20;
> > +		break;
> > +	case MEDIA_BUS_FMT_BGR888_1X24:
> > +	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
> > +	case MEDIA_BUS_FMT_YUV8_1X24:
> > +		bpp =3D 24;
> > +		break;
> > +	case MEDIA_BUS_FMT_RGB101010_1X30:
> > +	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
> > +	case MEDIA_BUS_FMT_YUV10_1X30:
> > +		bpp =3D 30;
> > +		break;
> > +	default:
> > +		bpp =3D 24;
> > +		break;
> > +	}
> > +
> > +	return bpp;
> > +}
> > +
> > +static void vs_crtc_atomic_enable(struct drm_crtc *crtc,
> > +				  struct drm_atomic_state *state)
> > +{
> > +	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
> > +	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
> > +	struct vs_crtc_state *vs_crtc_state =3D to_vs_crtc_state(crtc->state);
> > +
> > +	vs_crtc_state->bpp =3D cal_pixel_bits(vs_crtc_state->output_fmt);
> > +
> > +	vs_dc_enable(dc, crtc);
> > +	drm_crtc_vblank_on(crtc);
> > +}
> > +
> > +static void vs_crtc_atomic_disable(struct drm_crtc *crtc,
> > +				   struct drm_atomic_state *state)
> > +{
> > +	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
> > +	struct vs_dc *dc =3D dev_get_drvdata(vs_crtc->dev);
> > +
> > +	drm_crtc_vblank_off(crtc);
> > +
> > +	vs_dc_disable(dc, crtc);
> > +
> > +	if (crtc->state->event && !crtc->state->active) {
> > +		spin_lock_irq(&crtc->dev->event_lock);
> > +		drm_crtc_send_vblank_event(crtc, crtc->state->event);
> > +		spin_unlock_irq(&crtc->dev->event_lock);
> > +
> > +		crtc->state->event =3D NULL;
>=20
> I think even should be cleared within the lock.

event_lock doesn't protect anything in the crtc state.

But the bigger problem in this code is the prevalent crtc->state
usage. That should pretty much never be done, especially in anything
that can get called from the actual commit phase where you no longer
have the locks held. Instead one should almost always use the
get_{new,old}_state() stuff, or the old/new/oldnew state iterators.

>=20
> > +	}
> > +}
> > +
> > +static void vs_crtc_atomic_begin(struct drm_crtc *crtc,
> > +				 struct drm_atomic_state *state)
> > +{
> > +	struct drm_crtc_state *crtc_state =3D drm_atomic_get_new_crtc_state(s=
tate,
> > +									  crtc);
> > +
> > +	struct vs_crtc *vs_crtc =3D to_vs_crtc(crtc);
> > +	struct device *dev =3D vs_crtc->dev;
> > +	struct drm_property_blob *blob =3D crtc->state->gamma_lut;

Eg. here you are using drm_atomic_get_new_crtc_state() correctly, but
then proceed to directly access crtc->state anyway.

> > +	struct drm_color_lut *lut;
> > +	struct vs_dc *dc =3D dev_get_drvdata(dev);
> > +
> > +	if (crtc_state->color_mgmt_changed) {
> > +		if (blob && blob->length) {
> > +			lut =3D blob->data;
> > +			vs_dc_set_gamma(dc, crtc, lut,
> > +					blob->length / sizeof(*lut));
> > +			vs_dc_enable_gamma(dc, crtc, true);
> > +		} else {
> > +			vs_dc_enable_gamma(dc, crtc, false);
> > +		}
> > +	}
> > +}

--=20
Ville Syrj=E4l=E4
Intel
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
