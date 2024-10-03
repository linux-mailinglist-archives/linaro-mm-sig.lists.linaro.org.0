Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A91AC98E9EB
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Oct 2024 08:58:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57A2544AEC
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Oct 2024 06:58:03 +0000 (UTC)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by lists.linaro.org (Postfix) with ESMTPS id B703740BEB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Oct 2024 06:57:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=PRHwl3JC;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.54 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5c87853df28so704228a12.3
        for <linaro-mm-sig@lists.linaro.org>; Wed, 02 Oct 2024 23:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727938666; x=1728543466; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JGecQKR7ZoIYH4vaHNJNV/6/ajVJtBZfvfEOkIG81WE=;
        b=PRHwl3JCtOlWV1fi/rqjntf1nx0+tMROixZZ2JG7stYcS7Vda3HPfsx3YIQJmRNJvx
         bqv3kTWSDsYQ1DKvr2I2BrnkOBmQEQf/gEbEyiSyT2E/8teuPGk2gwsyLMVXRcTTaAoX
         eNW6DAmJo6NQBoliNqjiFWBSjoNp0EDp5gZmhvhQoMMS8i9HX1ukKeH4fRZ7iVJb4gES
         qN8x6ipwmS5Fe1J4ucz/AkqN8vb0OTlnHJcn2aciOWGzxn4HBElDEEM5YElWZWRpfJet
         Blajjwl1TX0HDHXqwHjbyh1fsJ1hUOR4ksfuR44BW2bOSxZcQY4EQvZpPgt71KMkhWYX
         CG5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727938666; x=1728543466;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JGecQKR7ZoIYH4vaHNJNV/6/ajVJtBZfvfEOkIG81WE=;
        b=AXRDIRZo1UludOXuiiQZJXxSfs6UH5nDrxl26lrdyg8v1itFjyCHy83p9YxAPNz9yG
         Ssf9r81wsXoTEkva0GzdNp7Z6IASAhnW6rP1QsvDBZZk/YOhB6pCfpB3oihJym83++HO
         2272W7SV9nhi1jtP0MOElWb1NoM4+mcwM+DTz76/I1dZNcymbGv5tQYVkETvSrWl2L5t
         nlJHfXIVagTd/T9iNSGV9vu6a6/TjAGQ2HkWPEkyDRv9zrlyXeKJSukKfaqNrrlhOD5c
         z3Sk2Opx3H/bJOj89V7hhkLcwO6ip3msxV2ESl+8JiPPjYu6lBscAQslPV4h1Mv0sm2C
         loCA==
X-Forwarded-Encrypted: i=1; AJvYcCURrZk0/VCVs5C9igYkX42LDXpCqlq1amnkmb7w5iLhR2a77x0UMkjfy8MSDS4HxdGAhba9QtLzzwdymqWX@lists.linaro.org
X-Gm-Message-State: AOJu0YwZYGeX6Ox2chMOIGSFLrjFo3n4v/UtDx00ptL/cStiwfhtTfTN
	vVuqk4sQuQ/TNsO7TPo8MIgi4DA5xI12clAIUYaYmHTZSF2FfDQMbo2DKKmTo880CrGO8zVErDH
	zsKFct1+o/mR7J7qY1lbyUgWbCOVDALfFphlB/89+rSKsz6CEWsI=
X-Google-Smtp-Source: AGHT+IH4QGNNGP1NJcTcHJDWHlXA92zW2AJIpIf/rMuRfbu+fTqO/rDiEJy3cDA2artuxJKreIShbOnY5J0XVGAbl6I=
X-Received: by 2002:a05:6402:5108:b0:5c2:4cbe:ac1c with SMTP id
 4fb4d7f45d1cf-5c8b18eed8fmr3645435a12.4.1727938665602; Wed, 02 Oct 2024
 23:57:45 -0700 (PDT)
