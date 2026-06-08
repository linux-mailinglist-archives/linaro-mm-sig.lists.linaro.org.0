Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WkFjIKxKKWq4TwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:29:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EE96F668CEC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:29:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=muvccjn0;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E778540A43
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:29:46 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	by lists.linaro.org (Postfix) with ESMTPS id 5E0B84098D
	for <linaro-mm-sig@lists.linaro.org>; Mon,  8 Jun 2026 13:55:48 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7e6cdd78fe6so2247607a34.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 08 Jun 2026 06:55:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780926948; cv=none;
        d=google.com; s=arc-20240605;
        b=D3vHKZSjGw3isr4X4dw4+wHNOUIygWf/iYrBsMgU6XdlXvZ90TvzeqeA+flGxIAUKt
         JWUIz98f90Z6LYR0e+OARev3wLE3JiOoFdHk1F77+vriRSiEALF7qaHBHx0B0zBAOhwY
         h4ofKxEjdS+G9Fs3acbq1Rma0SZvZRYi9qjG83vb85mOptC4EPxBYOV5t+D//2QtHoXg
         L8JvwVgMhJtiAZREX4Fx9wUrfg9r7N9FruJYnH5Mt98wpQzgCUhoB+3M4YUsvuIj5Mr8
         ydkTULUpM2cpxtvrMVOLLqMvhMRkxQeELzlr4zOvv/orq/fWQoJ15x/BGVcLW8BTD6b4
         JOYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kUL9dbW3zc3Xi3+/vcg9ikmrLca85ynlSpRuCnmgz6k=;
        fh=zFgzJjtFsCDORA5QEY4YdUdvY41MB7CHhIzcEVovGYI=;
        b=F2/0jyeXhjXhDK5xoS5+Fg9OQhM8Gu4EuFECeUKxv9+uh+BWpPv87syTVmJ5JHXc1S
         gxJOD6xxwRtn+heyldmUY/tW+LnSyXBX+OrgKEVnrYzJPTLDZxeBVh82qr2oImYc8zL7
         MIKKGaxeR7fEw7sewnh7HYtymNKT2xxbba/BGwp6i73vkYfWrLr4v5lgoJb9A1rAQ1Iu
         3i2swTTv8ktxUOvn3glSIi/gILmLFAQU0Y+QlPqqsx3XDoO57yhtcGKO4VEMs5CxoBiR
         euqkFVxP1FrjYX7CtJD8JTU1wjyC7Pza9ELz8c7xapyzFlRA1rEP/BQ521cpHTfwG7Td
         TLMQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780926948; x=1781531748; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kUL9dbW3zc3Xi3+/vcg9ikmrLca85ynlSpRuCnmgz6k=;
        b=muvccjn095+5hJy9P6rCkAtertiF73ZoKY+q1HfnwmpbiENaCgOGBliOwlS6ocqRaX
         HwoVYw7fT79XxHWPVaS0eTZZTXGdciADlNRt4bikxfPjRR84VcFEnIgNnMV6r41hBvcQ
         IZ8ij/z1BYz1v3mO9yd+LZwAdyt9d5U9AYWXnDyW5oecRosVVmXvKnN10nMi2v4pmCVs
         N6NoOOscrsq5laHyN1K8QzQ9+QRxA3x5+1ryeeOQpnqNGx8hzJy+Y1sBXo2EZwXn0gj9
         ISW5/d7pkNslAW7Sid3N4aJR2UBUMWfWS4PEAHkahp1Vae5RDfHePUeBc887M1YpXlkz
         HLsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780926948; x=1781531748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kUL9dbW3zc3Xi3+/vcg9ikmrLca85ynlSpRuCnmgz6k=;
        b=lbs1VTIEFY48JVfaxi3ZgJdTSam8CuexeQYz18afJL0tH1DlMP1y/4VYZjY2n1coPN
         CaxWmq3lIpTNAtZ+sPTvzeZ+D6Eu7jSL+V7FlPTYz7mKs5i7g+mF2rKzG+ftt5Rdav13
         NKFVvqOevppMycAZWb78I9YiKQnqiL6/Otd3Hy9rJZLmSEzuyDC9bCVb47bJEAmkHGac
         TYs5gCBjEV6LDR8jeMfeXjSgcNqEu8QE/52brk2XVYIq2LBTQXE9xVcn8CTFA4t88PGf
         RBzlozd5yDYdZLvAgu5x4zRJuEfRIQZslZwPkL0pfoNoxCyhtkcGsXv9ECv3qVzrUUdl
         qWyw==
