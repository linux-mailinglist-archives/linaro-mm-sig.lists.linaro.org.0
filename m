Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8461941D76B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 12:14:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E01DA63249
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 30 Sep 2021 10:14:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A524F63542; Thu, 30 Sep 2021 10:14:03 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 36239606E1;
	Thu, 30 Sep 2021 10:13:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CF8D2605FF
 for <linaro-mm-sig@lists.linaro.org>; Thu, 30 Sep 2021 10:10:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 53FAC6B835; Tue, 28 Sep 2021 17:13:33 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by lists.linaro.org (Postfix) with ESMTPS id 4975E6AE83
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Sep 2021 17:13:31 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id a13so20566051qtw.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 28 Sep 2021 10:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3Xx8rNIZkvMliD68DmgFcYOoQ1tpCBrX2+RD4NaKqi4=;
 b=LanYIHwLUugO1SYhA4R1tjx/4/Za+1W69P8OiSvyrQXmlYAdpbyB85E23JmtXfGDHt
 wDUzXSyVeUosO2AwtC5ep6h56UygytauvIz8Qdi86oR2WYIgror7+r5XdKdNZJMXADW2
 teFMQtLGF7zsP8hzV4AhfTM5awwdCuByO0G9yhkwWenLgruL7//YkdwrSbP1PqEhcnI1
 xUu62EKpnImnUhUZbYkhDetuXiAugos4PsWbBV0yxXz9ylLSun90NzDflFzhWGUHiSz7
 yZUUnYjocHsdZep+d5DWuEVLKnZME54O4Wvij6NNlm4cWTy92Y5NiAt/MEFNlvAFiMmx
 Tqgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3Xx8rNIZkvMliD68DmgFcYOoQ1tpCBrX2+RD4NaKqi4=;
 b=Ae2hbmsmfS6vy/in/pzA4BjBjKDZzx0+kvmpjfGX/AQqe3r3wAaNe+1aTd4wmpkOQ4
 NZawGOH8u03nD6aOducxY9dBqgUh6LH/n+h3zV8O255LJLw6tEJ/za2mJLV5g0tzDozA
 9abEZQnLvWKCfKbD9e3D5Kbz+x5grksI1YYhvo7j6ftRCDsVTAXqSdglAYPfbFNoWs9n
 GjMwCTRN9AZ56dl1lUhqm+tNQdRSxZkWD1TCvjt99oO4B+b9ihZ+CNWbqxDHnG+ZupTf
 NDGqvsZKotWetUA4kH0bI5P4Z0ehA9TrMfDPzEJBEDHTsQh45RKDUFuKs4homxL63Use
 4ySw==
X-Gm-Message-State: AOAM531pmUBzSY59vpeVdvjyOH3BN1W5zQoLA521OVcqYmSLeFNS6wrB
 LII5BUn6StIvSwa3b98WDR638Q==
X-Google-Smtp-Source: ABdhPJwySofKZpBkD7jy6Vdb6WsNA3yiKbulrnJQTRUb8BGGkmyWflBOTfaYOzfqm6nDJlcs8e0wag==
X-Received: by 2002:a05:622a:178b:: with SMTP id
 s11mr7167370qtk.13.1632849210891; 
 Tue, 28 Sep 2021 10:13:30 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.129])
 by smtp.gmail.com with ESMTPSA id p12sm14912297qkj.54.2021.09.28.10.13.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 10:13:30 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1mVGfZ-007Dzq-MQ; Tue, 28 Sep 2021 14:13:29 -0300
Date: Tue, 28 Sep 2021 14:13:29 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Oded Gabbay <ogabbay@kernel.org>
Message-ID: <20210928171329.GF3544071@ziepe.ca>
References: <20210912165309.98695-1-ogabbay@kernel.org>
 <20210912165309.98695-2-ogabbay@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210912165309.98695-2-ogabbay@kernel.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v6 1/2] habanalabs: define uAPI to
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
Cc: linux-rdma@vger.kernel.org, sleybo@amazon.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, galpress@amazon.com,
 linaro-mm-sig@lists.linaro.org, dledford@redhat.com, hch@lst.de,
 amd-gfx@lists.freedesktop.org, gregkh@linuxfoundation.org,
 alexander.deucher@amd.com, christian.koenig@amd.com, leonro@nvidia.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Sun, Sep 12, 2021 at 07:53:08PM +0300, Oded Gabbay wrote:
>  	/* HL_MEM_OP_* */
>  	__u32 op;
> -	/* HL_MEM_* flags */
> +	/* HL_MEM_* flags.
> +	 * For the HL_MEM_OP_EXPORT_DMABUF_FD opcode, this field holds the
> +	 * DMA-BUF file/FD flags.
> +	 */
>  	__u32 flags;
>  	/* Context ID - Currently not in use */
>  	__u32 ctx_id;
> @@ -1072,6 +1091,13 @@ struct hl_mem_out {
>  
>  			__u32 pad;
>  		};
> +
> +		/* Returned in HL_MEM_OP_EXPORT_DMABUF_FD. Represents the
> +		 * DMA-BUF object that was created to describe a memory
> +		 * allocation on the device's memory space. The FD should be
> +		 * passed to the importer driver
> +		 */
> +		__u64 fd;

fd's should be a s32 type in a fixed width uapi.

I usually expect to see the uapi changes inside the commit that
consumes them, splitting the patch like this seems strange but
harmless.

Jason
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
