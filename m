Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D127FBBA3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Nov 2023 14:32:13 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4990740A09
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 28 Nov 2023 13:32:12 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 382D23EFC7
	for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Nov 2023 13:32:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TGtQ2wcz;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 31C0FB81A20;
	Tue, 28 Nov 2023 13:32:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B2F1C433C8;
	Tue, 28 Nov 2023 13:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701178320;
	bh=XaLbU8H1rEGdfg4Iqk3KSxG5DRQC6e/xw+Mqlqs3K+E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TGtQ2wczoebGP3LbwJj1/8gibC1gvR9QIsZGJlC9Ue0O/39oySnC/PSQyfB6qFfvV
	 3KhpsAhLGFAvlyzVwVTygKq4p5MyJ5WY2v7x9qSgl03OrNd9NfIonsjCz3uNLI252M
	 jnaw639UHdJZirBm6ZMad7l4dfjlj1LqQtQcwge24d6Zc9alhZcZc6IFyuttGMkruE
	 zogVQ/ygyP+UQJJv1TJzVvbMSZMhy+fwNMbw59cYacbimXjmMb/rw1akVnidxHUQKX
	 3N/OkOUa/1W6OERP5EoJcXB7zzP+OxNlxZsCYZhqivWl7Y8pNQMRwj72n5SDtWPMR4
	 9E4LAeg0pN6DA==
Date: Tue, 28 Nov 2023 14:31:58 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marco Pagani <marpagan@redhat.com>
Message-ID: <wmv55cgrjx343k2pvdlnigrtehv6oq7hiss3k24xmwec7hepes@riq75ckh7eh5>
References: <20231123100147.212645-1-marpagan@redhat.com>
 <dkh6t5cya7tw4wz5aqrgvnqqnyzzgvbyvezxexy6pyspju5qbd@cdl4vvs7kvnt>
 <9fb1cd9d-89cb-4f45-9d0c-9f0102e000e6@redhat.com>
MIME-Version: 1.0
In-Reply-To: <9fb1cd9d-89cb-4f45-9d0c-9f0102e000e6@redhat.com>
X-Rspamd-Queue-Id: 382D23EFC7
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
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
Message-ID-Hash: M5VWKXQ2QILV37TGY2PPB4G3SVR6PMSJ
X-Message-ID-Hash: M5VWKXQ2QILV37TGY2PPB4G3SVR6PMSJ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/M5VWKXQ2QILV37TGY2PPB4G3SVR6PMSJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8370824590517559792=="


--===============8370824590517559792==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xa3olno3bho23d7h"
Content-Disposition: inline


--xa3olno3bho23d7h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 24, 2023 at 11:15:12AM +0100, Marco Pagani wrote:
>=20
>=20
> On 2023-11-24 09:49, Maxime Ripard wrote:
> > Hi,
> >=20
> > On Thu, Nov 23, 2023 at 11:01:46AM +0100, Marco Pagani wrote:
> >> +static int drm_gem_shmem_test_init(struct kunit *test)
> >> +{
> >> +	struct device *dev;
> >> +	struct fake_dev {
> >> +		struct drm_device drm_dev;
> >> +	} *fdev;
> >> +
> >=20
> > [...]
> >=20
> >> +
> >> +	/*
> >> +	 * The DRM core will automatically initialize the GEM core and create
> >> +	 * a DRM Memory Manager object which provides an address space pool
> >> +	 * for GEM objects allocation.
> >> +	 */
> >> +	fdev =3D drm_kunit_helper_alloc_drm_device(test, dev, struct fake_de=
v,
> >> +						 drm_dev, DRIVER_GEM);
> >> +	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, fdev);
> >=20
> > Sorry I missed it earlier, but you don't need the intermediate structure
> > if you use
> >=20
> > struct drm_device *drm;
> >=20
> > drm =3D __drm_kunit_helper_alloc_drm_device(test, dev, sizeof(*drm), 0,=
 DRIVER_GEM);
> > KUNIT_ASSERT_NOT_ERR_OR_NULL(test, drm);
> >
>=20
> I prefer to use drm_kunit_helper_alloc_drm_device() with the intermediate
> structure. It makes the code clearer, in my opinion. Initially, when
> developing the suite, I was using __drm_kunit_helper_alloc_drm_device()
> as most test suites do, but I feel the list of arguments including
> "sizeof(*drm), 0," is less straightforward to understand.

Then we can create an init helper, and you can allocate the drm_device
through drmm_kzalloc, but I'd like tests to use consistent constructs.

This can of course be made as a later patch: you use the same construct
the other tests do here, and later we work on the init function and
convert all tests to use it.

Maxime

--xa3olno3bho23d7h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWXrzgAKCRDj7w1vZxhR
xSfVAPsF1Ca6WiaICCCMiadpBZDVn0JEV/LwVOotZsctwQGtpQEA2rrnLlTgWe0H
4ABF/XTvcd0zP3qiEHeNWwTFCT8/swE=
=SzdI
-----END PGP SIGNATURE-----

--xa3olno3bho23d7h--

--===============8370824590517559792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8370824590517559792==--
