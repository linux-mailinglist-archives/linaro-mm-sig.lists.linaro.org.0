Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EF5810CF2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 10:05:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5816240B38
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Dec 2023 09:05:40 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by lists.linaro.org (Postfix) with ESMTPS id 801C13E91A
	for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 09:05:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=E0u8TtXm;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.208.174 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2c9f4bb2e5eso92149841fa.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Dec 2023 01:05:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702458329; x=1703063129; darn=lists.linaro.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=uPVstSGHW2mJYYKDhOcbHVvFc6FCpsaEprPwYoO2QrU=;
        b=E0u8TtXmfR+kdpkoebFuz1TZIPUmcdnbhhgS6ROjsRGyr7924I94qqZvN1hxPB8R5e
         8swkzahKnhzq7nc+eCpT/KBLBcJBlQom786aD9CUdHvudTnf39m2/GLCrRRG+soUt8Uc
         Adjyic9oJnyEcjqvwIanZEfPJ2plfolwbd7wjZCYZvZ3lwUen4fIxbzIeQggdZnNREix
         9mvvgMlK2ranap6uIBlgFzgHtDm59eFGzvLPklfDJtoGViyB1MtGE/th1fyYCpnm5Ieo
         Y95Z+iHgNwS/6hHq820EhTLDFme6OEtLWhRR7cGViq82MfFIi3po4az0vkYLRNqnq70E
         5Phg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702458329; x=1703063129;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uPVstSGHW2mJYYKDhOcbHVvFc6FCpsaEprPwYoO2QrU=;
        b=g0tbqap2wT3VhaQPHJOJ84i++rerlGGQnwhg9yI0zWufvGKBwlPbRJ1eBePx9azQM4
         7WpCKFckVRvpoqTXkSGxchHfqIs5k8T5u1YWvh/MGJRhLhnyaC75tnsbOlYfiKrGVI7l
         ZoVe7x/SSYrlm2/+VT8NO1povn5sQUedhjFExZo0SBwmbqCRFh26OZyra8dUYs7YOXDJ
         AxrK2FVns0taKhbLVjUhwyhQY3vfF4UR6UcSNvr++wZ/GApDRt1GGYbQ9okkJxZ3e0SI
         JaWcUSs7fUUDMCR1oUT0frfowYELw0perUAxUuHmkZ1qjRbV8D+gQfW2V1EGvFa1gIVk
         XfMw==
X-Gm-Message-State: AOJu0YwVdTZ8fLPS0yI1e1O6uh4Y3FCn5zKW54xFdwc8yz2qXPpfh22k
	Cd/x3YtqVTQG21wWSGJmC9U=
X-Google-Smtp-Source: AGHT+IGWpeNIT+ctXpc3/nJZFateSOhCrGMOM+zwxTvVL6e43wnzc3r3OJ2tC/PYR81yyP2zfmy63A==
X-Received: by 2002:a05:6512:38cf:b0:50c:5aa:83b4 with SMTP id p15-20020a05651238cf00b0050c05aa83b4mr2890212lft.114.1702458328719;
        Wed, 13 Dec 2023 01:05:28 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id y18-20020a199152000000b0050be6326f2asm1597596lfj.64.2023.12.13.01.05.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 01:05:28 -0800 (PST)
Date: Wed, 13 Dec 2023 11:05:17 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Simon Ser <contact@emersion.fr>
Message-ID: <20231213110517.6ce36aca@eldfell>
In-Reply-To: <DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
References: <20231212024607.3681-1-yong.wu@mediatek.com>
	<DPBmATfmfvSP8Cwjz99kj_JvCEiAqRfuMFJZEBF2aIgl8NZqWFR66eyPTX1E8bHyOlimBihEE3E80p9bfOJ-0SNu8pwoIzL9gD2Xae6r97g=@emersion.fr>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: 801C13E91A
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.30 / 15.00];
	REPLY(-4.00)[];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	BAYES_HAM(-1.20)[89.20%];
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
	FREEMAIL_CC(0.00)[mediatek.com,kernel.org,linaro.org,amd.com,gmail.com,lists.freedesktop.org,google.com,collabora.com,quicinc.com,ndufresne.ca,vger.kernel.org,lists.linaro.org,lists.infradead.org];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.174:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 3BHITLXBYFDTCQ57VT44XRXPFQQ7WWUF
