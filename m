Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAlMKcXp2GnjjggAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 14:15:01 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B903D6917
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 14:15:01 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 449D4404B3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Apr 2026 12:15:00 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6B8BF400F6
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 12:14:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="mCekA/3q";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.42 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-670a48b01efso637744a12.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Apr 2026 05:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775823296; cv=none;
        d=google.com; s=arc-20240605;
        b=dHZuWuRJQ06OdwaJ7D34XJ+dr9tdwqVIhwZzX1OZa1FEjG4tWVCxDvZSAGIAuWsh3c
         SzwzOkIfmNmVKKxArNsTP40CqU5UZKx6v7BODZIftyF0foGWdLpWO/Y+ZKbAul12CbDT
         LI1miKRavz/VeJR/sZBnxbD5sUK00Lrsd+5xfwa5dl+8wW5w69OThrCqtTNSSJzJfMQK
         26HfQtxuIIrTKQi3qe5Fk3AETAO9IsTDhYNjWP2Zlf1YYMAVvF1Wollt5e4PDxUdlDpu
         qVP6ui4UqerjYbNxdmtgEG4d9J5dbcSnH+V++0tTnH1rDG6RNK/N9Ae3948u33l9XnsE
         3jKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7jIY/1++oar4yAYBTP2iQ0v5rOvIuL4pDsKGubLCfjE=;
        fh=qSVcLRk62ljEETxHToPx2ZnoVch8VD+/Mja3rxQ3F+U=;
        b=g4hbBtIVfwpdnDAJEPiPOHVBAj72mIKg1wWZmLogMpurgPJ7VWvziNa1waVhtCDBid
         /nD+Ux4zKJ6loxWqrRLOV796/iD70+FROvk3oHyR5C9rv//8O86wckegPjUn1e7LLsj2
         yTkGNwdoLR+jLOcDA1CXJQYqoHHC8W7Jq2Gxb9PEzYjwR7pXHuTsjC+m/PlG6cruxbOJ
         40aHEMFm7ZoQx4hL+hqPmTfHGJ11f8xjTbJvasUh/SVN6oJ0dCG6VxHL/HtqR6D3IxZk
         CR2DnXWpnZO2rgwqQI6NxQq7eP7oYI1SThqG1DqZo3hD2kMtySLpb0cYvp1PCMM70FDe
         uFDg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775823296; x=1776428096; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7jIY/1++oar4yAYBTP2iQ0v5rOvIuL4pDsKGubLCfjE=;
        b=mCekA/3qntZ/Exl+7egMsBjHYMfKQTrQhA+keT2gBcb99aaYkuRWu6rhPc8vdhRxaw
         2gZKpVDc8E51jy66StmmtQNqKzSqgiqZpO9gmlz5Fj21eYDzGdO/SkpEHXJ8QE14qWE9
         UfbzsW9a7YCHQ8o5fsycV8JZuCzvSfJ2EwiWdZBmSbNLzDlkzvSv7892qP+Nc7hhBKeV
         ORfMmUj//HCROXWea+PW9LErXmjKnsmGS2RkceFRPDwi+6EKcARHLBtb/6JG82u/Ses0
         sYfoaEr2+VtM1Z/0wKO1dPlpCH4gCbJmuco+WeotbfzwOAtxkM6DPBwCRTAvwm1IDOQk
         HOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775823296; x=1776428096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7jIY/1++oar4yAYBTP2iQ0v5rOvIuL4pDsKGubLCfjE=;
        b=UwDKFyld4zl8UE7Owq+D+zBHYmyJ7K8qOMW1Lp5k8KmiqQVW35uxNv+hjkbEP5H5u/
         J+pHkn95jyFYNJqvkO5rkyfmfs/KSWUWYdLcsM4Yxy5B9N2sBKH5CgFxign7EwHUsg5/
         bvTPl/YNWcBoGCBFQ2AIyp9mZIbf/AnS5tk7fmXpmWT9gk2YSfWW9AYNmzEE8omo+605
         Q1tCBqk+S5bvX6/QB8Jq2cEtgtOAVb6LvAcuCXX+z1llBPY/a8Nr61CbNrriIrY3fqRx
         G/tud+3h8y3Zer4rN+QIelQ/8wnSFWCG6nWNJjCpH+gzEhRrCQMW1dz27NZ1Bbzkk/7d
         F9MA==