X-Forwarded-Encrypted: i=1; AFNElJ8CrHjAhIeTKRcpvNkno9jhl85DbVp/ZoH+TMPb3cJmiV9JCc+LsBV4St0b1APNuUlYhtMdGp5wXpLmYAU4@lists.linaro.org
X-Gm-Message-State: AOJu0YzF16vgNB6MTmThf9RKOAnTzmvuVQ1takFi7IStzurJ+v9Aaxgg
	3J6aJafBr7nqm9XFqtZqVEg4TEzDy/EU+YbRsNDaQNN9wWwDyS2/vZEYuxwTau3NpGV6NkTWR0j
	LACmYS4xiv5It0p0w7M7H4uw2RyNuy3E=
X-Gm-Gg: Acq92OHz9Ot7qGoFNn8EJJ0L4kIC7ah4oHi+JoFuKYbURxXX0rqfk0qogLRH5Y+pJRV
	amsbgdNXH71RGpYSxsZCVKpTiEHJF2zMFM7OToZWnx1rnPbkgYLxv81oxv9rYrzSyL1SW8kFYl2
	jbK2UXQ7TMmN86c0bEwr28EB1pMTF6YBEpGCq/VghFD+8s1dmUROJINFLKlxHrPvROhARhs+xEo
	ptYN/w+P0Q5rLEobeCSAI3UFKWA+msFbt/2ED8J5WyweLCaVQRONW3VYmogwZ27GO3od20g2PYd
	Xju0h6EU6ThrQFCW2A==
X-Received: by 2002:a05:6830:6a96:b0:7d7:fb03:f6ba with SMTP id
 46e09a7af769-7e70ca51cc9mr9845013a34.21.1780926947408; Mon, 08 Jun 2026
 06:55:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-2-f37a4ac6726c@meta.com> <bdce2488-fe77-4f36-9ed6-dd2c785fa7c1@amd.com>
 <aiMY8CpckM8Jav0g@devvm29614.prn0.facebook.com> <0c86f5d3-b5e9-4cac-aa9d-30c5c8ecca66@amd.com>
In-Reply-To: <0c86f5d3-b5e9-4cac-aa9d-30c5c8ecca66@amd.com>
From: Bobby Eshleman <bobbyeshleman@gmail.com>
Date: Mon, 8 Jun 2026 06:55:36 -0700
X-Gm-Features: AVVi8CfreY7W3cGrHvbSozZ57SJwnE9qM8Mfsdb2X2IWGStP7CJ3YP7SRhnUHfU
Message-ID: <CAKB00G3opAoAYswsq2uz0Q6jgku8u4NthKOzCbSumZ0qK7QxcQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
X-MailFrom: bobbyeshleman@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: S7ZQWQP2DXXIXVI5V7DO4Q5EYZSVKYPV
X-Message-ID-Hash: S7ZQWQP2DXXIXVI5V7DO4Q5EYZSVKYPV
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:27:22 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 2/4] udmabuf: emit one sg entry per pinned folio
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/S7ZQWQP2DXXIXVI5V7DO4Q5EYZSVKYPV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============7498672852591821804=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DATE_IN_PAST(1.00)[45];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bobbyeshleman@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email,mail.gmail.com:mid,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE96F668CEC

--===============7498672852591821804==
Content-Type: multipart/alternative; boundary="000000000000123d790653be5ef3"

--000000000000123d790653be5ef3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 7, 2026 at 11:42=E2=80=AFPM Christian K=C3=B6nig <christian.koe=
nig@amd.com>
wrote:

