Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F1E98F46A
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Oct 2024 18:47:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E14D244356
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  3 Oct 2024 16:47:52 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by lists.linaro.org (Postfix) with ESMTPS id 385D640F34
	for <linaro-mm-sig@lists.linaro.org>; Thu,  3 Oct 2024 16:47:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=f5E8HEo1;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of pintu.ping@gmail.com designates 209.85.208.170 as permitted sender) smtp.mailfrom=pintu.ping@gmail.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fac6b3c220so18520281fa.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 03 Oct 2024 09:47:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727974055; x=1728578855; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=psqXgVYQxh+Nqc0Py7UigoY7uptpL1QNQzj4fqHhGjU=;
        b=f5E8HEo1+etS4nAQfej8N6+KSWKOPZWlJp9ocopZl7zX+Hz4WD4E1uYIlqMcwZz5XS
         9Lb9jMME1UpsFFKpczvuVTm+Ue8FtHW6FPVl87K1z8g1+1iSUULSOqi1tynAUpsputsu
         ufJWgb/VvI8WX9UwqV+1pC4tjYm1Zjtt54sa6MrVGi9A8EctWXdpZW2DGAvVfwn7L+0d
         v97ebFbbJxFEtCPiMtMemXDf9fE1afuDMfqShjFE3GkXFxkd1lumVG5hYnRxMoqQJDM0
         WC+QhgoninCfRvYW2i9/p9VBVnccnkGlWDBkcytSf2MyuIA6XadAx/SmnbyYok++QCxj
         MI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727974055; x=1728578855;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=psqXgVYQxh+Nqc0Py7UigoY7uptpL1QNQzj4fqHhGjU=;
        b=LjXoO6Wz+KazwYi+Gd/5nfRMS+ngGDje6pKhKNugiCJe4unKzLJBe8KnkKvv7ubDEL
         72101wHUNJN0Lb0/MZU+dORS17a8zbJ+Z1Ek9drnVKZ1m1OkQcnevT2BIMbD3VuGhJqZ
         MrXae1uQV5Cg0+dJ2Er59BPsv0JOJ2Vu2MJaiY5imW4EzAxW5zPRnLDMpbjhjDzpdbGj
         390oM8ngTXNmkM4Y7dEEgVA47/jDgAZgVzEkhkUtGjYrNmotH58TNxJQBQlrvDWFkIOl
         MFkXng3rF5MHl/rUB3ARsEVA6/yjcdjZelPYj3Nnwb7agrfUa8cQJiPwD0To7t+wzBUJ
         qIfw==
X-Forwarded-Encrypted: i=1; AJvYcCUcAzPImIlOXiAQKUAvmHYklzBRBVGh1jvTlNoBR1oikEqQ2NErCC6mZ7M8t/DhQr2B25ie0qOWxgHn6tCu@lists.linaro.org
X-Gm-Message-State: AOJu0YxEaf3WmCzQjaxWjS7/xRYsz0Xy6muDYVT1S8wLWyAOlh28T2J9
	xIny0IBbfP8ataEpntnRCftSZILj5WzoioxB+mK4I+Hc6oUqdK2SgObqvA1/geYtIQEycBXPhxC
	X3qxtuScwusSq4Yul7+xYgApxhug=
X-Google-Smtp-Source: AGHT+IGPSZ3E9O5gAxhRq5O9LqntfK9B6JDHzw+kooRnu6f4cg5nHyGVMnGw5PmESsxX1yJS8iK6tHj52Q6zsyKi2nE=
X-Received: by 2002:a2e:b8c1:0:b0:2fa:c455:23c with SMTP id
 38308e7fff4ca-2fae10b4c0emr73735201fa.42.1727974054298; Thu, 03 Oct 2024
 09:47:34 -0700 (PDT)
MIME-Version: 1.0
References: <20241001174611.12155-1-quic_pintu@quicinc.com> <CAO_48GFPg=R4JaSZtgTKjh0TLKTrw24AF0nRMvFRXxwYCP28fg@mail.gmail.com>
In-Reply-To: <CAO_48GFPg=R4JaSZtgTKjh0TLKTrw24AF0nRMvFRXxwYCP28fg@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Thu, 3 Oct 2024 22:17:22 +0530
Message-ID: <CAOuPNLg1=YCUFXW-76A_gZm_PE1MFSugNvg3dEdkfujXV_5Zfw@mail.gmail.com>
To: Sumit Semwal <sumit.semwal@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 385D640F34
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.170:from];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-0.981];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: BOSNP752QPGBCXG23MD6ULNJBFRZVZJD
X-Message-ID-Hash: BOSNP752QPGBCXG23MD6ULNJBFRZVZJD
X-MailFrom: pintu.ping@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Pintu Kumar <quic_pintu@quicinc.com>, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, joe@perches.com, skhan@linuxfoundation.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 1/3] dma-buf: replace symbolic permission S_IRUGO with octal 0444
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BOSNP752QPGBCXG23MD6ULNJBFRZVZJD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Sumit,

On Thu, 3 Oct 2024 at 12:27, Sumit Semwal <sumit.semwal@linaro.org> wrote:
>
> Hello Pintu,
>
> On Tue, 1 Oct 2024 at 23:16, Pintu Kumar <quic_pintu@quicinc.com> wrote:
> >
> > Symbolic permissions are not preferred, instead use the octal.
> > Also, fix other warnings/errors as well for cleanup.
> >
> > WARNING: Block comments use * on subsequent lines
> > +       /* only support discovering the end of the buffer,
> > +          but also allow SEEK_SET to maintain the idiomatic
> >
> > WARNING: Block comments use a trailing */ on a separate line
> > +          SEEK_END(0), SEEK_CUR(0) pattern */
> >
> > WARNING: Block comments use a trailing */ on a separate line
> > +        * before passing the sgt back to the exporter. */
> >
> > ERROR: "foo * bar" should be "foo *bar"
> > +static struct sg_table * __map_dma_buf(struct dma_buf_attachment *attach,
> >
> > WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
> > +       d = debugfs_create_file("bufinfo", S_IRUGO, dma_buf_debugfs_dir,
> >
> > total: 1 errors, 4 warnings, 1746 lines checked
> >
> > Signed-off-by: Pintu Kumar <quic_pintu@quicinc.com>
>
> Thanks for this patch - could you please also mention in the commit
> log how did you find this? It looks like you ran checkpatch, but it's
> not clear from the commit log.
>
Thanks for your review.
Sure. Yes, it was found while using the checkpatch.
I tried to put "checkpatch fixes" in the commit header but the tool
did not allow me.
So, I removed it.
But I think I can add that in the commit log.

> Since this patch does multiple things related to checkpatch warnings
> (change S_IRUGO to 0444, comments correction, function declaration
> correction), can I please ask you to change the commit title to also
> reflect that?
>
ok sure. Last time I tried to mention "fix checkpatch warnings" in a
general way,
but the tool itself catches it and throws another warning.
So, I chose the major fix as the commit header and combined others, instead
of raising 3 different patches.
Let me try to put the same as you mentioned above.

I will correct these and send v2 in a different mail.

Thanks.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
