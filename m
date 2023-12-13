Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B1E811469
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 15:16:39 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18F3F3F4DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 14:16:38 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	by lists.linaro.org (Postfix) with ESMTPS id CD7EE3E91E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 14:16:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=UY+WVnOZ;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.171 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c9f7fe6623so88060541fa.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 06:16:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702476987; x=1703081787; darn=lists.linaro.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=HnmrUE6uA1UjU0DGZJd+ywoyYgk2RFZ2Qv8HjSJNWug=;
        b=UY+WVnOZjIsPs3y6z1fJP5zrMf5gHGh+8E0viJh1+qE7OTGPdq/apgMANOhBiZh/Zf
         UJUAxARYoBOW88v++dzxuBHUW/Nw+PiNVTzJie75Vq6rXDiWm/0rC/BcBlkOVnnw2hPQ
         6G70wH/FRAEjisX/gwGkjhV1OU79/vpQBlnCL2s5OMi5dZfFj1oX/IYvo5wX6wZBMSX8
         m1081ujuELcv3Bwyq+3wnHOAYkbB9bfrKmDM265zbey05XgQ9tR/b/SfAzYUb0q59qvq
         ONU4BIt8jUf299RHtiDKSKZX1jV2jEWbu7yqAAqqdi5CTe4u5c8sRVoir+UluaBZmSuJ
         gDMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702476987; x=1703081787;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HnmrUE6uA1UjU0DGZJd+ywoyYgk2RFZ2Qv8HjSJNWug=;
        b=pC4kolPNgs9vq4zdNppPK9K7NgCmPfPaYENJ03FeZ3JUn3QmxeZ4rNtt/Z9Vs0HAvC
         Nisx4UmeOqxk0edd86c3BE9iOG2+KrN2vX/JFYKqvVnt6qoXbZWyWb+NPttFewrEWEtf
         pI2UVX90lLlKCRQaNwYY3UV9ilOFgydNM3Fb1Wr1w9vhF0LE672mVHuKshcY2i/xmbZ9
         6+yYpkW8wuZvEqyqzfFmbo7Kz8ElhvMrMPeO5uGdNJAtgridh1XWTSOU4vH46o+x8fce
         gHd7t3CNjJudNqWn5NfFU5QdDqRBxO9in6+5mq/o1MhTm/LYrq8/oJOkrTz+QhkLfpVC
         xUqw==
X-Gm-Message-State: AOJu0YzA49bJ8PNsNKA365j+3Bs5IEctNKZfFe+tniWAQaSFd7qWNsE9
	/wodWwJZsi1Ph6GBUQYmDTs=
X-Google-Smtp-Source: AGHT+IHMEFbwY2jxx7Eqytsu4ONvN/Lw6aO1DvwW9XsiwGhW/Welyye/FmxGvgN+8ji2wLeKZxibCA==
X-Received: by 2002:a2e:9b03:0:b0:2ca:34cd:77ea with SMTP id u3-20020a2e9b03000000b002ca34cd77eamr2472316lji.44.1702476987175;
        Wed, 13 Dec 2023 06:16:27 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id 20-20020a2eb954000000b002c9f62145f8sm1868126ljs.82.2023.12.13.06.16.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 06:16:26 -0800 (PST)
