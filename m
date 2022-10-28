Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB67613990
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Oct 2022 16:01:14 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 513083F5C3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 31 Oct 2022 15:01:13 +0000 (UTC)
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
	by lists.linaro.org (Postfix) with ESMTPS id 47F1E3ED39
	for <linaro-mm-sig@lists.linaro.org>; Fri, 28 Oct 2022 13:31:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=quicinc.com header.s=qcdkim header.b=RWqsj6gf;
	spf=pass (lists.linaro.org: domain of quic_mojha@quicinc.com designates 199.106.114.38 as permitted sender) smtp.mailfrom=quic_mojha@quicinc.com;
	dmarc=pass (policy=none) header.from=quicinc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1666963901; x=1698499901;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=YBApksLTn7y+gqO3vNjJgwg8KdCjEPbw9x496MPqxv8=;
  b=RWqsj6gf1vne0YGVG9vcwzHGsnBFg3JON9wsjdehfwlzqpvgXZ6B0bOS
   TsBqhSDEqqY1L7PMQOYip5RUVR+mqfhaWuOZBimZRHNmN9m7i8MMsY7UK
   YtebVgue50nk1cwifK06ecr/iY6rYrdELj2tcx4SoLVcWa4bilarVll3+
   w=;
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 28 Oct 2022 06:31:39 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.45.79.139])
  by ironmsg-SD-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2022 06:31:39 -0700
Received: from [10.216.13.23] (10.80.80.8) by nasanex01c.na.qualcomm.com
 (10.45.79.139) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.29; Fri, 28 Oct
 2022 06:31:34 -0700
Message-ID: <7cdabb64-f165-03be-4121-876736174a34@quicinc.com>
Date: Fri, 28 Oct 2022 19:01:24 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>, Sumit Semwal
	<sumit.semwal@linaro.org>, Benjamin Gaignard
	<benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura
 Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John
 Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=c3=b6nig?=
	<christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>
References: <20221028065533.23856-1-mark-pk.tsai@mediatek.com>
From: Mukesh Ojha <quic_mojha@quicinc.com>
In-Reply-To: <20221028065533.23856-1-mark-pk.tsai@mediatek.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --------
X-Rspamd-Queue-Id: 47F1E3ED39
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[quicinc.com,none];
	RCVD_IN_DNSWL_HI(-0.50)[199.106.114.38:from];
	R_SPF_ALLOW(-0.20)[+ip4:199.106.114.38];
	R_DKIM_ALLOW(-0.20)[quicinc.com:s=qcdkim];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[mediatek.com,linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:11030, ipnet:199.106.96.0/19, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[quicinc.com:+];
	FROM_HAS_DN(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[];
	ARC_NA(0.00)[]
X-MailFrom: quic_mojha@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7AVVETGGPOA6KIL66F7HPVUCC2NOKP2Q
X-Message-ID-Hash: 7AVVETGGPOA6KIL66F7HPVUCC2NOKP2Q
X-Mailman-Approved-At: Mon, 31 Oct 2022 15:00:57 +0000
CC: yj.chiang@mediatek.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] dma-buf: cma_heap: Remove duplicated 'by' in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7AVVETGGPOA6KIL66F7HPVUCC2NOKP2Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

On 10/28/2022 12:25 PM, Mark-PK Tsai wrote:
> Remove duplicated 'by' from comment in cma_heap_allocate().
> 
> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
> ---
>   drivers/dma-buf/heaps/cma_heap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma_heap.c
> index 28fb04eccdd0..cd386ce639f3 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -316,7 +316,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_heap *heap,
>   			kunmap_atomic(vaddr);
>   			/*
>   			 * Avoid wasting time zeroing memory if the process
> -			 * has been killed by by SIGKILL
> +			 * has been killed by SIGKILL
>   			 */
>   			if (fatal_signal_pending(current))
>   				goto free_cma;


LGTM.

Reviewed-By: Mukesh Ojha <quic_mojha@quicinc.com>

-Mukesh
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
