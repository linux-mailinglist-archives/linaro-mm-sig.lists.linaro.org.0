Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 594A5749EB0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 16:11:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D1553E95C
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:11:39 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	by lists.linaro.org (Postfix) with ESMTPS id 255F23E95C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  6 Jul 2023 12:38:18 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=jykPrMUJ;
	spf=pass (lists.linaro.org: domain of dan.carpenter@linaro.org designates 209.85.167.49 as permitted sender) smtp.mailfrom=dan.carpenter@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4f95bf5c493so835816e87.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 06 Jul 2023 05:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688647097; x=1691239097;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+g5JOoGl8L8DXw0neDwErTp0xK2oXN7bvn2LD/LXr3M=;
        b=jykPrMUJAY4xBJwbGQgO7s7ViTgCEdjaK8p8r2Hl31f/ME81nnrE/qSUvaYDs3GbCr
         INRyrEdsVpysqBZs5wiJiqbcqwckhRRknydKNYKrnZEcWk1h3fMMLHHsIeI6LzztFReE
         wp3ExGqP7Rv7GbrrYqG8yUTxrSw2fbJQ5BXkzXUmJwDbG839K+prDf3VKbcHmNZ0rCkS
         S/2XxhGghDnDJT/J+XpXk4ChuISHxazpOGEganlOb+rViR2g8kLLCCZVzTIOe8zbI45w
         AMSdB6z/sVGEyN05Mc4nxMAj21opnQYAzzlKRX0lAhov6DNcH7i7yhyNQuejDj15w8UH
         tz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688647097; x=1691239097;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+g5JOoGl8L8DXw0neDwErTp0xK2oXN7bvn2LD/LXr3M=;
        b=LM9TcLcKHefShZXo4NTQXUiRH+TZsAx+2pgrT+AucKX/a0LPyNWUIUAAF76vXQEMLa
         y3wDMNRChwXaXsW7UgNKAIaKzara2XvtoHFc8OLLo3jHvf85tNW6yWfig9DQ369qjxbF
         Se2XHAmzbJHF6lsJuLpUcyQJzqbGkb3kCg1jDn6A/ROP0+AfPi4s2X1XdleCd4Uo4sw5
         ZBwB/NdtQBFZV/M36+aX6F0yBuA1JGLjcRoQR+4+YS90z3lg/zkYEocCmW+CyXuGvmLe
         YfvvCz0lAvBPvftRZ6zKwxWAefRbT6wIck0v06AKaCgoNSWtb9aTgdCVM8GCnenQ97wn
         f5kg==
X-Gm-Message-State: ABy/qLam7VldGdFopvEIa3XTSOfoFIx2zQ65mhZ5bHWi5klAJSdewrC+
	HuT5uO7s13gXdCS5LdEGEE48BJLB
X-Google-Smtp-Source: APBJJlF7wnRSHF3/ATn3A9Kl9VBqBuZ1BW8ExsnFLaT6PZ0SXIHbr52DrsYzDXswnOwKrpEZC0n+4g==
X-Received: by 2002:a19:434a:0:b0:4f8:6833:b13c with SMTP id m10-20020a19434a000000b004f86833b13cmr1275916lfj.14.1688647096863;
        Thu, 06 Jul 2023 05:38:16 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id l25-20020a1ced19000000b003faef96ee78sm5006920wmh.33.2023.07.06.05.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 05:38:15 -0700 (PDT)
Date: Thu, 6 Jul 2023 15:38:11 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <534fcba2-2303-4e53-aafd-9668413fbf9d@kadam.mountain>
References: <694691bf-f591-4286-a615-df91d2ebab93@moroto.mountain>
 <0f52b97d-0a67-3795-c9d7-3eaac9003aa8@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0f52b97d-0a67-3795-c9d7-3eaac9003aa8@amd.com>
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.00)[102.36.222.112:received,209.85.167.49:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCPT_COUNT_SEVEN(0.00)[8];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.49:from];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 255F23E95C
X-Spamd-Bar: ---------
X-MailFrom: dan.carpenter@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HHVGSQYOGCHWU63KLQHR2XVCDTHWK5SL
X-Message-ID-Hash: HHVGSQYOGCHWU63KLQHR2XVCDTHWK5SL
X-Mailman-Approved-At: Thu, 06 Jul 2023 14:10:58 +0000
CC: Sumit Semwal <sumit.semwal@linaro.org>, Gustavo Padovan <gustavo@padovan.org>, Luben Tuikov <luben.tuikov@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-janitors@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: fix an error pointer vs NULL bug
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HHVGSQYOGCHWU63KLQHR2XVCDTHWK5SL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 06, 2023 at 08:21:35AM +0200, Christian K=F6nig wrote:
> Am 06.07.23 um 07:52 schrieb Dan Carpenter:
> > The __dma_fence_unwrap_merge() function is supposed to return NULL on
> > error.  But the dma_fence_allocate_private_stub() returns error pointers
> > so check for that and covert the error pointers to NULL returns.
> > Otherwise, the callers do not expect error pointers and it leads to an
> > Oops.
>=20
> Oh, good catch.
>=20
> But I think we should probably change dma_fence_allocate_private_stub()
> instead, that this function returns an ERR_PTR doesn't seem to make to mu=
ch
> sense.

Sure, I've sent v2.

regards,
dan carpenter

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
