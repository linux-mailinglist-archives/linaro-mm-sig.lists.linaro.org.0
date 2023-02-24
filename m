Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9446A18B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 10:27:03 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 475A43F5A8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 09:27:02 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by lists.linaro.org (Postfix) with ESMTPS id EEEBE3EC4E
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 09:26:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=IKlcOFPK;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.52 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id m6so17193839lfq.5
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 01:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=tn4heN+xayUw9CWYDpKV49sFxbJE9AzvhKDPogIlGWk=;
        b=IKlcOFPKkpIHAWPHxnKle3uFn3WD4QwmXkL8sqaE5FNUMIHyr+DBlyBcLbq/Fv/Jw3
         Q/1NaM0pgUfkDRTJg7BFBYyZf8sC2p87BVQ6ngYM3+ukxCpe5w6jsT+XxXx6sdcYlcHz
         BnGcimg0syH0bj38qSO6iGzPo9cTKMho+ij4ubm/GWjf0hj8a+KY4W9Hb0wTnXwnKVTI
         PjjL/6dlg0ulXwQl2abIr44yvVakn9dz6kHx01WXHs7XKks2VqEJFN6u8n6ZDZwCQzwI
         MtGuAiQhBThTXX6LLYU7Ej+BhguWTwCF39ml5FeCgGwDIQ7ZvEd/YYFg9JvBcaM/bfAz
         FCpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tn4heN+xayUw9CWYDpKV49sFxbJE9AzvhKDPogIlGWk=;
        b=uBIi+zLkjb0ueLNiHUzlIM7nC9jOaqMEtjh54aR4ddX0PXj+5Bpq8dqkGWkjJT55vE
         UkUF490yF0gNP6vIvS1vZ4T/fw65A6fTwwFW/BEdfJSYCCk5Vhe+0aWt3VaKkeMBXqDN
         aWA1Ou+FNmLtv+TD7151R8jP0QATUmkKcxE7J33K0JwDmSY1bSA4O831j6qngQmB4agg
         f3pb51h3Mp9hsdid3dlCoc5HhIS1jiglLGsjL3anwWyd/E8ThPYnHMmWP2rBEplSOyoj
         KMAyAoiFSujdIzb31iIQLJ5R4BYiaBXlwcXJyeQ5uba1pNI1XzcNNEI3IAMOY5dcCAWh
         q2Dw==
X-Gm-Message-State: AO0yUKXpn7y1rM0OUH6YKl6TawTyL/iU1s/iUwisEF1BUvFN0n9abmWv
	v7ds80/R0ePb4wRiRTNBaB8=
X-Google-Smtp-Source: AK7set8Edu6TJIEzFp8nO3iN/aWffOHgPnU91xlvxqbHQLnvZm/Xo+5/CWn5cDLMMcJZbfqIKVI3QQ==
X-Received: by 2002:ac2:4c08:0:b0:4d8:6c17:8a65 with SMTP id t8-20020ac24c08000000b004d86c178a65mr5535378lfq.58.1677230801553;
        Fri, 24 Feb 2023 01:26:41 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id 1-20020ac25681000000b004db25f2c103sm1529997lfr.86.2023.02.24.01.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 01:26:41 -0800 (PST)
Date: Fri, 24 Feb 2023 11:26:30 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Message-ID: <20230224112630.313d7b76@eldfell>
In-Reply-To: <CAF6AEGuE89kuKTjjzwW1xMppcVw-M4-hcrtifed-mvsCA=cshQ@mail.gmail.com>
References: <20230218211608.1630586-1-robdclark@gmail.com>
	<20230218211608.1630586-7-robdclark@gmail.com>
	<20230220105345.70e46fa5@eldfell>
	<CAF6AEGv9fLQCD65ytRTGp=EkNB1QoZYH5ArphgGQALV9J08Cmw@mail.gmail.com>
	<cdd5f892-49b9-1e22-4dc1-95a8a733c453@amd.com>
	<CAF6AEGuMn3FywPkEtfJ7oZ16A0Bk2aiaRvj4si4od1d3wzXkPw@mail.gmail.com>
	<20230222114900.1b6baf95@eldfell>
	<CAF6AEGs1_75gg+LCBj6=PH8Jn60PXiE+Kx_2636nP-+pajN8Hg@mail.gmail.com>
	<20230223113814.3010cedc@eldfell>
	<CAF6AEGuE89kuKTjjzwW1xMppcVw-M4-hcrtifed-mvsCA=cshQ@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EEEBE3EC4E
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.52:from];
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
Message-ID-Hash: QATVGQBV6KZNEFQPI6D5V3A5QRUHIPCD
X-Message-ID-Hash: QATVGQBV6KZNEFQPI6D5V3A5QRUHIPCD
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Luben Tuikov <luben.tuikov@amd.com>, Rob Clark <robdclark@chromium.org>, Gustavo Padovan <gustavo@padovan.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QATVGQBV6KZNEFQPI6D5V3A5QRUHIPCD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============9078629094165132767=="

