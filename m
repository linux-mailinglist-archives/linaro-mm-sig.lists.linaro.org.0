Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D6C786AFF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 11:03:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89D5B3F053
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Aug 2023 09:03:20 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 7B50A3F053
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Aug 2023 09:03:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=caA6GBHu;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1FC60667B5;
	Thu, 24 Aug 2023 09:03:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 086BFC433C7;
	Thu, 24 Aug 2023 09:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692867794;
	bh=Z8KlcqN4v0YazhOwIq0aooQp2XTZu97r8b9euGXZqoA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=caA6GBHu/rOcwKFHL012iyP6ZEaKUsOat1S1YC1dfWR4Lqik3t3Y6lKJxSjrghpFl
	 eaGr8w/TJGs11oiNM6Egg6TmlvlPAS4K2QfVXmK4JIBGVtL/iEA1vdXseCXtmkBQB0
	 6/pNQSqA1csldlXoyrGC/JJt7+FP3BvnB8274YrIHH8Nyt5TEHH30cOhTvjZQt83ox
	 nYoAFqA3uE5Q9RZP6HtsfWH7c5ls2gnpCqFhX6He14cgpnh0lwqYWQIGK8w6Y6+b8T
	 FyDVC4rNvGvDSsGcfoGn5AF7pT0Oxl/2+A+IhPSUGEkQ4X32P/v89W5LfuKo2YlrFt
	 wrdK6+FeYX6jg==
Date: Thu, 24 Aug 2023 11:03:11 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Lee Jones <lee@kernel.org>
Message-ID: <pkjgu5hfazblvlnolvsbzo6zt7yq4zldjmmuoufgv5txvzdiyc@2vplkaitfypc>
References: <20230824073710.2677348-1-lee@kernel.org>
 <169286759481.453038.12943953579128536191.b4-ty@kernel.org>
MIME-Version: 1.0
In-Reply-To: <169286759481.453038.12943953579128536191.b4-ty@kernel.org>
X-Rspamd-Queue-Id: 7B50A3F053
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org:c];
	RCVD_TLS_ALL(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[41];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,lists.freedesktop.org,redhat.com,ffwll.ch,gmail.com,nvidia.com,xilinx.com,freedesktop.org,ideasonboard.com,lists.linaro.org,lists.infradead.org,linux.intel.com,riseup.net,nxp.com,pengutronix.de,kernel.org,linaro.org,suse.de];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: SRYYQXFFYMELJC3LMQSYKUZACQKHN5IZ
X-Message-ID-Hash: SRYYQXFFYMELJC3LMQSYKUZACQKHN5IZ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org, Ben Skeggs <bskeggs@redhat.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Daniel Vetter <daniel@ffwll.ch>, Danilo Krummrich <dakr@redhat.com>, dri-devel@lists.freedesktop.org, Fabio Estevam <festevam@gmail.com>, Gourav Samaiya <gsamaiya@nvidia.com>, Hawking Zhang <Hawking.Zhang@amd.com>, Hyun Kwon <hyun.kwon@xilinx.com>, Jerome Glisse <glisse@freedesktop.org>, Jonathan Hunter <jonathanh@nvidia.com>, Karol Herbst <kherbst@redhat.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org, linux-tegra@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>, Lyude Paul <lyude@redhat.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, =?utf-8?B?TWHDrXJh?= Canal <mairacanal@riseup.net>, Mario Limonciello <mario.limonciello@amd.com>, Mikko Perttunen <mperttunen@nvi
 dia.com>, nouveau@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>, Shashank Sharma <shashank.sharma@amd.com>, Shawn Guo <shawnguo@kernel.org>, Stanley Yang <Stanley.Yang@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Thierry Reding <thierry.reding@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Michal Simek <michal.simek@amd.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH (set 1) 00/20] Rid W=1 warnings from GPU
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SRYYQXFFYMELJC3LMQSYKUZACQKHN5IZ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8426868074932512321=="


--===============8426868074932512321==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s4bcoziyhif3xhyv"
Content-Disposition: inline


--s4bcoziyhif3xhyv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Aug 24, 2023 at 10:59:54AM +0200, Maxime Ripard wrote:
> On Thu, 24 Aug 2023 08:36:45 +0100, Lee Jones wrote:
> > This set is part of a larger effort attempting to clean-up W=3D1
> > kernel builds, which are currently overwhelmingly riddled with
> > niggly little warnings.
> >=20
> > Cc: Alex Deucher <alexander.deucher@amd.com>
> > Cc: amd-gfx@lists.freedesktop.org
> > Cc: Ben Skeggs <bskeggs@redhat.com>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Danilo Krummrich <dakr@redhat.com>
> > Cc: David Airlie <airlied@gmail.com>
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Gourav Samaiya <gsamaiya@nvidia.com>
> > Cc: Hawking Zhang <Hawking.Zhang@amd.com>
> > Cc: Hyun Kwon <hyun.kwon@xilinx.com>
> > Cc: Jerome Glisse <glisse@freedesktop.org>
> > Cc: Jonathan Hunter <jonathanh@nvidia.com>
> > Cc: Karol Herbst <kherbst@redhat.com>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: linaro-mm-sig@lists.linaro.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-media@vger.kernel.org
> > Cc: linux-tegra@vger.kernel.org
> > Cc: Luben Tuikov <luben.tuikov@amd.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: "Ma=EDra Canal" <mairacanal@riseup.net>
> > Cc: Mario Limonciello <mario.limonciello@amd.com>
> > Cc: Maxime Ripard <mripard@kernel.org>
> > Cc: Michal Simek <michal.simek@xilinx.com>
> > Cc: Mikko Perttunen <mperttunen@nvidia.com>
> > Cc: nouveau@lists.freedesktop.org
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
> > Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Shashank Sharma <shashank.sharma@amd.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Stanley Yang <Stanley.Yang@amd.com>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: Thierry Reding <thierry.reding@gmail.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> >=20
> > [...]
>=20
> Applied to drm/drm-misc (drm-misc-fixes).

I got confused with b4 usage, but that wasn't actually applied. Only the
three patches I explicitly mentioned were, sorry for the confusion.

Maxime

--s4bcoziyhif3xhyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZOcczwAKCRDj7w1vZxhR
xcTFAQCQGXPUBXnODsaFgiEuFrckjOE5PisQ37NiNjGWWZt44gD+LVUnaHSq7tTE
6GayDpzLrPM2MsMV5u6yhfmhsd7IRw4=
=b2pz
-----END PGP SIGNATURE-----

--s4bcoziyhif3xhyv--

--===============8426868074932512321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8426868074932512321==--