MIME-Version: 1.0
References: <20241001174611.12155-1-quic_pintu@quicinc.com>
In-Reply-To: <20241001174611.12155-1-quic_pintu@quicinc.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 3 Oct 2024 12:27:34 +0530
Message-ID: <CAO_48GFPg=R4JaSZtgTKjh0TLKTrw24AF0nRMvFRXxwYCP28fg@mail.gmail.com>
To: Pintu Kumar <quic_pintu@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B703740BEB
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.54:from];
	ARC_NA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,perches.com,linuxfoundation.org,gmail.com];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: TD4TO757XNVZJ4MXBF3WPK4BYSHWOQ6U
X-Message-ID-Hash: TD4TO757XNVZJ4MXBF3WPK4BYSHWOQ6U
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, joe@perches.com, skhan@linuxfoundation.org, pintu.ping@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: replace symbolic permission S_IRUGO with octal 0444
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TD4TO757XNVZJ4MXBF3WPK4BYSHWOQ6U/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Pintu,

On Tue, 1 Oct 2024 at 23:16, Pintu Kumar <quic_pintu@quicinc.com> wrote:
>
> Symbolic permissions are not preferred, instead use the octal.
> Also, fix other warnings/errors as well for cleanup.
>
> WARNING: Block comments use * on subsequent lines
> +       /* only support discovering the end of the buffer,
> +          but also allow SEEK_SET to maintain the idiomatic
>
> WARNING: Block comments use a trailing */ on a separate line
> +          SEEK_END(0), SEEK_CUR(0) pattern */
>
> WARNING: Block comments use a trailing */ on a separate line
> +        * before passing the sgt back to the exporter. */
>
> ERROR: "foo * bar" should be "foo *bar"
> +static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,
>
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> +       d = debugfs_create_file("bufinfo", S_IRUGO, dma_buf_debugfs_dir,
>
> total: 1 errors, 4 warnings, 1746 lines checked
>
> Signed-off-by: Pintu Kumar <quic_pintu@quicinc.com>

Thanks for this patch - could you please also mention in the commit
log how did you find this? It looks like you ran checkpatch, but it's
not clear from the commit log.

Since this patch does multiple things related to checkpatch warnings
(change S_IRUGO to 0444, comments correction, function declaration
correction), can I please ask you to change the commit title to also
reflect that?
> ---
>  drivers/dma-buf/dma-buf.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 8892bc701a66..2e63d50e46d3 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -176,8 +176,9 @@ static loff_t dma_buf_llseek(struct file *file, loff_t offset, int whence)
>         dmabuf = file->private_data;
>
>         /* only support discovering the end of the buffer,
> -          but also allow SEEK_SET to maintain the idiomatic
> -          SEEK_END(0), SEEK_CUR(0) pattern */
> +        * but also allow SEEK_SET to maintain the idiomatic
> +        * SEEK_END(0), SEEK_CUR(0) pattern.
> +        */
>         if (whence == SEEK_END)
>                 base = dmabuf->size;
>         else if (whence == SEEK_SET)
> @@ -782,13 +783,14 @@ static void mangle_sg_table(struct sg_table *sg_table)
>         /* To catch abuse of the underlying struct page by importers mix
>          * up the bits, but take care to preserve the low SG_ bits to
>          * not corrupt the sgt. The mixing is undone in __unmap_dma_buf
> -        * before passing the sgt back to the exporter. */
> +        * before passing the sgt back to the exporter.
> +        */
>         for_each_sgtable_sg(sg_table, sg, i)
>                 sg->page_link ^= ~0xffUL;
>  #endif
>
>  }
> -static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,
> +static struct sg_table *__map_dma_buf(struct dma_buf_attachment *attach,
>                                        enum dma_data_direction direction)
>  {
>         struct sg_table *sg_table;
> @@ -1694,7 +1696,7 @@ static int dma_buf_init_debugfs(void)
>
>         dma_buf_debugfs_dir = d;
>
> -       d = debugfs_create_file("bufinfo", S_IRUGO, dma_buf_debugfs_dir,
> +       d = debugfs_create_file("bufinfo", 0444, dma_buf_debugfs_dir,
>                                 NULL, &dma_buf_debug_fops);
>         if (IS_ERR(d)) {
>                 pr_debug("dma_buf: debugfs: failed to create node bufinfo\n");
> --
> 2.17.1
>

Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