X-Forwarded-Encrypted: i=1; AJvYcCUlAk7MW9/0S3BtYex3gfKmYT/P2AgWE1QFbEIY/A3+YHwHRZETXZz2hNCG2Ew4h6ooi8o1TSF5bVP5ffGO@lists.linaro.org
X-Gm-Message-State: AOJu0Yx1TUdLqMZbZZhAyzVKU+/Xwcp5k9PcPh3/R98A8cVk2VcfcAK7
	IycIaUfIW/44w+yP6zR9BdbogBz6QLjg9SIWYiPzPI+z9R3mzZDidIS0F25Sh8s8pFF1tWavRr4
	aVUgIoatZEhtU5VOv4WUJB0yuwDROvudjFHYppL5FZdu2
X-Gm-Gg: AeBDietHMrickXOAFocot/3Xuhn/TlY6yKSFKFMu69fKpNs0PZ1a8ZLHqsfS57uIm/P
	sMfeosGhM3cfIlBpWnRKRj7pTuCkXMo1zrMCYbpfDBnRS5ClL2AjprJ168W66yomzg6BHlyed9Z
	SjqIAQWZaO3cenm2IfiUf/lg7AHyuRC4Ri5tdD45dyI67JBce1lw1uLNM/MyZMcWjnxVSGNew5g
	qBbiuLjdovL2c1YaaYNVh4O35fvcFLfv7u11w8CUtTyVYe8ePCEABkGTU/1OlNBV5h2CWaEYI1l
	UDEfl8tqUpQVYmkm9y/ycpALQOpSV62Lk2rrDoE=
X-Received: by 2002:a17:907:e102:b0:b83:95c8:15d0 with SMTP id
 a640c23a62f3a-b9d7279bb78mr130310166b.52.1775823294707; Fri, 10 Apr 2026
 05:14:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260407092617.635223-1-jiri@resnulli.us>
In-Reply-To: <20260407092617.635223-1-jiri@resnulli.us>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Fri, 10 Apr 2026 17:44:43 +0530
X-Gm-Features: AQROBzADFveULcyZjtNgjI9rBi4aeeX0JzC3AEXYi9kt8DQW2Z9q1-iXZwCoelw
Message-ID: <CAO_48GFt21rv0PJd2Csa0O4OEpN053_p__4Zux+m7jQdHSagEg@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: ----
Message-ID-Hash: FW476T77VIS75WKU5VSWQNHAFIV7QIAY
X-Message-ID-Hash: FW476T77VIS75WKU5VSWQNHAFIV7QIAY
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: heaps: system: document system_cc_shared heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FW476T77VIS75WKU5VSWQNHAFIV7QIAY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	NEURAL_SPAM(0.00)[0.764];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-]
X-Rspamd-Queue-Id: 36B903D6917
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Jiri,

On Tue, 7 Apr 2026 at 14:56, Jiri Pirko <jiri@resnulli.us> wrote:
>
> From: Jiri Pirko <jiri@nvidia.com>
>
> Document the system_cc_shared dma-buf heap that was introduced
> recently. Describe its purpose, availability conditions and
> relation to confidential computing VMs.
>
> Signed-off-by: Jiri Pirko <jiri@nvidia.com>
> Reviewed-by: T.J.Mercier <tjmercier@google.com>

Thank you for the patch!

Marek: Since you're taking the dependent patches through your tree,
could you please use:
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>

and take this as well?

Thanks and Best regards,
Sumit.
> ---
>  Documentation/userspace-api/dma-buf-heaps.rst | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/Documentation/userspace-api/dma-buf-heaps.rst b/Documentation/userspace-api/dma-buf-heaps.rst
> index 05445c83b79a..f56b743cdb36 100644
> --- a/Documentation/userspace-api/dma-buf-heaps.rst
> +++ b/Documentation/userspace-api/dma-buf-heaps.rst
> @@ -16,6 +16,13 @@ following heaps:
>
>   - The ``system`` heap allocates virtually contiguous, cacheable, buffers.
>
> + - The ``system_cc_shared`` heap allocates virtually contiguous, cacheable,
> +   buffers using shared (decrypted) memory. It is only present on
> +   confidential computing (CoCo) VMs where memory encryption is active
> +   (e.g., AMD SEV, Intel TDX). The allocated pages have the encryption
> +   bit cleared, making them accessible for device DMA without TDISP
> +   support. On non-CoCo VM configurations, this heap is not registered.
> +
>   - The ``default_cma_region`` heap allocates physically contiguous,
>     cacheable, buffers. Only present if a CMA region is present. Such a
>     region is usually created either through the kernel commandline
> --
> 2.51.1
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
