Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CD33B0859
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 17:11:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 181E663542
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 22 Jun 2021 15:11:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9446A6354D; Tue, 22 Jun 2021 15:11:50 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C7EA661009;
	Tue, 22 Jun 2021 15:11:47 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BC96160B0F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:11:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AFF0C61009; Tue, 22 Jun 2021 15:11:46 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 by lists.linaro.org (Postfix) with ESMTPS id A8A1B60B0F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 15:11:44 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id j12so1793371qtv.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 22 Jun 2021 08:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=GfBcan5Oq/+F6rqd3wteDDUo+4mA0t9y3pSH6r/kVdI=;
 b=oQKSqDMY5ui7ysN6RXa17KyJ2Wzpm89WOS/VTDpLsBMmjFt0xKup1/rN3Iu2Ysn7kj
 0o4QpiviU+XCzwAjOmd3ASe2G50DR4wQM1cxJ/IcnSoJE+UREjasIpFci4SAI/zjLeO4
 BaVYbbQSqm0nAX/Y00oQm+1Fl/s1cHNEiBtnrRSnwG+/c0ZPfPFGw36xuMKNGuUPMk6/
 S9czK9NLULrCof4fVnQi6scmnRJl9iMhmlDxM2xpQloNB9qi5QwwBnyh0jFdiD4S4nEx
 BNdzQik55X4yiVc76B5/N6HeFax4G1G02Yo0H2X2M1eLLt5C2jCamVulCHYNUMYd6Nkl
 GXvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GfBcan5Oq/+F6rqd3wteDDUo+4mA0t9y3pSH6r/kVdI=;
 b=e6FzXSiXm5OnBV4H18EhUbG6g84zy4Qi0g8fZAtVeQIMIolE1t9hyFp/f5hPKxcRyF
 nfHCnexdzzRp29Jn5BgzniiLsrIqdHfkVJ20X7kEr6ZJDJVNPbL4tjs1aDGoJk/NNfoG
 fJbaKy/TqsHWruSEwJcn+xDxDgh8x/z9dL/LcJxDZuDR7DwUsqT3qHKy1MbQO4Qm/qYn
 z1BIzccm0yy/m5yHaHeigyPQCSTtmW6QV9W8qeYTaCBpKoZDoVo1aygG86CyRr62Dlla
 Ha/yIugzfkXgW1X84vl6SCoFrZJyxhWTEMA1/d/E9jCrAvARvHkZLk1SzuUF1utgIcMI
 hMjQ==
X-Gm-Message-State: AOAM532YNyGnOph84+4uIg7fMhErHX0eO8AJkPZz/2+pQ5Xbn8NeQayu
 Ttg3B7MjISp+n7B5Fcw6NnaFhA==
X-Google-Smtp-Source: ABdhPJyIvo3ZVkwIuidF8Fxvcg1uTF/rMIUzGf5xwZlLSDUGqkiRqy7l/P12S4XnoNrAjy14Ik1xNg==
X-Received: by 2002:ac8:5dd2:: with SMTP id e18mr3979783qtx.263.1624374704154; 
 Tue, 22 Jun 2021 08:11:44 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id m3sm10504480qkk.27.2021.06.22.08.11.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 08:11:43 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1lvi3y-00AD4o-Si; Tue, 22 Jun 2021 12:11:42 -0300
Date: Tue, 22 Jun 2021 12:11:42 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <oded.gabbay@gmail.com>
Message-ID: <20210622151142.GA2431880@ziepe.ca>
References: <20210621175511.GI1096940@ziepe.ca>
 <CAKMK7uEO1_B59DtM7N2g7kkH7pYtLM_WAkn+0f3FU3ps=XEjZQ@mail.gmail.com>
 <CAFCwf11jOnewkbLuxUESswCJpyo7C0ovZj80UrnwUOZkPv2JYQ@mail.gmail.com>
 <20210621232912.GK1096940@ziepe.ca>
 <d358c740-fd3a-9ecd-7001-676e2cb44ec9@gmail.com>
 <CAFCwf11h_Nj_GEdCdeTzO5jgr-Y9em+W-v_pYUfz64i5Ac25yg@mail.gmail.com>
 <20210622120142.GL1096940@ziepe.ca>
 <CAFCwf10GmBjeJAFp0uJsMLiv-8HWAR==RqV9ZdMQz+iW9XWdTA@mail.gmail.com>
 <20210622121546.GN1096940@ziepe.ca>
 <CAFCwf13BuS+U3Pko_62hFPuvZPG26HQXuu-cxPmcADNPO22g9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFCwf13BuS+U3Pko_62hFPuvZPG26HQXuu-cxPmcADNPO22g9g@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/2] habanalabs: define uAPI to
 export FD for DMA-BUF
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
Cc: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-rdma <linux-rdma@vger.kernel.org>, sleybo@amazon.com,
 Gal Pressman <galpress@amazon.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, Christoph Hellwig <hch@lst.de>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Tomer Tayar <ttayar@habana.ai>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Greg KH <gregkh@linuxfoundation.org>, Alex Deucher <alexander.deucher@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>, Oded Gabbay <ogabbay@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jun 22, 2021 at 04:12:26PM +0300, Oded Gabbay wrote:

> > 1) Setting sg_page to NULL
> > 2) 'mapping' pages for P2P DMA without going through the iommu
> > 3) Allowing P2P DMA without using the p2p dma API to validate that it
> >    can work at all in the first place.
> >
> > All of these result in functional bugs in certain system
> > configurations.
> >
> > Jason
> 
> Hi Jason,
> Thanks for the feedback.
> Regarding point 1, why is that a problem if we disable the option to
> mmap the dma-buf from user-space ? 

Userspace has nothing to do with needing struct pages or not

Point 1 and 2 mostly go together, you supporting the iommu is not nice
if you dont have struct pages.

You should study Logan's patches I pointed you at as they are solving
exactly this problem.

> In addition, I didn't see any problem with sg_page being NULL in the
> RDMA p2p dma-buf code. Did I miss something here ?

No, the design of the dmabuf requires the exporter to do the dma maps
and so it is only the exporter that is wrong to omit all the iommu and
p2p logic.

RDMA is OK today only because nobody has implemented dma buf support
in rxe/si - mainly because the only implementations of exporters don't
set the struct page and are thus buggy.

> I will take two GAUDI devices and use one as an exporter and one as an
> importer. I want to see that the solution works end-to-end, with real
> device DMA from importer to exporter.

I can tell you it doesn't. Stuffing physical addresses directly into
the sg list doesn't involve any of the IOMMU code so any configuration
that requires IOMMU page table setup will not work.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
