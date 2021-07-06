Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B4E3BD834
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 16:24:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6825F66948
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  6 Jul 2021 14:24:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 489C361459; Tue,  6 Jul 2021 14:24:04 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2A56B61459;
	Tue,  6 Jul 2021 14:24:02 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0AAB060B82
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 14:24:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 00B7161459; Tue,  6 Jul 2021 14:24:00 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
 [209.85.219.50])
 by lists.linaro.org (Postfix) with ESMTPS id ED3A660B82
 for <linaro-mm-sig@lists.linaro.org>; Tue,  6 Jul 2021 14:23:58 +0000 (UTC)
Received: by mail-qv1-f50.google.com with SMTP id cz7so6240146qvb.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 06 Jul 2021 07:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YFV6rk8SCk3lOjLONoCa6QpHpLH5GrV0fP6FZz2KGC4=;
 b=i36XoWKRqU8KJek9jwEW2vzH1kXRjuehGEigeg5Akp/37tkny8vakSr0jIAXiOGu1u
 GHL0ilRliQ9oc9iQmH0an9uV7JDwd/mzX3DacIwdaf7HcjAKD8DG/JUXrWtMORT34TXg
 BYTz5cnKNmWDAd3HuxUJ6kG/qwZoiWbpmkdvRPgflY5DbEzGQI/QtT0N02w4M1gse04r
 jsMypKxf5auUb2hsbqD5cFX7qeepAXsueX82eDVDxqpjWSWLMJVdOufDNgfIs7QguF2V
 gCqp8r5nbz2rp8BmskQCVyWGVWJsMkQ7QtZ+ygTqYTusq6gu7yTTPo1WNdN0ZZrvKsSb
 lqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YFV6rk8SCk3lOjLONoCa6QpHpLH5GrV0fP6FZz2KGC4=;
 b=S81o26LH+24qlqycqQD1iGdkKNFonfVvM0Klqshq9ZjwxoSi5Yc2FGbzjG/dcagJYv
 dQ83iVJHm83Ma5mfD9AOhO1MYoXfLYPh6gDPwPX4Ev7ul3Wdab3NSKpQ57Qa6qCLMA+0
 Ne5SSReauWJnKhqt5ZWfyLeQ6yUqMKM2OQ6ZPdPg3gqaaIwKjCqcmWzXygF3JtvV3W3p
 FwsxaxvI3Rr2nqocBTXyKZG+fD6wGyM0/4oXizpAz92Z7ii1DjerL4ogjfT6hRJYq6gM
 F5UndL4PJXUfbHKvelfgpJO2Fuw4VGOclEZretmovIncU5YLt55VJzr5xgK/ySY74QW5
 Y3pA==
X-Gm-Message-State: AOAM533NqKEuNIoZrS9XnAYm/eEEKNI9ACg7ilnYzyLP8B0YIFbkHRig
 0wtAo791GX389BT2yrE3SjED6w==
X-Google-Smtp-Source: ABdhPJz1CsC+M5B6A7qlNZPYOtCZ1RD0GqU6WwjApjr7wLD9E1k97rwxhSXS/QrhzlkoPkDPUTVSHw==
X-Received: by 2002:a0c:c401:: with SMTP id r1mr18387245qvi.46.1625581438559; 
 Tue, 06 Jul 2021 07:23:58 -0700 (PDT)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id b25sm6994985qkk.111.2021.07.06.07.23.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 07:23:58 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1m0lzR-004RHF-1S; Tue, 06 Jul 2021 11:23:57 -0300
Date: Tue, 6 Jul 2021 11:23:57 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20210706142357.GN4604@ziepe.ca>
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <YOQXBWpo3whVjOyh@phenom.ffwll.local>
 <CAFCwf10_rTYL2Fy6tCRVAUCf4-6_TtcWCv5gEEkGnQ0KxqMUBg@mail.gmail.com>
 <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEAJZUHNLreBB839BZOfnTGNU4rCx-0k55+67Nbxtdx3A@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/2] Add p2p via dmabuf to habanalabs
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
 linux-rdma <linux-rdma@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oded Gabbay <ogabbay@kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Doug Ledford <dledford@redhat.com>, Christoph Hellwig <hch@lst.de>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Leon Romanovsky <leonro@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Tue, Jul 06, 2021 at 12:36:51PM +0200, Daniel Vetter wrote:

> If that means AI companies don't want to open our their hw specs
> enough to allow that, so be it - all you get in that case is
> offloading the kernel side  of the stack for convenience, with zero
> long term prospects to ever make this into a cross vendor subsystem
> stack that does something useful.

I don't think this is true at all - nouveau is probably the best
example.

nouveau reverse engineered a userspace stack for one of these devices.

How much further ahead would they have been by now if they had a
vendor supported, fully featured, open kernel driver to build the
userspace upon?

> open up your hw enough for that, I really don't see the point in
> merging such a driver, it'll be an unmaintainable stack by anyone else
> who's not having access to those NDA covered specs and patents and
> everything.

My perspective from RDMA is that the drivers are black boxes. I can
hack around the interface layers but there is a lot of wild stuff in
there that can't be understood without access to the HW documentation.

I think only HW that has open specs, like say NVMe, can really be
properly community oriented. Otherwise we have to work in a community
partnership with the vendor.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
