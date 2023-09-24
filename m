Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B31F7AC65D
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 24 Sep 2023 04:57:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C59664433F
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 24 Sep 2023 02:57:17 +0000 (UTC)
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lists.linaro.org (Postfix) with ESMTPS id 822FA3EC33
	for <linaro-mm-sig@lists.linaro.org>; Sun, 24 Sep 2023 02:57:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=chromium.org header.s=google header.b=DCAgfPbB;
	spf=pass (lists.linaro.org: domain of keescook@chromium.org designates 209.85.160.49 as permitted sender) smtp.mailfrom=keescook@chromium.org;
	dmarc=pass (policy=none) header.from=chromium.org
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1db2445b7afso2779349fac.1
        for <linaro-mm-sig@lists.linaro.org>; Sat, 23 Sep 2023 19:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695524234; x=1696129034; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NPXBmCzK3FG70guuha+2I+A6yn1HdDxLwlr5P+cFkHs=;
        b=DCAgfPbBUCCOKxmirbTpTfglkxu1IT81leabOs+MNOToD9A4A4G6uLVDy96qDyNm40
         +BToTBpuB+8OdJDL+XSB0AX5Bag9I5T8vQh1O0Ko1ArbtApVuYthpVSxaM0apirmHIV6
         xjGdY13kebvNWxH7vjqK0YadiRqRqVb0r670w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695524234; x=1696129034;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NPXBmCzK3FG70guuha+2I+A6yn1HdDxLwlr5P+cFkHs=;
        b=GdBX+Bded2Krbr/dwsu2pkMiz/mAdtUm11Q5u6hPdjbK7Rn5egqpYxzPu0lKZQddDc
         DJxFrMqfO5tGzdG+3NqJFppF02z+G02WSY9S/75ZGwjU0rK86aQMkc2SfuLLk72XYGtC
         6MhvmOsMGeFjNBh6rdg1hNFowv9tyvQNAltttUr7ee8MoIQ11CYeDHBDabsLdSCwQgNj
         O2n0S0789XLbfjMAmufHtHMSSN5XzR7vtOUDgA3PB4+eMEyIJlrNF+4FXwjAJGh2ebnD
         9fOa5ebXkyI1fB0rXSv08QzY2HojkuUrethvmtjjM6D4Fr+VHNmwLYCCaKEQcX8oc7dg
         Q6aQ==
X-Gm-Message-State: AOJu0Yy4iG9xSsxgfvhuYV9OBOP6DzcMERMuIrSMivy6ztGmuQyO4hHI
	qQsFbumW3gT+EoAtxewyeA271w==
X-Google-Smtp-Source: AGHT+IFK1V+i4tYBOwcJa9hlcUbQL0WgYEFL3YN7gDnaCzlxB+A01+MYEGZT9yHCPBAf6SjDQGiVSQ==
X-Received: by 2002:a05:6870:6486:b0:1c0:c42f:6db2 with SMTP id cz6-20020a056870648600b001c0c42f6db2mr4979469oab.37.1695524233832;
        Sat, 23 Sep 2023 19:57:13 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id m29-20020a638c1d000000b005787395e301sm3964077pgd.44.2023.09.23.19.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Sep 2023 19:57:12 -0700 (PDT)
Date: Sat, 23 Sep 2023 19:57:12 -0700
From: Kees Cook <keescook@chromium.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <202309231954.1EAD0FA5A7@keescook>
References: <3e37f05c7593f1016f0a46de188b3357cbbd0c0b.1695060389.git.christophe.jaillet@wanadoo.fr>
 <7043f179-b670-db3c-3ab0-a1f3e991add9@embeddedor.com>
 <a49f800e-e56f-433a-81d2-6edd68a0a015@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a49f800e-e56f-433a-81d2-6edd68a0a015@wanadoo.fr>
X-Spamd-Bar: /
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.49:from];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[wanadoo.fr];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 822FA3EC33
Message-ID-Hash: UFWIWOLN4AIQD4EOYZO2YWWHAZEBQAP3
X-Message-ID-Hash: UFWIWOLN4AIQD4EOYZO2YWWHAZEBQAP3
X-MailFrom: keescook@chromium.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Gerd Hoffmann <kraxel@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: Fix a potential (and unlikely) access to unallocated memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UFWIWOLN4AIQD4EOYZO2YWWHAZEBQAP3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 18, 2023 at 09:22:44PM +0200, Christophe JAILLET wrote:
> Le 18/09/2023 =E0 05:10, Gustavo A. R. Silva a =E9crit=A0:
> >=20
> >=20
> > On 9/18/23 12:46, Christophe JAILLET wrote:
> > > If 'list_limit' is set to a very high value, 'lsize' computation could
> > > overflow if 'head.count' is big enough.
> > >=20
> > > In such a case, udmabuf_create() will access to memory beyond 'list'.
> > >=20
> > > Use size_mul() to saturate the value, and have memdup_user() fail.
> > >=20
> > > Fixes: fbb0de795078 ("Add udmabuf misc device")
> > > Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> > > ---
> > > =A0 drivers/dma-buf/udmabuf.c | 4 ++--
> > > =A0 1 file changed, 2 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> > > index c40645999648..fb4c4b5b3332 100644
> > > --- a/drivers/dma-buf/udmabuf.c
> > > +++ b/drivers/dma-buf/udmabuf.c
> > > @@ -314,13 +314,13 @@ static long udmabuf_ioctl_create_list(struct
> > > file *filp, unsigned long arg)
> > > =A0=A0=A0=A0=A0 struct udmabuf_create_list head;
> > > =A0=A0=A0=A0=A0 struct udmabuf_create_item *list;
> > > =A0=A0=A0=A0=A0 int ret =3D -EINVAL;
> > > -=A0=A0=A0 u32 lsize;
> > > +=A0=A0=A0 size_t lsize;
> > > =A0=A0=A0=A0=A0 if (copy_from_user(&head, (void __user *)arg, sizeof(=
head)))
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EFAULT;
> > > =A0=A0=A0=A0=A0 if (head.count > list_limit)
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return -EINVAL;
> > > -=A0=A0=A0 lsize =3D sizeof(struct udmabuf_create_item) * head.count;
> > > +=A0=A0=A0 lsize =3D size_mul(sizeof(struct udmabuf_create_item), hea=
d.count);
> > > =A0=A0=A0=A0=A0 list =3D memdup_user((void __user *)(arg + sizeof(hea=
d)), lsize);
> > > =A0=A0=A0=A0=A0 if (IS_ERR(list))
> > > =A0=A0=A0=A0=A0=A0=A0=A0=A0 return PTR_ERR(list);
> >=20
> > How about this, and we get rid of `lsize`:
>=20
> Keeping or removing lsize is mostly a matter of taste, I think.

I'm on the fence, but kind of lean towards keeping lsize, but I think
it's fine either way.

> Using sizeof(*list) is better.

That I agree with, yes.

> Let see if there are some other comments, and I'll send a v2.

I note that this looks like a use-case for the very recently proposed
memdup_array_user():
https://lore.kernel.org/all/ACD75DAA-AF42-486C-B44B-9272EF302E3D@kernel.org/

(i.e. a built-in size_mul)

-Kees

--=20
Kees Cook
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
