Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A71176B463
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 14:06:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4570A3EBC6
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Aug 2023 12:06:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id D00F73EBC6
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Aug 2023 12:06:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=KqMPTZxl;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 66E2561585;
	Tue,  1 Aug 2023 12:06:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D416C433C7;
	Tue,  1 Aug 2023 12:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690891569;
	bh=s6YECtfwRWz+nn+e8dtTgfPFMuDS2G9MlvdIBiOeJvo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KqMPTZxlteTlX/vW0spt/IyKiVoPJYdtMr2lPEmfbuQmmwhfCC21GhGz+yQWZ8GEd
	 RJW1lK9JN1DnTZJmTBwsvxtaZhWyU6xXWtVcaFKkx5L8z9m/yft5TuURPQh/J+IL7U
	 PHvcq8WNXFxjoQvwm9S5/fvJ1NcSpL5MoMmgslMiMQ5qDQ3DsuwUBL05Ll8j2x2V0T
	 Fmi+ZB4B+y3YDp+rI657BSpL6UbzABRJfYD+Czas7wkqLfwlQX9ueJGii9FSPJqKBt
	 8HPA9376cD/cny4bwakf8t2KopaxquTpFCkgWx5XoRWckS8rxRoyjnuCN7kB9nASW2
	 lheIZ7XLLLVog==
Date: Tue, 1 Aug 2023 14:06:06 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Keith Zhao <keith.zhao@starfivetech.com>
Message-ID: <7sfzkc6b46izrfnhcoajllugfofh7otseocbiiftjx344hxiuf@jkjb5syqwo24>
References: <20230801101030.2040-1-keith.zhao@starfivetech.com>
 <20230801101030.2040-7-keith.zhao@starfivetech.com>
MIME-Version: 1.0
In-Reply-To: <20230801101030.2040-7-keith.zhao@starfivetech.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D00F73EBC6
X-Spamd-Bar: ----------
X-Spamd-Result: default: False [-10.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[139.178.84.217:from,52.25.139.140:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[29];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linaro.org,gmail.com,ffwll.ch,kernel.org,linaro.org,esmil.dk,sifive.com,dabbelt.com,eecs.berkeley.edu,linux.intel.com,suse.de,pengutronix.de,amd.com,sntech.de,edgeble.ai,hotmail.com,starfivetech.com]
Message-ID-Hash: 22J75OBTKZFYZLNU6H3YJOMZQJJAQDRA
X-Message-ID-Hash: 22J75OBTKZFYZLNU6H3YJOMZQJJAQDRA
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, Jack Zhu <jack.zhu@starfivetech.com>, Shengyang Chen <shengyang.chen@starfivetech.com>, Changhuang Liang <changhuan
 g.liang@starfivetech.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v1 v1 6/7] drm/vs: Add KMS crtc&plane
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/22J75OBTKZFYZLNU6H3YJOMZQJJAQDRA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8076289779059518415=="


--===============8076289779059518415==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="duuftomxabqjg5ol"
Content-Disposition: inline


