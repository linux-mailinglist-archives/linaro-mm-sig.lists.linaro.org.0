Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E2D6A0511
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Feb 2023 10:38:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C441C41452
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 23 Feb 2023 09:38:44 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by lists.linaro.org (Postfix) with ESMTPS id 8591B3EC4B
	for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Feb 2023 09:38:26 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=oiUx4lyn;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.46 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id r27so10954764lfe.10
        for <linaro-mm-sig@lists.linaro.org>; Thu, 23 Feb 2023 01:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=sPJZBdfYeiYu/pEVqIhxArG88zkDX05D9LrUBcw0tmY=;
        b=oiUx4lyn6HwlWfwtbIkuzYOQpQHwCBEOkvxI6mbne9YnTqZrzK6lOzscy820qCilLr
         Es4GlevUX3jCf60Xs63cZ+w0L0UcDNjcPUQQrtD8VZWcxJlhiUSP0geMFMsDqWbiv4vr
         xJ65sjNhM0B+Sz6bV/f1U4acs9ZJEDlrbCWjSsb3vkdV/QDDIhnEfvLnUdJkbBrcdZQo
         pv+2LjxBEBimaeyI2Q6b5eCYdXEvson0sbFuRcA7bChk/ZMce+toClOTIEv/uQ15jDQ5
         r9KAp+KCWtjpUXhyXlz6vA6XM1IpBfCwwWO2wI7kfItQCaA0m5RKDZsfGxieRH6DHv1h
         qauQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sPJZBdfYeiYu/pEVqIhxArG88zkDX05D9LrUBcw0tmY=;
        b=ffRkbE0iDwDnJqtiXgjTcQhu2WKeSOQL/jdimHQDMZjonFLM5ndJ5QDby2Nl6dxIvK
         R/335/rnKGbsfmlpwplCvB9o0hvMAJO0auY0voLKwgi5uRmHjVU1FNF/NXFlwCoRpBPw
         bCnVny4mHTVpXX0pDiXZHuZ3pg2viM/1rVk1zaPl8A2wni8T62SLmZHUQZ0LMH1XmZj3
         DPszePLys1ODm04HzwsI1mjb4aqB6DU2OGz+lw4KmQ/bP0pr+t2ReQY9TxMu9m/c7AWj
         7qWJas5u7ESFiBbOh8TC61LRD8A1fwslnITzt1JfOu+/7lGjG19JjOJ77sTdU6AQ55Tr
         mlwQ==
X-Gm-Message-State: AO0yUKUEwsaxZ66CdAnyk1fkE8gxyQDByA1OjCzlz41tByWJIYDJvYnJ
	2MBWVbz76V8Ue7AAVE3ng+k=
X-Google-Smtp-Source: AK7set8Mpr0bKr4ysKLBDdby2vHXHBvOVJd3KSxqCOe2AAvE9AeUhmo4KeI0p+mIVlOGRAJQw8Uz4Q==
X-Received: by 2002:ac2:491d:0:b0:4c0:2ddc:4559 with SMTP id n29-20020ac2491d000000b004c02ddc4559mr4065277lfi.69.1677145104953;
        Thu, 23 Feb 2023 01:38:24 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id s10-20020a19ad4a000000b004cc5e97d356sm690498lfd.148.2023.02.23.01.38.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 01:38:24 -0800 (PST)
