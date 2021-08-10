Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCA23E583B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 12:23:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C2D460A87
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 10:23:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 740BF63514; Tue, 10 Aug 2021 10:23:49 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 69EA360A87;
	Tue, 10 Aug 2021 10:23:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9F5556075B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 10:23:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 92A5E60A87; Tue, 10 Aug 2021 10:23:46 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by lists.linaro.org (Postfix) with ESMTPS id 8B4116075B
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 10:23:44 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id m12so25519215wru.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 03:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=+w0RiGNYXj0TPxrt0YPnDVP3PdKDWV/FJACRo/11lRU=;
 b=Ola9/GrmdBZgwufZpjYXdikb1XZcn2G6jDICdShetQ/lWYoWiTz893VtDd4RwTH5T6
 x+3ELu3B8TKYVljZV1tR9plPM56abn5s+qoV6hbRgZNeBSopqamaQ5/Lyj/rR5lTUd+y
 yrV/8LBV+yLdyUZHV1kfHjtj5rc3w6k11ShsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=+w0RiGNYXj0TPxrt0YPnDVP3PdKDWV/FJACRo/11lRU=;
 b=iewj3YvwVxlEe+5NQZByNaiuZN1QiWg5s3sBX/iKBzFYa4Lx4YobbOpIsXw384I6DD
 QFbpqMEKR5S3huBQx4FgbsJfWJKQq4cvjmGs9xnQq8JkoEGGmUlMWXHsF0+XX5SprlYf
 7yGFK/JboxPD2RP8g3TOqNff19u6lncLU7ysKp6Xz98ANAnaLVqMK91D/A4I5Cl5fX82
 SE3YgORCoPmrlZvwxyIBZu0dcUPmU9RQu/p7+I+Dgl/j3DIvSJ1qzWOI/2G4vFWxm8gl
 usKILAWmyQQNMuupu01ibcXfGuaxHdk0EufVpSRpBEN6f+ilpKRcZb+TzOjM+nvXYXEJ
 wPKA==
X-Gm-Message-State: AOAM533pbL+4P/EypUMCp2ZaqqWjOa5ehkgO3WxXk7TTVrPDQUw78293
 gsli9rTRbGW6v5bmPLZvrtuq8w==
X-Google-Smtp-Source: ABdhPJxgU60fI0z/1vrl/cOROff8N8MBHTjkWW6cMzRidIAl3V8tCUNZg1ve2chAHRnvNimWf2H0pQ==
X-Received: by 2002:a05:6000:10c6:: with SMTP id
 b6mr30625985wrx.110.1628591023605; 
 Tue, 10 Aug 2021 03:23:43 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u6sm8086875wrp.83.2021.08.10.03.23.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 03:23:43 -0700 (PDT)
Date: Tue, 10 Aug 2021 12:23:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <YRJTrWLBweko6JM1@phenom.ffwll.local>
Mail-Followup-To: Randy Dunlap <rdunlap@infradead.org>,
 Gal Pressman <galpress@amazon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, christian.koenig@amd.com,
 linux-kernel@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20210809122247.15869-1-galpress@amazon.com>
 <b8c08a61-63bc-aa34-6045-ccfdc3983e6a@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8c08a61-63bc-aa34-6045-ccfdc3983e6a@infradead.org>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: Fix a few typos in dma-buf
 documentation
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
 Gal Pressman <galpress@amazon.com>, linaro-mm-sig@lists.linaro.org,
 christian.koenig@amd.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Aug 09, 2021 at 08:49:16AM -0700, Randy Dunlap wrote:
> On 8/9/21 5:22 AM, Gal Pressman wrote:
> > Fix a few typos in the documentation:
> > - Remove an extraneous 'or'
> > - 'unpins' -> 'unpin'
> > - 'braket' -> 'bracket'
> > - 'mappinsg' -> 'mappings'
> > - 'fullfills' -> 'fulfills'
> > 
> > Signed-off-by: Gal Pressman <galpress@amazon.com>
> 
> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>

Applied to drm-misc-next, thanks for patch&review.
-Daniel

> 
> Thanks.
> 
> > ---
> >   include/linux/dma-buf.h | 10 +++++-----
> >   1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> > index efdc56b9d95f..772403352767 100644
> > --- a/include/linux/dma-buf.h
> > +++ b/include/linux/dma-buf.h
> > @@ -54,7 +54,7 @@ struct dma_buf_ops {
> >   	 * device), and otherwise need to fail the attach operation.
> >   	 *
> >   	 * The exporter should also in general check whether the current
> > -	 * allocation fullfills the DMA constraints of the new device. If this
> > +	 * allocation fulfills the DMA constraints of the new device. If this
> >   	 * is not the case, and the allocation cannot be moved, it should also
> >   	 * fail the attach operation.
> >   	 *
> > @@ -146,7 +146,7 @@ struct dma_buf_ops {
> >   	 *
> >   	 * Returns:
> >   	 *
> > -	 * A &sg_table scatter list of or the backing storage of the DMA buffer,
> > +	 * A &sg_table scatter list of the backing storage of the DMA buffer,
> >   	 * already mapped into the device address space of the &device attached
> >   	 * with the provided &dma_buf_attachment. The addresses and lengths in
> >   	 * the scatter list are PAGE_SIZE aligned.
> > @@ -168,7 +168,7 @@ struct dma_buf_ops {
> >   	 *
> >   	 * This is called by dma_buf_unmap_attachment() and should unmap and
> >   	 * release the &sg_table allocated in @map_dma_buf, and it is mandatory.
> > -	 * For static dma_buf handling this might also unpins the backing
> > +	 * For static dma_buf handling this might also unpin the backing
> >   	 * storage if this is the last mapping of the DMA buffer.
> >   	 */
> >   	void (*unmap_dma_buf)(struct dma_buf_attachment *,
> > @@ -237,7 +237,7 @@ struct dma_buf_ops {
> >   	 * This callback is used by the dma_buf_mmap() function
> >   	 *
> >   	 * Note that the mapping needs to be incoherent, userspace is expected
> > -	 * to braket CPU access using the DMA_BUF_IOCTL_SYNC interface.
> > +	 * to bracket CPU access using the DMA_BUF_IOCTL_SYNC interface.
> >   	 *
> >   	 * Because dma-buf buffers have invariant size over their lifetime, the
> >   	 * dma-buf core checks whether a vma is too large and rejects such
> > @@ -464,7 +464,7 @@ static inline bool dma_buf_is_dynamic(struct dma_buf *dmabuf)
> >   /**
> >    * dma_buf_attachment_is_dynamic - check if a DMA-buf attachment uses dynamic
> > - * mappinsg
> > + * mappings
> >    * @attach: the DMA-buf attachment to check
> >    *
> >    * Returns true if a DMA-buf importer wants to call the map/unmap functions with
> > 
> 
> 
> -- 
> ~Randy
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
