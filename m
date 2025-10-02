Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE79BB3EA5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Oct 2025 14:40:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2BDC45E75
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Oct 2025 12:40:40 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by lists.linaro.org (Postfix) with ESMTPS id DF0554476A
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Oct 2025 12:40:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ndufresne-ca.20230601.gappssmtp.com header.s=20230601 header.b=UL5+IDEh;
	dmarc=pass (policy=none) header.from=ndufresne.ca;
	spf=pass (lists.linaro.org: domain of nicolas@ndufresne.ca designates 209.85.222.175 as permitted sender) smtp.mailfrom=nicolas@ndufresne.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-85d5cd6fe9fso91970185a.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 02 Oct 2025 05:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759408837; x=1760013637; darn=lists.linaro.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9tG3CglHbeY/0AI4Rz2tx44tc/toPYUH7TVppo+t14c=;
        b=UL5+IDEhsJjhOhdTmEEHUhM6oSL09qlZjcslt8aDvk5/0aqmyRT88nc/5amjhxKxBk
         7ZQuySlaCbK9e3ynu/VeC1/0Ylznva3U9YDouZxGAtw/KZCE38gLs7VXrO9FRnH+NwhX
         B//X4KwtRHf/sbxJqgCdFD4thAiaS+XNS/DtrhNWSpG0dWhIxe3p5Q3IDcRYCqbl2WeZ
         ZGjQQUUy5/9a/8Bro1vZMn/mw3NxS/lpXz7Yzdy/F081Gyqeh+RfG2fOHqQyYBEwOahT
         b5ZbGbrFPUHf+qjKf8qB0ogM4cEYZsSS7rod4wSU79QRUSnkfyzC79CROE+5zJSleW1n
         sEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759408837; x=1760013637;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9tG3CglHbeY/0AI4Rz2tx44tc/toPYUH7TVppo+t14c=;
        b=iD4qNDVmDb2ZNBeEzpQuAsj5WaNurtO/yglzInf36FV51Z776X8Kl/auf6cfofiDYp
         WNKwVT4GRhVQjCky3pRvFJsVtzIL+oSjXyARsq3L3NjxaKMX73m4HkOllxgryp8495lc
         3SK4s2vRNkkkrbIh4h+esuLipJum2LCYbWEFN0lXIkbzpvC4aoqtKqpqVDsasi60+Vpo
         twwuA8pgiDSCc2ZQe2aDsYTwSyoZdu7i420yy79LVO5xZHb/jGfI6WIn0WWOhGFQfoYd
         NaUFV1G41jJwtoZs+bd13ijkDUo3nZ2PAKYO6LsEljEZzX+ufbsN4i1gjCNRREgkipvr
         y2Dg==
X-Forwarded-Encrypted: i=1; AJvYcCV5s9L9Q082Fpq4TQnYclxYwpKTAU+D6DUE6kc+9/+OanSgIkQ/Yjpfzc3gk1JoC+YfwSQllK926HqIldym@lists.linaro.org
X-Gm-Message-State: AOJu0YwNENh3lEafAuoNs+rSvKFy4peJ7O8WPI5NP/H9vOzRb04P2j38
	sBFAAOwHmYfwi/QYGdD7sCR9McrWBnfBLTn6F0ay5cERv9STj1e79ndk30DJ6SCoo/s=
X-Gm-Gg: ASbGncsqn4u20Zis1LHOcKEc8dN9+beMIf9/Mple67aJVEw4BO7t6+lNsU/g/DNZtjM
	gkS/kHkZ2ub0Qy2MluOJNvGuo5ysB1QSSJsTK1tebT70lEPFouhuUoaL2A528pEIIZSE21JhGH7
	vI2MTWa8eJh1J7+CP82KZ9ZXdE9VzNSoCt5i7gw+PmNmMlmkZfmwPDkpjEDWFbg7e9TVE52OiUI
	0iPadzmbX+bf29Ax4nBf/05LV9S4uO0r0IC4VwD0VIyNDdCZ3wqMEwScqCBXK/dahC3tdfUrmRt
	tdWkqdu7X3OzzxsWUrr93uxIifL6RZ9BxbX06fPrY5aK6cJJOShK7Z2KTrbFXpQ82XGA+gS3GEB
	xVV4vbh0e34K0ZMo0LlBr0v7CnPl1lDK7wlobKVtUV225GwzrisojclFRxAr/6Qg=