> On 6/5/26 20:44, Bobby Eshleman wrote:
> > On Fri, Jun 05, 2026 at 11:30:07AM +0200, Christian K=C3=B6nig wrote:
> >> On 6/4/26 02:42, Bobby Eshleman wrote:
> >>> From: Bobby Eshleman <bobbyeshleman@meta.com>
> >>>
> >>> get_sg_table() emitted one PAGE_SIZE sg entry per page even when the
> >>> underlying folio was larger.
> >>>
> >>> Instead, walk folios[] and emit one sg entry per folio. When folios
> >>> represent large pages (as is for MFD_HUGETLB), each sg entry is a lar=
ge
> >>> page. Normal PAGE_SIZE sg tables are unchanged.
> >>>
> >>> Required by net/core/devmem to support rx-buf-size > PAGE_SIZE with
> >>> udmabuf.
> >>
> >> That doesn't explain why this is required.
> >
> > Sure, can definitely add. Devmem currently requires dmabuf sg entries t=
o
> > be length and size aligned when it allocates niovs for NIC page pools.
> > Though udmabuf is not violating any dmabuf contract by emitting
> > PAGE_SIZE entries and the above restriction is probably more a
> > shortfalling of devmem, by emitting a single entry per folio this patch
> > allows udmabuf to be used by devmem for large pages.
> >
> >>
> >> Please note that accessing the pages/folio of an sg-table returned by
> DMA-buf is illegal and strictly forbidden!
> >>
> >> Regards,
> >> Christian.
> >
> > It seems both devmem and io_uring zcrx at least introspect through to
> > the sg-table to build NIC page pools (not accessing the memory itself,
> > however). Is there a better way?
>
> That's an absolute NO-GO! We need to stop that immediately.
>
> Touching the underlying struct page of an DMA-buf exported sg-table is
> strictly forbidden.
>
> We even have code to wrap the sg_table and hide the struct pages on debug
> builds to catch those issues, see function dma_buf_wrap_sg_table().
>
> My last status is that the NIC page pools are build directly from the DMA
> addresses exposed by the sg_table.
>
> Was there any change I'm not aware of?
>
> Regards,
> Christian.


Oh no change, your mental model is still current.
They just go through each sg and use sg_dma_address() on each.

Best,
Bobby


