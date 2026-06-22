Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YFwdEylgPWqr2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:06:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8886C7B16
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:06:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=lDO1fWrL;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 052AB44548
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:06:48 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id C34203F7BF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 08:13:47 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-49249072f03so8854935e9.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 01:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782116027; x=1782720827; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y69DNLtkcPX106ySVX6ZlNH6S9rjQScn7EBr8UTU9k0=;
        b=lDO1fWrLV7/QoD80zwhQ7W8AaK8/KmH8wog00sowYrc3rKQxtNHV929XLWGJLDG+qN
         EBcKZnx5xXtv6diup9k5ohUufT+ctTSBo9N2QnbWMsDfOM5XDj6PUHjIZu3HSy7moVWm
         miKOSYnzRSH0le3Jv0CiHhwaWdfq/wi3nTCflhyBc0DIKLJBhvLJJnaw+ism8uHkj8LS
         CmAPxQjNc3DYqQLO9UsYq8GqautX9rC4JYs0nPovzL3OwnNm0h/1C/8a8L4VhXjk+NZt
         Ek+OQrkIA3jOtA3vSYb8oUgCDT7A3VZY6wcyamHBlBSUePh+AnytLNP4HGcM7s2dKdL0
         46SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782116027; x=1782720827;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=y69DNLtkcPX106ySVX6ZlNH6S9rjQScn7EBr8UTU9k0=;
        b=cv1a8LVLa4+B22MGwZMXp/Ms7BowSFTES1GEtl0vOn9DzSY4q4TwR37qzvjf+6lkjA
         wyO1Y9Qx8owb5wp/dd5mWpY3U80WPGVqDFZMH8y3WayjfVFAV5kTtdkBKT5luFpS6kgR
         7vbuGV9broTrN7RHMbeUxlHB1RrdW7n0CsUTI5IN7LIPhVMiahCMSV6a8s/A+qWJ8wtU
         gO0eAvlRY442Lx2o6apJP0BynMLVwQfcqV0yKwS7fufgyb45yVoFplDOozfUmW8R4GXF
         qqyqGq/Ou5ypqcaQYQvJ82GbPTiACp1C6i6L8c8iK/VWfGj/N9TV48jqGFLunE73gWdu
         ULgg==
X-Forwarded-Encrypted: i=1; AFNElJ8KOP1oIHLwXTop4fRZCHrQM1PuQJLSZX2s0XU09OE78n0lPaFhIL+45mv+rg8iqRfKTx/aHbd/Cs3cdgwJ@lists.linaro.org
X-Gm-Message-State: AOJu0YxrfjeCxlcrzIEi3cRBZqSQgh0JhQtqpX7r89mAfaMyuO8kNoj4
	ARWXpggDQclpoLdRsbz1GWqfcqdsrTOmBrPFNgP17zISUB9mrK464Qcz
X-Gm-Gg: AfdE7clfFqcjx99WdSbW8E9l4BDsRGjIEnYLWBamAl/fT0IMa9nxE1gTIgbsxQaTkI8
	JQQC2hZSenWvpW304EQ9C1tXtWosUEEi7sDwxIQVwXrkCxrml2kjHTgsCB8GHxLQkAPDmSBF4Gg
	iON7sYetG5cxs0jClWIvv1rpohBJpNriLsTLf2vcRgQ6hQxPRVd/DmBRg2qw+ehSBmXnOzq7+5r
	iTdHIQYsuEp+Rd4dL7lwaPBBs0cvKC55OxmCzEfhZLjC1m7RJaLKJxVpyNsTqf+kyPN9J5hdc0I
	9W/3GoCt/sAysu6332UMgm9N84bnJGdLOa0HHne9Nny0kHoCAY2uD8cW17d38zsyElhv1t1zeJ8
	+Nd/V+3quNyKudrmaNBzDKcGr23V8/+ux7s4ZdJW2+uP62sicHrxJ4LghfTR2ytm1AhDOFvv1G8
	2TttZ9mLmnRYqkk0iJgyWKaJ5xChJP44/C/5zSFgnrnK6wgH1AwQ==
X-Received: by 2002:a05:600c:8719:b0:492:4c60:bfb8 with SMTP id 5b1f17b1804b1-4924c60bfdemr121648545e9.28.1782116026585;
        Mon, 22 Jun 2026 01:13:46 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4923fd30078sm274806595e9.7.2026.06.22.01.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2026 01:13:45 -0700 (PDT)
Date: Mon, 22 Jun 2026 09:13:44 +0100
From: David Laight <david.laight.linux@gmail.com>
To: David Hu <xuehaohu@google.com>
Message-ID: <20260622091344.794e0d74@pumpkin>
In-Reply-To: <20260621222130.1667453-1-xuehaohu@google.com>
References: <20260621222130.1667453-1-xuehaohu@google.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4F2K7BTWSJV5S5OFMGLKGLOMQKJQIQJW
X-Message-ID-Hash: 4F2K7BTWSJV5S5OFMGLKGLOMQKJQIQJW
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jason Gunthorpe <jgg@ziepe.ca>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, jmoroni@google.com, praan@google.com, kpberry@google.com, sashiko-bot <sashiko-bot@kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: Split sgl by largest page-aligned chunk
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4F2K7BTWSJV5S5OFMGLKGLOMQKJQIQJW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	DATE_IN_PAST(1.00)[80];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:xuehaohu@google.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:nicolinc@nvidia.com,m:leon@kernel.org,m:kevin.tian@intel.com,m:ankita@nvidia.com,m:alex@shazbot.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:iommu@lists.linux.dev,m:jmoroni@google.com,m:praan@google.com,m:kpberry@google.com,m:sashiko-bot@kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EB8886C7B16

