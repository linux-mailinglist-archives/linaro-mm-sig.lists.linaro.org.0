Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE387EC212
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 13:19:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 56EB341113
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Nov 2023 12:19:58 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 86D493F0A5
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Nov 2023 12:19:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BGFk9yDD;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 20C74CE1C8E;
	Wed, 15 Nov 2023 12:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93B3AC433C7;
	Wed, 15 Nov 2023 12:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700050778;
	bh=poAYkK4mnhrVQ3flBhD3AQ8sCwUy7YwbiQba2YhU01o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BGFk9yDDHNtFs1qJzQ2TgsrLUsTcXpFClT9B5nfp2fQ6WOw+rXBbhVWTGfNktUr5e
	 StKgITcfMF8NlBHG6hjbqRMjymMPZmNLn2d5NopdZT1nRdZkxs3NETTfVKRt3wwnUm
	 Nu/TyVGUo1Lj47rQpvgqS6+ipqHzQ/EPgfpjVQsbZEpiftKBqvvUDmpX4Yu/qVhotp
	 hluG6dNDbs+7UdeKb1fixJ0iCiVG6pSD5FS5H3hcACyzuFncrJlWzoU/S5qROqm9h2
	 zgdxTF+zQ0iD1xKim1Oi5e+ckVEvBhRYNTpDmWN02fUoZclRfPNJKNCuJA4odk5T+N
	 8agOx/iMTK8Ew==
Date: Wed, 15 Nov 2023 13:19:34 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Marco Pagani <marpagan@redhat.com>
Message-ID: <2w7ewdzi2igf2yvw6xp4dnommjhs7sji2zvzj2r5npdgxuear4@fs3rje42jbnf>
References: <20231108134205.111478-1-marpagan@redhat.com>
 <dqpsjdpedvpbooffrn2nwg6hxr2bhdizwx27icwz2dx5bgsho4@id5drrg66e7h>
 <e2c3e589-880c-4b24-8aa3-5084d1d40e21@redhat.com>
MIME-Version: 1.0
In-Reply-To: <e2c3e589-880c-4b24-8aa3-5084d1d40e21@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 86D493F0A5
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,145.40.73.55:from];
	FREEMAIL_CC(0.00)[linux.intel.com,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,redhat.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: BQBSELF4CENT7XBDCXRMBNVGLPV727YQ
X-Message-ID-Hash: BQBSELF4CENT7XBDCXRMBNVGLPV727YQ
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v2] drm/test: add a test suite for GEM objects backed by shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BQBSELF4CENT7XBDCXRMBNVGLPV727YQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4223825476610203823=="


--===============4223825476610203823==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3qk6gcllhntcokbi"
Content-Disposition: inline


