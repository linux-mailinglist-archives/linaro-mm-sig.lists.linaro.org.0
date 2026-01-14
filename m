Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FtgMwQM4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:16 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F0B41193C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:19:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 63CCB404E9
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:19:15 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lists.linaro.org (Postfix) with ESMTPS id D2AAA3F777
	for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 15:47:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=atgBWzbc;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1768405633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gzUsW5No6dGH8ZciSrcNEaMmqaGyJ5Qr5Ou1SRqIt3k=;
	b=atgBWzbckNjWqh6t8NYCS+s2aackK2SnNwftKP/gPpoUL5kiQ3HmBf6t1EgmdyN5oQLqte
	QTieSQCzYsFSd14Ce7zNYy1OgUl2mZsO/yUvqXR4j0t2v320u5r36XetRKPu7KEEyEgLXQ
	PiiXddxYfilkNNyshlkt/iJhFbSYUW0=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-155-Z0_QVerwM5O1ryRjKvagsA-1; Wed, 14 Jan 2026 10:47:10 -0500
X-MC-Unique: Z0_QVerwM5O1ryRjKvagsA-1
X-Mimecast-MFC-AGG-ID: Z0_QVerwM5O1ryRjKvagsA_1768405629
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-890805821c0so310183006d6.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 14 Jan 2026 07:47:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768405629; x=1769010429;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gzUsW5No6dGH8ZciSrcNEaMmqaGyJ5Qr5Ou1SRqIt3k=;
        b=Y3Rv5Y9mjVO+SU0FukRNdgah0dDIAzsQ2V11c80/LRkZGMX+tE5lejH3VMNYB7ynna
         upHJnYtKs3JxAKStk7TsQHcZJuFF3qQEVNGI2QVxAd2VMaQuAxdZnzPwfuGE1ec1BT6k
         HJGnCl+9QhOSUm7y5RQe03OuJ5FrM1ftEuQ5b2yDUttI7BIhJxbCAVCze4I3RJMlZGGz
         bpwM/cAxvz6IpHiHqs4TjbreWhgamaDDeVgtiu9GhPM9MeexabyUzoLbRwhO5GjFwVyf
         MicNZMUqmSNucVw6shPqcTFfIFS7EFPzIEUTiKufTnDHKHk9FH9WzBMTgSHaJL7Xt+qi
         HXAg==
X-Forwarded-Encrypted: i=1; AJvYcCVEqXjoCOej1WFtu4s/0N30hIL5fLcKkRpkF77HjDNO51n9IPmkCKK1SeFZMMaoo/gKNzUFgnFVbHtD18Mn@lists.linaro.org
X-Gm-Message-State: AOJu0YxIXllwHy1DhenY+69v2BXLScdEaVcmKTUKUlNh5+ifdpdC5ksA
	sPea8+50vSDdoFsuJPnc+ha1BDzt4hRgDvq5Sl8vupou4C1gbzIYZ3MVbQn+Q9XmKr70LdFbi9j
	trA9uzObz70ROShjof82hyTFaiKT09ZJqbTmSs6kXzgtPR3NNmQdddsOe7GLIU1VE1oIj
X-Gm-Gg: AY/fxX66ysZ1Z9lYoaJGkhmCmOOKy/51KHkDWOwiZYs2PinxXDouNNy7np7WzWFJp9c
	TGEctjN9xoUh01G9sj17C+r0wtSj5t201v/Pq5rxx7sGsBAE0lirsjgbRzPxOeoZIEaLhfaCABK
	eZzIuZKo7adpgSHuep+NCLZuyXyJyhVDoV0w0lTWFoOl72nzgEo38OY7WFwvWO/NhUY3ii6wi3N
	v8+jMvGViltlvqVBkfYPtFJChwk7egIQkk7RmjrUVFTp+Xtq9qLN8kq0AkCjgrKZPBdioGqGb0N
	IU4DEJ8CClMcmhmBGrzUtHCLIJ+UdSwWmfsQ1K0n8eHHwzQWssG9qgaborZ77KzPIDDVS8zqutY
	Fv1KEouaLJEJe4nO2FWtgqfeGfOtt+Ih7bWIJtpNSVgE0hbkP/Uc=
X-Received: by 2002:a05:6214:1242:b0:889:7c5b:8134 with SMTP id 6a1803df08f44-89274367e44mr36520816d6.27.1768405629291;
        Wed, 14 Jan 2026 07:47:09 -0800 (PST)
