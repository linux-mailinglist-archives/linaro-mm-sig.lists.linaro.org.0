Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ED34D60F7C5
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 14:44:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B3C533F58E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 27 Oct 2022 12:44:45 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	by lists.linaro.org (Postfix) with ESMTPS id 1E10A3F1D6
	for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 12:44:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=agwMaoXK;
	spf=pass (lists.linaro.org: domain of bagasdotme@gmail.com designates 209.85.214.181 as permitted sender) smtp.mailfrom=bagasdotme@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d24so1339537pls.4
        for <linaro-mm-sig@lists.linaro.org>; Thu, 27 Oct 2022 05:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WP+7R/Fr2VMJLa5AXizn+zOIuwCy4AiCbk7L9UfX4Zw=;
        b=agwMaoXKy9Wbn7+kG/2zoL2ab09hLBHI3OWHuBTISVwNYL2VkJUvzxCRoL49OCshBj
         vLioT/vawmbM+eFCEGMjfNYBG7euvnY+eyE98TBYycgStlmJnIPInsn8srezL58PDRl3
         GbQRFNvB+CskWz5NEW4VF4ylYuXxQLQIFGWxPAPRT4aobnXX5r3NioqpU61GBtW1SsyN
         78gcwnit22wAzscY5gBg5HbZTcffuWqOnD8XVVJwUvz5JS9yy9l/rcL1J9r7YFGn9Tdr
         T1bD5t0YqlJzWkGgCkwslI3+2L9jbWFoe1V7+E7bwxjo1dJHsQjhJGvfdnoIhxetRjTP
         9fQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WP+7R/Fr2VMJLa5AXizn+zOIuwCy4AiCbk7L9UfX4Zw=;
        b=WxbBtQuf+FDG8yKnvZdGd4G/vSCS52oncRRV/FQ8HWec/F9Zz3z4vn1JlNwQQi6t0f
         I3TGdTlZLqZ6MpF7bskoS1IQiX3mjUWLqSA8IYxiRDc/nFuPZQXvEjyrcY9VbgeWaZ7I
         Ekk49XzUV8Qwkc5CvPEMImayM7jxJ0VS+ulWzCjS53tGVYaBMgqxe5LLMDQmDHaXb8Kp
         hrH7RAR78XwNa1gprL7F0ie3dg1Akmebjamr5atrBRSAsKpYkqSJMkk4j3gX/oRMM8gt
         qg10OePnv7j8hAiqsr81YfFJZwkpA5zKEPlm7HvS0m8pyvW5aErCzBV7baClWHTyM8Ya
         TjMA==
X-Gm-Message-State: ACrzQf3+W4dnvnHamdyS5BqsgEpIupgevgbsfksIsaUbx4CeHKLY8w7L
	nXIZK7Wzzt8ag+LonpN6iA4=
X-Google-Smtp-Source: AMsMyM5+O8XthDRDSKyEQ3I1jHlcTzZmKX7d/XfEB3c8kCa+btVU5AIiiGXo52VS5hqEqrrzqoO+lA==
X-Received: by 2002:a17:902:c20c:b0:186:b3d0:f77 with SMTP id 12-20020a170902c20c00b00186b3d00f77mr17479095pll.26.1666874668179;
        Thu, 27 Oct 2022 05:44:28 -0700 (PDT)
Received: from debian.me (subs28-116-206-12-37.three.co.id. [116.206.12.37])
        by smtp.gmail.com with ESMTPSA id i7-20020a170902c94700b00186b3c3e2dasm1125991pla.155.2022.10.27.05.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Oct 2022 05:44:27 -0700 (PDT)
Received: by debian.me (Postfix, from userid 1000)
	id 28834103F96; Thu, 27 Oct 2022 19:44:25 +0700 (WIB)
Date: Thu, 27 Oct 2022 19:44:25 +0700
From: Bagas Sanjaya <bagasdotme@gmail.com>
To: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Message-ID: <Y1p9KT1ZZ0bqIhdu@debian.me>
References: <20221027072642.23787-1-mark-pk.tsai@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20221027072642.23787-1-mark-pk.tsai@mediatek.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ------
X-Rspamd-Queue-Id: 1E10A3F1D6
X-Spamd-Result: default: False [-6.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[209.85.214.181:from,116.206.12.37:received];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.214.181:from];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,codeaurora.org,redhat.com,arm.com,google.com,amd.com,gmail.com,mediatek.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.infradead.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: H7ERVXZUXYFBEVG5NUMSNTCXWXCXYDLL
X-Message-ID-Hash: H7ERVXZUXYFBEVG5NUMSNTCXWXCXYDLL
X-MailFrom: bagasdotme@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Matthias Brugger <matthias.bgg@gmail.com>, yj.chiang@mediatek.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: cma_heap: Fix typo in comment
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H7ERVXZUXYFBEVG5NUMSNTCXWXCXYDLL/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: multipart/mixed; boundary="===============8845587089901688389=="


--===============8845587089901688389==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XHaG62drdJ2C2Nnp"
Content-Disposition: inline


--XHaG62drdJ2C2Nnp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 27, 2022 at 03:26:38PM +0800, Mark-PK Tsai wrote:
> Fix typo in comment.
>=20

Comment on what function? I had to see the diff context.

> Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
> ---
>  drivers/dma-buf/heaps/cma_heap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/dma-buf/heaps/cma_heap.c b/drivers/dma-buf/heaps/cma=
_heap.c
> index 28fb04eccdd0..cd386ce639f3 100644
> --- a/drivers/dma-buf/heaps/cma_heap.c
> +++ b/drivers/dma-buf/heaps/cma_heap.c
> @@ -316,7 +316,7 @@ static struct dma_buf *cma_heap_allocate(struct dma_h=
eap *heap,

Oh, you refer to cma_heap_allocate(). Please mention it in the patch
description.

>  			kunmap_atomic(vaddr);
>  			/*
>  			 * Avoid wasting time zeroing memory if the process
> -			 * has been killed by by SIGKILL
> +			 * has been killed by SIGKILL

Duplicated "by"?

Thanks.

--=20
An old man doll... just what I always wanted! - Clara

--XHaG62drdJ2C2Nnp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSSYQ6Cy7oyFNCHrUH2uYlJVVFOowUCY1p9JQAKCRD2uYlJVVFO
o2ycAP4mutv5A+U0sVGBxomMJwORB1VaIuTIp/xeL/6OqueMIQEAq2u8IOVlVke8
K367ezUx4yUU08CTyQcg97a1puTuqwU=
=bsZY
-----END PGP SIGNATURE-----

--XHaG62drdJ2C2Nnp--

--===============8845587089901688389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--===============8845587089901688389==--
