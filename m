Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0311538CA13
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 17:27:17 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAB9B6117F
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 15:27:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 562E661884; Fri, 21 May 2021 15:27:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD19B6117F;
	Fri, 21 May 2021 15:27:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D86236117F
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 15:27:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D6929605C8; Fri, 21 May 2021 15:27:10 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by lists.linaro.org (Postfix) with ESMTPS id CB947605C8
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 15:27:08 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id i17so21452399wrq.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 08:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ZVSedFrP+0tpxLZ8F7Yf3PCmIz+TOL1d4BZ3SCIGqFE=;
 b=P2NuhRay4VNswk6R+Mre8cDLI1JTeYXs84jE3PUeuJ9FEjGEy44+eU3AsPhsymn0Y1
 b32L5+CXT9AlhdAFPHq0dTdVjFREUTaNPlay2EoCyebUZE7mS2xazPPpTsLDNYWPZP0c
 fVdScbzLPZLzwbByZaWmThuHDrIQDGkbZ3bbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ZVSedFrP+0tpxLZ8F7Yf3PCmIz+TOL1d4BZ3SCIGqFE=;
 b=uP/yryZrxnlBJIP5vi94PMiJ849xpucLmwZbHcyXjKPSygaly6rMyE9ij7/jJnqpvj
 yIJkrKr5dBfnFm+xOiV8ouPwMh/9BoywWtPashUyZHdR0r2jCGp2LDoI5QUP0Z6sb50J
 ElCWKASbo6FBvHxBMBdxCYx5bx80aowoCEArJ05sof2CWcbaCAw/qiPtAGigNJoRzIPd
 p/TWmAKZKYLLtHAn1UOVwrKzUkpCJ69CwtXo4fdNQt/ysSoBS51qOQN6IV+q2IZPDFpM
 EpNl7LlL8PAWTJxRccykL/lyOlxeyYKT+26Q1y0joByj/M2wbqboZPmrk3mb2Q4Wshrx
 zjPg==
X-Gm-Message-State: AOAM5316CdwhLamJUevEq47EYHiPmCbWf8V3MRPvDUSmkk7GnZLTKhkB
 0scgbl1cWmbOGS5VWxUMN9KJFw==
X-Google-Smtp-Source: ABdhPJxp5JhtTYd5Eu2lgi4XdHMzE1uuhrrmpFYMpAYZzEYZ74t1J5SVaMxTD3OGi8zkWgSqYJrzZw==
X-Received: by 2002:adf:e50c:: with SMTP id j12mr10249245wrm.418.1621610828056; 
 Fri, 21 May 2021 08:27:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m7sm2487624wrv.35.2021.05.21.08.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 08:27:07 -0700 (PDT)
Date: Fri, 21 May 2021 17:27:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YKfRSaG2x6FcrKOL@phenom.ffwll.local>
References: <20210521082457.1656333-1-daniel.vetter@ffwll.ch>
 <b8cfff00-2545-8a09-1591-f2f162e2adb7@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b8cfff00-2545-8a09-1591-f2f162e2adb7@amd.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/doc: Includ fence chain api
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Fri, May 21, 2021 at 10:26:28AM +0200, Christian K=F6nig wrote:
> Am 21.05.21 um 10:24 schrieb Daniel Vetter:
> > We have this nice kerneldoc, but forgot to include it.
> =

> Well I didn't forgot it, I just didn't had time to double check that it is
> bug free :)

It does seem to generate decent looking output and no new warnings.

> > =

> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > Cc: linux-media@vger.kernel.org
> > Cc: linaro-mm-sig@lists.linaro.org
> =

> Reviewed-by: Christian K=F6nig <christian.koenig@amd.com>

Thanks for taking a look, applied to drm-misc-next.
-Daniel

> =

> > ---
> >   Documentation/driver-api/dma-buf.rst | 9 +++++++++
> >   1 file changed, 9 insertions(+)
> > =

> > diff --git a/Documentation/driver-api/dma-buf.rst b/Documentation/drive=
r-api/dma-buf.rst
> > index 7f37ec30d9fd..7f21425d9435 100644
> > --- a/Documentation/driver-api/dma-buf.rst
> > +++ b/Documentation/driver-api/dma-buf.rst
> > @@ -178,6 +178,15 @@ DMA Fence Array
> >   .. kernel-doc:: include/linux/dma-fence-array.h
> >      :internal:
> > +DMA Fence Chain
> > +~~~~~~~~~~~~~~~
> > +
> > +.. kernel-doc:: drivers/dma-buf/dma-fence-chain.c
> > +   :export:
> > +
> > +.. kernel-doc:: include/linux/dma-fence-chain.h
> > +   :internal:
> > +
> >   DMA Fence uABI/Sync File
> >   ~~~~~~~~~~~~~~~~~~~~~~~~
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