--===============9078629094165132767==
Content-Type: multipart/signed; boundary="Sig_/uHBSYjb20fW6JX00W0Xc.i_";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/uHBSYjb20fW6JX00W0Xc.i_
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 23 Feb 2023 10:51:48 -0800
Rob Clark <robdclark@gmail.com> wrote:

> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> wrot=
e:
> >
> > On Wed, 22 Feb 2023 07:37:26 -0800
> > Rob Clark <robdclark@gmail.com> wrote:
> > =20
> > > On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com> =
wrote: =20

...

> > > > On another matter, if the application uses SET_DEADLINE with one
> > > > timestamp, and the compositor uses SET_DEADLINE on the same thing w=
ith
> > > > another timestamp, what should happen? =20
> > >
> > > The expectation is that many deadline hints can be set on a fence.
> > > The fence signaller should track the soonest deadline. =20
> >
> > You need to document that as UAPI, since it is observable to userspace.
> > It would be bad if drivers or subsystems would differ in behaviour.
> > =20
>=20
> It is in the end a hint.  It is about giving the driver more
> information so that it can make better choices.  But the driver is
> even free to ignore it.  So maybe "expectation" is too strong of a
> word.  Rather, any other behavior doesn't really make sense.  But it
> could end up being dictated by how the hw and/or fw works.

It will stop being a hint once it has been implemented and used in the
wild long enough. The kernel userspace regression rules make sure of
that.

See the topic of implementing triple-buffering in Mutter in order to
put more work to the GPU in order to have the GPU ramp up clocks in
order to not miss rendering deadlines. I don't think that patch set has
landed in Mutter upstream, but I hear distributions in downstream are
already carrying it.

https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1383
https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/1441

Granted, GPU clocks are just one side of that story it seems, and
triple-buffering may have other benefits.

If SET_DEADLINE would fix that problem without triple-buffering, it is
definitely userspace observable, expected and eventually required
behaviour.


Thanks,
pq

--Sig_/uHBSYjb20fW6JX00W0Xc.i_
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP4gsYACgkQI1/ltBGq
qqfZTw/+Lbv76M0E26urQwDLG2JyGPlyP2cGStoEl3g1AGFqwTc4GwQroDY2kntr
Q/8Ux8jQ3UOsIgdkPji1jYSXMUo3fnzKSaAjHqt60BLDXM05WelYTLuCRJVDd5zM
E/+TYH45x8wRvZz/BJJl8KW6Lis2izfsS2hHERFKtqHEkiiN+VMvx0Aj5/fcToI4
OuM79Bblb10aqHVEEuka6TENfJG94jZtpHWvO0JdRtjQnVHSy9AxIR6EdaOnSVXb
6gAob42KMODAiYpDze8GVIP16VzlWVpFQaVv0XcQkh8SVtpKuwRU6hTOb6uys74Q
89yh3OUp1BpN4PwIVrhrV6X7VHe0Fb45F//QX6L/bkNUNPq2BujvQRcNrpVD+UOq
aAMC6nUpRgrQEveqqmWWloicApPcF4tbpcVHWpu+t6edPRquwNN2n8DS5bOhYs+Z
fHcmaj84jbOPdKXxxauFtq8r4t2du0mKvXTE54+BhWx/IHTf6E5mq3LpydpjPCcD
X8exj4pRfjmi9juUjaBepDMfoqbh3yvQR/ER0M01By5GOzO3TlHVmtdBfsUzehTI
uXfmWZWwEqgWPMf285UDEDL4sw697G6E8egllZlyH5Ynp+xOpv/p2QIffwq1AvRL
uj/MCIiSJDmLmNyA7WuBSyxYYtJahvi+UP7BB80lynbBEnQfhvE=
=5gOd
-----END PGP SIGNATURE-----

--Sig_/uHBSYjb20fW6JX00W0Xc.i_--

--===============9078629094165132767==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============9078629094165132767==--
