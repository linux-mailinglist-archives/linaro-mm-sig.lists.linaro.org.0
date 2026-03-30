Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CxAAe9HymkQ7QUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 11:52:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5417D3589A3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 11:52:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3858540146
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 30 Mar 2026 09:52:45 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by lists.linaro.org (Postfix) with ESMTPS id 5F1FF3F814
	for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 09:52:41 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="Yatl/DKl";
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-6618bc129acso6190297a12.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 30 Mar 2026 02:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774864360; x=1775469160; darn=lists.linaro.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cn7BPueizG0aOaXVcVQhQ6g9SE/PtvAJOzX0fQc+gbI=;
        b=Yatl/DKlzF7n8UkbcUmqUYNgo21wiK1bH7E3rSyBuY9aaNj+entT4a33eZtdHFZIgn
         zdZH6VV31TU2GbKM5iubDe5EzXwwGfR79iVmmkwPsAGrYeL0pArxrKf8KaztQK3SupxU
         zxXzc6NJczb46tio9oDzVwr0I0StrNuu617a4FxZkGhmJa2/v1wNMhaF2DaRVn9zk8fK
         YpiOE1aFKr5J2qcUN/2O7l4i8KoWXDPlirXa9eimeM+uQHWySqOeY46zpOP1Z5RJ91Om
         Z23CvyUPfVMMpoagbXk232/RZAH5cGYvPzbPICynjLd7plOK8B5fIH8JOZIZ6I6EPOIW
         931A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774864360; x=1775469160;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cn7BPueizG0aOaXVcVQhQ6g9SE/PtvAJOzX0fQc+gbI=;
        b=i8f1TEsTxh5PLkV7OEUqnX8CZyFr3SrwV+1QpfNXgBrsJO8erPlGFKq6AeneWVekyH
         2qDjbKx8pQuUjofUSi/p6c9SUF1jX/70GSDShrbk78rdbnN3xwTd9JJZGLaL4j+jzov8
         JBiiL+xLfrtPM/Z2Cony/unSqZH0O//qsKzqaf9Wc7+7fjegemM63BWd4xS+l7nXMPWg
         E1h8lR4kehE5i/enbIUash2TWWSINlon9wuYAv/TsEUWVVFYetj+IWNx8Hwvh4PynKTj
         IYSzM7Az+1NSr9l88YvXKUPXDbYftmn8Hp/dg6hNLbBVHnjGNVPF674PsLddXHMaeBy+
         Ms0A==
X-Forwarded-Encrypted: i=1; AJvYcCUyKqAPAg439foQiqYSm7GRpNSI95o0zpblLxFpjpu+jxPPyL18N1QkfyUheZzTiqW25uDtwNrB+mEgVmD3@lists.linaro.org
X-Gm-Message-State: AOJu0Yxw8O/dTpeZ8PmDoAKZWnjpZGoUVHYGOVgCVH7RsCJEXg8uxa8o
	JWfKsWvO6azB9QYJx3MOGVlWT931RiyuOscVuZXTgrk/HosEs/EKvrLi
X-Gm-Gg: ATEYQzzyqmMsWHkpMqQiNhjcu8kiQEULxZ64WdH2pVUBjnzQXtHMqMC410ynPxSCxkY
	L9UGJu2sbB1zUfLrcFqbcnIR90qiQ/zw3CtXUus4f1nJsGJn4lovthx/DccMKl6ekmuX8+gubuS
	eIc1xH8qcsBoMTftneNV6lMkSGwvC/Eb52cVaVl/wjJ5kUnJpIRdFFUB29qXI8cj1//ZCSuobk6
	zNJG5S6WDgL58l+IBqymHJpxF89q6LCdAmBDTlSsBJpVOKrLQJHStjw7ixgRaRTXfz/gOwB2uzc
	MRi0UjnmyrhssRPktZHEE77Tk5Rk6G9Gn7+MGfPdLKvXVaQLLw7LYPjl8ErIMkWHayAC6RL8wlo
	Y+yHrAryZVpkjkQNT09A6lkwbw78vWgiHRfNDvJ4QUat9pqFHudfI59QPnjxpHBO959C73KYG7z
	Ts4gdAzqYLDCpfOIPtmIahbnO9CLkU5OdEF9QrAWcpUTwT
X-Received: by 2002:a05:6402:528f:b0:66c:12ad:d769 with SMTP id 4fb4d7f45d1cf-66c12add9fbmr216280a12.7.1774864360007;
        Mon, 30 Mar 2026 02:52:40 -0700 (PDT)
Received: from [192.168.178.84] ([134.19.50.110])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-66b75ba970esm2306523a12.19.2026.03.30.02.52.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2026 02:52:39 -0700 (PDT)
Message-ID: <45754304-12c4-44b2-965c-fee97f839808@gmail.com>
Date: Mon, 30 Mar 2026 11:52:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Li Ming <ming.li@zohomail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
References: <20260327-fix_dma_fence_chain_find_seqno-v1-1-60e80bfb43c8@zohomail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
In-Reply-To: <20260327-fix_dma_fence_chain_find_seqno-v1-1-60e80bfb43c8@zohomail.com>
X-Spamd-Bar: ----
Message-ID-Hash: GLJ5WIPSXIVD3YOZ23UH7HO6YI4GGO3K
X-Message-ID-Hash: GLJ5WIPSXIVD3YOZ23UH7HO6YI4GGO3K
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-fence: Dereference correct dma_fence in dma_fence_chain_find_seqno()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GLJ5WIPSXIVD3YOZ23UH7HO6YI4GGO3K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.547];
	FROM_NEQ_ENVFROM(0.00)[ckoenigleichtzumerken@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,zohomail.com:email]
X-Rspamd-Queue-Id: 5417D3589A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/27/26 15:33, Li Ming wrote:
> dma_fence_chain_find_seqno() uses dma_fence_chain_for_each() to walk a
> given dma_fence_chain. dma_fence_chain_for_each() always holds a
> reference for the current fence during iteration. The reference must
> be dropped after breaking out. Instead of dereferencing the last fence
> as intended, dma_fence_chain_find_seqno() incorrectly dereferences the
> first fence in the chain.

Well once more: Absolutely clear NAK and please search the mailing list for similar changes before you send a patch out.

The existing code is perfectly correct and I can't count how often I had to reject that patch.

I think the functionality is obvious but it looks like we really need to add a comment here.

Regards,
Christian.

> 
> Fixes: 7bf60c52e093 ("dma-buf: add new dma_fence_chain container v7")
> Signed-off-by: Li Ming <ming.li@zohomail.com>
> ---
>  drivers/dma-buf/dma-fence-chain.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma-buf/dma-fence-chain.c b/drivers/dma-buf/dma-fence-chain.c
> index a8a90acf4f34..71fa173aef13 100644
> --- a/drivers/dma-buf/dma-fence-chain.c
> +++ b/drivers/dma-buf/dma-fence-chain.c
> @@ -103,7 +103,7 @@ int dma_fence_chain_find_seqno(struct dma_fence **pfence, uint64_t seqno)
>                     to_dma_fence_chain(*pfence)->prev_seqno < seqno)
>                         break;
>         }
> -       dma_fence_put(&chain->base);
> +       dma_fence_put(*pfence);
> 
>         return 0;
>  }
> 
> ---
> base-commit: c369299895a591d96745d6492d4888259b004a9e
> change-id: 20260327-fix_dma_fence_chain_find_seqno-7adea64efe01
> 
> Best regards,
> --
> Li Ming <ming.li@zohomail.com>
> 

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
