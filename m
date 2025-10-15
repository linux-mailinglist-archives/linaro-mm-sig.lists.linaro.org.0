Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A86EBE0C6C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 23:16:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEEF8454CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 15 Oct 2025 21:16:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by lists.linaro.org (Postfix) with ESMTPS id 0615D44AB8
	for <linaro-mm-sig@lists.linaro.org>; Wed, 15 Oct 2025 21:15:58 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=bombadil.20210309 header.b=RnkZIvLL;
	dmarc=none;
	spf=none (lists.linaro.org: domain of rdunlap@infradead.org has no SPF policy when checking 198.137.202.133) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=OsIzzSgIyHHVfEtzgbmUMNVpppKlYHA6ALdxJJpPxbY=; b=RnkZIvLLV4lmf3DXRCNoXIhmjP
	a+VRgIg4zXKorvo7Li9rE3AVOS5LFIroAKhqNo1zTZKIcy0gBfXC2qGHsf8QPgTi23EbPWzqCmbim
	zxbvgmYhjHkYtKz5EIWJpHf9HrdhTSIF8Fh4nw1EaNkW3rYNDnYZFsA75kfNvdqN+yB+XK//X6Qy/
	ZkZ7y67qSa99p4mBf3CFAXJAP2HxA4f0I+axsl7azxkzJWbl3xVIMn0DpXYtnfCa1BFdKD5dZS1L9
	9NZhipo7ZVdvyf8ClkucidLNjbW78l295FdmRpwO8J/cSZlLefBlLkMhyZSnXsw4TNKHR8wWnxyJK
	KGgurUqA==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v98qg-00000002vdI-3oTQ;
	Wed, 15 Oct 2025 21:15:54 +0000
Message-ID: <0389eec6-a2f3-44f2-9101-c4794c898f96@infradead.org>
Date: Wed, 15 Oct 2025 14:15:54 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kriish Sharma <kriish.sharma2006@gmail.com>, sumit.semwal@linaro.org,
 benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com,
 tjmercier@google.com, corbet@lwn.net
References: <20251015183402.1649988-1-kriish.sharma2006@gmail.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20251015183402.1649988-1-kriish.sharma2006@gmail.com>
X-Rspamd-Queue-Id: 0615D44AB8
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[infradead.org:s=bombadil.20210309];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:7247, ipnet:198.137.202.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org,collabora.com,arm.com,google.com,lwn.net];
	R_SPF_NA(0.00)[no SPF record];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[infradead.org];
	DKIM_TRACE(0.00)[infradead.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: PMGCA7FSQQLGWQCAX7FNOXRO5ZS4I7NS
X-Message-ID-Hash: PMGCA7FSQQLGWQCAX7FNOXRO5ZS4I7NS
X-MailFrom: rdunlap@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] htmldocs: userspace-api/dma-buf-heaps.rst: fix block quote warning
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PMGCA7FSQQLGWQCAX7FNOXRO5ZS4I7NS/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



On 10/15/25 11:34 AM, Kriish Sharma wrote:
> Fix the following warning encountered when running `make htmldocs`:
> 
>   Documentation/userspace-api/dma-buf-heaps.rst:29: WARNING: Block quote ends without a blank line; unexpected unindent
> 
> Added a blank line before the "Naming Convention" heading to comply with reST
> 
> Fixes: 1fdbb3ff1233 ("Add linux-next specific files for 20251015")
> Signed-off-by: Kriish Sharma <kriish.sharma2006@gmail.com>

Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>

Thanks.

> ---
>  Documentation/userspace-api/dma-buf-heaps.rst | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
> index a0979440d2a4..c0035dc257e0 100644
> --- a/Documentation/userspace-api/dma-buf-heaps.rst
> +++ b/Documentation/userspace-api/dma-buf-heaps.rst
> @@ -26,6 +26,7 @@ following heaps:
>     ``DMABUF_HEAPS_CMA_LEGACY`` Kconfig option is set, a duplicate node is
>     created following legacy naming conventions; the legacy name might be
>     ``reserved``, ``linux,cma``, or ``default-pool``.
> +
>  Naming Convention
>  =================
>  

-- 
~Randy
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
