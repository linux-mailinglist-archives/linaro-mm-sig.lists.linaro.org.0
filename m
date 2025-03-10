Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBC0A5978B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 15:27:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B3C044A49
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 10 Mar 2025 14:27:11 +0000 (UTC)
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
	by lists.linaro.org (Postfix) with ESMTPS id 305F73F39F
	for <linaro-mm-sig@lists.linaro.org>; Mon, 10 Mar 2025 14:26:55 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=WM+PScBP;
	spf=pass (lists.linaro.org: domain of mripard@kernel.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=mripard@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BDAACA45D98;
	Mon, 10 Mar 2025 14:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F40AC4CEE5;
	Mon, 10 Mar 2025 14:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741616814;
	bh=POtmH2Pk7YZquZ7ykg+i1ChooTzaYIGRWYlQYgqXhPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WM+PScBPqE5h/eL2Yaf49hmt3QKMZNb8yvz11tDPXr9ktrDYrvV4GQMZv2EE6PZZq
	 trZ3j0IX9sSWUAjmf9ZtuRPDLZ2iFu7dDsXSJ5d+S3gKp+LrhtThNHL5wC0H1gMkEs
	 +vvvRcbQ60w2/ecqyK+UIiVoeo+kjxQ0wz7p75Ci+F/zerF53xFn4FeCxyBbI4dWGg
	 Tf0H5ghqCqPjxQNJosfZ2XS5qNAQVVFMOkB/GmFpXQnQXMHbHgbIIwunlYxxVYF+xh
	 eDke46hNOfMA0wtUpzF1dRdPYVB9WwGpPynz5iKydvkeuRMYQ2XhOa1KBVmPkqy03/
	 XA1ZpP5BnfQ+A==
Date: Mon, 10 Mar 2025 15:26:52 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20250310-eccentric-wonderful-puffin-ddbb26@houat>
References: <20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org>
 <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com>
MIME-Version: 1.0
In-Reply-To: <f5fdc666-dd72-4a4f-9270-b539a3179382@amd.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 305F73F39F
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.06 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.96)[99.82%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RBL_SENDERSCORE_REPUT_9(-1.00)[147.75.193.91:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:147.75.193.91];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux-foundation.org,samsung.com,arm.com,linaro.org,collabora.com,google.com,linux.intel.com,suse.de,gmail.com,ffwll.ch,chromium.org,kernel.org,redhat.com,xs4all.nl,ideasonboard.com,kvack.org,vger.kernel.org,lists.linux.dev,lists.freedesktop.org,lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	ASN(0.00)[asn:54825, ipnet:147.75.192.0/21, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: RM7VX7DQDHS2ND64EAS544URZXI77MU5
X-Message-ID-Hash: RM7VX7DQDHS2ND64EAS544URZXI77MU5
X-MailFrom: mripard@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Ben Woodard <woodard@redhat.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, linux-mm@kvack.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/RM7VX7DQDHS2ND64EAS544URZXI77MU5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4590366625683955240=="


--===============4590366625683955240==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v4rwoqplwp332trx"
Content-Disposition: inline


--v4rwoqplwp332trx
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH RFC 00/12] dma: Enable dmem cgroup tracking
MIME-Version: 1.0

Hi,

On Mon, Mar 10, 2025 at 03:16:53PM +0100, Christian K=F6nig wrote:
> [Adding Ben since we are currently in the middle of a discussion
> regarding exactly that problem]
>
> Just for my understanding before I deep dive into the code: This uses
> a separate dmem cgroup and does not account against memcg, don't it?

Yes. The main rationale being that it doesn't always make sense to
register against memcg: a lot of devices are going to allocate from
dedicated chunks of memory that are either carved out from the main
memory allocator, or not under Linux supervision at all.

And if there's no way to make it consistent across drivers, it's not the
right tool.

Maxime

--v4rwoqplwp332trx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZ872qwAKCRDj7w1vZxhR
xfDdAQCFXvj/doesASzkIHFH0zB9NLLN59l3YZOIRTbK66YYRgD+KKLR7EXgcgov
1vvbHZ0EY8qhZsF/1+Mwgg9bFZh+1wk=
=KuAg
-----END PGP SIGNATURE-----

--v4rwoqplwp332trx--

--===============4590366625683955240==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4590366625683955240==--
