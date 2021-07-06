Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id F39183BD80D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 15:55:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7DE1566945
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 13:55:00 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4531966948; Tue,  6 Jul 2021 13:54:59 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CBEBC60A71;
	Tue,  6 Jul 2021 13:54:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A457C60509
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 13:54:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A1D6B60A71; Tue,  6 Jul 2021 13:54:55 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
 [209.85.160.171])
 by lists.linaro.org (Postfix) with ESMTPS id 9CA6F60509
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 13:54:53 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id v10so14453840qto.1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 06:54:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=F7pVFly65mtrw4yvfSLy/OKy9AWKG24c85UMsxt0WZw=;
 b=gYf94+BMIGsQpJS3uV3ohuMRMLOEFz0kdysTKDKnloRFgs0LhgoRcqPW98PUrU+dx6
 E3OOKrVJV1BTd2elUyjb8G6xfJzPFdvehJAilfpTM9RS4gfQVAvkYNKGiyCJGug87J6k
 YPq+yFMHPSe1tFJNbPKeZAhUsLvOhG/JZZZww+IcGnL/e9f9w8Z2RP4h4m2+YNHDT4Xi
 aRg/PM4bau3ZfwjJIhVR625Zv1Lq+m19yfd3/4kopcBskBTAcwccdEdO9LAmSJrnc844
 kpItX9Ulfg4csgBtST5Xn7ZpOiEeWyWeCZZL/jYKlVlhcziFr98+RBkzrzJm3IFtppAf
 vOgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=F7pVFly65mtrw4yvfSLy/OKy9AWKG24c85UMsxt0WZw=;
 b=ZDv1xbbwafFfXrvFkaCSZNPlvSfZyxDruMn25HIQBc4G9s8FPO9TB3IY9doun/NxGC
 6V3RjsKCu3fwWSdI7BcH1wDQa0tvgUVyyF+NW371O3A7JPl95AANYj3O+ACywgvu2+LV
 Ma0QXavw5F84oa8lJ1ZBHxsAgpFs6E1LdOz0nMX0x8oEqRMyZ0HzGzEsuRTukTI40/O8
 W4+wKdABN6vV1mvmc3OEndwAaosa7MF25uxmzrVpKDogBS2sd+9pGeBFDLOdem+XL3KR
 C5oEfEKSWKRl++y+38V3CylxWPWmD10q99IbLwWmzlC26fDK6szC7nr0r9qU3vd5vkg+
 EnLQ==
X-Gm-Message-State: AOAM531tPVvDOamx4qsgaierFADL1V0G62d33dewnqT2tdlvuxoqO1Xe
 pnMSGm8uaQ8KibXoO5Hv7BVh/A==
X-Google-Smtp-Source: ABdhPJz13olZ+JJKFkbBuIPKQTyNwX1MXRn+mR8LaT47LKm2ZWHADKQroBueZGYoVGCTJKDq+xeMwA==
X-Received: by 2002:ac8:5045:: with SMTP id h5mr17280817qtm.178.1625579693287; 
 Tue, 06 Jul 2021 06:54:53 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id t20sm1900660qtx.48.2021.07.06.06.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 06:54:52 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1m0lXH-004QmP-Kc; Tue, 06 Jul 2021 10:54:51 -0300
Date: Tue, 6 Jul 2021 10:54:51 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210706135451.GM4604@ziepe.ca>
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <20210705130314.11519-3-ogabbay@kernel.org>
 <20210705165226.GJ4604@ziepe.ca>
 <CAFCwf100mkROMw9+2LgW7d3jKnaeZ4nmfWm7HtXuUE7NF4B8pg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf100mkROMw9+2LgW7d3jKnaeZ4nmfWm7HtXuUE7NF4B8pg@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 2/2] habanalabs: add support for
 dma-buf exporter
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
Cc: Gal Pressman <galpress@amazon.com>, sleybo@amazon.com,
 linux-rdma <linux-rdma@vger.kernel.org>, Oded Gabbay <ogabbay@kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>, Tomer Tayar <ttayar@habana.ai>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 12:44:49PM +0300, Oded Gabbay wrote:

> > > +     /* In case we got a large memory area to export, we need to divide it
> > > +      * to smaller areas because each entry in the dmabuf sgt can only
> > > +      * describe unsigned int.
> > > +      */
> >
> > Huh? This is forming a SGL, it should follow the SGL rules which means
> > you have to fragment based on the dma_get_max_seg_size() of the
> > importer device.
> >
> hmm
> I don't see anyone in drm checking this value (and using it) when
> creating the SGL when exporting dmabuf. (e.g.
> amdgpu_vram_mgr_alloc_sgt)

For dmabuf the only importer is RDMA and it doesn't care, but you
certainly should not introduce a hardwired constant instead of using
the correct function.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
