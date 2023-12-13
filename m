Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A18A381104B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 12:38:48 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B0FD83E91A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 11:38:47 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	by lists.linaro.org (Postfix) with ESMTPS id C1BA73E91E
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 11:38:38 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=IlqMyDJa;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.180 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2c9f413d6b2so85984351fa.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 03:38:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702467517; x=1703072317; darn=lists.linaro.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=erM8V8RgO6KRLO/yh7jID1/baZLh+uPtPuh+atBa3V8=;
        b=IlqMyDJa9OME7rAiJT12cesMlA/psQC7m+0aIVwdfKpzZASvrL/iU5DIb98fMw+Nqb
         xon7PRNcZQO7rs3zFsZlF5uIjz0tU3HGZT3Ie7Zuqj/9STqohFhSHVo8m3f0Scqyy6ZT
         OMAmfiv6IF721bE5yuCUIN3KdQ5o8jg4D5AkrjJE1okNT3QSu0HoLQmodUj4zrieskXQ
         j1VuSfnwxPkU6/aNdkOY5WaF3BG50XvhKp7T9ctM2za5Ja0v2ZWs4LMvxiHPiJkczENk
         eT1iy8YFB93SFiSaOJx5US8TLaUWMqbt+IdNwXzQxhxol45azb6ZsgvDNiV4946hkCJS
         bPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467517; x=1703072317;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=erM8V8RgO6KRLO/yh7jID1/baZLh+uPtPuh+atBa3V8=;
        b=DZKAQQIL27wEbXw/8Vy59ci9SMduOdBPf2Qle5XQBSLaYJYw7h6TaI6xvcG/ZOxR+3
         35BX4qYvV2TJNAvDgMQzUrJS4W9mjCJc9ASerumxccTd+YKbnpCG9L6stOgDpIhiSh9i
         W5rGAQQB+k7mDOS7vv28rbsyoOvlQEdesGaitrI5dPqHVNLHhwf6uiUHwQfeVmZfaM7O
         r6iY9fQ08I9rPj0ByhfrL262m6o+pNuSrJIXUjdf4Oa4/6Qolu/Vbac7jdnRlWkCCKGf
         En5c89VL+hdj6Q/k/HOHD0RaRa8tTmPs7Hi1k0cOYl93MdMQ0gGfuFO5YCysTNhTDE4E
         ETdw==
X-Gm-Message-State: AOJu0YxQz/J+yg/s5udvQ6sQN2sfMV7BuJGgP6fqggoxoVfnXLpAArMB
	GJwKixjdBDNaj8eMzOQJLkY=
X-Google-Smtp-Source: AGHT+IGrw7mppJSoNS7Dsgtj7c74Wvr4sERgMIvNl5Jx450IZ2/p127Sh3s8TK2qiUjKMuJrmp211w==
X-Received: by 2002:a2e:330e:0:b0:2ca:226:423b with SMTP id d14-20020a2e330e000000b002ca0226423bmr2342385ljc.48.1702467517050;
        Wed, 13 Dec 2023 03:38:37 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id q6-20020a2e2a06000000b002c9e9c29670sm1767204ljq.47.2023.12.13.03.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:38:36 -0800 (PST)
Date: Wed, 13 Dec 2023 13:38:25 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Joakim Bech <joakim.bech@linaro.org>
Message-ID: <20231213133825.0a329864@eldfell>
In-Reply-To: <20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
	<DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
	<20231213110517.6ce36aca@eldfell>
	<20231213101549.lioqfzjxcvmqxqu3@pop-os.localdomain>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: C1BA73E91E
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.180:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: DXQ423KJB2BB6E5E56XECD7G2SM6SVVS
X-Message-ID-Hash: DXQ423KJB2BB6E5E56XECD7G2SM6SVVS
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Simon Ser <contact@emersion.fr>, Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DXQ423KJB2BB6E5E56XECD7G2SM6SVVS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============6928578278573300470=="

--===============6928578278573300470==
Content-Type: multipart/signed; boundary="Sig_/xTcL2+m+K.KNDg_qGM9LG9u";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/xTcL2+m+K.KNDg_qGM9LG9u
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 13 Dec 2023 11:15:49 +0100
Joakim Bech <joakim.bech@linaro.org> wrote:

> On Wed, Dec 13, 2023 at 11:05:17AM +0200, Pekka Paalanen wrote:
> > On Tue, 12 Dec 2023 16:36:35 +0000
> > Simon Ser <contact@emersion.fr> wrote:
> >  =20
> > > Is there a chance to pick a better name than "secure" here?
> > >=20
> > > "Secure" is super overloaded, it's not clear at all what it means from
> > > just the name. Something like "restricted" would be an improvement.
> > >  =20
> >=20
> > My thoughts exactly. Every time I see "secure" used for something that
> > either gives you garbage, refuses to work, or crashes your whole machine
> > *intentionally* when you try to do normal usual things to it in
> > userspace (like use it for GL texturing, or try to use KMS writeback), I
> > get an unscratchable itch.
> >=20
> > There is nothing "secure" from security perspective there for end users
> > and developers. It's just inaccessible buffers.
> >=20
> > I've been biting my lip until now, thinking it's too late.
> >  =20
> The characteristics we're looking for here is a buffer where the content
> is inaccessible to the normal OS and user space, i.e., Non-secure EL0 to
> EL2. I.e, the content of the buffer is meant to be used and accessible
> primarily by the secure side and other devices that has been granted

