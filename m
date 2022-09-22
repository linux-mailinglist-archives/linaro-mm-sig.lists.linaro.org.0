Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E1C604DD7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 18:53:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB8803F1C3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Oct 2022 16:53:57 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id C99653F49E
	for <linaro-mm-sig@lists.linaro.org>; Thu, 22 Sep 2022 19:40:42 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 585666115C;
	Thu, 22 Sep 2022 19:40:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45829C433C1;
	Thu, 22 Sep 2022 19:40:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663875641;
	bh=Iu+ioVZAl++oTxE1oI47t/6oQuwifWn8lmpY1yCr8J4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YC8ixN8EP0aZI0e+nDZs91siEij37VrKEmFWG3Ty2t8usgwjVxksauo5Og7qifkq5
	 ESf2BqmXtU9USNgh+H2YKJEXRWpyu7EDcgicu3AJOn2B/4WayyL94dp8xbokjZvmw2
	 M56qmrIx+uvo2sUUrQmzfQ5/ucT/pOiWMPHGNcLJ6IIzRCYzVRcutddcWgSvzdbhZM
	 fcZkJSFboZpZl7fu6RLNBgaLlv3gbFkR4ETLqK750bOZ4J5pst6/eAIZH31PhhVZLn
	 QMHkEcQOXS8pXwYt/LtILex4KMGS/VXDhD7XC9erQbOO/ciNySxRd4PP7XyTR4i5Zs
	 1sdrT7lGqR5Mw==
Date: Thu, 22 Sep 2022 12:40:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20220922124039.688be0b8@kernel.org>
In-Reply-To: <20220922031013.2150682-3-keescook@chromium.org>
References: <20220922031013.2150682-1-keescook@chromium.org>
	<20220922031013.2150682-3-keescook@chromium.org>
MIME-Version: 1.0
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: AY5KCBLEDHJ2IQHE24P75L2YDB3SQQYG
X-Message-ID-Hash: AY5KCBLEDHJ2IQHE24P75L2YDB3SQQYG
X-Mailman-Approved-At: Wed, 19 Oct 2022 16:52:34 +0000
CC: Vlastimil Babka <vbabka@suse.cz>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nick Desaulniers <ndesaulniers@google.com>, David Rientjes <rientjes@google.com>, Pekka Enberg <penberg@kernel.org>, Joonsoo Kim <iamjoonsoo.kim@lge.com>, Andrew Morton <akpm@linux-foundation.org>, Alex Elder <elder@kernel.org>, Josef Bacik <josef@toxicpanda.com>, David Sterba <dsterba@suse.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, Daniel Micay <danielmicay@gmail.com>, Yonghong Song <yhs@fb.com>, Marco Elver <elver@google.com>, Miguel Ojeda <ojeda@kernel.org>, Jacob Shin <jacob.shin@amd.com>, linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-btrfs@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.o
 rg, linux-fsdevel@vger.kernel.org, intel-wired-lan@lists.osuosl.org, dev@openvswitch.org, x86@kernel.org, linux-wireless@vger.kernel.org, llvm@lists.linux.dev, linux-hardening@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 02/12] skbuff: Proactively round up to kmalloc bucket size
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AY5KCBLEDHJ2IQHE24P75L2YDB3SQQYG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 21 Sep 2022 20:10:03 -0700 Kees Cook wrote:
> diff --git a/net/core/skbuff.c b/net/core/skbuff.c
> index 974bbbbe7138..4fe4c7544c1d 100644
> --- a/net/core/skbuff.c
> +++ b/net/core/skbuff.c
> @@ -427,14 +427,15 @@ struct sk_buff *__alloc_skb(unsigned int size, gfp_t gfp_mask,
>  	 */
>  	size = SKB_DATA_ALIGN(size);
>  	size += SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
> -	data = kmalloc_reserve(size, gfp_mask, node, &pfmemalloc);
> -	if (unlikely(!data))
> -		goto nodata;
> -	/* kmalloc(size) might give us more room than requested.
> +	/* kmalloc(size) might give us more room than requested, so
> +	 * allocate the true bucket size up front.
>  	 * Put skb_shared_info exactly at the end of allocated zone,
>  	 * to allow max possible filling before reallocation.
>  	 */
> -	osize = ksize(data);
> +	osize = kmalloc_size_roundup(size);
> +	data = kmalloc_reserve(osize, gfp_mask, node, &pfmemalloc);
> +	if (unlikely(!data))
> +		goto nodata;
>  	size = SKB_WITH_OVERHEAD(osize);
>  	prefetchw(data + size);

I'd rename osize here to alloc_size for consistency but one could 
argue either way :)

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