X-Received: by 2002:a05:6214:1242:b0:889:7c5b:8134 with SMTP id 6a1803df08f44-89274367e44mr36520486d6.27.1768405628751;
        Wed, 14 Jan 2026 07:47:08 -0800 (PST)
Received: from localhost (pool-100-17-20-16.bstnma.fios.verizon.net. [100.17.20.16])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890772682besm179575456d6.50.2026.01.14.07.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 07:47:08 -0800 (PST)
Date: Wed, 14 Jan 2026 10:47:07 -0500
From: Eric Chanudet <echanude@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <urjkdpeypk2uln6lkfi3fd54aqjlrirq23idl7wrnouuhox5rh@amxjnxrqs4lq>
References: <20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com>
 <20260113-dmabuf-heap-system-memcg-v2-2-e85722cc2f24@redhat.com>
 <7a0fcf24-09de-4f6e-8a0b-7b631b1315bb@amd.com>
MIME-Version: 1.0
In-Reply-To: <7a0fcf24-09de-4f6e-8a0b-7b631b1315bb@amd.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nAR7KJMsDj2zmx5qwtSFFti6vPPUVPadvmfOlLlUfSU_1768405629
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-Spamd-Bar: ---
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: WEY4SIHEPIC6NAESYAKKRKDRUKS26ES6
X-Message-ID-Hash: WEY4SIHEPIC6NAESYAKKRKDRUKS26ES6
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:12:03 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WEY4SIHEPIC6NAESYAKKRKDRUKS26ES6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [3.49 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[2208];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.815];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 53F0B41193C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 14, 2026 at 11:38:27AM +0100, Christian K=F6nig wrote:
> On 1/13/26 22:32, Eric Chanudet wrote:
> > The system dma-buf heap lets userspace allocate buffers from the page
> > allocator. However, these allocations are not accounted for in memcg,
> > allowing processes to escape limits that may be configured.
> >=20
> > Pass __GFP_ACCOUNT for system heap allocations, based on the
> > dma_heap.mem_accounting parameter, to use memcg and account for them.
> >=20
> > Signed-off-by: Eric Chanudet <echanude@redhat.com>
> > ---
> >  drivers/dma-buf/heaps/system_heap.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heap=
s/system_heap.c
> > index 4c782fe33fd497a74eb5065797259576f9b651b6..139b50df64ed4c4a6fdd69f=
25fe48324fbe2c481 100644
> > --- a/drivers/dma-buf/heaps/system_heap.c
> > +++ b/drivers/dma-buf/heaps/system_heap.c
> > @@ -52,6 +52,8 @@ static gfp_t order_flags[] =3D {HIGH_ORDER_GFP, HIGH_=
ORDER_GFP, LOW_ORDER_GFP};
> >  static const unsigned int orders[] =3D {8, 4, 0};
> >  #define NUM_ORDERS ARRAY_SIZE(orders)
> > =20
> > +extern bool mem_accounting;
>=20
> Please define that in some header. Apart from that looks good technically.

Thank you for the review, I can move it to linux/dma-heap.h in a v3
since it's intended for other heaps as well.

> But after the discussion it sounds more and more like we don't want to ac=
count device driver allocated memory in memcg at all.

>From the threads in v1 I thought adding the switch left open a
consideration to use memcg with driver allocated memory for userspace,
even with the known caveats that implies. Re-reading your last reply[1],
that's not quite the case it sounds like.

Best,

[1] https://lore.kernel.org/all/e38d87d3-a114-43f9-be93-03e9b9f40844@amd.co=
m/

>=20
> Regards,
> Christian.
>=20
>=20
> > +
> >  static int dup_sg_table(struct sg_table *from, struct sg_table *to)
> >  {
> >  	struct scatterlist *sg, *new_sg;
> > @@ -320,14 +322,17 @@ static struct page *alloc_largest_available(unsig=
ned long size,
> >  {
> >  	struct page *page;
> >  	int i;
> > +	gfp_t flags;
> > =20
> >  	for (i =3D 0; i < NUM_ORDERS; i++) {
> >  		if (size <  (PAGE_SIZE << orders[i]))
> >  			continue;
> >  		if (max_order < orders[i])
> >  			continue;
> > -
> > -		page =3D alloc_pages(order_flags[i], orders[i]);
> > +		flags =3D order_flags[i];
> > +		if (mem_accounting)
> > +			flags |=3D __GFP_ACCOUNT;
> > +		page =3D alloc_pages(flags, orders[i]);
> >  		if (!page)
> >  			continue;
> >  		return page;
> >=20
>=20

--=20
Eric Chanudet

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
