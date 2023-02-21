Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BAA669EF10
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 08:02:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 98C0B3EA56
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Feb 2023 07:02:35 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id E7BB23E95A
	for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 08:38:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=oYDbVFfF;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.170 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id b13so4455103ljf.6
        for <linaro-mm-sig@lists.linaro.org>; Tue, 21 Feb 2023 00:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=1W8pZijqLGcNat/8G5OTCx6Y7aJUY3oODAmVHl137tw=;
        b=oYDbVFfFxhPkNyBf3v0ZYWsr1JhfHZRJkrawAzncV8YLAcKF9mC7dIpjDLlPfPDpEY
         z32ja1Z48yPU8skaeXw/SOoNy3iqNg2w9PaiFwsIKu1f1A0QSxPjU2Q9pX0mUBo/igyZ
         SgCqHcKO5yCaAXvPv1S/4aC87m87Nn9OUvXE4mMMIaXEFJdfCCqykVwEGNznzcA84ErV
         W8m4IBZR/I/5tfiAFLEA7YJpZ89xvxobL71KKVFacS7n18fMoSG/2wpRoqgbi8H3Po3r
         obLYMrJoBcH8DqoDCZsUV9DO7gKgOYJ68lfbXOisjkwpBjzcPoPxgUGhDxy4SXQlirXW
         U1zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1W8pZijqLGcNat/8G5OTCx6Y7aJUY3oODAmVHl137tw=;
        b=WnMPgUCCllzm7ZcvSwuVp5F10v9pBkofDLrd7sN1Z3b1kzxxN9oAlpMHJKw6dW+pfX
         o3ri6Kg+fMwdUGwxYI1fRsuUFOk9RZGrRoiywe2c+OjOCYWneREzHBNms4DUvlkF3T9l
         TX8YuB1xwPJcvZIpHB9jnAuuuzkzTrZRWduA5lqhxfs75xFlAz9CLbtQCToqPaNfJOvo
         CPEa/8WgBhktOBg8tTWkCV+OAAyTWdDGRo7XNHnqo40ZecyJhuYt0+8bid41XhZDvnGT
         wvrDNRJ6B+s3zSjekXdPG0t03gHWYdq8Qv6xFO+hExjMy73vDnC1RWnAqRE3SUPHcdCB
         gZfQ==
X-Gm-Message-State: AO0yUKXx+lex7iJfLaZzbONPM4JfWk9yxC8V7aQe88o/WLGdUtJu2zxj
	e3i0FPv80+p3zeiQHMVLGkQ=
X-Google-Smtp-Source: AK7set92xE2QliPenlOzZe7t3tGVIknuNqqFpK1dHTQNre8Li8krArc7FA0WGNeY8l24sfghKtkwPw==
X-Received: by 2002:a2e:8346:0:b0:28d:2cf8:9341 with SMTP id l6-20020a2e8346000000b0028d2cf89341mr1578505ljh.23.1676968725545;
        Tue, 21 Feb 2023 00:38:45 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id y1-20020a2e3201000000b00294a1275192sm296299ljy.110.2023.02.21.00.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 00:38:45 -0800 (PST)
Date: Tue, 21 Feb 2023 10:38:41 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20230221103841.0d501f01@eldfell>
In-Reply-To: <2e6e9581-6de8-6aca-3e73-946fbc6ad2a3@amd.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
	<20230218211608.1630586-7-robdclark@gmail.com>
	<2e6e9581-6de8-6aca-3e73-946fbc6ad2a3@amd.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E7BB23E95A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[194.136.85.206:received,209.85.208.170:from];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.freedesktop.org,ffwll.ch,daenzer.net,intel.com,amd.com,emersion.fr,chromium.org,linaro.org,padovan.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: implicit-dest
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: DLFGNADO4TS5TX7BZSNCLQQQK2IS5IKF
X-Message-ID-Hash: DLFGNADO4TS5TX7BZSNCLQQQK2IS5IKF
X-Mailman-Approved-At: Wed, 22 Feb 2023 07:02:18 +0000
CC: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>, Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, open list <linux-kernel@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DLFGNADO4TS5TX7BZSNCLQQQK2IS5IKF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4700678229807261201=="

--===============4700678229807261201==
Content-Type: multipart/signed; boundary="Sig_/PboreIUuM6gO6KQswv5Gd=N";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/PboreIUuM6gO6KQswv5Gd=N
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 20 Feb 2023 09:31:41 +0100
Christian K=C3=B6nig <christian.koenig@amd.com> wrote:

