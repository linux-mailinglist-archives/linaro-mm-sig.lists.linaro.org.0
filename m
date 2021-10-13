Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A81B42BFF7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 14:28:26 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6119261307
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 Oct 2021 12:28:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AB251610F9; Wed, 13 Oct 2021 12:28:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79024611AF;
	Wed, 13 Oct 2021 12:28:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9FF88610F9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 12:28:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 952BF611AF; Wed, 13 Oct 2021 12:28:16 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by lists.linaro.org (Postfix) with ESMTPS id 8B676610F9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 12:28:14 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id e12so7817873wra.4
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 Oct 2021 05:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=GBfsD8UcuCc9Dt0hmFf6Zq9716ejUwy0ObqDAs31b9M=;
 b=OnPrdqkeW6KK+v4GtIWQEAP/y0NXlBOJfLLip0R6eL/o1mtuFJTFgay4jHqZMrnEbV
 BFk19Yq0fbDLBwYgTb5OKhRnhJB10Hph+fkhm/ziLAE0zS4ujDGvrciDKTMlZzk1p1xS
 fkEP/26CUSLtkv8wmM7jqKgBsivsz9/KAQcJA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=GBfsD8UcuCc9Dt0hmFf6Zq9716ejUwy0ObqDAs31b9M=;
 b=N3YXcL0zXVbQtjAXSg3nRN/fIYnOWkkP2edzix46V7ZJh3IHoJUatbYmk1ZLe5Z7DN
 TOFYehv4lCNlIPCSZQjxPAWuicUha2tfm8vtmWGdCbIrvYzPehIrDIgjEiC1a8CroYEL
 zNyIL+8bQW1YwPrSUyt4iSLXk3Nx1b9B01b+akxQjdggveaCApawP+Qd3F9pxvcgWooI
 ewgvU31EKDUiPB3OOnPrdtNnbawx8vuBx8NS16jybcZG2L5vDESTleZphfGLtIZsI0rG
 k9ET+xtPQ84/9WA3blYmoXdUd4JM3EZIUXt5eacRDaVxdK9lolBKUyo3fRFpfwAdQy1J
 GZOQ==
X-Gm-Message-State: AOAM532CnUnOdhShppbO0+Zagh8zvLIULw2+UxouoZfbs3k4YkQFuHQm
 PssaUGmQ6evvVUZab0locUc3Og==
X-Google-Smtp-Source: ABdhPJz8xtdME6jjgj/yh0FBDVkiYhtiLOa+f1ojHCjME36GpjcRyNASGQaKNjCalwH1kesstw0dwQ==
X-Received: by 2002:a05:600c:1989:: with SMTP id
 t9mr12250949wmq.48.1634128093632; 
 Wed, 13 Oct 2021 05:28:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k10sm12930288wrh.64.2021.10.13.05.28.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Oct 2021 05:28:13 -0700 (PDT)
Date: Wed, 13 Oct 2021 14:28:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YWbQ28oOQnzg9cJS@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, Shunsuke Mie <mie@igel.co.jp>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
References: <20211008112009.118996-1-mie@igel.co.jp>
 <5ae41c5a-0ff4-5a82-2100-56bc415b5638@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ae41c5a-0ff4-5a82-2100-56bc415b5638@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Update obsoluted comments on
 dma_buf_vmap/vunmap()
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Shunsuke Mie <mie@igel.co.jp>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, Oct 08, 2021 at 02:09:41PM +0200, Christian K=F6nig wrote:
> Am 08.10.21 um 13:20 schrieb Shunsuke Mie:
> > A comment for the dma_buf_vmap/vunmap() is not catching up a
> > corresponding implementation.
> > =

> > Signed-off-by: Shunsuke Mie <mie@igel.co.jp>
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

You're also pushing?
-Daniel

> =

> > ---
> >   drivers/dma-buf/dma-buf.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> > index beb504a92d60..7b619998f03a 100644
> > --- a/drivers/dma-buf/dma-buf.c
> > +++ b/drivers/dma-buf/dma-buf.c
> > @@ -1052,8 +1052,8 @@ EXPORT_SYMBOL_GPL(dma_buf_move_notify);
> >    *
> >    *   Interfaces::
> >    *
> > - *      void \*dma_buf_vmap(struct dma_buf \*dmabuf)
> > - *      void dma_buf_vunmap(struct dma_buf \*dmabuf, void \*vaddr)
> > + *      void \*dma_buf_vmap(struct dma_buf \*dmabuf, struct dma_buf_ma=
p \*map)
> > + *      void dma_buf_vunmap(struct dma_buf \*dmabuf, struct dma_buf_ma=
p \*map)
> >    *
> >    *   The vmap call can fail if there is no vmap support in the export=
er, or if
> >    *   it runs out of vmalloc space. Note that the dma-buf layer keeps =
a reference
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