On Sun, 21 Jun 2026 22:21:30 +0000
David Hu <xuehaohu@google.com> wrote:

> Currently, `fill_sg_entry()` splits the scatterlist using `UINT_MAX`.
> This creates a non-page-aligned DMA length (`0xFFFFFFFF`) for the
> first entry, resulting in non-page-aligned DMA addresses for all
> subsequent entries.

How did you find this?
It requires a single buffer over 4GB - seems highly unlikely.


> 
> While the underlying IOMMU mapping may be contiguous, hardware
> DMA engines often require explicit address alignment (e.g., page,
> cacheline, or storage sector boundaries). Passing unaligned
> addresses and lengths can cause explicit failures in DMA descriptor
> creation or silent data corruption if lower unaligned bits are
> truncated.
> 
> Fix this by splitting the scatterlist by the largest possible page
> aligned chunk within `UINT_MAX` (`ALIGN_DOWN(UINT_MAX, PAGE_SIZE)`).
> This ensures all scatterlist DMA addresses and lengths remain page
> aligned and satisfy hardware constraints.

It would almost certainly better to spilt into 2G chunks.
That removes any need for any divisions.

> Page-aligned entries allow the system to cleanly chunk payloads into
> PCIe MaxPayloadSize (MPS) (e.g., 128 bytes, 256 bytes, 512 bytes).
> As a result, this may help reduce TLP fragmentation in P2P transfers
> and alleviate potential congestion within a logical PCIe switch
> partition, especially when Relaxed Ordering is not possible due to
> hardware constraints.
> 
> Reported-by: sashiko-bot <sashiko-bot@kernel.org>
> Closes: https://lore.kernel.org/all/20260609165431.778061F00893@smtp.kernel.org/
> Fixes: 3aa31a8bb11e ("dma-buf: provide phys_vec to scatter-gather mapping routine")
> Cc: stable@vger.kernel.org
> Signed-off-by: David Hu <xuehaohu@google.com>
> ---
>  drivers/dma-buf/dma-buf-mapping.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
> index 794acff2546a..f2bde38fdb1f 100644
> --- a/drivers/dma-buf/dma-buf-mapping.c
> +++ b/drivers/dma-buf/dma-buf-mapping.c
> @@ -5,6 +5,9 @@
>   */
>  #include <linux/dma-buf-mapping.h>
>  #include <linux/dma-resv.h>
> +#include <linux/align.h>
> +
> +#define MAX_ENT_SZ ALIGN_DOWN(UINT_MAX, PAGE_SIZE)

>  
>  static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
>  					 dma_addr_t addr)
> @@ -12,9 +15,9 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
>  	unsigned int len, nents;
>  	int i;
>  
> -	nents = DIV_ROUND_UP(length, UINT_MAX);
> +	nents = DIV_ROUND_UP(length, MAX_ENT_SZ);
>  	for (i = 0; i < nents; i++) {

Why not change that to 'while (length) {' to avoid the division above.

> -		len = min_t(size_t, length, UINT_MAX);
> +		len = min_t(size_t, length, MAX_ENT_SZ);

I bet that doesn't need to be min_t()

>  		length -= len;
>  		/*
>  		 * DMABUF abuses scatterlist to create a scatterlist
> @@ -24,7 +27,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
>  		 * does not require the CPU list for mapping or unmapping.
>  		 */
>  		sg_set_page(sgl, NULL, 0, 0);
> -		sg_dma_address(sgl) = addr + (dma_addr_t)i * UINT_MAX;
> +		sg_dma_address(sgl) = addr + (dma_addr_t)i * MAX_ENT_SZ;
>  		sg_dma_len(sgl) = len;

Replace the multiply with 'addr += len'.

-- David

>  		sgl = sg_next(sgl);
>  	}
> @@ -41,14 +44,14 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
>  
>  	if (!state || !dma_use_iova(state)) {
>  		for (i = 0; i < nr_ranges; i++)
> -			nents += DIV_ROUND_UP(phys_vec[i].len, UINT_MAX);
> +			nents += DIV_ROUND_UP(phys_vec[i].len, MAX_ENT_SZ);
>  	} else {
>  		/*
>  		 * In IOVA case, there is only one SG entry which spans
>  		 * for whole IOVA address space, but we need to make sure
>  		 * that it fits sg->length, maybe we need more.
>  		 */
> -		nents = DIV_ROUND_UP(size, UINT_MAX);
> +		nents = DIV_ROUND_UP(size, MAX_ENT_SZ);
>  	}
>  
>  	return nents;

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
