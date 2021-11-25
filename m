Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA8045DBF4
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 15:08:16 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 23ED962173
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Nov 2021 14:08:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 31F2F60F1E; Thu, 25 Nov 2021 14:08:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ABCF460F1E;
	Thu, 25 Nov 2021 14:08:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7CAEA60B92
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 14:08:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 782D560F1E; Thu, 25 Nov 2021 14:08:09 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by lists.linaro.org (Postfix) with ESMTP id 5FF1060B92
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Nov 2021 14:08:07 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 26E6A1FB;
 Thu, 25 Nov 2021 06:08:07 -0800 (PST)
Received: from [10.57.56.56] (unknown [10.57.56.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 777393F66F;
 Thu, 25 Nov 2021 06:08:04 -0800 (PST)
Message-ID: <eb6cc56d-cbe0-73d5-d4f5-0aa2b76272a4@arm.com>
Date: Thu, 25 Nov 2021 14:08:00 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-GB
To: guangming.cao@mediatek.com
References: <85eb9053-0ce4-2514-06dc-58b8910dc5f7@arm.com>
 <20211125134951.62002-1-guangming.cao@mediatek.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211125134951.62002-1-guangming.cao@mediatek.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma_heap: use for_each_sgtable_sg in
 sg_table release flow
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org, lmark@codeaurora.org,
 benjamin.gaignard@linaro.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, labbott@redhat.com, Brian.Starkey@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On 2021-11-25 13:49, guangming.cao@mediatek.com wrote:
> From: Guangming <Guangming.Cao@mediatek.com>
> 
> Use (for_each_sgtable_sg) rather than (for_each_sg) to traverse
> sg_table to free sg_table.
> Use (for_each_sg) maybe will casuse some pages can't be freed
> when send wrong nents number.

It's still worth spelling out that this is fixing a bug where the 
current code should have been using table->orig_nents - it's just that 
switching to the sgtable helper is the best way to make the fix, since 
it almost entirely removes the possibility of making that (previously 
rather common) mistake.

If it helps, for the change itself:

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Thanks,
Robin.

> Signed-off-by: Guangming <Guangming.Cao@mediatek.com>
> ---
>   drivers/dma-buf/heaps/system_heap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/heaps/system_heap.c b/drivers/dma-buf/heaps/system_heap.c
> index 23a7e74ef966..8660508f3684 100644
> --- a/drivers/dma-buf/heaps/system_heap.c
> +++ b/drivers/dma-buf/heaps/system_heap.c
> @@ -289,7 +289,7 @@ static void system_heap_dma_buf_release(struct dma_buf *dmabuf)
>   	int i;
>   
>   	table = &buffer->sg_table;
> -	for_each_sg(table->sgl, sg, table->nents, i) {
> +	for_each_sgtable_sg(table, sg, i) {
>   		struct page *page = sg_page(sg);
>   
>   		__free_pages(page, compound_order(page));
> 
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
