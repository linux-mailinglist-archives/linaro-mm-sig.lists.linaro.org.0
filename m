Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF7DACC770
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 15:14:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3BA845759
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  3 Jun 2025 13:14:02 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id BC2C0443E7
	for <linaro-mm-sig@lists.linaro.org>; Tue,  3 Jun 2025 13:13:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=UpgetnCo;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6602DA5014A;
	Tue,  3 Jun 2025 13:13:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCAFAC4CEED;
	Tue,  3 Jun 2025 13:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748956429;
	bh=39QVSQdlEunyDPQMXllJix/sOLusRs7AyHXNLyYHebo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UpgetnCodjjXd8xYtQ0AJXBj6gThGptV1PPVXhRTFPf/ZW9mXeevHkJ422HpPi9IE
	 3cluumTXUPGLdV5XsERn/VfOi8xgnsocmRxb05lr5pudms703buYhdSw+OvcvCnwF9
	 CyqtkWtgIs30VMlAViK/SZ+IKzcZ2qb4mNJtYopCf+Xmby9eg1IYcmhvjtUTPhg9Po
	 TcW0nguoR21uy5BQptps8fJ3+ZXwoVWOBbazHvATqSEN0xbD7N9rFgT5ODO5fpLm1+
	 rlBtX7DS2zbd5CLgCF1GpkUjP4XapI02R2XyPO5HjUPkdhqvAfNe3Z273BhJhatZmy
	 VlRq7y5DpNqow==
Date: Tue, 3 Jun 2025 15:13:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250603-outrageous-kakapo-of-felicity-6dc41a@houat>
References: <20250515095004.28318-1-tvrtko.ursulin@igalia.com>
 <20250515095004.28318-3-tvrtko.ursulin@igalia.com>
 <c93c05be-b2c8-42a2-84d1-32b90743eb82@amd.com>
 <b59cadff-da9a-409f-a5ed-96aafdfe3f0b@igalia.com>
 <13c5edf6-ccad-4a06-85d4-dccf2afd0c62@amd.com>
MIME-Version: 1.0
In-Reply-To: <13c5edf6-ccad-4a06-85d4-dccf2afd0c62@amd.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	DNSWL_BLOCKED(0.00)[147.75.193.91:from];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: BC2C0443E7
X-Spamd-Bar: ---------
Message-ID-Hash: LEO735MKQZB6PJBRFSORC4BUBLD63KTC
X-Message-ID-Hash: LEO735MKQZB6PJBRFSORC4BUBLD63KTC
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, amd-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, kernel-dev@igalia.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/9] dma-fence: Use a flag for 64-bit seqnos
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LEO735MKQZB6PJBRFSORC4BUBLD63KTC/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2749507641734402731=="


--===============2749507641734402731==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="dqnx5uyzsy7xnzpf"
Content-Disposition: inline


--dqnx5uyzsy7xnzpf
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/9] dma-fence: Use a flag for 64-bit seqnos
MIME-Version: 1.0

Hi,

On Mon, Jun 02, 2025 at 04:42:27PM +0200, Christian K=F6nig wrote:
> On 6/2/25 15:05, Tvrtko Ursulin wrote:
> > On 15/05/2025 14:15, Christian K=F6nig wrote:
> >> Hey drm-misc maintainers,
> >>
> >> can you guys please backmerge drm-next into drm-misc-next?
> >>
> >> I want to push this patch here but it depends on changes which are par=
tially in drm-next and partially in drm-misc-next.
> >=20
> > Looks like the backmerge is still pending?
>=20
> Yes, @Maarten, @Maxime and @Thomas ping on this.

It's done

Maxime

--dqnx5uyzsy7xnzpf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaD71CQAKCRAnX84Zoj2+
dp9jAX9u79CLhp4GCgWfIOWa3qsFqPl6tJ233zRU0nefH4IQ5uGsfi13qF6RXPic
qi8D9QMBfi8ZjYy/0C1GdO3wm3XAOpv8rhv8JVUNzDAe0KFrs6bFRLLTmXpBZ7RZ
qswqWy6hJw==
=2vgs
-----END PGP SIGNATURE-----

--dqnx5uyzsy7xnzpf--

--===============2749507641734402731==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2749507641734402731==--
