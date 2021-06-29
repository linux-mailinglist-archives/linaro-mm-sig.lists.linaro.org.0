Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6383B7644
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jun 2021 18:10:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C10B65FD0
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Jun 2021 16:10:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 95900665A0; Tue, 29 Jun 2021 16:10:28 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AC8856350A;
	Tue, 29 Jun 2021 16:10:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 965FB60649
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 16:10:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8A9A96350A; Tue, 29 Jun 2021 16:10:23 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by lists.linaro.org (Postfix) with ESMTPS id 7D11160649
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 16:10:21 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 o33-20020a05600c5121b02901e360c98c08so2184370wms.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Jun 2021 09:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=IIlOYRCaj+ShA3h8Y+rmk3/XB2OjyG065It4K03dEsc=;
 b=Yyy576Z7dNJUzHPJQU8uai6Yh+f+9AFdsJTPBOSkDJc8ioZYNmvXnfjKyVGeNJqsED
 48c0dTJtLxOfOKqnTxKBgEQeXgSAYDQyfodxUHdVOyU+rqjzpGouc390+Uc4h3v6O+mg
 bQFzBvUdniaLAaBOoIYUOq7VAcBK6OleLzvCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=IIlOYRCaj+ShA3h8Y+rmk3/XB2OjyG065It4K03dEsc=;
 b=SR7EgSy/pd9QL59jfKnAPPJNxvIjO4xa+FaLeefbhKsApiGRDZoSRp5kXDRrOQJJm0
 DLjKxbZu4XI38rIKlJ6N7ukN+fyEnPJTJx4k81eUQqhUR2GFPQ0kH2cWHeqayRN0grxe
 oOD32q1GNazrLPndXBusco1OwN2RidrBDVLRhQnnjvEWVxCRIrJXu6ABM2TtmtQinYrY
 n38IgerJcWtecf0vyN0Fhf7xwxzgBGt+bLhi1eUH+LdRhO3arcP/Acwp8E0s3wVuZmYf
 0Lrr3bxpARelC7PqgF9lXZmbHLzk0qjxH72BwXPlX6ludQq9Q9BMZ/x/0maLWr0J6FpU
 DQTw==
X-Gm-Message-State: AOAM531+tnL4Q6HeofjX7lXJneuKngF9P72pYKDhjivX4JhM0jv/qaC+
 nLTUvsNWx9/4TSP7KQ5M4HVjZV771rEY1Q==
X-Google-Smtp-Source: ABdhPJxy7OleyqTIDl/EevkdvTG2Irn85jwGL0g0GTH5GZoLarLIjRNeB5FJ3+VSxmkQV0t8tsRdlg==
X-Received: by 2002:a05:600c:4f96:: with SMTP id
 n22mr33649331wmq.116.1624983020119; 
 Tue, 29 Jun 2021 09:10:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u12sm19552686wrq.50.2021.06.29.09.10.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Jun 2021 09:10:19 -0700 (PDT)
Date: Tue, 29 Jun 2021 18:10:17 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Message-ID: <YNtF6aiUSqngxXoq@phenom.ffwll.local>
Mail-Followup-To: Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20210628004012.6792-1-rdunlap@infradead.org>
 <YNtCYyHXOrObRUDK@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YNtCYyHXOrObRUDK@phenom.ffwll.local>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH -next] <linux/dma-resv.h>: correct a
 function name in kernel-doc
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jun 29, 2021 at 05:55:15PM +0200, Daniel Vetter wrote:
> On Sun, Jun 27, 2021 at 05:40:12PM -0700, Randy Dunlap wrote:
> > Fix kernel-doc function name warning:
> > =

> > ../include/linux/dma-resv.h:227: warning: expecting prototype for dma_r=
esv_exclusive(). Prototype was for dma_resv_excl_fence() instead
> > =

> > Fixes: 6edbd6abb783d ("ma-buf: rename and cleanup dma_resv_get_excl v3")

Script caught a lost      'd' here, I fixed that up when applying.
-Daniel

> > Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: Christian K=F6nig <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: dri-devel@lists.freedesktop.org
> > Cc: linaro-mm-sig@lists.linaro.org
> =

> Queued up, thanks for your patch (and the handy -next signifier in the
> patch tag). I think Christian had the fix for this already, but queued up
> in the next branch (for the 5.15 merge window, we're already prepping
> stuff there to avoid late feature additions for 5.14), so applied yours
> once more to the right tree.
> =

> Cheers, Daniel
> =

> > ---
> >  include/linux/dma-resv.h |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > --- linux-next-20210625.orig/include/linux/dma-resv.h
> > +++ linux-next-20210625/include/linux/dma-resv.h
> > @@ -212,7 +212,7 @@ static inline void dma_resv_unlock(struc
> >  }
> >  =

> >  /**
> > - * dma_resv_exclusive - return the object's exclusive fence
> > + * dma_resv_excl_fence - return the object's exclusive fence
> >   * @obj: the reservation object
> >   *
> >   * Returns the exclusive fence (if any). Caller must either hold the o=
bjects
> =

> -- =

> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
