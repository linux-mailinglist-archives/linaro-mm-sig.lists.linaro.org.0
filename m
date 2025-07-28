Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 799E9B1363C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Jul 2025 10:21:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E840F45413
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 28 Jul 2025 08:21:10 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 47A6E3F6EC
	for <linaro-mm-sig@lists.linaro.org>; Mon, 28 Jul 2025 08:20:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="szZ04/Ls";
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8DC675C59C0;
	Mon, 28 Jul 2025 08:20:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C07F1C4CEF7;
	Mon, 28 Jul 2025 08:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753690857;
	bh=AQ/gJ+i4rwtrIdkTrmIh33ppP9Uq14yzAdB+5MSlawA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=szZ04/Lsri0o11eVQhg9uaIGFpacB+rTBOpQCv2uVtpkvBEoZg+2YhYOZp79nmcJU
	 XoxJmMCUZUmmIBLPqQw01Ghgib3qFJF2cqxxKFQnPRHmmSkhZY024yjqGQNr9v9UT9
	 BGY2LIIwAdi78LeJXBYnQfJa89hv8dz1xKze3e5YhllN40EKJviX8xvuTTIK66D8ZW
	 P9eyfJefDgkFUs7jPZNyeyhP1XptEdNSZ8/g4eMOrPWMTZOdJKuMxDI5trIQNT+2dz
	 6cHMaiAGJ9QVecJDBBEx4Z7kgL+BD3Bf75RYbnH94vnIjRILxQ9mk6VDGo2zC7yazh
	 SqcUZXeTEyFqA==
Date: Mon, 28 Jul 2025 10:20:54 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Andrew Davis <afd@ti.com>
Message-ID: <20250728-pastoral-brave-guillemot-f1a3b2@houat>
References: <20250717-dma-buf-heap-names-doc-v3-1-d2dbb4b95ef6@kernel.org>
 <30d4bf10-274d-485c-84dd-7cbb8157efab@ti.com>
MIME-Version: 1.0
In-Reply-To: <30d4bf10-274d-485c-84dd-7cbb8157efab@ti.com>
X-Spamd-Result: default: False [-5.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,lwn.net,redhat.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	URIBL_BLOCKED(0.00)[2.128.222.128:email];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 47A6E3F6EC
X-Spamd-Bar: -----
Message-ID-Hash: FHTQVFGWY5HSEVRPM4IMCEU46DZDXAZX
X-Message-ID-Hash: FHTQVFGWY5HSEVRPM4IMCEU46DZDXAZX
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, Jared Kangas <jkangas@redhat.com>, Mattijs Korpershoek <mkorpershoek@kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Bagas Sanjaya <bagasdotme@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FHTQVFGWY5HSEVRPM4IMCEU46DZDXAZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4621859286942762939=="


--===============4621859286942762939==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="whtoihy75ghtpw24"
Content-Disposition: inline


--whtoihy75ghtpw24
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3] Documentation: dma-buf: heaps: Add naming guidelines
MIME-Version: 1.0

Hi Andrew,

Thanks for your review.

On Fri, Jul 25, 2025 at 12:49:37PM -0500, Andrew Davis wrote:
> On 7/17/25 3:10 AM, Maxime Ripard wrote:
> > We've discussed a number of times of how some heap names are bad, but
> > not really what makes a good heap name.
> >=20
> > Let's document what we expect the heap names to look like.
> >=20
> > Reviewed-by: Bagas Sanjaya <bagasdotme@gmail.com>
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
> > ---
> > Changes in v3:
> > - Grammar, spelling fixes
> > - Remove the cacheable / uncacheable name suggestion
> > - Link to v2: https://lore.kernel.org/r/20250616-dma-buf-heap-names-doc=
-v2-1-8ae43174cdbf@kernel.org
> >=20
> > Changes in v2:
> > - Added justifications for each requirement / suggestions
> > - Added a mention and example of buffer attributes
> > - Link to v1: https://lore.kernel.org/r/20250520-dma-buf-heap-names-doc=
-v1-1-ab31f74809ee@kernel.org
> > ---
> >   Documentation/userspace-api/dma-buf-heaps.rst | 35 ++++++++++++++++++=
+++++++++
> >   1 file changed, 35 insertions(+)
> >=20
> > diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentat=
ion/userspace-api/dma-buf-heaps.rst
> > index 535f49047ce6450796bf4380c989e109355efc05..3ee4e7961fe390ba356a212=
5d53b060546c3e4a6 100644
> > --- a/Documentation/userspace-api/dma-buf-heaps.rst
> > +++ b/Documentation/userspace-api/dma-buf-heaps.rst
> > @@ -21,5 +21,40 @@ following heaps:
> >      usually created either through the kernel commandline through the
> >      `cma` parameter, a memory region Device-Tree node with the
> >      `linux,cma-default` property set, or through the `CMA_SIZE_MBYTES`=
 or
> >      `CMA_SIZE_PERCENTAGE` Kconfig options. Depending on the platform, =
it
> >      might be called ``reserved``, ``linux,cma``, or ``default-pool``.
> > +
> > +Naming Convention
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +``dma-buf`` heaps name should meet a number of constraints:
> > +
> > +- The name must be stable, and must not change from one version to the=
 other.
> > +  Userspace identifies heaps by their name, so if the names ever chang=
e, we
> > +  would be likely to introduce regressions.
> > +
> > +- The name must describe the memory region the heap will allocate from=
, and
> > +  must uniquely identify it in a given platform. Since userspace appli=
cations
> > +  use the heap name as the discriminant, it must be able to tell which=
 heap it
> > +  wants to use reliably if there's multiple heaps.
> > +
> > +- The name must not mention implementation details, such as the alloca=
tor. The
> > +  heap driver will change over time, and implementation details when i=
t was
> > +  introduced might not be relevant in the future.
> > +
> > +- The name should describe properties of the buffers that would be all=
ocated.
> > +  Doing so will make heap identification easier for userspace. Such pr=
operties
> > +  are:
> > +
> > +  - ``contiguous`` for physically contiguous buffers;
> > +
> > +  - ``protected`` for encrypted buffers not accessible the OS;
> > +
> > +- The name may describe intended usage. Doing so will make heap identi=
fication
> > +  easier for userspace applications and users.
> > +
> > +For example, assuming a platform with a reserved memory region located=
 at the
> > +RAM address 0x42000000, intended to allocate video framebuffers, physi=
cally
> > +contiguous, and backed by the CMA kernel allocator, good names would be
> > +``memory@42000000-cacheable-contiguous`` or ``video@42000000``, but
>=20
> You dropped "cacheable" but left it here in the suggested names, maybe
> replace with "protected" here. Otherwise, LGTM,

Replacing it with protected would create an example where we have CMA
allocating protected buffers, which is pretty weird.

So I've only removed the cacheable mention, and will send a new version
shortly.

> Reviewed-by: Andrew Davis <afd@ti.com>

Thanks!
Maxime

--whtoihy75ghtpw24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaIcy5gAKCRAnX84Zoj2+
dhYMAX9S94nCvbMrRrWrQiSsbQjN1CtoUA9QMx6gY4Z657x3s2dQS/qENGFSSGyn
rbLqeckBgO16oHKbdDr7ay/hCSD1vABF/Bud3kyewAIwiH0xa5SP0XSi6R+MYrQw
3spHFhOTXA==
=hsS/
-----END PGP SIGNATURE-----

--whtoihy75ghtpw24--

--===============4621859286942762939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4621859286942762939==--
