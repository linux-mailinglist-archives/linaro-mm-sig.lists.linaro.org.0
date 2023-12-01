Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5678005DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Dec 2023 09:38:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E39F43C20
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  1 Dec 2023 08:38:28 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1D2953EF0D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  1 Dec 2023 08:38:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=NUbR3C5N;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B65ED620A0;
	Fri,  1 Dec 2023 08:38:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1222DC433C9;
	Fri,  1 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701419897;
	bh=BF9TFx1XQRac5K0WxDFgJSLMvWyF3UMV5o7kl6PNa3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NUbR3C5Nni4f/AK5YCWL0GZf6G4OsCk6eTNWOASK4uFyMOSH0dxh2GOnmVZPc37ZI
	 IeVg5DuQmbxU0fOsLeTgNUUh930IaFFN9cwRwd7mvzohJSwIbcXY6Brrr8pUOybC01
	 4bNJUhqEWpNbc0K2P3m+OiNyjkYcMCZxd4l4cRnWJ8nx3nlaMVzIj27HW6vg7ZjrFq
	 wJBq/S1/wxixgSRbBCrvxFcgtV/clGEziSghBb6GOUxz4042uxqUy6qpTGKs14eR4p
	 qxxT31tdSRHCAYvndC6a/xn6lIbsydwDh4jWA/yR4qM+YX4gMN6YQj5pIOL/6YBi5V
	 AJPExUEnfJwvQ==
Date: Fri, 1 Dec 2023 09:38:14 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marco Pagani <marpagan@redhat.com>
Message-ID: <gvnahzwy2r2bjw3nrfkyz2oqbtbvmhx3gkygiwujkrhshofvsh@g5qwttznv4ul>
References: <20231130171417.74162-1-marpagan@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20231130171417.74162-1-marpagan@redhat.com>
X-Rspamd-Queue-Id: 1D2953EF0D
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
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
Message-ID-Hash: FUIYVHDGM2OKH6VKYGBA2DKALRBME2BD
X-Message-ID-Hash: FUIYVHDGM2OKH6VKYGBA2DKALRBME2BD
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FUIYVHDGM2OKH6VKYGBA2DKALRBME2BD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3555960172024882133=="


--===============3555960172024882133==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eanybzkzl3a5ywpt"
Content-Disposition: inline


--eanybzkzl3a5ywpt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 06:14:16PM +0100, Marco Pagani wrote:
> This patch introduces an initial KUnit test suite for GEM objects
> backed by shmem buffers.
>=20
> Suggested-by: Javier Martinez Canillas <javierm@redhat.com>
> Signed-off-by: Marco Pagani <marpagan@redhat.com>
>=20
> v5:
> - using __drm_kunit_helper_alloc_drm_device() to avoid local struct
> v4:
> - Add missing MMU dependency for DRM_GEM_SHMEM_HELPER (kernel test robot)
> v3:
> - Explicitly cast pointers in the helpers
> - Removed unused pointer to parent dev in struct fake_dev
> - Test entries reordering in Kconfig and Makefile sent as a separate patch
> v2:
> - Improved description of test cases
> - Cleaner error handling using KUnit actions
> - Alphabetical order in Kconfig and Makefile

Applied to drm-misc-next, thanks!
Maxime

--eanybzkzl3a5ywpt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWmbdgAKCRDj7w1vZxhR
xd2VAQDEvdtX1QM/J4fJnipIrY/CcDfinJMPhqX/YZ3XI5PWyAD/VAJ1W1AT0Qav
/9ccIWyYaCF7NHxu8TIL/afyEbb7KAY=
=WKS7
-----END PGP SIGNATURE-----

--eanybzkzl3a5ywpt--

--===============3555960172024882133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3555960172024882133==--