s/secure side/proprietary side/

I presume nothing of the other side can ever be in any way open?

Maybe the other side is even less secure than the FOSS side...

> access to it (for example decoders, display controllers if we're talking
> about video use cases). However, since the use cases for this exercises
> the whole stack, from non-secure user space (EL0) all the way to secure
> user space (S-EL0), with various devices needing access to the buffer at
> various times, it makes sense to let Linux manage the buffers, although
> it still cannot access the content. That's the overall context.

Yes, we know all this (except for the exact meaning of EL0 etc.).

> As for the name, it's always difficult to find a name suitable precisely
> describing what it is. "Secure" is perhaps vague, but it might still a
> good choice, if you carefully describe what secure means for this
> particular heap (in the source code and the documentation for it). For

Carefully describe, as in, re-define.

> example, the definition of "secure" for a secure heap as here could mean
> that buffer content is inaccessible to the host OS and user space
> running in normal world (using Arm nomenclature). I wouldn't have any
> problems with calling it secure if, as said it's defined what we mean by
> saying so. But I'm all ears for other suggestions as well.
>=20
> Safe, protected, shielded, unreachable, isolated, inaccessible,
> unaccessible, fortified, ... would any of these make more sense?

"Restricted" sounds like a good compromise to me. The buffers' usage is
severely restricted.

It is the opposite of "safe", because accessing the contents the wrong
way can return garbage or intentionally crash the whole system,
depending on the hardware implementation. One example is attempting to
put such a buffer on a KMS plane while the connector HDCP state is not
high enough, or a writeback connector is connected to the CRTC. It is
really fragile. (Do KMS drivers fail an atomic commit that would
violate the heap rules? Somehow I doubt that, who'd even know what the
rules are.)

It is protected/shielded/fortified from all the kernel and userspace,
but a more familiar word to describe that is inaccessible.
"Inaccessible buffer" per se OTOH sounds like a useless concept.

It is not secure, because it does not involve security in any way. In
fact, given it's so fragile, I'd classify it as mildly opposite of
secure, as e.g. clients of a Wayland compositor can potentially DoS the
compositor with it by simply sending such a dmabuf. Or DoS the whole
system.

"Poisonous heap" would be fitting but politically inappropriate I
guess. After all, "poison" is data that is not meant to be read by
anything normal.


Thanks,
pq

--Sig_/xTcL2+m+K.KNDg_qGM9LG9u
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmV5l7EACgkQI1/ltBGq
qqd21w/7B5AOlcm0BJvZ+kXMgngEgshf4OR5HVOLoGtC3uQwgQJLmIotDzGjaXnM
YNpvxE7i3jgF/MvfUynt58CspSm4fcgJzP5fjqD5zTAQ7BH2PFxnyl8Ko1AemP1A
yauV0Fco65ZDgsZRGCxZeCI60vtceCYPECULnQSC67w2ToHsdQsgaSH2DnTmNPgZ
TSqV553NtqYEc4U1XcfN0kwwwG7l3B5k7Fv57eEcLbpYjHhVHDc2Lbr138SWn7fx
APC3vIZGlAKGPSDwHCApb/xA9SiCprT1nxKtqsPnYON3OWeivPqd8w3ehdaHGI93
d5F6GM6c7XyTxSpde5H9UueQROreZB1JOrF81Pw4u3dJ0NMYjludA64BBnbDx4u7
HDPQDMMtpq2Gvg+FosmzYa3Pf1laWztXyqcjhrvr9W7FPvzDOvnA8Jt05jgRYHBO
Fi+ghVDeIkuiv3Yk5Ien7FStcO6OKjSeRErZvR3Cqu1ZdTZOd7+Pg7eZe+bdNtsN
lEaSLNF8x9hRQjBE3hsP9El2dcOIZbvxElDhczpHy+mEfHyf4wp6slc8be+dFiwq
b/kHVXxALVcRSBoa7E26WS0zcXgE0CyHkFAoMI/E6S2Ijxxf1UIGwTQyVzaUQ/V4
5FZEBlGLow3ax7wAl+aXTOAubzc4cm+LI17q6TbeRqcL9y0EBcU=
=P1qu
-----END PGP SIGNATURE-----

--Sig_/xTcL2+m+K.KNDg_qGM9LG9u--

--===============6928578278573300470==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============6928578278573300470==--