Date: Thu, 23 Feb 2023 11:38:14 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230223113814.3010cedc@eldfell>
In-Reply-To: <CAF6AEGs1_75gg+LCBj6=PH8Jn60PXiE+Kx_2636nP-+pajN8Hg@mail.gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
	<20230218211608.1630586-7-robdclark@gmail.com>
	<20230220105345.70e46fa5@eldfell>
	<CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
	<cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com>
	<CAF6AEGuMn3FywPkEtfJ7oZ16A0Bk2aiaRvj4si4od1d3wzXkPw@mail.gmail.com>
	<20230222114900.1b6baf95@eldfell>
	<CAF6AEGs1_75gg+LCBj6=PH8Jn60PXiE+Kx_2636nP-+pajN8Hg@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8591B3EC4B
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.46:from];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,padovan.org,intel.com,gmail.com,daenzer.net,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: IDRH2USM6G42KDAJMNAQ6ZS7SDL6EBBQ
X-Message-ID-Hash: IDRH2USM6G42KDAJMNAQ6ZS7SDL6EBBQ
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IDRH2USM6G42KDAJMNAQ6ZS7SDL6EBBQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4038614531358611265=="

--===============4038614531358611265==
Content-Type: multipart/signed; boundary="Sig_/U5GhkigZ0.xToxt1kXriC3K";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/U5GhkigZ0.xToxt1kXriC3K
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 22 Feb 2023 07:37:26 -0800
Rob Clark <robdclark@gmail.com> wrote:

> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> wrot=
e:
> >
> > On Tue, 21 Feb 2023 09:53:56 -0800
> > Rob Clark <robdclark@gmail.com> wrote:
> > =20
> > > On Tue, Feb 21, 2023 at 8:48 AM Luben Tuikov <luben.tuikov@amd.com> w=
rote: =20
> > > >
> > > > On 2023-02-20 11:14, Rob Clark wrote: =20
> > > > > On Mon, Feb 20, 2023 at 12:53 AM Pekka Paalanen <ppaalanen@gmail.=
com> wrote: =20
> > > > >>
> > > > >> On Sat, 18 Feb 2023 13:15:49 -0800
> > > > >> Rob Clark <robdclark@gmail.com> wrote:
> > > > >> =20
> > > > >>> From: Rob Clark <robdclark@chromium.org>
> > > > >>>
> > > > >>> Allow userspace to use the EPOLLPRI/POLLPRI flag to indicate an=
 urgent
> > > > >>> wait (as opposed to a "housekeeping" wait to know when to clean=
up after
> > > > >>> some work has completed).  Usermode components of GPU driver st=
acks
> > > > >>> often poll() on fence fd's to know when it is safe to do things=
 like
> > > > >>> free or reuse a buffer, but they can also poll() on a fence fd =
when
> > > > >>> waiting to read back results from the GPU.  The EPOLLPRI/POLLPR=
I flag
> > > > >>> lets the kernel differentiate these two cases.
> > > > >>>
> > > > >>> Signed-off-by: Rob Clark <robdclark@chromium.org> =20
> > > > >>
> > > > >> Hi,
> > > > >>
> > > > >> where would the UAPI documentation of this go?
> > > > >> It seems to be missing. =20
> > > > >
> > > > > Good question, I am not sure.  The poll() man page has a descript=
ion,
> > > > > but my usage doesn't fit that _exactly_ (but OTOH the description=
 is a
> > > > > bit vague).
> > > > > =20
> > > > >> If a Wayland compositor is polling application fences to know wh=
ich
> > > > >> client buffer to use in its rendering, should the compositor pol=
l with
> > > > >> PRI or not? If a compositor polls with PRI, then all fences from=
 all
> > > > >> applications would always be PRI. Would that be harmful somehow =
or
> > > > >> would it be beneficial? =20
> > > > >
> > > > > I think a compositor would rather use the deadline ioctl and then=
 poll
> > > > > without PRI.  Otherwise you are giving an urgency signal to the f=
ence
> > > > > signaller which might not necessarily be needed.
> > > > >
> > > > > The places where I expect PRI to be useful is more in mesa (things
> > > > > like glFinish(), readpix, and other similar sorts of blocking API=
s) =20
> > > > Hi,
> > > >
> > > > Hmm, but then user-space could do the opposite, namely, submit work=
 as usual--never
