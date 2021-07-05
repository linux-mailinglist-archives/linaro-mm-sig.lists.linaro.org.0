Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 913D73BC1D1
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jul 2021 18:52:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AF99866936
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  5 Jul 2021 16:52:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 552FA6693C; Mon,  5 Jul 2021 16:52:35 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 144B063576;
	Mon,  5 Jul 2021 16:52:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1D4B861022
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Jul 2021 16:52:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1AECD63576; Mon,  5 Jul 2021 16:52:30 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com
 [209.85.219.45])
 by lists.linaro.org (Postfix) with ESMTPS id 13B8A61022
 for <linaro-mm-sig@lists.linaro.org>; Mon,  5 Jul 2021 16:52:28 +0000 (UTC)
Received: by mail-qv1-f45.google.com with SMTP id h18so8526797qve.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 05 Jul 2021 09:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TRW2liv0KvxRpEn1sZgxByQ6WPmBTh1GhCnSHVjnwbg=;
 b=jBFIqWpkHJUwhFRIEXpavqYg2lOBnFUgtfMCAa51Keo5p1e7uaLLRwx5ShUDeIlhdM
 2If2zjmjcfC5T6RoGkkweicUk3Qsx+2vRdseYI/0mJ+ciw96iBmUkpkVkiJE+86t8cyr
 2oJc7CwvfA5oUIWZzMzGPAFug62Z67fj3p3Z3WgSBFHsqz4/BWGoOCucw+iLuagpvAH1
 PpbSwCitf8MOcMx6/0YLotNGXe8rFb+KOw2NMKF5n5y/HAuQN75chVqThR99yPOEQKYA
 xDWvGJSbbwBNR2Hg29azK+xEHKNYDfvZIIv02WRktmpruBPJPenBbq+963N6aPphnsv4
 Bn7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TRW2liv0KvxRpEn1sZgxByQ6WPmBTh1GhCnSHVjnwbg=;
 b=QyAli2Rykctb0Mk83wEM7ivHBCWRObp/GM4s4AXAgKjKD8K+d6MU3rw+KSwGo6uSMf
 7Y3vF+mROq/jdDN/6rTL4/p6OLARUbdtWFR58vmU4x4OPgFsl2TB9XLE4zJovUsi0MY0
 eLX9A47vD+nH9AqN6aAiTxmQDZuZypc4WVhxcS6SPmu/UUpXwhmsoYFFAg72Qk6ZFC67
 yAMotBabqjXBax38n8yUcsWvZ/ZHTYg5D6pRvNaEmHYGCXvPXoFbuKJ+lTYK5yaiaOjm
 XEAlMQyz7JnEMxILqhbMjXbsfBl507BzHbIxGAydNUx+1UsJCwKDJGvmxdkyLahotsYC
 xI9A==
X-Gm-Message-State: AOAM530McKX8GPerSAuf3p930f9YcPB07op/XCu0lR4F9O7QP3J9Wnws
 feivmbd9PQpzM1e6eC0+wQbcbg==
X-Google-Smtp-Source: ABdhPJw/xzr3myWPCDkP4OYKH+JUqyzPcaaW7tJ0//CdDzso+M0bp2m0674/I/B/gC+TTQwFiqkSng==
X-Received: by 2002:a0c:ef51:: with SMTP id t17mr13560008qvs.14.1625503947734; 
 Mon, 05 Jul 2021 09:52:27 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-47-55-113-94.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [47.55.113.94])
 by smtp.gmail.com with ESMTPSA id 82sm5694070qke.63.2021.07.05.09.52.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 09:52:27 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1m0Rpa-003sCS-IC; Mon, 05 Jul 2021 13:52:26 -0300
Date: Mon, 5 Jul 2021 13:52:26 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <20210705165226.GJ4604@ziepe.ca>
References: <20210705130314.11519-1-ogabbay@kernel.org>
 <20210705130314.11519-3-ogabbay@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705130314.11519-3-ogabbay@kernel.org>
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
Cc: linux-rdma@vger.kernel.org, sleybo@amazon.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, galpress@amazon.com,
 linaro-mm-sig@lists.linaro.org, dledford@redhat.com, hch@lst.de,
 amd-gfx@lists.freedesktop.org, gregkh@linuxfoundation.org,
 alexander.deucher@amd.com, Tomer Tayar <ttayar@habana.ai>,
 christian.koenig@amd.com, leonro@nvidia.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Mon, Jul 05, 2021 at 04:03:14PM +0300, Oded Gabbay wrote:

> +	rc = sg_alloc_table(*sgt, nents, GFP_KERNEL | __GFP_ZERO);
> +	if (rc)
> +		goto error_free;

If you are not going to include a CPU list then I suggest setting
sg_table->orig_nents == 0

And using only the nents which is the length of the DMA list.

At least it gives some hope that other parts of the system could
detect this.

> +
> +	/* Merge pages and put them into the scatterlist */
> +	cur_page = 0;
> +	for_each_sgtable_sg((*sgt), sg, i) {

for_each_sgtable_sg should never be used when working with
sg_dma_address() type stuff, here and everywhere else. The DMA list
should be iterated using the for_each_sgtable_dma_sg() macro.

> +	/* In case we got a large memory area to export, we need to divide it
> +	 * to smaller areas because each entry in the dmabuf sgt can only
> +	 * describe unsigned int.
> +	 */

Huh? This is forming a SGL, it should follow the SGL rules which means
you have to fragment based on the dma_get_max_seg_size() of the
importer device.

> +	hl_dmabuf->pages = kcalloc(hl_dmabuf->npages, sizeof(*hl_dmabuf->pages),
> +								GFP_KERNEL);
> +	if (!hl_dmabuf->pages) {
> +		rc = -ENOMEM;
> +		goto err_free_dmabuf_wrapper;
> +	}

Why not just create the SGL directly? Is there a reason it needs to
make a page list?

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
