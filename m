Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1220E60435E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 13:35:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2051043BD2
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 11:35:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A836B3F1CB
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 14:47:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4CF5E61931
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 14:47:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B311DC433B5
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 Sep 2022 14:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662562045;
	bh=f2o1y7KshjpkY9lv8qUib+ioQ3G6ppr6671x+zJpSF4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=aLkBQKdLoh3iU88fbas6ii+45gySIpTjxbicxQs534bhWawTDK6a9h/Y8dROIVnYt
	 5HqJs+58zWLLHVpz5+ed2hF8NhGRkKPP555vl4nHw7q6ixSz+tPA9ilmxHx0MsAeYA
	 xWIGsSs3YxTov4kyaEdIuTVVIp3A86248pvsxeb8mu4RQEkz87sLGuopFfcqzb3OSo
	 9nSz3RS6bEKslJ8Or1KY5iNA0oRzTd3cyDOpW2ErfhwGE8LqhxGD/ir/2bSpFqoWo7
	 9gRsrF/aiEtWxktJXYK2t9ntg0TqF/FFM6jTa3ma2wtLbw0K9iJvLqKzLvZVA3QA8R
	 ph0+BOJIq6vwQ==
Received: by mail-il1-f169.google.com with SMTP id y15so401642ilq.4
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 Sep 2022 07:47:25 -0700 (PDT)
X-Gm-Message-State: ACgBeo3SOyCweKJejDoecX5Wwa/DF2qBFA/xR5Sq/VW0j3aJUIYqqu8b
	XuvYl2FFHIBemJzCR//fZRQKrTFQqHopweHphDA=
X-Google-Smtp-Source: AA6agR4o6lWldMLAmLaGf8/79sK+50kODsD1YRVgj4S5LMXqrOSaAz5a6xplMki6HW5XZ9A7aIrChvyctdcUSFL6CzA=
X-Received: by 2002:a05:6e02:1548:b0:2ea:836d:ac6c with SMTP id
 j8-20020a056e02154800b002ea836dac6cmr2206779ilu.6.1662562044874; Wed, 07 Sep
 2022 07:47:24 -0700 (PDT)
MIME-Version: 1.0
References: <0-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com>
 <4-v2-472615b3877e+28f7-vfio_dma_buf_jgg@nvidia.com> <YxcYGzPv022G2vLm@infradead.org>
 <b6b5d236-c089-7428-4cc9-a08fe4f6b4a3@amd.com> <YxczjNIloP7TWcf2@nvidia.com>
 <YxiJJYtWgh1l0wxg@infradead.org> <YxiPh4u/92chN02C@nvidia.com> <Yxiq5sjf/qA7xS8A@infradead.org>
In-Reply-To: <Yxiq5sjf/qA7xS8A@infradead.org>
From: Oded Gabbay <ogabbay@kernel.org>
Date: Wed, 7 Sep 2022 17:46:58 +0300
X-Gmail-Original-Message-ID: <CAFCwf13sz_KAKJm60A_yyqDRo_4MQXWKHaasdMH=-PTGPnOZtg@mail.gmail.com>
Message-ID: <CAFCwf13sz_KAKJm60A_yyqDRo_4MQXWKHaasdMH=-PTGPnOZtg@mail.gmail.com>
To: Christoph Hellwig <hch@infradead.org>
X-MailFrom: ogabbay@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7X6A3Z532VAM72ASRWD2ZYZFEDBDWQDT
X-Message-ID-Hash: 7X6A3Z532VAM72ASRWD2ZYZFEDBDWQDT
X-Mailman-Approved-At: Wed, 19 Oct 2022 11:32:16 +0000
CC: Jason Gunthorpe <jgg@nvidia.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, Maling list - DRI developers <dri-devel@lists.freedesktop.org>, KVM list <kvm@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>, Linux Media Mailing List <linux-media@vger.kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Leon Romanovsky <leon@kernel.org>, linux-rdma <linux-rdma@vger.kernel.org>, Maor Gottlieb <maorg@nvidia.com>, Dan Williams <dan.j.williams@intel.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 4/4] vfio/pci: Allow MMIO regions to be exported through dma-buf
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7X6A3Z532VAM72ASRWD2ZYZFEDBDWQDT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, Sep 7, 2022 at 5:30 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Wed, Sep 07, 2022 at 09:33:11AM -0300, Jason Gunthorpe wrote:
> > Yes, you said that, and I said that when the AMD driver first merged
> > it - but it went in anyhow and now people are using it in a bunch of
> > places.
>
> drm folks made up their own weird rules, if they internally stick
> to it they have to listen to it given that they ignore review comments,
> but it violates the scatterlist API and has not business anywhere
> else in the kernel.  And yes, there probably is a reason or two why
> the drm code is unusually error prone.
>
> > > Why would small BARs be problematic for the pages?  The pages are more
> > > a problem for gigantic BARs do the memory overhead.
> >
> > How do I get a struct page * for a 4k BAR in vfio?
>
> I guess we have different definitions of small then :)
>
> But unless my understanding of the code is out out of data,
> memremap_pages just requires the (virtual) start address to be 2MB
> aligned, not the size.  Adding Dan for comments.
>
> That being said, what is the point of mapping say a 4k BAR for p2p?
> You're not going to save a measurable amount of CPU overhead if that
> is the only place you transfer to.
I don't know what Jason had in mind, but I can see a use for that for
writing to doorbells of a device.
Today, usually what happens is that peer A reads/writes to peer B's
memory through the large bar and then signals the host the operation
was completed.
Then the host s/w writes to the doorbell of the peer B to let him know
he can continue with the execution as the data is now ready (or can be
recycled).
I can imagine peer A writing directly to the doorbell of peer B, and
usually for that we would like to expose a very small area, probably a
single 4K page.

Oded
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
