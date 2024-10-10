Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCC8997C74
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Oct 2024 07:33:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0EB3B44129
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 10 Oct 2024 05:33:23 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lists.linaro.org (Postfix) with ESMTPS id A91CC3F33C
	for <linaro-mm-sig@lists.linaro.org>; Thu, 10 Oct 2024 05:33:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=evxwPPD+;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of pintu.ping@gmail.com designates 209.85.208.53 as permitted sender) smtp.mailfrom=pintu.ping@gmail.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c920611a86so596959a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 09 Oct 2024 22:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728538382; x=1729143182; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QLeJpOVnaXgVOcwq4oaCZwxfF9fcKYWEKk+MpXHkeY8=;
        b=evxwPPD+rY8XJNnwyNe51svV/7enR5efyW2ghBgWhbzoQOOdkGgMcfRpuqZPZZ2b4F
         HjdgIqwdvxSw0QR//18Sur9xrRhc7jh3O5NEaFVQ33AXcN6hQ+7ftel/7EmMpuABPh/7
         pCdmmM0k46z01Xp7sQzk4G/NjVNF6BquxupdSiMocl10UkqwyoQicKB15DtwUyj+7Sgq
         kyywf+ocXaekzgOVGImsN1qW+zRrqx5BtGFF4uhjdyI8MRrB4CGkJJSuoC9lRfsDMeK6
         1D81ISYGSYxYwc1K/EYSGkee9znO9AvimjrL6mjwTuLD1wErSjVe53jg/Xx3acDu72ji
         ZJBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728538382; x=1729143182;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLeJpOVnaXgVOcwq4oaCZwxfF9fcKYWEKk+MpXHkeY8=;
        b=sp2R3BMm+NkvqnrK+FAr8Wn5EmbcFtRlVITj5p5MFXjOSz4arthSbBMxmnVv0WvP/S
         BzwBfnzgm/l0dY7GSxGJDP0iHr8OwG341LVjl6f8MGJs0x1N/s9nQj0vOZ4VFdxhryGv
         3OLYIJlxHIXdD+v5hVBpjVKZL9k2uxBBj4HZ/uEeOrL8RBVKg91nDAWDphm4y/b4ai57
         fgIxlIPmLNpMf0f/kQi3fMQk8G5DgxtXRUmIiT18hLGqNsmLkoEAsRTtfz7kMSr3n1E7
         wVI9uH5+EIjYJvv8cSUfWpA3fu1IhXqjLydw/WvvdrcBA3xI8pt0EUUgUpzbB76R0V/K
         U3FA==
X-Forwarded-Encrypted: i=1; AJvYcCXdA5DUQEZYTrSgeNfRjy9C4AMMwAFoZCgFsVSe3zVBNpd7Bimclh81X11zzRR++nSGx7p2lShcwagXp/a+@lists.linaro.org
X-Gm-Message-State: AOJu0YzyFBXIis/CM6u2cjh8TXJjf6lANqm5st93a61qIjtULMxuuJ6k
	QdEft/qNUW4w2k1Lv+e0f8ypJ7s3fnCNUi/elS5jD68I36I6uINUbh6dkl1UJR7CyiCcVRNgQrl
	j6UFKxG0Y0j1R8vV53PV20wLV2nkdMZ9O
X-Google-Smtp-Source: AGHT+IFKUAguzyenCV4qtybKuD6WYqAQunGFYP7vn3PFEiqqB3Gh6EmfqyQza8duyB9kIZpAVqXRPE6V5VjbtN4Lhzo=
X-Received: by 2002:a05:6402:2116:b0:5c9:3451:498 with SMTP id
 4fb4d7f45d1cf-5c9345105b7mr1039423a12.25.1728538381414; Wed, 09 Oct 2024
 22:33:01 -0700 (PDT)
MIME-Version: 1.0
References: <20241005180955.6523-1-quic_pintu@quicinc.com>
In-Reply-To: <20241005180955.6523-1-quic_pintu@quicinc.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Thu, 10 Oct 2024 11:02:48 +0530
Message-ID: <CAOuPNLjO6Kz0=1Nnb3REsttH=3bQoUx7D1dRQX9fjTf15hLRdQ@mail.gmail.com>
To: Pintu Kumar <quic_pintu@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A91CC3F33C
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[gmail.com:+];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.53:from];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 5CJU3JZSH73LTETAWKQRZ4VH3ZKZO2WT
X-Message-ID-Hash: 5CJU3JZSH73LTETAWKQRZ4VH3ZKZO2WT
X-MailFrom: pintu.ping@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, joe@perches.com, skhan@linuxfoundation.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: fix S_IRUGO to 0444, block comments, func declaration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5CJU3JZSH73LTETAWKQRZ4VH3ZKZO2WT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Sat, 5 Oct 2024 at 23:40, Pintu Kumar <quic_pintu@quicinc.com> wrote:
>
> These warnings/errors are reported by checkpatch.
> Fix them with minor changes to make it clean.
> No other functional changes.
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
>
> ---
> Changes in V1 suggested by Sumit Semwal:
> Change commit title, and mention exact reason of fix in commit log.
> V1: https://lore.kernel.org/all/CAOuPNLg1=YCUFXW-76A_gZm_PE1MFSugNvg3dEdkfujXV_5Zfw@mail.gmail.com/
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

Pushed V2 here. Any further comment on this ?

Thanks,
Pintu
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