> Am 18.02.23 um 22:15 schrieb Rob Clark:
> > From: Rob Clark <robdclark@chromium.org>
> >
> > Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an urgent
> > wait (as opposed to a "housekeeping" wait to know when to cleanup after
> > some work has completed).  Usermode components of GPU driver stacks
> > often poll() on fence fd's to know when it is safe to do things like
> > free or reuse a buffer, but they can also poll() on a fence fd when
> > waiting to read back results from the GPU.  The EPOLLPRI/POLLPRI flag
> > lets the kernel differentiate these two cases.
> >
> > Signed-off-by: Rob Clark <robdclark@chromium.org> =20
>=20
> The code looks clean, but the different poll flags and their meaning are=
=20
> certainly not my field of expertise.


A good question. epoll_ctl manual refers to poll(2) which says:

       POLLPRI
              There is some exceptional condition on the file descriptor.  =
Possibilities include:

              =E2=80=A2 There is out-of-band data on a TCP socket (see tcp(=
7)).

              =E2=80=A2 A pseudoterminal master in packet mode has seen a s=
tate change on the slave (see ioctl_tty(2)).

              =E2=80=A2 A cgroup.events file has been modified (see cgroups=
(7)).

It seems to be about selecting what events will trigger the poll,
more than how (fast) to poll. At least it is not documented to be
ignored in 'events', so I guess it should work.


Thanks,
pq

> Feel free to add Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com=
>,=20
> somebody with more background in this should probably take a look as well.
>=20
> Regards,
> Christian.
>=20
> > ---
> >   drivers/dma-buf/sync_file.c | 8 ++++++++
> >   1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/dma-buf/sync_file.c b/drivers/dma-buf/sync_file.c
> > index fb6ca1032885..c30b2085ee0a 100644
> > --- a/drivers/dma-buf/sync_file.c
> > +++ b/drivers/dma-buf/sync_file.c
> > @@ -192,6 +192,14 @@ static __poll_t sync_file_poll(struct file *file, =
poll_table *wait)
> >   {
> >   	struct sync_file *sync_file =3D file->private_data;
> >  =20
> > +	/*
> > +	 * The POLLPRI/EPOLLPRI flag can be used to signal that
> > +	 * userspace wants the fence to signal ASAP, express this
> > +	 * as an immediate deadline.
> > +	 */
> > +	if (poll_requested_events(wait) & EPOLLPRI)
> > +		dma_fence_set_deadline(sync_file->fence, ktime_get());
> > +
> >   	poll_wait(file, &sync_file->wq, wait);
> >  =20
> >   	if (list_empty(&sync_file->cb.node) && =20
>=20


--Sig_/PboreIUuM6gO6KQswv5Gd=N
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP0gxEACgkQI1/ltBGq
qqcMzA//UBA8OmgaplusdV3EYDrlm1XXYsndvhAJV/IPY3tPzwkjjE7dpf1TGYc+
Wh1kvzNelRPlU0RESGQSvNyKwwp+eipZ+ug3HzO6axTf5Rh9ptuUZaSok5mrX7do
U1fsZhDed9gsN/OqxOUoXgFnim0nOhFoyCRalgV6qQPmeiv18aExgbtV40bP8Qfw
h79kSBGfsW2tQOjY4qr4tVPWyL31lIABLdYY3dlxib/OAe1cjIR7Dc51yNMC2TUg
6jZetg0uDjv43YXnIqx/9kpv4RRt0kxUIukX5AiWQq7VIk0rXRKRORLXR1ri5u6m
VZglgER6KZnEZBN9Fy6GMgV6QlnUWcQ/kFY1Hz+nd2EQEYzwBX4Eclf2q5GtArYP
+ShkIkfXWNisIJ7q6f2xYITQ5cbYK7D1baTyHXKgsUBZnltomwaMqmkKOimhQTFB
5tXTTGqLjkwh2R1Sq9a+RklAMVn8IWgLn+dJw1CL69opfja5yLzpCplKgYgKCX6N
9fqPC0IH56Om+a+wD+QgzWMFvguhbAk57IWVeEMgu4Qv2urtMNVCN2Jz2qpKafYq
HKvfh7l900bwrndWtayCN+937hPhgtH/8lWB+0UmlG1EYwa4PK8lH2YNywnYi8ss
rkXY5kqLS3izynKUaRLfjysAVzC2LZYJBO3Hik6g/fjdh62JH0U=
=eI1y
-----END PGP SIGNATURE-----

--Sig_/PboreIUuM6gO6KQswv5Gd=N--

--===============4700678229807261201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4700678229807261201==--
