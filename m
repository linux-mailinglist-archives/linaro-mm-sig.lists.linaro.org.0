Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 508AF69E2CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 15:58:02 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 057613F470
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 21 Feb 2023 14:58:01 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by lists.linaro.org (Postfix) with ESMTPS id 6AACA3E95A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 08:38:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=dacIh5Ip;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.182 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id bx43so3310081ljb.12
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 00:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=oXmAWRuzmcV8Elsgdpg1EiI+Ar/Kv6HOxJGHhplNmBg=;
        b=dacIh5Ip7zWYTo66VddkqH1AfAudtj7gH52ck6kXphg5LwhFeolG9qkrO5LWkYrWyf
         GqvWuZ2hA54hvbMbl8tRU6otjWwAMQ6bvtvZh5kLtSS4eeg+CaW2UFF77WFdzDI2VO3Y
         7jVrXjtT2juixcnwr1x5LiyFghiE/hjVahbY6+YD2FqqWhQD/Z5214mrmCUZvaicui0h
         2rO+0B9/MP5IcWzLESsiPdMB/Q2Kus+ed5DtStRFYKTuUj+5PL7G6EstrxrT6Lpxufcs
         mcutB/4bghXrgFem9w3UcAgEr32cDXDvGDD6JRLy0ibSiJ4WMe9ncBolo7MeuNu73vUq
         ZFLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oXmAWRuzmcV8Elsgdpg1EiI+Ar/Kv6HOxJGHhplNmBg=;
        b=QhhQ1G+KbZ2l0wXs03O09X4wjHPd7+Xf9dsH57DJBfjsCAotl4RowelowRSUoGNpOm
         pYveLmbGPkOekKtZXjl8IIMyYT03GflkBNj1k9r+So23FBjeBeq8J+Wvq19PXo97JVWR
         daufn0N4VGH0ElLt+j/gg/1G3Nv9D11pX5dSPvOWH3q4didMj36nTvLivsw8IbMrq6ZJ
         /D3JY6cuCqrqBMzhWgwShHOg4juqeVdFIuP6RFQJ6y1Nl7oBAzToaIY1T6fP6l6ZsMyq
         ok3RaUkySBhypu7W64DWFgl5kzL864qJbKcmbX0eANkh5CrB1wlljYl88lI2VYkWcPBr
         HS7Q==
X-Gm-Message-State: AO0yUKWHqdaSIssFfEt945SJpQyvjNY2NAPetSft9T83gcgT6ZaYr8hj
	WWA1my9TXmdvbmglJk8COw8=
X-Google-Smtp-Source: AK7set+RqtfaOTqpjveAHIaH/mYBQDFd3HyzVq+YqARYpYETRDSQ5RKHLNE5xPgMIu7o4b3tO9CwXQ==
X-Received: by 2002:a2e:a1c7:0:b0:293:6037:9850 with SMTP id c7-20020a2ea1c7000000b0029360379850mr1456739ljm.51.1676968683953;
        Tue, 21 Feb 2023 00:38:03 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id bd17-20020a05651c169100b002934ed148afsm23315ljb.52.2023.02.21.00.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 00:38:03 -0800 (PST)
Date: Tue, 21 Feb 2023 10:37:53 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230221103753.205082d3@eldfell>
In-Reply-To: <CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
	<20230218211608.1630586-7-robdclark@gmail.com>
	<20230220105345.70e46fa5@eldfell>
	<CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6AACA3E95A
X-Spamd-Bar: ---------
X-Spamd-Result: default: False [-9.60 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[194.136.85.206:received];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.182:from];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,ffwll.ch,gmail.com,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.182:from];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: JB4SDO66A5YNTWFKW3L3B6KYDHCVWY7N
X-Message-ID-Hash: JB4SDO66A5YNTWFKW3L3B6KYDHCVWY7N
X-Mailman-Approved-At: Tue, 21 Feb 2023 14:57:43 +0000
CC: dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JB4SDO66A5YNTWFKW3L3B6KYDHCVWY7N/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============0609957513402452708=="

--===============0609957513402452708==
Content-Type: multipart/signed; boundary="Sig_/GOkb+s3y./0Y.sz97vQW68J";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/GOkb+s3y./0Y.sz97vQW68J
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 20 Feb 2023 08:14:47 -0800
Rob Clark <robdclark@gmail.com> wrote:

