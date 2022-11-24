Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA336374BF
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 10:05:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9DD713EE66
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 24 Nov 2022 09:05:56 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	by lists.linaro.org (Postfix) with ESMTPS id 73D093EE40
	for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 09:05:47 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=ManxrbJv;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.53) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f53.google.com with SMTP id ho10so2761563ejc.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 24 Nov 2022 01:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XKlbdr0ixds4paIOPKsA175xamTIxoec9jBfY1XMP/c=;
        b=ManxrbJva+RcaZ1pgy61KlOXet2k5tNGPxzxLAtn07OZAKYM9J+CI9fCmoBZYuuuIV
         F1+ga8J+vsvrrp2+r7zT5RH3Dg51n5GslIyFLmWG/YOHjmYrhZg8pOo3ACajMl9zYV8R
         VWV91495k6gOZuLxLWiqrXwu0Bhi4Ddd7n210=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XKlbdr0ixds4paIOPKsA175xamTIxoec9jBfY1XMP/c=;
        b=Aa5EBvcvuXJ4qPHXgAh0Uk8l4X1UXFtE95HaKhNaESR4EyxJbDzldPx1PAoiROV6R8
         mYr5sQEKr56Q3VpSfaLwe5ufn6xAI/Q13hgquL+xNgMhIVVLd65doGBJtAXH+xME31eB
         bkBoJ+ou+U9AZzB8JvOH31ZHWQ6DMikUf8dXxxepPo24Ban9S0LeqQ2bu0KuTFkmWnyL
         kddyVOGKQEffsn8VgeQ4vlJIk1G/5ZlDb3ELECijmQA+mONy77l6RB33KLSNPDWB/s9O
         FvrIfZZJ57bCWTSivs/brB2nmpHkLiJADFriWhTchQcqJaK5ndR2pqHmtpGWwXG+ael3
         ca2Q==
X-Gm-Message-State: ANoB5pm3k1AKSshDnRFez/6EOpX2fo8SkjemaQXfkMcr5RRp668rYFz4
	8d8BJJOMz2qVuGj6QkMdzxSiEQ==
X-Google-Smtp-Source: AA0mqf7p10lzEx8VmXSg9+u5DLJIGEhK1NGmIuP+ia7oyyWd4DAtEakvIkIFE8FUqgbTHM1igSNn/g==
X-Received: by 2002:a17:906:524f:b0:7ae:59dd:e3f4 with SMTP id y15-20020a170906524f00b007ae59dde3f4mr15723133ejm.755.1669280746416;
        Thu, 24 Nov 2022 01:05:46 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net. [212.51.149.33])
        by smtp.gmail.com with ESMTPSA id i13-20020a17090639cd00b0078d957e65b6sm211642eje.23.2022.11.24.01.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 01:05:45 -0800 (PST)
Date: Thu, 24 Nov 2022 10:05:44 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <Y38z6A5IF/BlXVPp@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"T.J. Mercier" <tjmercier@google.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20221123193519.3948105-1-tjmercier@google.com>
 <260a86f0-057e-e235-ac38-abeb922d0dc1@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <260a86f0-057e-e235-ac38-abeb922d0dc1@amd.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
X-Rspamd-Queue-Id: 73D093EE40
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.53:from];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_EQ_ENVFROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ffwll.ch:url,ffwll.ch:dkim];
	NEURAL_HAM(-0.00)[-0.996];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ffwll.ch:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[ffwll.ch];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	URIBL_BLOCKED(0.00)[ffwll.ch:url,ffwll.ch:dkim,mail-ej1-f53.google.com:rdns,mail-ej1-f53.google.com:helo,amd.com:email];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[212.51.149.33:received];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 2YR7XCPAOHXP4BITOVJBUIZPGWISWVZM
X-Message-ID-Hash: 2YR7XCPAOHXP4BITOVJBUIZPGWISWVZM
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "T.J. Mercier" <tjmercier@google.com>, Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: A collection of typo and documentation fixes
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2YR7XCPAOHXP4BITOVJBUIZPGWISWVZM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 24, 2022 at 08:03:09AM +0100, Christian K=F6nig wrote:
> Am 23.11.22 um 20:35 schrieb T.J. Mercier:
> > I've been collecting these typo fixes for a while and it feels like
> > time to send them in.
> >=20
> > Signed-off-by: T.J. Mercier <tjmercier@google.com>
>=20
> Acked-by: Christian K=F6nig <christian.koenig@amd.com>

Will you also push this? I think tj doesn't have commit rights yet, and I
somehow can't see the patch locally (I guess it's stuck in moderation).
-Daniel

