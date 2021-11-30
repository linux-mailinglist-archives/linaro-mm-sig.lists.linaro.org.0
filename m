Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A954D462E8D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 09:31:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43EC2610EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 30 Nov 2021 08:31:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 66E9360E2A; Tue, 30 Nov 2021 08:31:20 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E13160E25;
	Tue, 30 Nov 2021 08:31:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 89C7860570
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 08:31:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 80C4060E2A; Tue, 30 Nov 2021 08:31:15 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by lists.linaro.org (Postfix) with ESMTPS id 7398460570
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 08:31:13 +0000 (UTC)
Received: by mail-ed1-f53.google.com with SMTP id t5so83723301edd.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 30 Nov 2021 00:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=GMM6hj319wAs5POVBFDLh6DbIb0qq9wk3Wcw4ZV0r2Y=;
 b=Hc6Yi6eQ3GtUBUI3WuciYPZtsIx42QpLCBTjxjGlWhPN2n1jTEsBIvYplewCjgdbc/
 lSu9rVVWhM+12NPM63jIEV+CpC0QneQSuhP4dUrZNui/cxastpnGzfGTMxQ8MluJ5Dvb
 UshwKMxaKlBbF76VRnZUBHpx/dPgCRYaIoxyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=GMM6hj319wAs5POVBFDLh6DbIb0qq9wk3Wcw4ZV0r2Y=;
 b=B+N0OL4EqRyJcgHsDeF7XZ9bw2oRRB3mkwjf2y03Q4Tbl+SbB7JjK7Nh/TSFiRBE1c
 80uj4+6EwQIihfXH6/IOmTML53jijH/ssvzMdSaghiEoyOitzVWdZMs7pWKzX7CXQLbS
 vLMTROkA29bGFKTBBJw9XopeOQ1LvBwjrvXvKFplDawqaVYJCwC0eGFBXo7V8OHtQHaO
 G5Bj486bT6aZNAfAdBNFPdW4SeaL6UUSjJ3xX+v59YjQ4pq+hckHO1YGu07HZ+XNjhPi
 wJ83XIhS+/Vc938zcE3a29enKCgJDxBuoiLwLjNmy7l9LvDPNwmLNQxV4iUqqKxfXVHr
 I6Dw==
X-Gm-Message-State: AOAM530Xdn5jvkHkQFgUonnSmi4sHFox9Jw5RCWm8xh4GOfrU+lZr12r
 y2VF6WNthZ7goQE2t4KrRg+gDQ==
X-Google-Smtp-Source: ABdhPJyai5hi6W4uK1D5519BQ1UPwtPEl6b4o8aZO9aCKtIlBdeoAaOOrYlM9h3nEuXtCU99zNLfJQ==
X-Received: by 2002:a17:906:bcce:: with SMTP id
 lw14mr66471416ejb.411.1638261072383; 
 Tue, 30 Nov 2021 00:31:12 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u23sm11102327edi.88.2021.11.30.00.31.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 00:31:11 -0800 (PST)
Date: Tue, 30 Nov 2021 09:31:10 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <YaXhTkSKJH0tO6WT@phenom.ffwll.local>
References: <20211123142111.3885-1-christian.koenig@amd.com>
 <20211123142111.3885-23-christian.koenig@amd.com>
 <YZ+y+Uwo809qtvs5@phenom.ffwll.local>
 <1e45687c-23ee-03da-abb8-da4a5f9d2872@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e45687c-23ee-03da-abb8-da4a5f9d2872@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 22/26] dma-buf: add enum dma_resv_usage
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Nov 29, 2021 at 01:19:11PM +0100, Christian K=F6nig wrote:
> Am 25.11.21 um 16:59 schrieb Daniel Vetter:
> > [SNIP]
> > > + *
> > > + * For example when asking for WRITE fences then the KERNEL fences a=
re returned
> > > + * as well. Similar when asked for READ fences then both WRITE and K=
ERNEL
> > > + * fences are returned as well.
> > > + */
> > > +enum dma_resv_usage {
> > > +	/**
> > > +	 * @DMA_RESV_USAGE_KERNEL: For in kernel memory management only.
> > > +	 *
> > > +	 * This should only be used for things like copying or clearing mem=
ory
> > > +	 * with a DMA hardware engine for the purpose of kernel memory
> > > +	 * management.
> > > +	 *
> > > +         * Drivers *always* need to wait for those fences before acc=
essing the
> > > +	 * resource protected by the dma_resv object. The only exception for
> > > +	 * that is when the resource is known to be locked down in place by
> > > +	 * pinning it previously.
> > Should dma_buf_pin also do the wait for kernel fences? I think that wou=
ld
> > also ba e bit clearer semantics in the dma-buf patch which does these
> > waits for us.
> > =

> > Or should dma_buf_pin be pipelined and it's up to callers to wait? For =
kms
> > that's definitely the semantics we want, but it's a bit playing with fi=
re
> > situation, so maybe dma-buf should get the more idiot proof semantics?
> =

> Yeah, good question. I've already added a wait after mapping an attachment
> for static importers.
> =

> But for dynamic importers I'm not sure what we want to do. On the one hand
> waiting for moves to finish is certainly the more defensive approach on t=
he
> other hand when you have a dynamic importer you absolutely need to handle
> those dependencies correctly anyway.

Hm yeah only doing it for non-dynamic attachments sounds fine to me (with
kerneldoc in dma_buf_pin() ofc).
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
