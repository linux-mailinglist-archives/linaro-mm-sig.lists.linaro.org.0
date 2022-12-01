Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4288A63EDB5
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 11:28:09 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1FA683F2E7
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  1 Dec 2022 10:28:08 +0000 (UTC)
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com [66.111.4.229])
	by lists.linaro.org (Postfix) with ESMTPS id 643EF3ECB4
	for <linaro-mm-sig@lists.linaro.org>; Thu,  1 Dec 2022 10:27:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=cerno.tech header.s=fm2 header.b=Ifcsm7mF;
	dkim=pass header.d=messagingengine.com header.s=fm1 header.b=jHUQhnx+;
	spf=pass (lists.linaro.org: domain of maxime@cerno.tech designates 66.111.4.229 as permitted sender) smtp.mailfrom=maxime@cerno.tech;
	dmarc=pass (policy=none) header.from=cerno.tech
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.nyi.internal (Postfix) with ESMTP id 32628580452;
	Thu,  1 Dec 2022 05:27:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 01 Dec 2022 05:27:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1669890479; x=1669897679; bh=eip0JYxLwA
	AvXLG5NBGWWs0mG1joDIdVXmK8+H3wc1I=; b=Ifcsm7mFF1kDXPSQsE2BjtauEl
	4bwtK3ys+M8QAe1DT6cDljjLeiP9u7O0waPCTSzJZvOmYsNzMNupyKSk7RlXCn+z
	SIt1N4VnFoe4DRug4ptdM/z7kJGtGgRWYHRgCq/DKQ6rEmGJI/hv+ECAVO3zMQeo
	m/6LelTKZuZRwHGi73LM3aKWDMjnFswHYQHFCEMLH1tLxRaMBy4KGPefilNGDnna
	6EK9Iysjbf14LMFylHM+HCptA8YYGFlPnzMz5BBJ2Eh0H5sA0SE1O0qzDtKn1/0s
	9fwoHGL9mP8OuXk1t9ZuXLI8vy7GGe+YC/LR8Z/wxq+3RwzxSR5zYC46inuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1669890479; x=1669897679; bh=eip0JYxLwAAvXLG5NBGWWs0mG1jo
	DIdVXmK8+H3wc1I=; b=jHUQhnx+FI055/Dk7FSqjW8PozYbbmB3jI+xMqePY5Jj
	0UQDS9Y8DOSGFbJpQ4QEN9aB7JffyVZkvEDR0TvX5/EzJf+vOAqw79xBlTUNz7+W
	KJ0LinhY/5xoBand1PEsJ0azU99iEa5mlvOM30ACai17rfRBbmuaM4K74XyirEBt
	3bdKNePuRK7UFfRbZL8DsWMnAinS/Nin6J9uI9cwHq1W2z0iwwD3dx8k2i25xwvt
	Nvl4b6krJS5AIgr1bDa3eNVaF4kqOl0r/OVmPhb/RYd1D44m+b6kCfijbWUlpNQD
	qpJjMNXHbnnt75kCuekTNKj6DTBZHrZDeWEHpqPKXw==
X-ME-Sender: <xms:roGIY3t5EVZ6P2nmvzYh2n3KX1wn5jjGpXvnR_UMoii3VMCt7HzlbA>
    <xme:roGIY4dX70cqC8xyYYQZj1dMJaBWiGC6MgELboTwMB-kZwhyR6iQLWrSjM5W5iWVU
    pgvIZu9hJ57oIJZQ44>
X-ME-Received: <xmr:roGIY6zmX2PjGrVQ_9LAsGEJTWJ3icluf8JDoPz0NpBX8paAhbeL7jtLsJzHakw2XJKg9g0Tz6XO_DNKI9Hurpfi1Whh19sUL2BOd8R4ZMhYlQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrtdehgdduiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepteefffefgfektdefgfeludfgtdejfeejvddttdekteeiffejvdfgheehfffh
    vedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:roGIY2Mrh4wLnI7uI2YewVbvhK3flXFU53LCcK--03OlrKntaKrl8w>
    <xmx:roGIY38vEFyFckc2pabqAl8ozfHf0tdmLRtbjwDz8NpJU2xRwCFSUA>
    <xmx:roGIY2XviimfKRkxKNJvK6RXgTp7kk1xgLBBWK0mjxWstfwn18GKsQ>
    <xmx:r4GIY8I0DibJnlROOBEyRBqM50z2I12pSKhLfsOYzZPX_ytFUHGQuQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 1 Dec 2022 05:27:58 -0500 (EST)
Date: Thu, 1 Dec 2022 11:27:56 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <20221201102756.cdvxu4iryhu3rjpf@houat>
References: <20221123-rpi-kunit-tests-v2-0-efe5ed518b63@cerno.tech>
 <20221123-rpi-kunit-tests-v2-1-efe5ed518b63@cerno.tech>
 <ebe02c21-7770-0415-096e-76a839bad154@redhat.com>
