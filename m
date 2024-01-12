Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AC93882BE0F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 11:04:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB17143F21
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 10:04:25 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	by lists.linaro.org (Postfix) with ESMTPS id 9253C3EBEC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 10:04:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=jHMqOkSd;
	spf=pass (lists.linaro.org: domain of ppaalanen@gmail.com designates 209.85.167.51 as permitted sender) smtp.mailfrom=ppaalanen@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50eaabc36bcso7777455e87.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 02:04:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705053842; x=1705658642; darn=lists.linaro.org;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=49mGNK36uTAc2PcGxvuMH6FjMrZ7N2e/dp51dNcG2WI=;
        b=jHMqOkSdjQHx3dAdnWRd+Kyf9qDqpmeWLeCrmo3L50wU9Bz1ZrUvYPk6oPS3xbtpbN
         BByFpqqnTj3/T+lfSwr93WENK9D4w1N+Jib4KlXA+eHgsToJ1T/0nRRUhfGK6QvGQT6O
         IoQTLzY4/vXI16rxpfc0pHalTwYsy35ybPYwWeTbOM8EBFb2Kn8QJiQqONIp0Nse/zZ9
         FxLS5AqL0kyu1OCKAqV3SJpML02FLchGAUVhd6Qv2CPqqGX4UViTkvaUPaWt+hIhYpPR
         W5AuhYcdUe34pulx9lf8VpgqNIcNiQmd6PAHb+tqvht8N6LRbwdETiz/FHJBFx3+N8XO
         JZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705053842; x=1705658642;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=49mGNK36uTAc2PcGxvuMH6FjMrZ7N2e/dp51dNcG2WI=;
        b=BPzzYdiqFhyAp+o5zmjluXf/KF36ypnUwDh12wt3HiP4JEzJ07/WrePVPhL+TPCEbh
         xmJQPbiWrUAw3WrFH79CuiKqX41BP1WBsSInSl74l+ABkHEiX+wdfFQpp970AkRsph8T
         ba7f3HFrqHxd9KNY90a5C6K7E/ZTRv3wGqnzCwcXTnZA+pepg4lmhNlwYHED0CF5ukop
         9wc1atlgceKkJ2jCQlaVsLgxjdAgKWgOsWyRa6jWjB1RU6AyHItggQEGnR0rh4QRnFMh
         kv6KtDYGMiyeI0dPsEWxGPAvemjvfD/BOedxAsGHQfQq/Cc/pR2S8WZLN45IW1wg5Q8Z
         FUhw==
X-Gm-Message-State: AOJu0YwX05YtK7W+4XYg1bnu6X4Ddmk3LHn8jeDa4oQhwcTKm5/jyNTr
	3V0dHU+Y06op8zMeqO/DsWU=
X-Google-Smtp-Source: AGHT+IEJgqgQRPe4+wGucPThB/wEKQwuXAHrrbJUK/XGlr7TnjYBQAAXKDwmwnzWG8Ho0OJhEyyxYw==
X-Received: by 2002:a05:6512:3188:b0:50e:6b48:5407 with SMTP id i8-20020a056512318800b0050e6b485407mr667018lfe.82.1705053841920;
        Fri, 12 Jan 2024 02:04:01 -0800 (PST)
Received: from eldfell ([194.136.85.206])
        by smtp.gmail.com with ESMTPSA id y22-20020a056512335600b0050eea9541casm26727lfd.44.2024.01.12.02.04.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 02:04:01 -0800 (PST)
Date: Fri, 12 Jan 2024 12:03:57 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Yong Wu <yong.wu@mediatek.com>
Message-ID: <20240112120357.724e9326@eldfell>
In-Reply-To: <20240112092014.23999-1-yong.wu@mediatek.com>
References: <20240112092014.23999-1-yong.wu@mediatek.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Action: no action
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
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,amd.com,linaro.org,collabora.com,arm.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org,quicinc.com,ucw.cz,emersion.fr,mediatek.com];
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
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.51:from];
	FREEMAIL_ENVFROM(0.00)[gmail.com]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 9253C3EBEC
