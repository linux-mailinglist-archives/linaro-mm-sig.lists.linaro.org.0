Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FBC7F6EE1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Nov 2023 09:49:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A00240ADF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Nov 2023 08:49:18 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id AF4173F5EB
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Nov 2023 08:49:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=DPkLbo7W;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E0A49CE0FD0;
	Fri, 24 Nov 2023 08:49:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B774C433CB;
	Fri, 24 Nov 2023 08:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700815743;
	bh=ts0KYH2uDH1q8ALGoS/p959d2Z3AhGWJPg58oHHCRiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DPkLbo7WvA5ps/jIBO4P0QiKaOtmRQvI+hrI43BegqFBdXQ0euxanJoeOutDImOzZ
	 26rKPC2WhMG2dFM6otNzxvJxKZ9ucdxy5MbV8I94wwaCOzlYMCBzEhYQ0xtznrkJi3
	 brGuMwgvz6TTB5x50Ggg57G8n40J6dSlvfaEijB+Cv5ptnROBVXgy9l43PcGPp6zoV
	 2NWARGz6wntemBdtMKqNV+Xt7OFKIwKE0R3whpBkYfuXrmqTAGyKkasar+T2QRsnbo
	 RBDdftQw/wva2ea2uW42I821gm8uFZ7OIAHU7WkhUgCMzVwmBjIuYOiU1Xowyll51U
	 rj+QjC1pXZLLw==
Date: Fri, 24 Nov 2023 09:49:00 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marco Pagani <marpagan@redhat.com>
Message-ID: <dkh6t5cya7tw4wz5aqrgvnqqnyzzgvbyvezxexy6pyspju5qbd@cdl4vvs7kvnt>
References: <20231123100147.212645-1-marpagan@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20231123100147.212645-1-marpagan@redhat.com>
X-Rspamd-Queue-Id: AF4173F5EB
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,redhat.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: VKUCCHFLWQRR4GYCWJQFI7GY2Z3MTGDE
X-Message-ID-Hash: VKUCCHFLWQRR4GYCWJQFI7GY2Z3MTGDE
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VKUCCHFLWQRR4GYCWJQFI7GY2Z3MTGDE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2185229051135995565=="


--===============2185229051135995565==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rtvjqun5bfrvozeq"
Content-Disposition: inline


--rtvjqun5bfrvozeq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Nov 23, 2023 at 11:01:46AM +0100, Marco Pagani wrote:
> +static int drm_gem_shmem_test_init(struct kunit *test)
> +{
> +	struct device *dev;
> +	struct fake_dev {
> +		struct drm_device drm_dev;
> +	} *fdev;
> +

[...]

> +
> +	/*
> +	 * The DRM core will automatically initialize the GEM core and create
> +	 * a DRM Memory Manager object which provides an address space pool
> +	 * for GEM objects allocation.
> +	 */
> +	fdev = drm_kunit_helper_alloc_drm_device(test, dev, struct fake_dev,
> +						 drm_dev, DRIVER_GEM);
> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, fdev);

Sorry I missed it earlier, but you don't need the intermediate structure
if you use

struct drm_device *drm;

drm = __drm_kunit_helper_alloc_drm_device(test, dev, sizeof(*drm), 0, DRIVER_GEM);
KUNIT_ASSERT_NOT_ERR_OR_NULL(test, drm);

Maxime

--rtvjqun5bfrvozeq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWBjfAAKCRDj7w1vZxhR
xXUQAP9od+klgBILfGLPVPTSdxphG1xUGLo3XXyblMPTgFMz7gEAxqV2NxcgWYJO
vkBCPIX+LUVttVYWyhQvIJ3y+kFqogM=
=eplg
-----END PGP SIGNATURE-----

--rtvjqun5bfrvozeq--

--===============2185229051135995565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2185229051135995565==--