X-Message-ID-Hash: 3BHITLXBYFDTCQ57VT44XRXPFQQ7WWUF
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Yong Wu <yong.wu@mediatek.com>, Rob Herring <robh+dt@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com, Matthias Brugger <matthias.bgg@gmail.com>, dri-devel@lists.freedesktop.org, John Stultz <jstultz@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Nicolas Dufresne <nicolas@ndufresne.ca>, jianjiao.zeng@mediatek.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-mediatek@lists.infradead.org, Joakim Bech <joakim.bech@linaro.org>, tjmercier@google.com, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 0/7] dma-buf: heaps: Add secure heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3BHITLXBYFDTCQ57VT44XRXPFQQ7WWUF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============1104790518007736483=="

--===============1104790518007736483==
Content-Type: multipart/signed; boundary="Sig_/DaWmOigQ7D9ggi2.WnkRpp3";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/DaWmOigQ7D9ggi2.WnkRpp3
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 12 Dec 2023 16:36:35 +0000
Simon Ser <contact@emersion.fr> wrote:

> Is there a chance to pick a better name than "secure" here?
>=20
> "Secure" is super overloaded, it's not clear at all what it means from
> just the name. Something like "restricted" would be an improvement.
>=20

My thoughts exactly. Every time I see "secure" used for something that
either gives you garbage, refuses to work, or crashes your whole machine
*intentionally* when you try to do normal usual things to it in
userspace (like use it for GL texturing, or try to use KMS writeback), I
get an unscratchable itch.

There is nothing "secure" from security perspective there for end users
and developers. It's just inaccessible buffers.

I've been biting my lip until now, thinking it's too late.


Thanks,
pq

--Sig_/DaWmOigQ7D9ggi2.WnkRpp3
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmV5c80ACgkQI1/ltBGq
qqdqdg/8DMTwQfWf/EfE0E0FOjM0IPMnzZreMPcRlHBqMJqgQA5miVL9CVE+novh
ohRbfFYLwut7eqtK6Dzn+6hOIVFRMpGPkWe8qHfT+CJ8Wr3hD8Q23PKEveH/FENO
G+XUbPzsnlDTDs5MB2Bb1TAiWQLS8Y1/nstMZ49l8mmW6Iim0Z+/xhyqUyLaHfpm
zB7JRM7CSN8gyPhoqoAAITy+ZL4+yD7D28izgQA4YZD4JzkE1fYOUFzNb4QRA/T7
GxPSExZlU7+CdIL5zAJvhqpHh9nxMdOUvaP3aQBzShcTKDVoet/TZ+0QuEOuD1QJ
gHG05Hcp5gREsbjn9oytS2km0LcL7ZmR98NOrf9idl4jZDjVTEMQvV/FrSSwiyGv
5whtFHkkDVy1nXjyYmgiGO7dvIptO+dNGgRtACt3xe0tdvu5ndP2+hG21ADVWebc
fd2T4mnUoANro1gOjWATV5+0fzlOK5hFff70pvE9U2ATvqXo7i2I+kzW/EJFPilA
4EqR7cIyLCaVRb7q/dC4CdWUu0NIxCp7+u22Z/B8pHFw2MnQZa0twIKV3GJokfrR
A4PfZLAvpbSkfr7SalrN6eYFHhJOpcCJPHXCiQSnRT7DU5u6NhUr35IZgq/YuANC
YrU/v7fiWv2v6I0I2FN8fBaH1baL6/SWpA5q43OECPVewbA/Uwg=
=DQfN
-----END PGP SIGNATURE-----

--Sig_/DaWmOigQ7D9ggi2.WnkRpp3--

--===============1104790518007736483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============1104790518007736483==--