X-Spamd-Bar: --------
Message-ID-Hash: OPCKOFMMEXSLWZWE2CSYKAXHHHPXTUDI
X-Message-ID-Hash: OPCKOFMMEXSLWZWE2CSYKAXHHHPXTUDI
X-MailFrom: ppaalanen@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, christian.koenig@amd.com, Sumit Semwal <sumit.semwal@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, tjmercier@google.com, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>, Vijayanand Jitta <quic_vjitta@quicinc.com>, Joakim Bech <joakim.bech@linaro.org>, Jeffrey Kardatzke <jkardatzke@google.com>, Pavel Machek <pavel@ucw.cz>, Simon Ser <contact@emersion.fr>, jianjiao.zeng@mediatek.com, kuohong.wang@mediatek.com, youlin.pei@mediatek.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/7] dma-buf: heaps: Add restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OPCKOFMMEXSLWZWE2CSYKAXHHHPXTUDI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============2116152465940547519=="

--===============2116152465940547519==
Content-Type: multipart/signed; boundary="Sig_/lS=3R00MGWXjD0UrR5LXr4S";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/lS=3R00MGWXjD0UrR5LXr4S
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 12 Jan 2024 17:20:07 +0800
Yong Wu <yong.wu@mediatek.com> wrote:

> The purpose of this patchset is for MediaTek secure video playback, and
> also to enable other potential uses of this in the future. The 'restricted
> dma-heap' will be used to allocate dma_buf objects that reference memory
> in the secure world that is inaccessible/unmappable by the non-secure
> (i.e. kernel/userspace) world.  That memory will be used by the secure/
> trusted world to store secure information (i.e. decrypted media content).
> The dma_bufs allocated from the kernel will be passed to V4L2 for video
> decoding (as input and output). They will also be used by the drm
> system for rendering of the content.
>=20
> This patchset adds two MediaTek restricted heaps and they will be used in
> v4l2[1] and drm[2].
> 1) restricted_mtk_cm: secure chunk memory for MediaTek SVP (Secure Video
>    Path). The buffer is reserved for the secure world after bootup and it
>    is used for vcodec's ES/working buffer;
> 2) restricted_mtk_cma: secure CMA memory for MediaTek SVP. This buffer is
>    dynamically reserved for the secure world and will be got when we start
>    playing secure videos. Once the security video playing is complete, the
>    CMA will be released. This heap is used for the vcodec's frame buffer.=
=20
>=20
> [1] https://lore.kernel.org/linux-mediatek/20231206081538.17056-1-yunfei.=
dong@mediatek.com/
> [2] https://lore.kernel.org/all/20231223182932.27683-1-jason-jh.lin@media=
tek.com/
>=20
> Change note:
> v4: 1) Rename the heap name from "secure" to "restricted". suggested from
>      Simon/Pekka. There are still several "secure" string in MTK file
>      since we use ARM platform in which we call this "secure world"/
>      "secure command".

Hi,

I am really happy about this name change, thank you.

It is unfortunate that ARM specifications use the word "secure", but so
be it. When referring to specs, it's good to use the spec wording.

In everything that is not a direct reference to some spec though it
would be nice to use the "restricted" terminology if possible. I
presume there are other vendors who use words other than what ARM uses
for similar concepts. A common vocabulary would be nice.


Thanks,
pq