>=20
> > ---
> >   drivers/dma-buf/dma-buf.c | 14 +++++++-------
> >   include/linux/dma-buf.h   |  6 +++---
> >   2 files changed, 10 insertions(+), 10 deletions(-)
> >=20
> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index dd0f83ee505b..614ccd208af4 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -1141,7 +1141,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_unmap_attachment, DM=
A_BUF);
> >    *
> >    * @dmabuf:	[in]	buffer which is moving
> >    *
> > - * Informs all attachmenst that they need to destroy and recreated all=
 their
> > + * Informs all attachments that they need to destroy and recreate all =
their
> >    * mappings.
> >    */
> >   void dma_buf_move_notify(struct dma_buf *dmabuf)
> > @@ -1159,11 +1159,11 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, DMA_B=
UF);
> >   /**
> >    * DOC: cpu access
> >    *
> > - * There are mutliple reasons for supporting CPU access to a dma buffe=
r object:
> > + * There are multiple reasons for supporting CPU access to a dma buffe=
r object:
> >    *
> >    * - Fallback operations in the kernel, for example when a device is =
connected
> >    *   over USB and the kernel needs to shuffle the data around first b=
efore
> > - *   sending it away. Cache coherency is handled by braketing any tran=
sactions
> > + *   sending it away. Cache coherency is handled by bracketing any tra=
nsactions
> >    *   with calls to dma_buf_begin_cpu_access() and dma_buf_end_cpu_acc=
ess()
> >    *   access.
> >    *
> > @@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_move_notify, DMA_BUF=
);
> >    *   replace ION buffers mmap support was needed.
> >    *
> >    *   There is no special interfaces, userspace simply calls mmap on t=
he dma-buf
> > - *   fd. But like for CPU access there's a need to braket the actual a=
ccess,
> > + *   fd. But like for CPU access there's a need to bracket the actual =
access,
> >    *   which is handled by the ioctl (DMA_BUF_IOCTL_SYNC). Note that
> >    *   DMA_BUF_IOCTL_SYNC can fail with -EAGAIN or -EINTR, in which cas=
e it must
> >    *   be restarted.
> > @@ -1264,10 +1264,10 @@ static int __dma_buf_begin_cpu_access(struct dm=
a_buf *dmabuf,
> >    * preparations. Coherency is only guaranteed in the specified range =
for the
> >    * specified access direction.
> >    * @dmabuf:	[in]	buffer to prepare cpu access for.
> > - * @direction:	[in]	length of range for cpu access.
> > + * @direction:	[in]	direction of access.
> >    *
> >    * After the cpu access is complete the caller should call
> > - * dma_buf_end_cpu_access(). Only when cpu access is braketed by both =
calls is
> > + * dma_buf_end_cpu_access(). Only when cpu access is bracketed by both=
 calls is
> >    * it guaranteed to be coherent with other DMA access.
> >    *
> >    * This function will also wait for any DMA transactions tracked thro=
ugh
> > @@ -1307,7 +1307,7 @@ EXPORT_SYMBOL_NS_GPL(dma_buf_begin_cpu_access, DM=
A_BUF);
> >    * actions. Coherency is only guaranteed in the specified range for t=
he
> >    * specified access direction.
> >    * @dmabuf:	[in]	buffer to complete cpu access for.
> > - * @direction:	[in]	length of range for cpu access.
> > + * @direction:	[in]	direction of access.
> >    *
> >    * This terminates CPU access started with dma_buf_begin_cpu_access().
> >    *
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index 71731796c8c3..1d61a4f6db35 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -330,7 +330,7 @@ struct dma_buf {
> >   	 * @lock:
> >   	 *
> >   	 * Used internally to serialize list manipulation, attach/detach and
> > -	 * vmap/unmap. Note that in many cases this is superseeded by
> > +	 * vmap/unmap. Note that in many cases this is superseded by
> >   	 * dma_resv_lock() on @resv.
> >   	 */
> >   	struct mutex lock;
> > @@ -365,7 +365,7 @@ struct dma_buf {
> >   	 */
> >   	const char *name;
> > -	/** @name_lock: Spinlock to protect name acces for read access. */
> > +	/** @name_lock: Spinlock to protect name access for read access. */
> >   	spinlock_t name_lock;
> >   	/**
> > @@ -402,7 +402,7 @@ struct dma_buf {
> >   	 *   anything the userspace API considers write access.
> >   	 *
> >   	 * - Drivers may just always add a write fence, since that only
> > -	 *   causes unecessarily synchronization, but no correctness issues.
> > +	 *   causes unnecessary synchronization, but no correctness issues.
> >   	 *
> >   	 * - Some drivers only expose a synchronous userspace API with no
> >   	 *   pipelining across drivers. These do not set any fences for their
>=20

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
