Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UADzEXycoWl8ugQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 14:30:36 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D8E1B7A9B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 14:30:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DE783F9BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 27 Feb 2026 13:30:34 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id 823C63F9BA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 Feb 2026 13:30:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=F9ZwxSbT;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 04B5F60008;
	Fri, 27 Feb 2026 13:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DD5CC116C6;
	Fri, 27 Feb 2026 13:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772199032;
	bh=n4yX5l6q7fUwZBwFYRwfHjLdICdDCZUGrXzVl1z1sXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F9ZwxSbTgLHYJpVWUuDP8wbZwcQB05N9yCc139iBS4j42M6KY7s3p9hu4NaBCEhuo
	 nm64rd+BuFeAnRt6r+oAAilijlNBgCpQX/8Vios1yk4BLbTekn169/1BPUBUTrR+T6
	 1g+44JrAY8+QcLwWcfR3VxE5sd7R3JpFvEq6uKMV8Bri2YlpIDYwvuMsAwFXM3JWGm
	 pewISR+4xeDio4bgZyALFItTtDfth0boMVvgA/jMury2H1cdCtzDDjLySkXPykIZDr
	 GGH1R7bvtv2st3HjQYncwcWM8GG61yNVbeKUuKLEXbAjzt1mCuvoy/MV8W1sqRTXFA
	 7QBd9EokKi1AA==
Date: Fri, 27 Feb 2026 14:30:29 +0100
From: Maxime Ripard <mripard@kernel.org>
To: John Stultz <jstultz@google.com>
Message-ID: <20260227-psychedelic-tireless-herring-0adfa9@houat>
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org>
 <CANDhNCqk9Uk4aXHhUsL4hR1GHNmWZnH3C9Np-A02wdi+J3D7tA@mail.gmail.com>
 <20260226-adaptable-vermilion-nautilus-0aa6f0@penduick>
 <CANDhNCrpNU7QJgu+0CZRvdxLwKp8VNxZoG_zDo7qqxaE0mjoTw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANDhNCrpNU7QJgu+0CZRvdxLwKp8VNxZoG_zDo7qqxaE0mjoTw@mail.gmail.com>
X-Spamd-Bar: -----
Message-ID-Hash: YUDVY43CLNKWQT3RLYNHEYXDSFFGKGPP
X-Message-ID-Hash: YUDVY43CLNKWQT3RLYNHEYXDSFFGKGPP
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 0/7] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YUDVY43CLNKWQT3RLYNHEYXDSFFGKGPP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0980341152333575630=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SIGNED_PGP(-2.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/mixed,multipart/signed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[21];
	DKIM_TRACE(0.00)[kernel.org:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mripard@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,googlesource.com:url]
X-Rspamd-Queue-Id: A7D8E1B7A9B
X-Rspamd-Action: no action


--===============0980341152333575630==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="ybq2aqmqnxghgoih"
Content-Disposition: inline


--ybq2aqmqnxghgoih
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/7] dma-buf: heaps: Turn heaps into modules
MIME-Version: 1.0

Hi John,

On Thu, Feb 26, 2026 at 10:03:21AM -0800, John Stultz wrote:
> On Thu, Feb 26, 2026 at 2:18=E2=80=AFAM Maxime Ripard <mripard@kernel.org=
> wrote:
> > On Wed, Feb 25, 2026 at 10:51:30AM -0800, John Stultz wrote:
> > > So heaps-as-modules is common in the Android kernels, and was
> > > attempted to be upstreamed long ago:
> > >   https://lore.kernel.org/lkml/20191025234834.28214-1-john.stultz@lin=
aro.org/
> > >
> > > And it got a fairly chilly reception, but maybe having the additional
> > > optee heap (as well as other proposed heaps) might sway folks on this
> > > now.
> >
> > I didn't know that Android was using heap as modules only, but I'd say
> > that it's even more of a reason to upstream it then.
> >
> > > There is also the kref bits you might need (which Android still carri=
es):
> > >   https://lore.kernel.org/lkml/20200725032633.125006-1-john.stultz@li=
naro.org/
> >
> > I'm curious about this one though. It looks like you add refcounting,
> > but never really get the references anywhere. What was your intent, that
> > on every allocation the buffer would get a reference to the heap so we
> > avoid removing a heap with allocated buffers?
>=20
> Oh, apologies I mixed this up. You can ignore that suggestion.
>=20
> In Android, once folks were familiar with thinking about dma-buf
> heaps, some (out of tree) drivers wanted to be able to internally
> allocate from a given heap (somewhat of a hold-over from the old ION
> drivers). So we have a convenience patch to provide that:
>    https://android.googlesource.com/kernel/common/+/8e1ec97355ef9927e82ec=
18c98312bdcd80bf289%5E%21/
>=20
> And since we return a dma_heap to the driver to allocate against:
>   https://android.googlesource.com/kernel/common/+/fc1310ebf8fe25ea7b9834=
00e6fa41f5a6d11966%5E%21/
>=20
> The kref bit is to make sure we're doing proper reference counting on
> that shared pointer.
>=20
> This ended up getting bundled together along with the heaps-as-modules
> changes in our out-of-tree changes, and I just confused its use here.

Understood, thanks :)

It looks like there's some people interested in doing what you described
though, so we might need your patch still.

Maxime

--ybq2aqmqnxghgoih
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaaGcdQAKCRAnX84Zoj2+
dlInAYDiZPR1HyqxbwSMVJaP54olybYOcsMkzhKqdmUzzyNp1PJL2iscONIeEv0g
z3hqowsBgJDNhcz09KstrR3FmwlC0rN908FYO2XMXAIcrplcSndu1qOliyhSfM9Z
3ioBgkbAMA==
=BqyY
-----END PGP SIGNATURE-----

--ybq2aqmqnxghgoih--

--===============0980341152333575630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0980341152333575630==--