> v3: https://lore.kernel.org/linux-mediatek/20231212024607.3681-1-yong.wu@=
mediatek.com/
>     1) Separate the secure heap to a common file(secure_heap.c) and mtk
>      special file (secure_heap_mtk.c),  and put all the tee related code
>      into our special file.
>     2) About dt-binding, Add "mediatek," prefix since this is Mediatek TEE
>      firmware definition.
>     3) Remove the normal CMA heap which is a draft for qcom.
>     Rebase on v6.7-rc1.
>=20
> v2: https://lore.kernel.org/linux-mediatek/20231111111559.8218-1-yong.wu@=
mediatek.com/
>     1) Move John's patches into the vcodec patchset since they use the new
>        dma heap interface directly.
>        https://lore.kernel.org/linux-mediatek/20231106120423.23364-1-yunf=
ei.dong@mediatek.com/
>     2) Reword the dt-binding description.
>     3) Rename the heap name from mtk_svp to secure_mtk_cm.
>        This means the current vcodec/DRM upstream code doesn't match this.
>     4) Add a normal CMA heap. currently it should be a draft version.
>     5) Regarding the UUID, I still use hard code, but put it in a private
>     data which allow the others could set their own UUID. What's more, UU=
ID
>     is necessary for the session with TEE. If we don't have it, we can't
>     communicate with the TEE, including the get_uuid interface, which tri=
es
>     to make uuid more generic, not working. If there is other way to make
>     UUID more general, please free to tell me.
>    =20
> v1: https://lore.kernel.org/linux-mediatek/20230911023038.30649-1-yong.wu=
@mediatek.com/
>     Base on v6.6-rc1.
>=20
> Yong Wu (7):
>   dt-bindings: reserved-memory: Add mediatek,dynamic-restricted-region
>   dma-buf: heaps: Initialize a restricted heap
>   dma-buf: heaps: restricted_heap: Add private heap ops
>   dma-buf: heaps: restricted_heap: Add dma_ops
>   dma-buf: heaps: restricted_heap: Add MediaTek restricted heap and
>     heap_init
>   dma-buf: heaps: restricted_heap_mtk: Add TEE memory service call
>   dma_buf: heaps: restricted_heap_mtk: Add a new CMA heap
>=20
>  .../mediatek,dynamic-restricted-region.yaml   |  43 +++
>  drivers/dma-buf/heaps/Kconfig                 |  16 +
>  drivers/dma-buf/heaps/Makefile                |   4 +-
>  drivers/dma-buf/heaps/restricted_heap.c       | 237 +++++++++++++
>  drivers/dma-buf/heaps/restricted_heap.h       |  43 +++
>  drivers/dma-buf/heaps/restricted_heap_mtk.c   | 322 ++++++++++++++++++
>  6 files changed, 664 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/med=
iatek,dynamic-restricted-region.yaml
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap.c
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap.h
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap_mtk.c
>=20


--Sig_/lS=3R00MGWXjD0UrR5LXr4S
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmWhDo0ACgkQI1/ltBGq
qqdgnhAAiXIHptPG8WhqVlmOGF8J+Dj7PxjrLasFg2BG/gbUDAM2FICO1VBkblIw
bW1+LqpcdVG+FBs/hGrQOvEblaiIKjMXf5jyNnqPun4xGzi4VggC3sU7erHyIaAb
bLqfGVzrG782jns8Ibj9AeX1fck6aooUm8yD6w5JvGJRKRNIXKIeGPZrRkiotfnn
0NcTZ4BVoTufB5dzYgJABuiTmk1OyT4QkCVmVVE0mVn4tTc8Yd+s4m3rXqr/r3YE
A0geZB/426wfXy6oxNmf0ftQzsyEIcVP/WZJZKtbh6rnXQ2RcMkK38wTTG0Bmyuf
F1FW2L0GEyile6Vm6DyRJf97UQSzWCMraDUJKEd9+AbyjbreEnSUSL5WnPpWTbND
lmsCrC1rVM+/hTOD7or/0mF6kp2WgfSaaH+BhrkvDb8MGjj/84yEs4v0jAwBM5y4
knMaP00XF33xsX4OWEWbjniT+ZCdl9lhrGju9A+0+ZDTH+2LKAuzF5Rq9GgzWUzD
NqoAZ3aLTUS6KdLfjG6Dzz+eLtjrmOcOcP0gdxKbObO5DXo3yL/r3WZyGDoBDDNr
Ko38kjrDz+kuAsfKRzu1tDbPLnJLnVyt9rBl4NiD5Gl3BrJv0WvFRtuyzYrlNKHU
M5t91RcbiaPApyXCZT0eXqefR5B27nW2e20Kqcf3kEPh+dsLVzc=
=Y8bP
-----END PGP SIGNATURE-----

--Sig_/lS=3R00MGWXjD0UrR5LXr4S--

--===============2116152465940547519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============2116152465940547519==--