X-Google-Smtp-Source: AGHT+IHfFbRDc0lxQJHEnEb/USvJWquapfe/e1sD30gNrrrl/FzbGv+DojWArzyJNLJRhyT1vMSzeQ==
X-Received: by 2002:a05:620a:1a0c:b0:85e:5022:33b7 with SMTP id af79cd13be357-8737780ae60mr1022559585a.72.1759408837081;
        Thu, 02 Oct 2025 05:40:37 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::5ac? ([2606:6d00:17:ebd3::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87771129fcdsm200898385a.13.2025.10.02.05.40.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 05:40:36 -0700 (PDT)
Message-ID: <9ca0e8b7b644637101f8bbc3f69cb71f20665f04.camel@ndufresne.ca>
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Maxime Ripard <mripard@redhat.com>, Jens Wiklander
	 <jens.wiklander@linaro.org>
Date: Thu, 02 Oct 2025 08:40:35 -0400
In-Reply-To: <20251002-shaggy-mastiff-of-elevation-c8e1f0@houat>
References: <20250911135007.1275833-1-jens.wiklander@linaro.org>
	 <20250911135007.1275833-3-jens.wiklander@linaro.org>
	 <20251002-shaggy-mastiff-of-elevation-c8e1f0@houat>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: DF0554476A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.60 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ndufresne.ca,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[ndufresne-ca.20230601.gappssmtp.com:s=20230601];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org,qti.qualcomm.com,ffwll.ch,fooishbar.org,oss.qualcomm.com];
	RCPT_COUNT_TWELVE(0.00)[26];
	URIBL_BLOCKED(0.00)[qualcomm.com:email,ndufresne-ca.20230601.gappssmtp.com:dkim];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ndufresne-ca.20230601.gappssmtp.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.222.175:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DNSWL_BLOCKED(0.00)[2606:6d00:17:ebd3::5ac:received];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[gappssmtp.com:dkim];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.222.175:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: G57SAMMBZZDZWQPA2QCSDEJFR6JSHEQ7
X-Message-ID-Hash: G57SAMMBZZDZWQPA2QCSDEJFR6JSHEQ7
X-MailFrom: nicolas@ndufresne.ca
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, azarrabi@qti.qualcomm.com, Simona Vetter <simona.vetter@ffwll.ch>, Daniel Stone <daniel@fooishbar.org>, Rouven Czerwinski <rouven.czerwinski@linaro.org>, robin.murphy@arm.com, Sumit Garg <sumit.garg@oss.qualcomm.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 2/9] dma-buf: dma-heap: export declared functions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G57SAMMBZZDZWQPA2QCSDEJFR6JSHEQ7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============4083599500790161770=="


--===============4083599500790161770==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-45N4bvp/oD9a6lFdlKUD"


--=-45N4bvp/oD9a6lFdlKUD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeudi 02 octobre 2025 =C3=A0 09:47 +0200, Maxime Ripard a =C3=A9crit=C2=
=A0:
> Hi,
>=20
> On Thu, Sep 11, 2025 at 03:49:43PM +0200, Jens Wiklander wrote:
> > Export the dma-buf heap functions to allow them to be used by the OP-TE=
E
> > driver. The OP-TEE driver wants to register and manage specific secure
> > DMA heaps with it.
> >=20
> > Reviewed-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> > Reviewed-by: T.J. Mercier <tjmercier@google.com>
> > Acked-by: Sumit Semwal <sumit.semwal@linaro.org>
> > Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
> > ---
> > =C2=A0drivers/dma-buf/dma-heap.c | 4 ++++
> > =C2=A01 file changed, 4 insertions(+)
> >=20
> > diff --git a/drivers/dma-buf/dma-heap.c b/drivers/dma-buf/dma-heap.c
> > index 3cbe87d4a464..8ab49924f8b7 100644
> > --- a/drivers/dma-buf/dma-heap.c
> > +++ b/drivers/dma-buf/dma-heap.c
> > @@ -11,6 +11,7 @@
> > =C2=A0#include <linux/dma-buf.h>
> > =C2=A0#include <linux/dma-heap.h>
> > =C2=A0#include <linux/err.h>
> > +#include <linux/export.h>
> > =C2=A0#include <linux/list.h>
> > =C2=A0#include <linux/nospec.h>
> > =C2=A0#include <linux/syscalls.h>
> > @@ -202,6 +203,7 @@ void *dma_heap_get_drvdata(struct dma_heap *heap)
> > =C2=A0{
> > =C2=A0	return heap->priv;
> > =C2=A0}
> > +EXPORT_SYMBOL_NS_GPL(dma_heap_get_drvdata, "DMA_BUF_HEAP");
> > =C2=A0
> > =C2=A0/**
> > =C2=A0 * dma_heap_get_name - get heap name
> > @@ -214,6 +216,7 @@ const char *dma_heap_get_name(struct dma_heap *heap=
)
> > =C2=A0{
> > =C2=A0	return heap->name;
> > =C2=A0}
> > +EXPORT_SYMBOL_NS_GPL(dma_heap_get_name, "DMA_BUF_HEAP");
> > =C2=A0
> > =C2=A0/**
> > =C2=A0 * dma_heap_add - adds a heap to dmabuf heaps
> > @@ -303,6 +306,7 @@ struct dma_heap *dma_heap_add(const struct
> > dma_heap_export_info *exp_info)
> > =C2=A0	kfree(heap);
> > =C2=A0	return err_ret;
> > =C2=A0}
> > +EXPORT_SYMBOL_NS_GPL(dma_heap_add, "DMA_BUF_HEAP");
>=20
> It's not clear to me why we would need to export those symbols.
>=20
> As far as I know, heaps cannot be removed, and compiling them as module
> means that we would be able to remove them.
>=20
> Now, if we don't expect the users to be compiled as modules, then we
> don't need to export these symbols at all.

Maybe I'm getting out of topic, sorry if its the case, but making that a ha=
rd
rule seems very limiting. Didn't we said that a heap driver could be made t=
o
represent memory region on a remote device such as an eGPU ?

Nicolas

>=20
> Am I missing something?
>=20
> Maxime

--=-45N4bvp/oD9a6lFdlKUD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaN5ywwAKCRDZQZRRKWBy
9KyVAP0e+zNS/qwzQzV67XRNZS/HR4iYLotJyohgk+o985wA0gD/cUs7EW6a2cas
LUv2nPsRzhxVleDso0vC+2RD1vBV7wE=
=kgiD
-----END PGP SIGNATURE-----

--=-45N4bvp/oD9a6lFdlKUD--

--===============4083599500790161770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============4083599500790161770==--
