Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGwnCwHHHWrgdwkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 19:53:05 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 7607E62383D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 01 Jun 2026 19:53:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 43C2F40981
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  1 Jun 2026 17:53:02 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by lists.linaro.org (Postfix) with ESMTPS id E5EEB40976
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 17:52:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=hGUoT9Om;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.222.181 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-9155183b42cso195004485a.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 10:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1780336373; x=1780941173; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ajzqlQYEAeycmyed8yu6upDmFOo140vP8s+rqI6MeM4=;
        b=hGUoT9OmXICs7Uz/JOo3firAJSW8pfYd5Qv9x2f0Z979XWXAvnXFxDsXUzjrXTk/4s
         gPUeOjOJfgnk6/XQ3In5OW712+bMwTImEYdjj6MFLggXXkw8NgR5xNEMxRLnV9mD6UqR
         o3PNl/bKQ4WF2CiWmoUlO06eKcDzA4t7Wq1mHy1pW4ej+1y44FAKuHeCfh/dHUlWT0hJ
         W9ldatubD2fQKYh2a9yn+mH+Kmlcu/nhj23/LpkKrZsWqXMUavNygTVdGV4RPsDlcCVa
         x/FS6uVntqznNcX2HVV9oruduGIvIi66G/xPNaT+5xEsWN0xlNFKyGsntR61grolENZO
         UNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780336373; x=1780941173;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ajzqlQYEAeycmyed8yu6upDmFOo140vP8s+rqI6MeM4=;
        b=l52MVDEHGLTD/5Z46ZOkvNiDprhrWHsp2+486E7jR9WohUIw7f01fL5tia4srEOPjZ
         fB6D9cVoakKlUrip6+oTa3g0+Ao6M4SnQ4ks9koMcAvEnxxcMi/OcnM1xivkFuzfy8N8
         upgnCJ6udnP6dHA/oMaioKNUDLA9xFMfpMSaCnM85ERY7S0ffWXIFVh5aTRrN1HV0Eq9
         eDxpEBkg2Yvv401TfipqFGT89hmAcBw8tc4HAGr9F/YFtsi7k/kazYPED/9iJ+fGKJlJ
         cLITXnj8jP5IvAkI5LKBkSatnHFRM1Yas/qLuE/zNKvEcv4YlVh4gArIFXonsmCwQf6P
         nheg==
X-Forwarded-Encrypted: i=1; AFNElJ89EQvWVky5s3fTq1DM3DgAK4viOE+/0yw7p0Bv9w+jw9TYJevexjdd2bGZK9m0YsL9AAF7Fu8dTuK2A1XW@lists.linaro.org
X-Gm-Message-State: AOJu0YwP26rNbaOc7KRK/1IiIm/cAY/iS1R0/E178rR7YPoMsa7ex4sO
	UUrac5CqIZy21FasptswKZQnMxLwXgpVwsmwXW7RaTRX7BqLtsOyBcUpv1W7t03fsXo=
X-Gm-Gg: Acq92OGXFEmcNQifVug1r/up4EXY/eAwnp1eRgBeoQQ/URYqYAUJyMEvyeAOQptYLNh
	IqPg61QlZnlSuWPK91ps9HFM17wfbJkQZmKl2JiofFKM02hM7j05+A7O+XG009ITL/e0LkpSUwG
	r7pt2KWqBx/LK9mOxD49r1D9N0aYMCD4iLL7xEM8/vpGAWPL+JI9aR++s5Gh30zW5C9CLnPvcy0
	uz+Y+s0ltAHkORfiWMrU/poz/8+hDux+7Svozzuy7ikcGCdsjuTFZJJbUyIb+SiTHYuzWpkzprd
	iRzFJGTuyPcyBra//sKr7AxZdGtePUXjM4ZwA9fo5Ui/MjWHTn01IvFcQde54C90S5AVgdEmXOq
	8truoiaAfB/azISMygKMOQWtgtK6/YxqfkWSRkSABRyJa9Tion5dAPGpvE3W4Pj3MLUqT+VUDx8
	9p6VWPbXaRmXnXpV+NynvY1CbT7u3iuwm9xNecYY8zCFUtB+OQeLaCIWYZi4uLyhG8/mgSl1g7i
	6qqqPSvqaoJKg0P
X-Received: by 2002:a05:620a:2202:b0:915:4c9b:4120 with SMTP id af79cd13be357-91578006ac3mr63386685a.37.1780336373342;
        Mon, 01 Jun 2026 10:52:53 -0700 (PDT)
Received: from ziepe.ca (crbknf0213w-47-54-130-67.pppoe-dynamic.high-speed.nl.bellaliant.net. [47.54.130.67])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9153265126asm1064337685a.45.2026.06.01.10.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 10:52:52 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1wU6om-000000027gs-1lLx;
	Mon, 01 Jun 2026 14:52:52 -0300
Date: Mon, 1 Jun 2026 14:52:52 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: David Hu <xuehaohu@google.com>
Message-ID: <20260601175252.GD2487554@ziepe.ca>
References: <20260528191658.2506362-1-xuehaohu@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260528191658.2506362-1-xuehaohu@google.com>
X-Spamd-Bar: ---
Message-ID-Hash: 6V25DUOHVFRTW3HLOT7P7JG54C23J2AQ
X-Message-ID-Hash: 6V25DUOHVFRTW3HLOT7P7JG54C23J2AQ
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Nicolin Chen <nicolinc@nvidia.com>, Leon Romanovsky <leon@kernel.org>, Kevin Tian <kevin.tian@intel.com>, Ankit Agrawal <ankita@nvidia.com>, Alex Williamson <alex@shazbot.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, jmoroni@google.com, praan@google.com, stable@vger.kernel.org, iommu@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] dma-buf: Fix silent overflow for phys vec to sgt
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6V25DUOHVFRTW3HLOT7P7JG54C23J2AQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.814];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ziepe.ca:mid,linaro.org:email]
X-Rspamd-Queue-Id: 7607E62383D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 28, 2026 at 07:16:58PM +0000, David Hu wrote:
> diff --git a/drivers/dma-buf/dma-buf-mapping.c b/drivers/dma-buf/dma-buf-mapping.c
> index 794acff2546a..1aabc0ee70bb 100644
> --- a/drivers/dma-buf/dma-buf-mapping.c
> +++ b/drivers/dma-buf/dma-buf-mapping.c
> @@ -10,7 +10,7 @@ static struct scatterlist *fill_sg_entry(struct scatterlist *sgl, size_t length,
>  					 dma_addr_t addr)
>  {
>  	unsigned int len, nents;
> -	int i;
> +	unsigned int i;
>  
>  	nents = DIV_ROUND_UP(length, UINT_MAX);
>  	for (i = 0; i < nents; i++) {
> @@ -36,7 +36,7 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
>  				  struct phys_vec *phys_vec, size_t nr_ranges,
>  				  size_t size)
>  {
> -	unsigned int nents = 0;
> +	size_t nents = 0;
>  	size_t i;
>  
>  	if (!state || !dma_use_iova(state)) {
> @@ -51,6 +51,9 @@ static unsigned int calc_sg_nents(struct dma_iova_state *state,
>  		nents = DIV_ROUND_UP(size, UINT_MAX);
>  	}
>  
> +	if (WARN_ON_ONCE(nents > UINT_MAX))
> +		return 0;

The WARN seems a bit much, but if you have it then it should be
arranged so the caller ultimately fails.

But otherwise I think correcting the types is a good idea

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
