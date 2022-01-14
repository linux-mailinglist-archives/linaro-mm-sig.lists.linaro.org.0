Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C3E48EECE
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 17:58:07 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3759E3EE02
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 14 Jan 2022 16:58:06 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id 6C1453ECD2
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 16:57:42 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id e9so16674655wra.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Jan 2022 08:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=8tlmhR9a+oSiQxYgTs9TSjEyT0cpPnO4gBCG7leedNI=;
        b=QcCsaXmaZFWsArkyS5ubMHNqwdV+bONwmyEp85ScjOc2CF/42wJGz4jjT+ad/Ry611
         083GxGtKg4TJ79eMUo3dC2J+XtNJ9+5FfgSuwjcmtvOR/4zwkboYinLPZ2YyT7IQEcX6
         O4+0Ww9RTbJquWrvJBsU4RGpdabqbKvq6Eo4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=8tlmhR9a+oSiQxYgTs9TSjEyT0cpPnO4gBCG7leedNI=;
        b=I/JaYUDJ3g/eoxsaMJ924TzONRLGFJZlAFiV36iopVoCdr99mUzTKH9tDmiLz1St/W
         vKwxI85cfUxTw9UBF9tBoV803RODPr+ElK+/HZT6dvFW0TQEgCN6Jstvqtw14vNMj55s
         0aBTQtaOSL4AMCabHNzV0qyHjvZdgy0Yv1QEH6SjSMhZWfGRGaGCG1nDDm4C3kHM0GT0
         9IsVl2XN3FePkwpx1E7JFAj3pqIZND7fobb8w9SEvdfVnuNvp4ZLR7lreJ0f2XIqdtdW
         /pIrCigkSLWOYWUbRtq/Wl3+7O3S5w3ok/EL2Rd7musdSAjVpGR3FjTJCrrvtS/mEz5F
         oZSw==
X-Gm-Message-State: AOAM533itmlCYh7At8gI2edPLKjT8bAb7k7R8UV4XfDlu0qRBdk4Acyr
	sHWQSYyJVel+U+JtDDZTmXu3Tw==
X-Google-Smtp-Source: ABdhPJwJs+M7uqymw5kPe5LWbLvcWEC9656nwi+iTRgHPrTpBHgrVMtYX3b6p8Xz5qk20YpoKPr0gw==
X-Received: by 2002:a5d:6e09:: with SMTP id h9mr9098120wrz.116.1642179461451;
        Fri, 14 Jan 2022 08:57:41 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id s10sm10546434wmr.30.2022.01.14.08.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jan 2022 08:57:40 -0800 (PST)
Date: Fri, 14 Jan 2022 17:57:38 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <YeGrgs+4PXM2ud+n@phenom.ffwll.local>
Mail-Followup-To: Pavel Skripkin <paskripkin@gmail.com>, kraxel@redhat.com,
	sumit.semwal@linaro.org, christian.koenig@amd.com,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
References: <20211230142649.23022-1-paskripkin@gmail.com>
 <c5ae2a68-070f-884c-c82a-2d3f4b8e06b1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5ae2a68-070f-884c-c82a-2d3f4b8e06b1@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: R3BPLQITBGSVQX2JRBN2M3IRKZG3HT7I
X-Message-ID-Hash: R3BPLQITBGSVQX2JRBN2M3IRKZG3HT7I
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: kraxel@redhat.com, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: validate ubuf->pagecount
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/R3BPLQITBGSVQX2JRBN2M3IRKZG3HT7I/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Jan 12, 2022 at 09:08:46PM +0300, Pavel Skripkin wrote:
> On 12/30/21 17:26, Pavel Skripkin wrote:
> > Syzbot has reported GPF in sg_alloc_append_table_from_pages(). The
> > problem was in ubuf->pages == ZERO_PTR.
> > 
> > ubuf->pagecount is calculated from arguments passed from user-space. If
> > user creates udmabuf with list.size == 0 then ubuf->pagecount will be
> > also equal to zero; it causes kmalloc_array() to return ZERO_PTR.
> > 
> > Fix it by validating ubuf->pagecount before passing it to
> > kmalloc_array().
> > 
> > Fixes: fbb0de795078 ("Add udmabuf misc device")
> > Reported-and-tested-by: syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
> > Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
> > ---
> > 
> 
> Gentle ping :)

Gerd Hoffmann should pick this one up, pls holler again if it doesn't
happen.
-Daniel

> 
> > 
> > ---
> >   drivers/dma-buf/udmabuf.c | 4 ++++
> >   1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/dma-buf/udmabuf.c b/drivers/dma-buf/udmabuf.c
> > index c57a609db75b..e7330684d3b8 100644
> > --- a/drivers/dma-buf/udmabuf.c
> > +++ b/drivers/dma-buf/udmabuf.c
> > @@ -190,6 +190,10 @@ static long udmabuf_create(struct miscdevice *device,
> >   		if (ubuf->pagecount > pglimit)
> >   			goto err;
> >   	}
> > +
> > +	if (!ubuf->pagecount)
> > +		goto err;
> > +
> >   	ubuf->pages = kmalloc_array(ubuf->pagecount, sizeof(*ubuf->pages),
> >   				    GFP_KERNEL);
> >   	if (!ubuf->pages) {
> 
> With regards,
> Pavel Skripkin

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
