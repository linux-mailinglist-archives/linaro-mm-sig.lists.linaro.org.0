Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCBC6A1A24
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 11:24:28 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6DE2E4423C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Feb 2023 10:24:27 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id 942373ED9F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 10:24:08 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=evq5P0zc;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.170 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f170.google.com with SMTP id h9so13571564ljq.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Feb 2023 02:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=wDkYu+Ebh7Mfld/mHVRq/UWL9vsWMTRce+Iu+ExRXcQ=;
        b=evq5P0zcDn8kbjSm2ItbVTOdU2UtNz3mnkM99UeQkXXtxqRQmt+OQ0NrXAU90yj7Kx
         GHlMEYLVJpR6RELzRwhSlzRgBwfta+m4jSqNhxwYtl4nYOyk9qzlSgdb2AelLpFsatPR
         SijU3e+3No3PgbPPU/YkqA4zByGnnA+WG/3VSylZuG4yubcjVlENCquRWHS+fQs+hDoM
         6xM0C+sSSTdw6QoI0cFhAu8Fc8E1OeJbe9w9lAmIcdjLDKuMpTTR5fBa+USyW+DM7ksy
         PlSMM39ZHyioQYwgnBLccw7JKX5n0E9xoG3ZSYObw2RahUmYti3GZ+4Zdbn9EXbiVcIT
         IPbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wDkYu+Ebh7Mfld/mHVRq/UWL9vsWMTRce+Iu+ExRXcQ=;
        b=dkUQeG90jTXx9+RGSf6vwHEwNGQ3O2sWV+q0ntwK6NbAOrkSOE3NHPc56XNKSD00AA
         o3w/zOkYDKXLRBRpf79eUoqUdNzBM/OVPDV93UcknudOCjpn8Th/iiYzUjIggiXwWa31
         OEBk8k557PqFnNmerFYM0skrzMeZbhG3kRdsqJWJXRqMRH12U5itaLXMeuizi2/Z5PzV
         jqj+hsgwHmtdYhve26gVqtBC0Geu0muZlTucTca+MbbzFp3zWK+6fInFJu5FVbiCNwd9
         7poTzAgRD55cugMnnOmOlZLq2xi6Ztcb63/Uit7EO8DD+FMtPct67t7GWH6ERrqex0ZK
         pTbA==
X-Gm-Message-State: AO0yUKW7FyjIEIagfPgZYkMosgOL+EkVfeTirHIKk7akPFq/HTReCdQ1
	cyy0uE/19akoIQIp8qYbo7w=
X-Google-Smtp-Source: AK7set+FtLn9Ue95zN2gWLFtDbqtjyIcYeEYUTUMXf4JDBznsvWiI7nTaSB0nhADsvF1lrrBmrClxQ==
X-Received: by 2002:a2e:a263:0:b0:28d:cca5:2193 with SMTP id k3-20020a2ea263000000b0028dcca52193mr5573592ljm.53.1677234247154;
        Fri, 24 Feb 2023 02:24:07 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id s18-20020a2e9c12000000b002945b04e1ebsm1312619lji.94.2023.02.24.02.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Feb 2023 02:24:06 -0800 (PST)
Date: Fri, 24 Feb 2023 12:24:03 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230224122403.6a088da1@eldfell>
In-Reply-To: <a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
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
	<20230224112630.313d7b76@eldfell>
	<a47e2686-1e35-39a3-0f0c-6c3b9522f8ff@linux.intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 942373ED9F
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_CC(0.00)[gmail.com,chromium.org,intel.com,padovan.org,daenzer.net,vger.kernel.org,lists.freedesktop.org,linaro.org,lists.linaro.org,amd.com];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: 3GGHDFDPPB72W4IDUXBHNH7IM6I3CXO3
X-Message-ID-Hash: 3GGHDFDPPB72W4IDUXBHNH7IM6I3CXO3
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Clark <robdclark@gmail.com>, Rob Clark <robdclark@chromium.org>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Gustavo Padovan <gustavo@padovan.org>, Michel =?UTF-8?B?RMOkbnplcg==?= <michel@daenzer.net>, Rodrigo Vivi <rodrigo.vivi@intel.com>, open list <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org, Sumit Semwal <sumit.semwal@linaro.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Luben Tuikov <luben.tuikov@amd.com>, Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "open list:SYNC FILE FRAMEWORK" <linux-media@vger.kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 06/14] dma-buf/sync_file: Support (E)POLLPRI
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3GGHDFDPPB72W4IDUXBHNH7IM6I3CXO3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============3148967584223604742=="

--===============3148967584223604742==
Content-Type: multipart/signed; boundary="Sig_/Wv+B5cSZoeZxnThf_RuXZKn";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Wv+B5cSZoeZxnThf_RuXZKn
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 24 Feb 2023 09:41:46 +0000
Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:

