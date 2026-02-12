Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEFnIWwR4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:20 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 2871F411DE2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:42:20 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 371B944F23
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:42:19 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id EF156401D9
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Feb 2026 14:44:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XkxyqDfd;
	spf=pass (lists.linaro.org: domain of thierry.reding@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=thierry.reding@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6209A6001A;
	Thu, 12 Feb 2026 14:44:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87E5AC4CEF7;
	Thu, 12 Feb 2026 14:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770907454;
	bh=wsRfq4JQHV9EhUjp6BlIKRlXnA1FZ0qmUD3BISX7I1E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XkxyqDfdIbc2bvCV2VBTnKQn9x0JFcTOZBtBFX9PB8A/2SpUcIM1nvBYIKLVp7Lmm
	 lQadF0urGbstpA3g9OASJ+foqHw327u6Sa3rSgYzmtxZDbIqF8POCkoZL6HQ0uzA2n
	 euVz7mNjkB/EnKj7QbbU4yEvU27No5zuj7siNzFWGIA4qqv9MeuF4DWoOhsyqGj+nQ
	 YedwoFYYkkwAZIeXxE7U+M5M9UiuoXGQY1TTFXZs0kXeg0mCoNz2Ssbs09aLyqB1I6
	 cG5j7sYjeMmNkVYyk0RePGcka/JK5TRHwlAEYq3Nqj2STN4KtIFqQSP7/eQ+SwpDmV
	 N3yMaDkmI1QQQ==
Date: Thu, 12 Feb 2026 15:44:11 +0100
From: Thierry Reding <thierry.reding@kernel.org>
To: Maxime Ripard <mripard@redhat.com>
Message-ID: <aY3j57xvdOY09EwQ@orome>
References: <20260122161009.3865888-1-thierry.reding@kernel.org>
 <20260122161009.3865888-5-thierry.reding@kernel.org>
 <20260123-active-witty-rabbit-0fc5b9@houat>
MIME-Version: 1.0
In-Reply-To: <20260123-active-witty-rabbit-0fc5b9@houat>
X-Spamd-Bar: -----
X-MailFrom: thierry.reding@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: U2L2GZESWDXSI6YWCAJMNYGWKFXJBRIL
X-Message-ID-Hash: U2L2GZESWDXSI6YWCAJMNYGWKFXJBRIL
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:36:19 +0000
CC: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@redhat.com>, Mike Rapoport <rppt@kernel.org>, Sumit Garg <sumit.garg@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/U2L2GZESWDXSI6YWCAJMNYGWKFXJBRIL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7553087108623231218=="
X-Spamd-Result: default: False [2.89 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[1513];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+mx:c];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FREEMAIL_CC(0.00)[gmail.com,ffwll.ch,linaro.org,kernel.org,collabora.com,arm.com,google.com,linux-foundation.org,redhat.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org,kvack.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	FROM_NEQ_ENVFROM(0.00)[thierry.reding@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,dt];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,nvidia.com:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 2871F411DE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--===============7553087108623231218==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="glr5iu7kbaysq2rw"
Content-Disposition: inline


--glr5iu7kbaysq2rw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 04/10] mm/cma: Allow dynamically creating CMA areas
MIME-Version: 1.0

On Fri, Jan 23, 2026 at 02:25:16PM +0100, Maxime Ripard wrote:
> On Thu, Jan 22, 2026 at 05:10:03PM +0100, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > There is no technical reason why there should be a limited number of CMA
> > regions, so extract some code into helpers and use them to create extra
> > functions (cma_create() and cma_free()) that allow creating and freeing,
> > respectively, CMA regions dynamically at runtime.
> >=20
> > The static array of CMA areas cannot be replaced by dynamically created
> > areas because for many of them, allocation must not fail and some cases
> > may need to initialize them before the slab allocator is even available.
> > To account for this, keep these "early" areas in a separate list and
> > track the dynamic areas in a separate list.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
>=20
> AFAIU, this won't create a new cma heap when registering. This goes
> against the recent work we did to create one for every cma region.
>=20
> I guess, since you have a driver that would explicitly handle that
> region, we should create some kind of opt-out mechanism, but by default,
> we should still create such a heap.

It sounds like there's a bit of a conflict between what you want to
achieve and what this series attempts to do.

The way I see it, the CMA code is more of a helper that gives you a
specific functionality set. Exposing each CMA area as a heap that
userspace can allocate from seems like a bad idea to me.

Without knowing anything specific about a CMA area you don't know if it
makes sense to expose it as a heap. Given that there is very little
information associated with a CMA area there's only so much guessing
that you can do. I think it'd be more sensible to make CMA areas opt-in
to have a heap created for them rather than requiring opt-out. Exposing
a heap publicly applies only to a (potentially) small subset of all CMA
areas, albeit at the moment it may seem that that is what it's primarily
used for.

In fact, for this particular driver nobody must allocate from any of the
CMA regions associated with the heap driver outside of that heap driver,
simply because the heap driver maintains meta data about these CMA
regions for things to work. If we allow access to it from anywhere,
things are eventually going to explode.

> That being said, it's not clear to me why the heap driver uses CMA in
> the first place.

We use CMA as a way of reclaiming memory if needed. The heap that we
create is meant to be resizable, so that when nothing uses the heap, the
memory can be reused for other purposes. However, when memory is
allocated from the heap, we need to reclaim that memory for the heap and
relocate any buffers allocated from the region somewhere else. CMA does
all of that for us, so it seemed like the logical choice for this.

Thierry

--glr5iu7kbaysq2rw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmmN5zgACgkQ3SOs138+
s6FSqRAAwWGzG1UjDgVwyR+isYP6DrFMGbojEtczHFxgKElBKoFjjqtdmpN97XRD
7MIc1C6LGCLoJa++YXy7ZlL24CTzYRohVBnmy/Hygdz2uoaeW7GdR0M31slI/lG4
TpliCL/GXNi1ZhmE8BjykmsEqgjHG+PH9Vd1/VEgo/5DoaX3uc+8TndO9hqh/Jgh
gFScFbr/VRKDx8wdWyhOsWN4Nm52uJBCPbhJ8dGv4iabMopEwOlLpcm32aFNWMHv
El8zIIeGzfw9lfWm2WZvtO8heFn3R0kT5yw4opDc7STvO7k6fC/ZQWbg86FR71/e
DtrHMcjjg+75TIZemvKQwPrshL7CAdwcaNnT+QxVKE0oqHxjoIonRsUkEaTrFKyE
6n6eqR8+enCtH3hamWE6rFocZQzL5zXxqILwbzeAR/4CBtXBh3pZL4SH6V0cye9h
jci5Lfjh2SiLSggSKXsTBgrCLCvz8DuapM8GEtfkRS1YoKrix+uGe0nj+J3uAx+U
SyvOCMoTb+WWQNOyNBMpS2Wk3KcNDMuadOtuxbZa1BInxUBOktPn/km1vJgiO0au
5sWtH6xSgLF50qbTEFRVg+Pz31LIT+TZSA6L2gj5EmD1gKZeefPCtkiBgDZdsvwk
KAejAHsfMS0kibucCHIgTg6cjifaVKfFVtiBh3BX8ZuSmmlqnOM=
=TTIe
-----END PGP SIGNATURE-----

--glr5iu7kbaysq2rw--

--===============7553087108623231218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7553087108623231218==--
