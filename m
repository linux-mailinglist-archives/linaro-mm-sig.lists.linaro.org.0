Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DF14C7D53E6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Oct 2023 16:25:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B82BC3EFD2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 24 Oct 2023 14:25:09 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 6E6D33EFD2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Oct 2023 14:24:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=GVjYHRiP;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=mripard@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 560ADB80760;
	Tue, 24 Oct 2023 14:24:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 570D0C433C7;
	Tue, 24 Oct 2023 14:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698157491;
	bh=JiAgJPKemF9Wi2E3Nn7vBcVAiqFYF94P9jyQ6bRIssY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GVjYHRiP6+XxzVH7PcvA+cqVtDnX8XjFr68MPXEr15HWpNxUubJZCvRUsGdSYooIB
	 96TTfcHjGLsQqmO1T/idyHpCLQAReQYVEHrT07OtneqwvON7jrBfaQgWr95vLuPB0Z
	 de2nNZifq44lq9aPDX3UXBBMf3N5vSxPvGY9mYyRvjNTz0pmvwQ+5qa2o8abfRAIUh
	 1ZGa4qjYnbCThn/DunhPbmAAcvqtUV1zGKMad0cd+AcGL9EtLouUkTgForBJ5hE4sx
	 09h28lmevoSWX3HbXOqTM+1X8xATWi7uw6BirOy+44AR+mwIVoNeSidc26ZQ+lAnYm
	 YNikKsPR4ggpA==
Date: Tue, 24 Oct 2023 16:24:49 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <c6kwqxz2xgl64qb6dzetjjh6j2a6hj7mvbkeg57f5ulfs2hrib@ocjjsoxw3ns6>
References: <DB3PR10MB683528B8252ED2A802A0E154E8D8A@DB3PR10MB6835.EURPRD10.PROD.OUTLOOK.COM>
 <CAD=FV=W0G6C-=99viHMQaW2REGRQr2xgaejnJmadOdZkoE7AjA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD=FV=W0G6C-=99viHMQaW2REGRQr2xgaejnJmadOdZkoE7AjA@mail.gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6E6D33EFD2
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RCPT_COUNT_TWELVE(0.00)[17];
	BLOCKLISTDE_FAIL(0.00)[145.40.68.75:server fail];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[hotmail.com,gmail.com,linaro.org,ravnborg.org,ffwll.ch,linux.intel.com,suse.de,lwn.net,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,lists.linuxfoundation.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ESL3YACNOSSVQHNJDPXGH5HNQ6PARWAO
X-Message-ID-Hash: ESL3YACNOSSVQHNJDPXGH5HNQ6PARWAO
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yuran Pereira <yuran.pereira@hotmail.com>, neil.armstrong@linaro.org, sam@ravnborg.org, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, corbet@lwn.net, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel-mentees@lists.linuxfoundation.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm: docs: Remove item from TODO list
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ESL3YACNOSSVQHNJDPXGH5HNQ6PARWAO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3523432932257131112=="


--===============3523432932257131112==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hybcvdpiqm52svmj"
Content-Disposition: inline


--hybcvdpiqm52svmj
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 23, 2023 at 10:25:50AM -0700, Doug Anderson wrote:
> On Mon, Oct 23, 2023 at 9:31=E2=80=AFAM Yuran Pereira <yuran.pereira@hotm=
ail.com> wrote:
> >
> > Since "Clean up checks for already prepared/enabled in panels" has
> > already been done and merged [1], I think there is no longer a need
> > for this item to be in the gpu TODO.
> >
> > [1] https://patchwork.freedesktop.org/patch/551421/
> >
> > Signed-off-by: Yuran Pereira <yuran.pereira@hotmail.com>
> > ---
> >  Documentation/gpu/todo.rst | 25 -------------------------
> >  1 file changed, 25 deletions(-)
>=20
> It's not actually all done. It's in a bit of a limbo state right now,
> unfortunately. I landed all of the "simple" cases where panels were
> needlessly tracking prepare/enable, but the less simple cases are
> still outstanding.
>=20
> Specifically the issue is that many panels have code to properly power
> cycle themselves off at shutdown time and in order to do that they
> need to keep track of the prepare/enable state. After a big, long
> discussion [1] it was decided that we could get rid of all the panel
> code handling shutdown if only all relevant DRM KMS drivers would
> properly call drm_atomic_helper_shutdown().
>=20
> I made an attempt to get DRM KMS drivers to call
> drm_atomic_helper_shutdown() [2] [3] [4]. I was able to land the
> patches that went through drm-misc, but currently many of the
> non-drm-misc ones are blocked waiting for attention.
>=20
> ...so things that could be done to help out:
>=20
> a) Could review patches that haven't landed in [4]. Maybe adding a
> Reviewed-by tag would help wake up maintainers?
>=20
> b) Could see if you can identify panels that are exclusively used w/
> DRM drivers that have already been converted and then we could post
> patches for just those panels. I have no idea how easy this task would
> be. Is it enough to look at upstream dts files by "compatible" string?

I think it is, yes.

Maxime

--hybcvdpiqm52svmj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZTfTsAAKCRDj7w1vZxhR
xcQLAQDLOftRXQ2lHJ/6tZ1C2DlWodIPleYTRFzDQVKVJDBTtQEAvg5gQvFvDTgw
ic2BwYSSUUEriwl/ml0eDvtollJE0gM=
=HH4h
-----END PGP SIGNATURE-----

--hybcvdpiqm52svmj--

--===============3523432932257131112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3523432932257131112==--