MIME-Version: 1.0
In-Reply-To: <ebe02c21-7770-0415-096e-76a839bad154@redhat.com>
X-Rspamd-Queue-Id: 643EF3ECB4
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[66.111.4.229:from];
	DMARC_POLICY_ALLOW(-0.50)[cerno.tech,none];
	R_SPF_ALLOW(-0.20)[+ip4:66.111.4.229];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[cerno.tech:s=fm2,messagingengine.com:s=fm1];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[ffwll.ch,linux.intel.com,gmail.com,suse.de,lists.freedesktop.org,linuxfoundation.org,googlegroups.com,vger.kernel.org,lists.linaro.org,linux.dev,riseup.net,raspberrypi.com,google.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:19151, ipnet:66.111.4.0/24, country:US];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cerno.tech:email,cerno.tech:dkim];
	DKIM_TRACE(0.00)[cerno.tech:+,messagingengine.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[new3-smtp.messagingengine.com:rdns,new3-smtp.messagingengine.com:helo,messagingengine.com:dkim,cerno.tech:email,cerno.tech:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2ITS6IKR5B55GPLCWRU4KKC6QY36H3GB
X-Message-ID-Hash: 2ITS6IKR5B55GPLCWRU4KKC6QY36H3GB
X-MailFrom: maxime@cerno.tech
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, dri-devel@lists.freedesktop.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kunit-dev@googlegroups.com, linux-media@vger.kernel.org, linux-kselftest@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Brendan Higgins <brendan.higgins@linux.dev>, =?utf-8?B?TWHDrXJh?= Canal <mairacanal@riseup.net>, Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org, David Gow <davidgow@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 01/17] drm/tests: helpers: Move the helper header to include/drm
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2ITS6IKR5B55GPLCWRU4KKC6QY36H3GB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0493283765929673201=="


--===============0493283765929673201==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mtc5qjwrdj4bgosl"
Content-Disposition: inline


--mtc5qjwrdj4bgosl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Javier,

On Wed, Nov 30, 2022 at 09:00:03AM +0100, Javier Martinez Canillas wrote:
> On 11/28/22 15:53, Maxime Ripard wrote:
> > We'll need to use those helpers from drivers too, so let's move it to a
> > more visible location.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  drivers/gpu/drm/tests/drm_client_modeset_test.c            | 3 +--
> >  drivers/gpu/drm/tests/drm_kunit_helpers.c                  | 3 +--
> >  drivers/gpu/drm/tests/drm_modes_test.c                     | 3 +--
> >  drivers/gpu/drm/tests/drm_probe_helper_test.c              | 3 +--
> >  {drivers/gpu/drm/tests =3D> include/drm}/drm_kunit_helpers.h | 0
> >  5 files changed, 4 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/tests/drm_client_modeset_test.c b/drivers/=
gpu/drm/tests/drm_client_modeset_test.c
> > index 52929536a158..ed2f62e92fea 100644
> > --- a/drivers/gpu/drm/tests/drm_client_modeset_test.c
> > +++ b/drivers/gpu/drm/tests/drm_client_modeset_test.c
> > @@ -8,12 +8,11 @@
> >  #include <drm/drm_connector.h>
> >  #include <drm/drm_edid.h>
> >  #include <drm/drm_drv.h>
> > +#include <drm/drm_kunit_helpers.h>
>=20
> I wonder if now that this header was moved outside of the tests directory,
> if we should add stub functions in the header file that are just defined
> but do nothing if CONFIG_DRM_KUNIT_TEST isn't enabled. So that including
> it in drivers will be a no-op.
>=20
> Or do you plan to conditionally include this header file in drivers? So
> that is only included when CONFIG_DRM_KUNIT_TEST is enabled?

I'm not entirely sure. I'd expect only the tests to include it, and thus
would depend on DRM_KUNIT_TEST already. But we can always add the stubs
if it's ever included in a different context.

> Another thing that wondered is if we want a different namespace for this
> header, i.e: <drm/testing/drm_kunit_helpers.h>, to make it clear that is
> not part of the DRM API but just for testing helpers.

If there's a single header, I don't think we need to create the
directory. This is also something we can consolidate later on if needed.

> But these are open questions really, and they can be done as follow-up:
>=20
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Thanks :)
Maxime

--mtc5qjwrdj4bgosl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCY4iBrAAKCRDj7w1vZxhR
xRpOAQDHwNPpAQkoE6hXFx/5LBWCsUpiuUg3V17tLDsBtosnuAD/TKCoP+W/vHA/
r8y7Tk1Pv3JAJ6pNY93sYVLHX2HmKQM=
=Kavk
-----END PGP SIGNATURE-----

--mtc5qjwrdj4bgosl--

--===============0493283765929673201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0493283765929673201==--
