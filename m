Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E5511493C8B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 16:05:25 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0851A3EE89
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jan 2022 15:05:25 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	by lists.linaro.org (Postfix) with ESMTPS id 47BD93ED41
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 15:05:22 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id q141-20020a1ca793000000b00347b48dfb53so6155281wme.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jan 2022 07:05:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=0odyDD4qZWEyKf4dgk5bsg3tKYSY9CGvoUStfcevylA=;
        b=KY4YCZwWueLtUID+/YuRziwAprnxroizrhhiLqgR+VJv0dvAqf6p/e/Z8+2hbD5td3
         M1RXz2Ulz5/UO405poQs0LC2mWECerbCYmm6/PclkyYapoYCKVCVsrH7+qHMc7mD7DNG
         yVv6KCpVaJQuyRwX173l73U/aTdl9LopqeRzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=0odyDD4qZWEyKf4dgk5bsg3tKYSY9CGvoUStfcevylA=;
        b=b5BjTApKNsURyENHwoXCBCx3M0fgFyIYHlxWmDoh8OLn0TW/gXAzlGZcPld05Rr1sM
         xqeIEblT16n5u1LWkiCjgXAzttzqIIZMm9aejvmK1Rh6H7NPMQphTsbgx7NPeUla5YkK
         a/krAS5TYzMjOwW1jMh5rNm5ykcJdjiPIVos4I63ZAiCAS7UtB4fFnz2DY+FUxjIld80
         kXaapTXdROrwnVqKyIKtdXWe/7o+H0N+l6w+xITgcO59GbW05YSv3iCEE5jYx7ad7WdT
         E8XvV7F4TJekOF3pnzYKaJGSdTnqsjZjtTIuLYJEBFAqCAY7fygs1Ttt2oPkpGPQqgy1
         6hvg==
X-Gm-Message-State: AOAM533NXkl2fKAM6vqU9LbjwjhVRoyGw89K8FncMB0dndlYVmc78Wfg
	R2s/Cj3BUNmT+8V93xpr5cho3g==
X-Google-Smtp-Source: ABdhPJxqxOTFLl5T1cf1q2Ex/gbOeL3/4WLRyt3JAUtwMEe4sBmurRyS45VDAxAFnc6SDjv5q4TcRQ==
X-Received: by 2002:adf:fec2:: with SMTP id q2mr29547534wrs.546.1642604721320;
        Wed, 19 Jan 2022 07:05:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id g17sm7645503wmq.9.2022.01.19.07.05.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jan 2022 07:05:20 -0800 (PST)
Date: Wed, 19 Jan 2022 16:05:18 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Weizhao Ouyang <o451686892@gmail.com>
Message-ID: <YegormDmEewox0MF@phenom.ffwll.local>
Mail-Followup-To: Weizhao Ouyang <o451686892@gmail.com>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@kernel.org>,
	Brian Starkey <Brian.Starkey@arm.com>,
	John Stultz <john.stultz@linaro.org>, christian.koenig@amd.com,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <20220104073545.124244-1-o451686892@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220104073545.124244-1-o451686892@gmail.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: FKPV3HL2QO4NKWJ4XQIBYZQTMRHOKLUM
X-Message-ID-Hash: FKPV3HL2QO4NKWJ4XQIBYZQTMRHOKLUM
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@kernel.org>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <john.stultz@linaro.org>, christian.koenig@amd.com, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Fix mutex locking section
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FKPV3HL2QO4NKWJ4XQIBYZQTMRHOKLUM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, Jan 04, 2022 at 03:35:45PM +0800, Weizhao Ouyang wrote:
> Fix cma_heap_buffer mutex locking critical section to protect vmap_cnt
> and vaddr.
> 
> Fixes: a5d2d29e24be ("dma-buf: heaps: Move heap-helper logic into the cma_heap implementation")
> Signed-off-by: Weizhao Ouyang <o451686892@gmail.com>
> ---
>  drivers/dma-buf/heaps/cma_heap.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
> index 0c05b79870f9..83f02bd51dda 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -124,10 +124,11 @@ static int cma_heap_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
>  	struct cma_heap_buffer *buffer = dmabuf->priv;
>  	struct dma_heap_attachment *a;
>  
> +	mutex_lock(&buffer->lock);
> +
>  	if (buffer->vmap_cnt)
>  		invalidate_kernel_vmap_range(buffer->vaddr, buffer->len);

Since this creates nesting with mm/, but optionally I think it'd be good
to prime lockdep so it knows about this. See e.g. dma_resv_lockdep() in
dma-resv.c, except I don't know offhand what the right lock for
invalidate_kernel_vmap_range is.
-Daniel


>  
> -	mutex_lock(&buffer->lock);
>  	list_for_each_entry(a, &buffer->attachments, list) {
>  		if (!a->mapped)
>  			continue;
> @@ -144,10 +145,11 @@ static int cma_heap_dma_buf_end_cpu_access(struct dma_buf *dmabuf,
>  	struct cma_heap_buffer *buffer = dmabuf->priv;
>  	struct dma_heap_attachment *a;
>  
> +	mutex_lock(&buffer->lock);
> +
>  	if (buffer->vmap_cnt)
>  		flush_kernel_vmap_range(buffer->vaddr, buffer->len);
>  
> -	mutex_lock(&buffer->lock);
>  	list_for_each_entry(a, &buffer->attachments, list) {
>  		if (!a->mapped)
>  			continue;
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