> >
> > Best,
> > Bobby
> >
> >>
> >>> Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
> >>> ---
> >>>  drivers/dma-buf/udmabuf.c | 47
> ++++++++++++++++++++++++++++++++++++++++++-----
> >>>  1 file changed, 42 insertions(+), 5 deletions(-)
> >>>
> >>> diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> >>> index 94b8ecb892bb..f28dd3788ada 100644
> >>> --- a/drivers/dma-buf/udmabuf.c
> >>> +++ b/drivers/dma-buf/udmabuf.c
> >>> @@ -141,26 +141,63 @@ static void vunmap_udmabuf(struct dma_buf *buf,
> struct iosys_map *map)
> >>>         vm_unmap_ram(map->vaddr, ubuf->pagecount);
> >>>  }
> >>>
> >>> +/* Return the number of contiguous pages backed by the folio at @i.
> >>> + * A udmabuf may map only part of a folio, or reference the same fol=
io
> >>> + * in multiple non-contiguous runs, so folio_nr_pages() can't be use=
d.
> >>> + */
> >>> +static pgoff_t udmabuf_folio_nr_pages(struct udmabuf *ubuf, pgoff_t =
i)
> >>> +{
> >>> +       struct folio *f =3D ubuf->folios[i];
> >>> +       pgoff_t j;
> >>> +
> >>> +       for (j =3D 1; i + j < ubuf->pagecount; j++) {
> >>> +               if (ubuf->folios[i + j] !=3D f)
> >>> +                       break;
> >>> +               /* Same folio, but not a sequential offset within it.
> */
> >>> +               if (ubuf->offsets[i + j] !=3D ubuf->offsets[i] + j *
> PAGE_SIZE)
> >>> +                       break;
> >>> +       }
> >>> +       return j;
> >>> +}
> >>> +
> >>> +/* Count the contiguous folio runs in @ubuf, one sg entry per run. *=
/
> >>> +static unsigned int udmabuf_sg_nents(struct udmabuf *ubuf)
> >>> +{
> >>> +       unsigned int nents =3D 0;
> >>> +       pgoff_t i;
> >>> +
> >>> +       for (i =3D 0; i < ubuf->pagecount; i +=3D
> udmabuf_folio_nr_pages(ubuf, i))
> >>> +               nents++;
> >>> +       return nents;
> >>> +}
> >>> +
> >>>  static struct sg_table *get_sg_table(struct device *dev, struct
> dma_buf *buf,
> >>>                                      enum dma_data_direction directio=
n)
> >>>  {
> >>>         struct udmabuf *ubuf =3D buf->priv;
> >>> -       struct sg_table *sg;
> >>>         struct scatterlist *sgl;
> >>> -       unsigned int i =3D 0;
> >>> +       struct sg_table *sg;
> >>> +       pgoff_t i, run;
> >>> +       unsigned int nents;
> >>>         int ret;
> >>>
> >>> +       nents =3D udmabuf_sg_nents(ubuf);
> >>> +
> >>>         sg =3D kzalloc_obj(*sg);
> >>>         if (!sg)
> >>>                 return ERR_PTR(-ENOMEM);
> >>>
> >>> -       ret =3D sg_alloc_table(sg, ubuf->pagecount, GFP_KERNEL);
> >>> +       ret =3D sg_alloc_table(sg, nents, GFP_KERNEL);
> >>>         if (ret < 0)
> >>>                 goto err_alloc;
> >>>
> >>> -       for_each_sg(sg->sgl, sgl, ubuf->pagecount, i)
> >>> -               sg_set_folio(sgl, ubuf->folios[i], PAGE_SIZE,
> >>> +       sgl =3D sg->sgl;
> >>> +       for (i =3D 0; i < ubuf->pagecount; i +=3D run) {
> >>> +               run =3D udmabuf_folio_nr_pages(ubuf, i);
> >>> +               sg_set_folio(sgl, ubuf->folios[i], run << PAGE_SHIFT,
> >>>                              ubuf->offsets[i]);
> >>> +               sgl =3D sg_next(sgl);
> >>> +       }
> >>>
> >>>         ret =3D dma_map_sgtable(dev, sg, direction, 0);
> >>>         if (ret < 0)
> >>>
> >>> --
> >>> 2.53.0-Meta
> >>>
> >>
>
>

--000000000000123d790653be5ef3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, Jun 7, 2026 at 11:42=E2=80=AFPM Christian K=C3=
=B6nig &lt;<a href=3D"mailto:christian.koenig@amd.com">christian.koenig@amd=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex" dir=3D"auto">On 6/5/26 20:44, Bobby Eshleman wrote:<br>
&gt; On Fri, Jun 05, 2026 at 11:30:07AM +0200, Christian K=C3=B6nig wrote:<=
br>
&gt;&gt; On 6/4/26 02:42, Bobby Eshleman wrote:<br>
&gt;&gt;&gt; From: Bobby Eshleman &lt;<a href=3D"mailto:bobbyeshleman@meta.=
com" target=3D"_blank">bobbyeshleman@meta.com</a>&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; get_sg_table() emitted one PAGE_SIZE sg entry per page even wh=
en the<br>
&gt;&gt;&gt; underlying folio was larger.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Instead, walk folios[] and emit one sg entry per folio. When f=
olios<br>
&gt;&gt;&gt; represent large pages (as is for MFD_HUGETLB), each sg entry i=
s a large<br>
&gt;&gt;&gt; page. Normal PAGE_SIZE sg tables are unchanged.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Required by net/core/devmem to support rx-buf-size &gt; PAGE_S=
IZE with<br>
&gt;&gt;&gt; udmabuf.<br>
&gt;&gt;<br>
&gt;&gt; That doesn&#39;t explain why this is required.<br>
&gt; <br>
&gt; Sure, can definitely add. Devmem currently requires dmabuf sg entries =
to<br>
&gt; be length and size aligned when it allocates niovs for NIC page pools.=
<br>
&gt; Though udmabuf is not violating any dmabuf contract by emitting<br>
&gt; PAGE_SIZE entries and the above restriction is probably more a<br>
&gt; shortfalling of devmem, by emitting a single entry per folio this patc=
h<br>
&gt; allows udmabuf to be used by devmem for large pages.<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt; Please note that accessing the pages/folio of an sg-table returned=
 by DMA-buf is illegal and strictly forbidden!<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Christian.<br>
&gt; <br>
&gt; It seems both devmem and io_uring zcrx at least introspect through to<=
br>
&gt; the sg-table to build NIC page pools (not accessing the memory itself,=
<br>
&gt; however). Is there a better way?<br>
<br>
That&#39;s an absolute NO-GO! We need to stop that immediately.<br>
<br>
Touching the underlying struct page of an DMA-buf exported sg-table is stri=
ctly forbidden.<br>
<br>
We even have code to wrap the sg_table and hide the struct pages on debug b=
uilds to catch those issues, see function dma_buf_wrap_sg_table().<br>
<br>
My last status is that the NIC page pools are build directly from the DMA a=
ddresses exposed by the sg_table.<br>
<br>
Was there any change I&#39;m not aware of?<br>
<br>
Regards,<br>
Christian.</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Oh no =
change, your mental model is still current.</div><div dir=3D"auto">They jus=
t go through each sg and use sg_dma_address() on each.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Best,</div><div dir=3D"auto">Bobby</div><div=
 dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
br>
&gt; <br>
&gt; Best,<br>
&gt; Bobby<br>
&gt; <br>
&gt;&gt;<br>
&gt;&gt;&gt; Signed-off-by: Bobby Eshleman &lt;<a href=3D"mailto:bobbyeshle=
man@meta.com" target=3D"_blank">bobbyeshleman@meta.com</a>&gt;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;=C2=A0 drivers/dma-buf/udmabuf.c | 47 +++++++++++++++++++++++++=
+++++++++++++++++-----<br>
&gt;&gt;&gt;=C2=A0 1 file changed, 42 insertions(+), 5 deletions(-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmab=
uf.c<br>
&gt;&gt;&gt; index 94b8ecb892bb..f28dd3788ada 100644<br>
&gt;&gt;&gt; --- a/drivers/dma-buf/udmabuf.c<br>
&gt;&gt;&gt; +++ b/drivers/dma-buf/udmabuf.c<br>
&gt;&gt;&gt; @@ -141,26 +141,63 @@ static void vunmap_udmabuf(struct dma_bu=
f *buf, struct iosys_map *map)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vm_unmap_ram(map-&gt;vaddr, u=
buf-&gt;pagecount);<br>
&gt;&gt;&gt;=C2=A0 }<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; +/* Return the number of contiguous pages backed by the folio =
at @i.<br>
&gt;&gt;&gt; + * A udmabuf may map only part of a folio, or reference the s=
ame folio<br>
&gt;&gt;&gt; + * in multiple non-contiguous runs, so folio_nr_pages() can&#=
39;t be used.<br>
&gt;&gt;&gt; + */<br>
&gt;&gt;&gt; +static pgoff_t udmabuf_folio_nr_pages(struct udmabuf *ubuf, p=
goff_t i)<br>
&gt;&gt;&gt; +{<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0struct folio *f =3D ubuf-&gt;folio=
s[i];<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pgoff_t j;<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 1; i + j &lt; ubuf-&gt;=
pagecount; j++) {<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ub=
uf-&gt;folios[i + j] !=3D f)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Sam=
e folio, but not a sequential offset within it. */<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ub=
uf-&gt;offsets[i + j] !=3D ubuf-&gt;offsets[i] + j * PAGE_SIZE)<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return j;<br>
&gt;&gt;&gt; +}<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt; +/* Count the contiguous folio runs in @ubuf, one sg entry per=
 run. */<br>