> On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.com> wro=
te:
> >
> > On Sat, 18 Feb 2023 13:15:49 -0800
> > Rob Clark <robdclark@gmail.com> wrote:
> > =20
> > > From: Rob Clark <robdclark@chromium.org>
> > >
> > > Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> > > wait (as opposed to a "housekeeping" wait to know when to cleanup aft=
er
> > > some work has completed).  Usermode components of GPU driver stacks
> > > often poll() on fence fd's to know when it is safe to do things like
> > > free or reuse a buffer, but they can also poll() on a fence fd when
> > > waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> > > lets the kernel differentiate these two cases.
> > >
> > > Signed-off-by: Rob Clark <robdclark@chromium.org> =20
> >
> > Hi,
> >
> > where would the UAPI documentation of this go?
> > It seems to be missing. =20
>=20
> Good question, I am not sure.  The poll() man page has a description,
> but my usage doesn't fit that _exactly_ (but OTOH the description is a
> bit vague).
>=20
> > If a Wayland compositor is polling application fences to know which
> > client buffer to use in its rendering, should the compositor poll with
> > PRI or not? If a compositor polls with PRI, then all fences from all
> > applications would always be PRI. Would that be harmful somehow or
> > would it be beneficial? =20
>=20
> I think a compositor would rather use the deadline ioctl and then poll
> without PRI.  Otherwise you are giving an urgency signal to the fence
> signaller which might not necessarily be needed.
>=20
> The places where I expect PRI to be useful is more in mesa (things
> like glFinish(), readpix, and other similar sorts of blocking APIs)

Sounds good. Docs... ;-)

Hmm, so a compositor should set the deadline when it processes the
wl_surface.commit, and not when it actually starts repainting, to give
time for the driver to react and the GPU to do some more work. The
deadline would be the time when the compositor starts its repaint, so
it knows if the buffer is ready or not.


Thanks,
pq


>=20
> BR,
> -R
>=20
> >
> >
> > Thanks,
> > pq
> > =20
> > > ---
> > >  drivers/dma-buf/sync_file.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > >
> > > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > > index fb6ca1032885..c30b2085ee0a 100644
> > > --- a/drivers/dma-buf/sync_file.c
> > > +++ b/drivers/dma-buf/sync_file.c
> > > @@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file=
, poll_table *wait)
> > >  {
> > >       struct sync_file *sync_file =3D file->private_data;
> > >
> > > +     /*
> > > +      * The POLLPRI/EPOLLPRI flag can be used to signal that
> > > +      * userspace wants the fence to signal ASAP, express this
> > > +      * as an immediate deadline.
> > > +      */
> > > +     if (poll_requested_events(wait) & EPOLLPRI)
> > > +             dma_fence_set_deadline(sync_file->fence, ktime_get());
> > > +
> > >       poll_wait(file, &sync_file->wq, wait);
> > >
> > >       if (list_empty(&sync_file->cb.node) && =20
> > =20


--Sig_/GOkb+s3y./0Y.sz97vQW68J
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP0guEACgkQI1/ltBGq
qqf13g//YJ2rnH+E++Hj+BIIexJyigGRb4u4jrJTM5mZ9F5IbwwlyPYI1ave26xA
E2fQdmTIrob7UZDSU0pjl0rHfGvqDlZVZP8IdhAA1Qwvsw8JUZ8XknppQ4THxMPh
RgR5+XExivkzqj5L7UZaPb4oYLlp5qCooiS6iIgCI0Dx+cov3zfOGL8DJOFQKGXV
reume8wVPWdqLS85ALYVHVdiOgWdxd+kw/njtM6lc6DYj3JTmrlEXY5puS60bH9t
uBbd9AZm+PCKWX3qbxKCxWK8W06xAqaR1ZiCuRMvxN7L4hEbTTrkTIgUEkM2W6cF
ItT8wY83agbYcCNQJcQ7U3EOGoDY/CKsKAnXNrEKKh3Jpemn3sKwVkIk4KboT4Ke
mBtKMFrB/DtBGQBSD4Vn2YFSBZg8R5fDlOoMZhbZUltzYBHDOs7U631uVEkia+Mp
RU2hOSjThTwQpJTTzw6QzrXQdurSUMYP/Wub6jOEH0mTnkCr4ENuR+QfdVeHCt37
AM0B7KHNlEn40Vn8dbGV7yzUIep87BJWOKFXWhXWIJKQQPW9R6TWms5Xx7c/QbYd
iwbPR/DBfQb6Huz9Ls8WFN5o8VvAEKQGtjCRn33J35aQYFmDseUbVqCuDv0HIYI+
fFaaFPBWL+1GhBlITlBWAq5/ow9vvif11bWzStLTowmvoivxyWU=
=WDHn
-----END PGP SIGNATURE-----

--Sig_/GOkb+s3y./0Y.sz97vQW68J--

--===============0609957513402452708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============0609957513402452708==--
