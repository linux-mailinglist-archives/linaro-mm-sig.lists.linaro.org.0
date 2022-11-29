Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BF92663C638
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Nov 2022 18:12:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B4DEA3EF50
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Nov 2022 17:12:57 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	by lists.linaro.org (Postfix) with ESMTPS id 390863EBE4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Nov 2022 17:12:49 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20210112 header.b=rcG6dqqN;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.177 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-3bf4ade3364so95354747b3.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Nov 2022 09:12:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JHEjD2xxLNtQCC6FYElEPgk7av75DQm6bwKKXcbxhRE=;
        b=rcG6dqqNMky7jtdTJ46UkMVCNRhCC2wS2wzYNMxEWmGIbDbfjKUTHWdytUvxxZ1hCO
         hii0c0lXZOyFm8dJkzKTYZkEVGzbv50tfIKwFHk1Z4+6D/+dF+zj4hRkJfq9z8cmBL21
         qQbfMHJ2NlTGaB434A4h0QmMLvib0OqFYg5apgzZxYpA/sF5NBxK46w8UJ2wJy6vAGY8
         3IeY9uTE0JxVikWmy/lCoTqxXfVyFtezGLVM3gKj95d4Dxt9v5+8VM8ZbuDVvgyI4R7x
         EFR+uEnDq8S9gWaKyUB+g/NJ/YALqL4rI5FDrlTaSuguvEvo77nrE8+8zKnFOLXVVUTD
         5LIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JHEjD2xxLNtQCC6FYElEPgk7av75DQm6bwKKXcbxhRE=;
        b=5TOW6U7MD4SassZsiotasOoPr+Hch8HS2A7XToc7fH0kIm4MuwBMlFtA460FtJt28X
         9Wk7yAi6tOeXxb/rrLW4NmwTGA3NpxfC8s5yGGuYOCgENTeyvhaEFtuvXtFyBmd/83vf
         FHqMBCFVBI75rwMoTU/k8SZU9Fk0GrpxWV/ywrhtYTV2jNmXq/s6wdpkRn7CLDSgvQiP
         7jAKn/nxDxC9uNbWOnJlHb5kC/s/AuEPmjI6tGLFF8zYy/J8kU6/fTr9absnRguBd/fp
         8sfhp3NyKawx6Igp61lTHNXsCU+vi/Fpv3zyFSJuut+NlzBaMir9kz26y0gPfM7SrZZ/
         S3rA==
X-Gm-Message-State: ANoB5pk3H6dw0ZgtNyWGAdlqhqzlVbvzvXHHFYpAMLA8T17wL9Tmd8pG
	JjQCLA1iYe6jEH9VU28i5qaGUl6nyaBuY85rjS4PLw==
X-Google-Smtp-Source: AA0mqf6tFV1ruJYeq+RpTMqBCXfOUZuF64Zqeq76MlGGXN950+keht0aCkWxTl6Ut47af6Q+Cm0dvHmw7A4GE9YbArk=
X-Received: by 2002:a81:9a94:0:b0:3af:eac8:76e0 with SMTP id
 r142-20020a819a94000000b003afeac876e0mr30728331ywg.256.1669741968574; Tue, 29
 Nov 2022 09:12:48 -0800 (PST)
MIME-Version: 1.0
References: <202211241926133236370@zte.com.cn>
In-Reply-To: <202211241926133236370@zte.com.cn>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 29 Nov 2022 09:12:37 -0800
Message-ID: <CABdmKX2aidW7LnvTWdULtHr0yzdSb=KqTWp=7RUUNCOA548Pag@mail.gmail.com>
To: yang.yang29@zte.com.cn
X-Rspamd-Queue-Id: 390863EBE4
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_NONE(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.177:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: X3SZLQHHMUKYKF5J5UBWV34HDYN4VXUB
X-Message-ID-Hash: X3SZLQHHMUKYKF5J5UBWV34HDYN4VXUB
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, xu.panda@zte.com.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH linux-next] dma-buf: use strscpy() to instead of strlcpy()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/X3SZLQHHMUKYKF5J5UBWV34HDYN4VXUB/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Nov 24, 2022 at 3:26 AM <yang.yang29@zte.com.cn> wrote:
>
> From: Xu Panda <xu.panda@zte.com.cn>
>
> The implementation of strscpy() is more robust and safer.
> That's now the recommended way to copy NUL terminated strings.
>
> Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
> Signed-off-by: Yang Yang <yang.yang29@zte.com>
> ---
>  drivers/dma-buf/dma-buf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index b6c36914e7c6..485cf4f3431e 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -51,7 +51,7 @@ static char *dmabuffs_dname(struct dentry *dentry, char *buffer, int buflen)
>         dmabuf = dentry->d_fsdata;
>         spin_lock(&dmabuf->name_lock);
>         if (dmabuf->name)
> -               ret = strlcpy(name, dmabuf->name, DMA_BUF_NAME_LEN);
> +               ret = strscpy(name, dmabuf->name, DMA_BUF_NAME_LEN);

The type of ret should also be changed to ssize_t to capture the
negative error value which strlcpy does not have. We shouldn't ever
see that error condition here with the code the way it is now, but
let's not risk it.

>         spin_unlock(&dmabuf->name_lock);
>
>         return dynamic_dname(buffer, buflen, "/%s:%s",
> --
> 2.15.2
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