--3qk6gcllhntcokbi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Nov 14, 2023 at 05:18:08PM +0100, Marco Pagani wrote:
> On 2023-11-10 15:41, Maxime Ripard wrote:
> > On Wed, Nov 08, 2023 at 02:42:03PM +0100, Marco Pagani wrote:
> >> This patch introduces an initial KUnit test suite for GEM objects
> >> backed by shmem buffers.
> >>
> >> Suggested-by: Javier Martinez Canillas <javierm@redhat.com>
> >> Signed-off-by: Marco Pagani <marpagan@redhat.com>
> >>
> >> v2:
> >> - Improved description of test cases
> >> - Cleaner error handling using KUnit actions
> >> - Alphabetical order in Kconfig and Makefile
> >> ---
> >>  drivers/gpu/drm/Kconfig                    |   9 +-
> >>  drivers/gpu/drm/tests/Makefile             |   5 +-
> >>  drivers/gpu/drm/tests/drm_gem_shmem_test.c | 381 +++++++++++++++++++++
> >>  3 files changed, 389 insertions(+), 6 deletions(-)
> >>  create mode 100644 drivers/gpu/drm/tests/drm_gem_shmem_test.c
> >>
> >> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> >> index 3eee8636f847..a2551c8c393a 100644
> >> --- a/drivers/gpu/drm/Kconfig
> >> +++ b/drivers/gpu/drm/Kconfig
> >> @@ -76,14 +76,15 @@ config DRM_KUNIT_TEST
> >>  	tristate "KUnit tests for DRM" if !KUNIT_ALL_TESTS
> >>  	depends on DRM && KUNIT
> >>  	select PRIME_NUMBERS
> >> +	select DRM_BUDDY
> >>  	select DRM_DISPLAY_DP_HELPER
> >>  	select DRM_DISPLAY_HELPER
> >> -	select DRM_LIB_RANDOM
> >> -	select DRM_KMS_HELPER
> >> -	select DRM_BUDDY
> >> +	select DRM_EXEC
> >>  	select DRM_EXPORT_FOR_TESTS if m
> >> +	select DRM_GEM_SHMEM_HELPER
> >> +	select DRM_KMS_HELPER
> >>  	select DRM_KUNIT_TEST_HELPERS
> >> -	select DRM_EXEC
> >> +	select DRM_LIB_RANDOM
> >>  	default KUNIT_ALL_TESTS
> >>  	help
> >>  	  This builds unit tests for DRM. This option is not useful for
> >> diff --git a/drivers/gpu/drm/tests/Makefile b/drivers/gpu/drm/tests/Ma=
kefile
> >> index ba7baa622675..d6183b3d7688 100644
> >> --- a/drivers/gpu/drm/tests/Makefile
> >> +++ b/drivers/gpu/drm/tests/Makefile
> >> @@ -9,15 +9,16 @@ obj-$(CONFIG_DRM_KUNIT_TEST) +=3D \
> >>  	drm_connector_test.o \
> >>  	drm_damage_helper_test.o \
> >>  	drm_dp_mst_helper_test.o \
> >> +	drm_exec_test.o \
> >>  	drm_format_helper_test.o \
> >>  	drm_format_test.o \
> >>  	drm_framebuffer_test.o \
> >> +	drm_gem_shmem_test.o \
> >>  	drm_managed_test.o \
> >>  	drm_mm_test.o \
> >>  	drm_modes_test.o \
> >>  	drm_plane_helper_test.o \
> >>  	drm_probe_helper_test.o \
> >> -	drm_rect_test.o	\
> >> -	drm_exec_test.o
> >> +	drm_rect_test.o
> >=20
> > Thanks for reordering the tests and symbols, but they should part of a
> > preliminary patch.
> >=20
>=20
> Okay, I'll send it as a separate patch before v3.

Thanks for taking care of this.

[...]

> >> +/*
> >> + * Wrappers to avoid an explicit type casting when passing action
> >> + * functions to kunit_add_action().
> >> + */
> >> +static void kfree_wrapper(void *p)
> >> +{
> >> +	kfree(p);
> >> +}
> >> +
> >> +static void sg_free_table_wrapper(void *sgt)
> >> +{
> >> +	sg_free_table(sgt);
> >> +}
> >> +
> >> +static void drm_gem_shmem_free_wrapper(void *shmem)
> >> +{
> >> +	drm_gem_shmem_free(shmem);
> >> +}
> >=20
> > I think you need to explicitly cast the pointer (or do a temporary
> > assignment to the proper type) to avoid a compiler warning.
> >=20
>=20
> Do you mean like:
>=20
> static void drm_gem_shmem_free_wrapper(void *shmem)
> {
> 	drm_gem_shmem_free((struct drm_gem_shmem_object *)shmem);
> }

yeah, or

static void drm_gem_shmem_free_wrapper(void *ptr)
{
	struct drm_gem_shmem_object *shmem =3D ptr;

	drm_gem_shmem_free(shmem);
}

> I built the current version with clang 16.0.6 and gcc 13.2.1 but got
> no cast warnings. Clang spotted an uninitialized variable, though.

The same thing happened to me, gcc didn't spot those issues but Intel's
build bot did. They might run with extra warnings.

Maxime

--3qk6gcllhntcokbi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZVS3VgAKCRDj7w1vZxhR
xa4aAQCAVyhWZiU+OniP4UNu1OLe7cKdZnHLG6DzxYjmbnf5pQEAiRgK42cmj+Ne
VDlM4EvcxZ19p0Bx76sBbF1hXYqX2wU=
=9mwm
-----END PGP SIGNATURE-----

--3qk6gcllhntcokbi--

--===============4223825476610203823==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4223825476610203823==--
