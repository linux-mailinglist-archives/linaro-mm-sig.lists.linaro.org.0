Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E97973D9F6E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 10:24:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BA24764823
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 29 Jul 2021 08:24:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2386063538; Thu, 29 Jul 2021 08:24:16 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ED5F263509;
	Thu, 29 Jul 2021 08:24:13 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D5A6861179
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 08:24:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C8FC963509; Thu, 29 Jul 2021 08:24:12 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by lists.linaro.org (Postfix) with ESMTPS id B9AB761179
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 08:24:10 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id u3so9424787lff.9
 for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jul 2021 01:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=G+Xz0QEq5wz3RNVVo8FtNDcy65lKifkkcvU9k8GjVG8=;
 b=XdBbKBZqGy0FNSyHcp2Kg1khC3/H0yjS2T7iFC6ayZsW2nRlpIalCvFyocQmrmZO3t
 vSGsJbjPgC1f82y/m10k/Az93WquoJqxx3vg1Dj+15xw/5KKoUMCnpjtMI7HOSjv6yZa
 xeZescss1HHCxuM8lzVpuLD6TYnt/fxcT674IDVuURJTdEtEJuAyod56+cqZdrVVSK9O
 S8OKiAyUpgW3umuo5N+RGL9tWnLbeVtwgriUfZ7gwcmyyTzLyHCpCO5Wv0Azz1timtg+
 i3h5KDslFMfADob7YU1FAbcjQd9uQmvLBKsHXkYLDQ/+Xh38fz6mtcBQ2wt7EWUlwu/P
 GgLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=G+Xz0QEq5wz3RNVVo8FtNDcy65lKifkkcvU9k8GjVG8=;
 b=ZzPjCQJRhkfYaH+sv9ESy18HUx2CD+GB+C+epYlGdXqYdJkEKuKucTFlUYODfkXgT/
 VhjqJqFoibi6it3CY9v+HKX6MU7a5cRCyXwlloa2iQZ0CqIuM4pcoOqCbSFVuYwiSbUt
 aoBkKbeIfbqLZKlhJftl+4j6r/937ABP4roo67Ml9TnxuxOkToyg70+WLt/8lvRC+JmR
 sc+6UBOrfm9VgstNi3325tOtsoGjornVOawp2lH2KIbCATMYsv3OGxjdVTTPKE1ZPhDa
 wFLr8RGzWzNHgAgiLHdsDelRIlZHhXbATn9kYG6HVOIKuFYkvnbTCVmgW23gfd3R1Gto
 6OBA==
X-Gm-Message-State: AOAM530/98vs4iSUK9xj6+e3kptdtz1RCfRg5aAzjlfsAx2ZqCvOvBy1
 FEg0tpc8Wou9dHDB2+eeH70=
X-Google-Smtp-Source: ABdhPJx3zQbUfVolfZXuorgwsMKZOlsC0XNccvgtZrhv2E6/ERdQqfPhXntVtLalwdv4tEmmeQr6Aw==
X-Received: by 2002:a19:fc13:: with SMTP id a19mr2996482lfi.581.1627547049434; 
 Thu, 29 Jul 2021 01:24:09 -0700 (PDT)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id h12sm108258ljq.41.2021.07.29.01.24.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jul 2021 01:24:09 -0700 (PDT)
Date: Thu, 29 Jul 2021 11:23:58 +0300
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20210729112358.237651ff@eldfell>
In-Reply-To: <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
References: <20210726233854.2453899-1-robdclark@gmail.com>
 <28ca4167-4a65-0ccc-36be-5fb017f6f49d@daenzer.net>
 <CAF6AEGuhQ2=DSDaGGVwBz5O+FoZEjpgoVJOcFecpd--a9yDY1w@mail.gmail.com>
 <99984703-c3ca-6aae-5888-5997d7046112@daenzer.net>
 <CAJs_Fx4O4w5djx3-q5zja51-ko_nQ0X2nEk3qoZB_axpBVSrKA@mail.gmail.com>
 <f6d73ec5-85f9-1b18-f2d2-a5f3b7333efa@gmail.com>
 <c9ee242e-542e-e189-a1ec-c1be34d66c93@daenzer.net>
 <04d44873-d8e6-6ae7-f0f9-17bcb484d697@amd.com>
 <9d5f4415-d470-3bc1-7d52-61ba739706ae@daenzer.net>
 <eedfdc75-72f8-9150-584b-c5e9d16db180@amd.com>
 <20210728165700.38c39cf8@eldfell>
 <74e310fa-e544-889f-2389-5abe06f80eb8@amd.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC 0/4] dma-fence: Deadline awareness
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Rob Clark <robdclark@chromium.org>, Matthew Brost <matthew.brost@intel.com>,
 Jack Zhang <Jack.Zhang1@amd.com>,
 Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>,
 open list <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING
 FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Luben Tuikov <luben.tuikov@amd.com>, Roy Sun <Roy.Sun@amd.com>,
 Gustavo Padovan <gustavo@padovan.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tian Tao <tiantao6@hisilicon.com>,
 Lee Jones <lee.jones@linaro.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5673027607296055956=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

--===============5673027607296055956==
Content-Type: multipart/signed; boundary="Sig_/XsIW6p7OIJaoYdmP1AsQtia";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/XsIW6p7OIJaoYdmP1AsQtia
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 28 Jul 2021 16:30:13 +0200
Christian K=C3=B6nig <christian.koenig@amd.com> wrote:

> Am 28.07.21 um 15:57 schrieb Pekka Paalanen:
> > On Wed, 28 Jul 2021 15:31:41 +0200
> > Christian K=C3=B6nig <christian.koenig@amd.com> wrote:
> > =20
> >> Am 28.07.21 um 15:24 schrieb Michel D=C3=A4nzer: =20
> >>> On 2021-07-28 3:13 p.m., Christian K=C3=B6nig wrote: =20
> >>>> Am 28.07.21 um 15:08 schrieb Michel D=C3=A4nzer: =20
> >>>>> On 2021-07-28 1:36 p.m., Christian K=C3=B6nig wrote: =20
> >>>>>> At least AMD hardware is already capable of flipping frames on GPU=
 events like finishing rendering (or uploading etc).
> >>>>>>
> >>>>>> By waiting in userspace on the CPU before send the frame to the ha=
rdware you are completely killing of such features.
> >>>>>>
> >>>>>> For composing use cases that makes sense, but certainly not for fu=
ll screen applications as far as I can see. =20
> >>>>> Even for fullscreen, the current KMS API only allows queuing a sing=
le page flip per CRTC, with no way to cancel or otherwise modify it. Theref=
ore, a Wayland compositor has to set a deadline for the next refresh cycle,=
 and when the deadline passes, it has to select the best buffer available f=
or the fullscreen surface. To make sure the flip will not miss the next ref=
resh cycle, the compositor has to pick an idle buffer. If it picks a non-id=
le buffer, and the pending rendering does not finish in time for vertical b=
lank, the flip will be delayed by at least one refresh cycle, which results=
 in visible stuttering.
> >>>>>
> >>>>> (Until the deadline passes, the Wayland compositor can't even know =
if a previously fullscreen surface will still be fullscreen for the next re=
fresh cycle) =20
> >>>> Well then let's extend the KMS API instead of hacking together worka=
rounds in userspace. =20
> >>> That's indeed a possible solution for the fullscreen / direct scanout=
 case.
> >>>
> >>> Not for the general compositing case though, since a compositor does =
not want to composite multiple output frames per display refresh cycle, so =
it has to make sure the one frame hits the target. =20
> >> Yeah, that's true as well.
> >>
> >> At least as long as nobody invents a mechanism to do this decision on
> >> the GPU instead. =20
> > That would mean putting the whole window manager into the GPU. =20
>=20
> Not really. You only need to decide if you want to use the new backing=20
> store or the old one based on if the new surface is ready or not.

Except that a window content update in Wayland must be synchronised with
all the possible and arbitrary other window system state changes, that
will affect how and where other windows will get drawn *this frame*,
how input events are routed, and more.

But, if the window manager made sure that *only* window contents are
about to change and *all* other state remains as it was, then it would
be possible to let the GPU decide which frame it uses. As long as it
also tells back which one it actually did, so that presentation
feedback etc. can trigger the right Wayland events.

Wayland has "atomic commits" to windows, and arbitrary protocol
extensions can add arbitrary state to be tracked with it. A bit like KMS
properties. Even atomic commits affecting multiple windows together are
a thing, and they must be latched either all or none.

So it's quite a lot of work to determine if one can allow the GPU to
choose the buffer it will texture from, or not.


Thanks,
pq

--Sig_/XsIW6p7OIJaoYdmP1AsQtia
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmECZZ4ACgkQI1/ltBGq
qqcYAg/+I51pd08BkpzGZ3k1g+HCC0qRSxehPuUveE/WiCkVFRrOpVC3zOCw5G4j
c9BNZrbq+DptCDFizpnWcGCCycIcRKU7T9DEbTHOBD4NWCBrvbyGxcmT9SrrVzJy
+T7B302KWoGFMlnRTGWfPgQveHTLKwJCPIwVp1hq0hNKIBGJpY38aULKFlYVSC3c
ucgjtrWlgAI6uCzjbasSER4zMHUlE4XYfALX1xC+eBl7ZVVueThqS0u9VjghCGCT
1xqp/Id8932CoXyHs7fXSWXL2zgA6uVcK1yhw+jFOZtSEM7qmMbQAWiExYvv1A6V
WHx2JUJGLkNdVBRu2ZLmqtRDzj0PMCkXxwYtQ6y2T8xgwwSYET+wGFp9P4r48P4p
4ApoJ5ZZlTZmsdUcnME2aCEf7tlGE79B/jRqahBYDjlrL9KO8velYga7baODmnXy
bSfO1MQZ/sdY1jQFj8Dhnj23bX2OIlbphG2Dn1ZZfbmp3Ccq7w9OvcZDDBbA09SO
t5McCGkFF4qUGgitDp/T97knMUdB78INcDYwgdf54Zb2IKhVHKSfmrcDL+qtZnlK
W3yVGJf/ON+Eik1PppyZuUChTP8b6iyebEWjr7W4AIurRVRoHT8gE44b7IO80J05
VBgRew3Zpcy5em1zCmpOcfyo0Qi2ggmRvK3l4tRgNPnSg3RB4TY=
=dE6O
-----END PGP SIGNATURE-----

--Sig_/XsIW6p7OIJaoYdmP1AsQtia--

--===============5673027607296055956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig

--===============5673027607296055956==--