> On 24/02/2023 09:26, Pekka Paalanen wrote:
> > On Thu, 23 Feb 2023 10:51:48 -0800
> > Rob Clark <robdclark@gmail.com> wrote:
> >  =20
> >> On Thu, Feb 23, 2023 at 1:38 AM Pekka Paalanen <ppaalanen@gmail.com> w=
rote: =20
> >>>
> >>> On Wed, 22 Feb 2023 07:37:26 -0800
> >>> Rob Clark <robdclark@gmail.com> wrote:
> >>>    =20
> >>>> On Wed, Feb 22, 2023 at 1:49 AM Pekka Paalanen <ppaalanen@gmail.com>=
 wrote: =20
> >=20
> > ...
> >  =20
> >>>>> On another matter, if the application uses SET_DEADLINE with one
> >>>>> timestamp, and the compositor uses SET_DEADLINE on the same thing w=
ith
> >>>>> another timestamp, what should happen? =20
> >>>>
> >>>> The expectation is that many deadline hints can be set on a fence.
> >>>> The fence signaller should track the soonest deadline. =20
> >>>
> >>> You need to document that as UAPI, since it is observable to userspac=
e.
> >>> It would be bad if drivers or subsystems would differ in behaviour.
> >>>    =20
> >>
> >> It is in the end a hint.  It is about giving the driver more
> >> information so that it can make better choices.  But the driver is
> >> even free to ignore it.  So maybe "expectation" is too strong of a
> >> word.  Rather, any other behavior doesn't really make sense.  But it
> >> could end up being dictated by how the hw and/or fw works. =20
> >=20
> > It will stop being a hint once it has been implemented and used in the
> > wild long enough. The kernel userspace regression rules make sure of
> > that. =20
>=20
> Yeah, tricky and maybe a gray area in this case. I think we eluded=20
> elsewhere in the thread that renaming the thing might be an option.
>=20
> So maybe instead of deadline, which is a very strong word, use something=
=20
> along the lines of "present time hint", or "signalled time hint"? Maybe=20
> reads clumsy. Just throwing some ideas for a start.

You can try, but I fear that if it ever changes behaviour and
someone notices that, it's labelled as a kernel regression. I don't
think documentation has ever been the authoritative definition of UABI
in Linux, it just guides drivers and userspace towards a common
understanding and common usage patterns.

So even if the UABI contract is not documented (ugh), you need to be
prepared to set the UABI contract through kernel implementation.

If you do not document the UABI contract, then different drivers are
likely to implement it differently, leading to differing behaviour.
Also userspace will invent wild ways to abuse the UABI if there is no
documentation guiding it on proper use. If userspace or end users
observe different behaviour, that's bad even if it's not a regression.

I don't like the situation either, but it is what it is. UABI stability
trumps everything regardless of whether it was documented or not.

I bet userspace is going to use this as a "make it faster, make it
hotter" button. I would not be surprised if someone wrote a LD_PRELOAD
library that stamps any and all fences with an expired deadline to
just squeeze out a little more through some weird side-effect.

Well, that's hopefully overboard in scaring, but in the end, I would
like to see UABI documented so I can have a feeling of what it is for
and how it was intended to be used. That's all.


Thanks,
pq

--Sig_/Wv+B5cSZoeZxnThf_RuXZKn
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmP4kEMACgkQI1/ltBGq
qqeCRxAAqanpfK5IEJqK3dr5TjSHmce5djy70aOvi5VrtvhiCjlrTYeNzWGWLe6V
zWvnrJHvvzM9h2YacC0aciEN5vJj5Xd6yVqWsigomejxIHFLkECtf8y4rAf7wtZ5
Vhg8NfSDlZkvA3hhFJ3fyQeS5pFAgTcUh0Xdpp5QPRwUmn5xf9CpCnXe48VUcBkN
hPp9m08eAhl3WkGVOhUexQ87MhEhwRKIyP8/bE5oKPLJJ3DuiaqSZnRPp9Wr6dt/
cMdI4tUfiyis7VPfoHX20LHgyoa74pg+5RWwcym5rYQ8SgC7jlzK7qQymHP6Y0O9
X3K/WrLozhfwbE8oWzX3DmSvnvGV08xdQDkcJn3ji2yr+clkE45NgUsGuIxcUx+v
2qbRV0CFh9m8Kgcj7pRgEghEsmn68dQKbe4iqvEKu3NoSiYf4JOEH9dvy4LQgKrO
Lwc3V4N0byVDCEzLQIZrDI/o7uBGPGDptrS0uxS2PGPAXyuNYUM10IV00yRa4UWv
eR/rild4lOkBE7PWWSoR9L2vvz8bFoMRkmTh2EAO/vEAL4iHY/fPpA30yVGYWTnA
PND65L7M/nZK9zsaihacyeI/qcWwvU4HCIbuvKBHaCA3ALw7XEEW+D/E9T7PQc5D
iwAmZ+Aelf0zTiBwWs42itu6XMQiUXY+XPubhNNtZIymjFVC/FE=
=rINc
-----END PGP SIGNATURE-----

--Sig_/Wv+B5cSZoeZxnThf_RuXZKn--

--===============3148967584223604742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============3148967584223604742==--