--duuftomxabqjg5ol
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 01, 2023 at 06:10:29PM +0800, Keith Zhao wrote:
> +static int vs_crtc_atomic_set_property(struct drm_crtc *crtc,
> +				       struct drm_crtc_state *state,
> +				       struct drm_property *property,
> +				       uint64_t val)
> +{
> +	struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> +	struct vs_crtc_state *vs_crtc_state = to_vs_crtc_state(state);
> +
> +	if (property == vs_crtc->sync_mode)
> +		vs_crtc_state->sync_mode = val;
> +	else if (property == vs_crtc->mmu_prefetch)
> +		vs_crtc_state->mmu_prefetch = val;
> +	else if (property == vs_crtc->bg_color)
> +		vs_crtc_state->bg_color = val;
> +	else if (property == vs_crtc->panel_sync)
> +		vs_crtc_state->sync_enable = val;
> +	else if (property == vs_crtc->dither)
> +		vs_crtc_state->dither_enable = val;
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int vs_crtc_atomic_get_property(struct drm_crtc *crtc,
> +				       const struct drm_crtc_state *state,
> +				       struct drm_property *property,
> +				       uint64_t *val)
> +{
> +	struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> +	const struct vs_crtc_state *vs_crtc_state =
> +		container_of(state, const struct vs_crtc_state, base);
> +
> +	if (property == vs_crtc->sync_mode)
> +		*val = vs_crtc_state->sync_mode;
> +	else if (property == vs_crtc->mmu_prefetch)
> +		*val = vs_crtc_state->mmu_prefetch;
> +	else if (property == vs_crtc->bg_color)
> +		*val = vs_crtc_state->bg_color;
> +	else if (property == vs_crtc->panel_sync)
> +		*val = vs_crtc_state->sync_enable;
> +	else if (property == vs_crtc->dither)
> +		*val = vs_crtc_state->dither_enable;
> +	else
> +		return -EINVAL;
> +
> +	return 0;
> +}

Any new property needs to follow these requirements:
https://docs.kernel.org/gpu/drm-kms.html#requirements
https://docs.kernel.org/gpu/drm-uapi.html#open-source-userspace-requirements

Also, most of them are suspicious, like sync_mode, mmu_prefetch,
panel_sync or dither_enable. Why would you want userspace to change
those ?


> +static int vs_crtc_late_register(struct drm_crtc *crtc)
> +{
> +	return 0;
> +}

You can drop that.

> +static int vs_crtc_enable_vblank(struct drm_crtc *crtc)
> +{
> +	struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> +
> +	vs_dc_enable_vblank(vs_crtc->dev, true);
> +
> +	return 0;
> +}
> +
> +static void vs_crtc_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> +
> +	vs_dc_enable_vblank(vs_crtc->dev, false);
> +}
> +
> +static const struct drm_crtc_funcs vs_crtc_funcs = {
> +	.set_config		= drm_atomic_helper_set_config,
> +	.page_flip		= drm_atomic_helper_page_flip,
> +	.reset			= vs_crtc_reset,
> +	.atomic_duplicate_state = vs_crtc_atomic_duplicate_state,
> +	.atomic_destroy_state	= vs_crtc_atomic_destroy_state,
> +	.atomic_set_property	= vs_crtc_atomic_set_property,
> +	.atomic_get_property	= vs_crtc_atomic_get_property,
> +	.late_register		= vs_crtc_late_register,
> +	.enable_vblank		= vs_crtc_enable_vblank,
> +	.disable_vblank		= vs_crtc_disable_vblank,
> +};
> +
> +static u8 cal_pixel_bits(u32 bus_format)
> +{
> +	u8 bpp;
> +
> +	switch (bus_format) {
> +	case MEDIA_BUS_FMT_RGB565_1X16:
> +	case MEDIA_BUS_FMT_UYVY8_1X16:
> +		bpp = 16;
> +		break;
> +	case MEDIA_BUS_FMT_RGB666_1X18:
> +	case MEDIA_BUS_FMT_RGB666_1X24_CPADHI:
> +		bpp = 18;
> +		break;
> +	case MEDIA_BUS_FMT_UYVY10_1X20:
> +		bpp = 20;
> +		break;
> +	case MEDIA_BUS_FMT_BGR888_1X24:
> +	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
> +	case MEDIA_BUS_FMT_YUV8_1X24:
> +		bpp = 24;
> +		break;
> +	case MEDIA_BUS_FMT_RGB101010_1X30:
> +	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
> +	case MEDIA_BUS_FMT_YUV10_1X30:
> +		bpp = 30;
> +		break;
> +	default:
> +		bpp = 24;
> +		break;
> +	}
> +
> +	return bpp;
> +}
> +
> +static bool vs_crtc_mode_fixup(struct drm_crtc *crtc,
> +			       const struct drm_display_mode *mode,
> +			       struct drm_display_mode *adjusted_mode)
> +{
> +	struct vs_crtc *vs_crtc = to_vs_crtc(crtc);
> +
> +	return vs_dc_mode_fixup(vs_crtc->dev, mode, adjusted_mode);
> +}

You should be using atomic_check.

Maxime

--duuftomxabqjg5ol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZMj1LgAKCRDj7w1vZxhR
xcuiAQDVAHuCXQLiF4aho3J76b/1omEGtDLrJYqMFou4trNeDQEA9a+4doYz0r8T
e4MChnbgb7U5q3ndReWR8iY6I4VZ/wc=
=sNPG
-----END PGP SIGNATURE-----

--duuftomxabqjg5ol--

--===============8076289779059518415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8076289779059518415==--