> > > > using the SET_DEADLINE ioctl, and then at the end, poll using (E)PO=
LLPRI. That seems
> > > > like a possible usage pattern, unintended--maybe, but possible. Do =
we want to discourage
> > > > this? Wouldn't SET_DEADLINE be enough? I mean, one can call SET_DEA=
DLINE with the current
> > > > time, and then wouldn't that be equivalent to (E)POLLPRI? =20
> > >
> > > Yeah, (E)POLLPRI isn't strictly needed if we have SET_DEADLINE.  It is
> > > slightly more convenient if you want an immediate deadline (single
> > > syscall instead of two), but not strictly needed.  OTOH it piggy-backs
> > > on existing UABI. =20
> >
> > In that case, I would be conservative, and not add the POLLPRI
> > semantics. An UAPI addition that is not strictly needed and somewhat
> > unclear if it violates any design principles is best not done, until it
> > is proven to be beneficial.
> >
> > Besides, a Wayland compositor does not necessary need to add the fd
> > to its main event loop for poll. It could just SET_DEADLINE, and then
> > when it renders simply check if the fence passed or not already. Not
> > polling means the compositor does not need to wake up at the moment the
> > fence signals to just record a flag. =20
>=20
> poll(POLLPRI) isn't intended for wayland.. but is a thing I want in
> mesa for fence waits.  I _could_ use SET_DEADLINE but it is two
> syscalls and correspondingly more code ;-)

But is it actually beneficial? "More code" seems quite irrelevant.

Would there be a hundred or more of those per frame? Or would it be
always limited to one or two? Or totally depend on what the application
is doing? Is it a significant impact?

> > On another matter, if the application uses SET_DEADLINE with one
> > timestamp, and the compositor uses SET_DEADLINE on the same thing with
> > another timestamp, what should happen? =20
>=20
> The expectation is that many deadline hints can be set on a fence.
> The fence signaller should track the soonest deadline.

You need to document that as UAPI, since it is observable to userspace.
It would be bad if drivers or subsystems would differ in behaviour.


Thanks,
pq

--Sig_/U5GhkigZ0.xToxt1kXriC3K
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP3NAYACgkQI1/ltBGq
qqff8A/9G6+OivbsMcWdii/lgqMRuLh9kjfM9HGWCDafIaGcPYGYWlmAngPH21zf
jGCaxCwxAFwcRiCN90Tcbze65Z/UrrXTBTA5PuFWEeUJtI1i8lX4cdlNvMg+8wrF
xrNUKKjA3cFC/pFqpncOLnsoWPakhP6N4A3RSGiO0DoUl5q6eWcLNKAxDWyYjQYL
ACdWZ5KPwufoAXdzjitk6/BSKydF3q5vD9OPO/ENR+HwG1kqgegrXL0SSZbvbgOB
6G7XJqUkkGZC0IVRyaA2D/oITXtUJbe4D6f8OGRACwZpuDrjd4Lya+mw3KltvbmD
i5VxTv2NTftKqk3+bZ5kVZ1burNqaQSJdr6ykFN14lqRSw0dnkhAWv9o9auvSoBP
6PvNjve80mPTJAT/NfWCQjvTXqgJ89XPap9ph+UREjFhty+blpOWAGqYQ2QD03FQ
/cgYAlNrtR6XMMn1MIBkbmAFNXFrqY6ZGfad3M0FsaJk0fgFq+R7h5Dan4Wzq13G
0Ys57ORmqbg4iMiKyoX+rTiY7/UUnHi295RjYGIqu+k1mlfhJv2rnVXGctHfyVkF
OQSwYI5tMdp4/1alPQzYPPnWEnUw1J64/iqlN1MH/rOYTriRLAEHxEW3umzbFVcS
vtXXGVrA2vQXt2JufGLSfen95D0GzDRO+YOn12g1jvY27xCA4g8=
=aFdB
-----END PGP SIGNATURE-----

--Sig_/U5GhkigZ0.xToxt1kXriC3K--

--===============4038614531358611265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4038614531358611265==--