Date: Wed, 13 Dec 2023 16:16:14 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Joakim Bech <joakim.bech@linaro.org>
Message-ID: <20231213161614.43e5bca8@eldfell>
In-Reply-To: <20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
	<DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
	<20231213110517.6ce36aca@eldfell>
	<20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
	<20231213133825.0a329864@eldfell>
	<20231213132229.q3uxdhtdsxuzw3w6@pop-os.localdomain>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: CD7EE3E91E
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[emersion.fr,mediatek.com,kernel.org,linaro.org,amd.com,gmail.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.171:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: EEU5HOTYF33WHR5LVPEF7GJPGOGXD7ZU
X-Message-ID-Hash: EEU5HOTYF33WHR5LVPEF7GJPGOGXD7ZU
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simon Ser <contact@emersion.fr>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/EEU5HOTYF33WHR5LVPEF7GJPGOGXD7ZU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============5829350725464941305=="

--===============5829350725464941305==
Content-Type: multipart/signed; boundary="Sig_/m_y9/L720k3.YUUEknjTd2h";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/m_y9/L720k3.YUUEknjTd2h
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 13 Dec 2023 14:22:29 +0100
Joakim Bech <joakim.bech@linaro.org> wrote:

> On Wed, Dec 13, 2023 at 01:38:25PM +0200, Pekka Paalanen wrote:
> > On Wed, 13 Dec 2023 11:15:49 +0100
> > Joakim Bech <joakim.bech@linaro.org> wrote:
> >  =20
> > > On Wed, Dec 13, 2023 at 11:05:17AM +0200, Pekka Paalanen wrote: =20
> > > > On Tue, 12 Dec 2023 16:36:35 +0000
> > > > Simon Ser <contact@emersion.fr> wrote:
> > > >    =20
> > > > > Is there a chance to pick a better name than "secure" here?
> > > > >=20
> > > > > "Secure" is super overloaded, it's not clear at all what it means=
 from
> > > > > just the name. Something like "restricted" would be an improvemen=
t.
> > > > >    =20
> > > >=20
> > > > My thoughts exactly. Every time I see "secure" used for something t=
hat
> > > > either gives you garbage, refuses to work, or crashes your whole ma=
chine
> > > > *intentionally* when you try to do normal usual things to it in
> > > > userspace (like use it for GL texturing, or try to use KMS writebac=
k), I
> > > > get an unscratchable itch.
> > > >=20
> > > > There is nothing "secure" from security perspective there for end u=
sers
> > > > and developers. It's just inaccessible buffers.
> > > >=20
> > > > I've been biting my lip until now, thinking it's too late.
> > > >    =20
> > > The characteristics we're looking for here is a buffer where the cont=
ent
> > > is inaccessible to the normal OS and user space, i.e., Non-secure EL0=
 to
> > > EL2. I.e, the content of the buffer is meant to be used and accessible
> > > primarily by the secure side and other devices that has been granted =
=20
> >=20
> > s/secure side/proprietary side/
> >  =20
> I'm using the nomenclature as written by Arm (other architectures have
> other names for their secure execution states).
>=20
> > I presume nothing of the other side can ever be in any way open?
> >  =20
> I'm sure there are lots of examples of things running on the secure side
> that are open. The OP-TEE project where I'm a maintainer has been fully
> open source since 2014, to give one example that I'm familiar with
> myself.

Oh, I didn't realise there were FOSS implementations of the other side
that tie in with this secure/restricted heap here. Sorry.

I think the patch series cover letter should point to those to give a
view of the other side to the reviewers, just like DRM requires
userspace to be open for new UAPI.

> > Maybe the other side is even less secure than the FOSS side...
> >  =20
> > > access to it (for example decoders, display controllers if we're talk=
ing
> > > about video use cases). However, since the use cases for this exercis=
es
> > > the whole stack, from non-secure user space (EL0) all the way to secu=
re
> > > user space (S-EL0), with various devices needing access to the buffer=
 at
> > > various times, it makes sense to let Linux manage the buffers, althou=
gh
> > > it still cannot access the content. That's the overall context. =20
> >=20
> > Yes, we know all this (except for the exact meaning of EL0 etc.).
> >  =20
> Great!
>=20
> > > As for the name, it's always difficult to find a name suitable precis=
ely
> > > describing what it is. "Secure" is perhaps vague, but it might still a
> > > good choice, if you carefully describe what secure means for this
> > > particular heap (in the source code and the documentation for it). Fo=
r =20
> >=20
> > Carefully describe, as in, re-define.
> >  =20
> > > example, the definition of "secure" for a secure heap as here could m=
ean
> > > that buffer content is inaccessible to the host OS and user space
> > > running in normal world (using Arm nomenclature). I wouldn't have any
> > > problems with calling it secure if, as said it's defined what we mean=
 by
> > > saying so. But I'm all ears for other suggestions as well.
> > >=20
> > > Safe, protected, shielded, unreachable, isolated, inaccessible,
> > > unaccessible, fortified, ... would any of these make more sense? =20
> >=20
> > "Restricted" sounds like a good compromise to me. The buffers' usage is
> > severely restricted.
> >  =20
> Yes, restricted isn't a bad choice. We would still need to describe what
> we mean by saying it's restricted, i.e., what is it restricted from,
> since I'd guess that "restricted" by itself also could be a bit open
> ended for a lot of people.

Yes, but "restricted" also does not give out an immediate wrong
impression. Label something as "secure", and it immediately raises the
questions of what kind of attacks it prevents and how can I make use of
it.

Is there any use of restricted buffers outside of Digital Rights
Management though? Could a private person somehow make use of it to
protect their own contents? Like a photographer sending drafts to a
customer while not wanting give out any digital copies?