&gt;&gt;&gt; +static unsigned int udmabuf_sg_nents(struct udmabuf *ubuf)<br=
>
&gt;&gt;&gt; +{<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int nents =3D 0;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pgoff_t i;<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; ubuf-&gt;page=
count; i +=3D udmabuf_folio_nr_pages(ubuf, i))<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nents+=
+;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0return nents;<br>
&gt;&gt;&gt; +}<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt;=C2=A0 static struct sg_table *get_sg_table(struct device *dev,=
 struct dma_buf *buf,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enum =
dma_data_direction direction)<br>
&gt;&gt;&gt;=C2=A0 {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct udmabuf *ubuf =3D buf-=
&gt;priv;<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0struct sg_table *sg;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct scatterlist *sgl;<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int i =3D 0;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0struct sg_table *sg;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0pgoff_t i, run;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int nents;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0nents =3D udmabuf_sg_nents(ubuf);<=
br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sg =3D kzalloc_obj(*sg);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!sg)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0r=
eturn ERR_PTR(-ENOMEM);<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D sg_alloc_table(sg, ubuf-&g=
t;pagecount, GFP_KERNEL);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D sg_alloc_table(sg, nents, =
GFP_KERNEL);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0g=
oto err_alloc;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0for_each_sg(sg-&gt;sgl, sgl, ubuf-=
&gt;pagecount, i)<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sg_set=
_folio(sgl, ubuf-&gt;folios[i], PAGE_SIZE,<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0sgl =3D sg-&gt;sgl;<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; ubuf-&gt;page=
count; i +=3D run) {<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0run =
=3D udmabuf_folio_nr_pages(ubuf, i);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sg_set=
_folio(sgl, ubuf-&gt;folios[i], run &lt;&lt; PAGE_SHIFT,<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ubuf-&gt;offsets[i]);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sgl =
=3D sg_next(sgl);<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D dma_map_sgtable(dev, =
sg, direction, 0);<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; 2.53.0-Meta<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
<br>
</blockquote></div></div>

--000000000000123d790653be5ef3--

--===============7498672852591821804==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============7498672852591821804==--