If not, then restricted buffers are something people would generally
like to avoid, not embrace. "Secure" gives a positive impression,
"restricted" a negative impression.

> > It is the opposite of "safe", because accessing the contents the wrong
> > way can return garbage or intentionally crash the whole system,
> > depending on the hardware implementation. One example is attempting to
> > put such a buffer on a KMS plane while the connector HDCP state is not
> > high enough, or a writeback connector is connected to the CRTC. It is
> > really fragile. (Do KMS drivers fail an atomic commit that would
> > violate the heap rules? Somehow I doubt that, who'd even know what the
> > rules are.)
> >  =20
> I believe one of the goals with reviewing the patches is to highlight
> issues like this and try to figure out how to avoid ending up in
> situations like what you described by suggesting alternative solutions
> and ideas.
>=20
> > It is protected/shielded/fortified from all the kernel and userspace,
> > but a more familiar word to describe that is inaccessible.
> > "Inaccessible buffer" per se OTOH sounds like a useless concept.
> >=20
> > It is not secure, because it does not involve security in any way. In
> > fact, given it's so fragile, I'd classify it as mildly opposite of
> > secure, as e.g. clients of a Wayland compositor can potentially DoS the
> > compositor with it by simply sending such a dmabuf. Or DoS the whole
> > system.
> >  =20
> I hear what you are saying and DoS is a known problem and attack vector,
> but regardless, we have use cases where we don't want to expose
> information in the clear and where we also would like to have some
> guarantees about correctness. That is where various secure elements and
> more generally security is needed.
>=20
> So, it sounds like we have two things here, the first is the naming and
> the meaning behind it. I'm pretty sure the people following and
> contributing to this thread can agree on a name that makes sense. Would
> you personally be OK with "restricted" as the name? It sounds like that.

I would. I'm also just a by-stander, not a maintainer of kernel
anything. I have no power to accept nor reject anything here.

> The other thing is the feature and functionality itself offered by this
> patch series. My impression from reading your replies is that you think
> this is the wrong approach. If my impression is correct, what would you
> suggest as an alternative approach?

I just generally dislike locking people out of what their systems hold,
but I also understand why extremely big companies want this Digital
Rights Management technology for their business model. If Linux does
not support that business model, they and the whole broadcast industry
might use something else. At least it pays for kernel developers who
can hopefully do some genuinely useful work on the side as well,
benefiting the community.

Let's just be honest about what is what.


Thanks,
pq

--Sig_/m_y9/L720k3.YUUEknjTd2h
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmV5vK4ACgkQI1/ltBGq
qqeSrxAAsVMu1uwUAEiHOmIbdZ3IMpYONvvX9PjrsowXIzc4xZ+sohcdjwWsN9LM
ZwyXBLhxVmbSKy55b8fNI2UR51yIDO8E6lZLQieSxAulEzya2aMjmJEHoXdBo/sS
A3aGLk4Wu7hh4kSbyeOSoLf2Xf+Fg85puarR12WrxHwXn2JvFteRe1NX2v5+QJSn
lzGOqYb4bFIIC7oL7qBVH3VBT/st+RdqvUGnsJlvngSO/YEZz8Q2AZTt8sE1R/mT
6eZ9cidJoUdKqF9vKAxiKpTJyiVLpYqvhm9cvGQinbsYz3QKoUICKcSIGCGZlQti
2GShGtnPL1qpZfo95xzcu+fw/9g9DC3BRbG/+dV84txlxzn8y1pD6kGka9HjPhi1
ZuPC1MVNFvSOpv7tIvRRI/lD4ZRKdRJnvW4DDFntEhVfjGq0I5ezVjqBBHcic4QE
tWWjkepYco492avLdzrJFuVbzj9VwzCRt+M/mlIyons/QfvX/SoRGDya2pk1DNvF
NBK3Rf4qvOsooioZRNe8PnR/aBXw0MRFMN8htEKcuUHZnOCeIih+PV7VJwGMLMC2
vjYC7/yXalMFutcYjBJeMyqQylgXUsoJY2WB4d4alazZvlMFrQ/v6+t9y2aOHdpZ
+XGDbbjlVimKW1utrZlaHsi8w8Dbk9OH3I3tOZZQYfBgAFj6Nco=
=IiKA
-----END PGP SIGNATURE-----

--Sig_/m_y9/L720k3.YUUEknjTd2h--

--===============5829350725464941305==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============5829350725464941305==--
