Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CB30C82C071
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 14:05:27 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B654E3EBEC
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 12 Jan 2024 13:05:26 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by lists.linaro.org (Postfix) with ESMTPS id AB2D33EBEC
	for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 13:05:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ffwll.ch header.s=google header.b=aXpmxK5q;
	spf=none (lists.linaro.org: domain of daniel@ffwll.ch has no SPF policy when checking 209.85.218.43) smtp.mailfrom=daniel@ffwll.ch;
	dmarc=none
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a28f12a12e5so186043266b.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 12 Jan 2024 05:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1705064704; x=1705669504; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vAbZchzI0iGmOu/a8rn2udlF7BOKYbAuYwZzGRVm3BU=;
        b=aXpmxK5qCRV1VPxGiwvDgOboAwA6u44037K4Tc+ter6XyhNXtM00hw/mIRdlxWAuvE
         ETu0jrEP5s2sl+fGh8rUrZ0jYh9GGd94fL+Glnc3mGg8iXyhl2zS7leVilzkU+FSIFjA
         3JT1Yo+bwDEZFvmHmEysATigr9CPjUpgI7FsI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705064704; x=1705669504;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vAbZchzI0iGmOu/a8rn2udlF7BOKYbAuYwZzGRVm3BU=;
        b=X79sgSxAnOn5eNuXlcUlMgQ/lIgnbCkUNVTJsMrbNzUElG8kDCcaodCVBo7cLHiwji
         DoxVsaHGw4zCTcw8gUABPnjqeuWLZi/gzsPqLY/fx51MpHDoM9Zh+FW3K7NUJNjVN0w3
         OV49hazQKLRpAwY+TjtD6BUu5dF5Oi1wlirxSKjH6RyAsQ/jsbb+shyc5bkHgrWrkr8n
         GsdM1VMVsGwz8ysM04IBZ6n2IbNS4fOK9JqW6abX8GZ+qTtXg2z3PoJfH4whfu4CA8bZ
         aaqL1zvYgr4QIoszAn+TBfCkCw0X+vRSJ1caRj8YZaF0yGcxJwNslI4PCGsRjzUBV/QU
         9wWQ==
X-Gm-Message-State: AOJu0YzCFAcTWDdHt1PgRfJW4HOo300V/lQbu9bMs/yzSQ+7qOyCAXan
	7xl13Ssfei3SOOy5K8p7TtGpDIqr5Mg+sg==
X-Google-Smtp-Source: AGHT+IFtm6FukgWCJmvMOWGIQAQ4rW/HJgSEIzEjtdiyxsAnvXu1fGEvnNuGMsdglBVovqejvpW9Xg==
X-Received: by 2002:a17:907:720e:b0:a2b:d12c:ee42 with SMTP id dr14-20020a170907720e00b00a2bd12cee42mr1179501ejc.0.1705064704572;
        Fri, 12 Jan 2024 05:05:04 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709060ad300b00a2687065e28sm1761878ejf.45.2024.01.12.05.05.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 05:05:04 -0800 (PST)
Date: Fri, 12 Jan 2024 14:05:02 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <ZaE4_l8PzXx9Isjp@phenom.ffwll.local>
References: <20240111041202.32011-1-rdunlap@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240111041202.32011-1-rdunlap@infradead.org>
X-Operating-System: Linux phenom 6.5.0-4-amd64 
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.30 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	R_DKIM_ALLOW(-0.20)[ffwll.ch:s=google];
	MIME_GOOD(-0.10)[text/plain];
	R_SPF_NA(0.00)[no SPF record];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.218.43:from];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DMARC_NA(0.00)[ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ffwll.ch:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AB2D33EBEC
X-Spamd-Bar: ---
Message-ID-Hash: XGUUAEYYANLVEHNNLEQVFSNSTQDEUYWF
X-Message-ID-Hash: XGUUAEYYANLVEHNNLEQVFSNSTQDEUYWF
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, patches@lists.linux.dev, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf/dma-resv: fix spelling
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XGUUAEYYANLVEHNNLEQVFSNSTQDEUYWF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 10, 2024 at 08:11:55PM -0800, Randy Dunlap wrote:
> Fix spelling mistakes as reported by codespell.
>=20
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: linux-media@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: linaro-mm-sig@lists.linaro.org

Both dma-buf spell fixes applied to drm-misc-next, thanks!
-Sima
> ---
>  drivers/dma-buf/dma-resv.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff -- a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -405,7 +405,7 @@ static void dma_resv_iter_walk_unlocked(
>   *
>   * Beware that the iterator can be restarted.  Code which accumulates st=
atistics
>   * or similar needs to check for this with dma_resv_iter_is_restarted().=
 For
> - * this reason prefer the locked dma_resv_iter_first() whenver possible.
> + * this reason prefer the locked dma_resv_iter_first() whenever possible.
>   *
>   * Returns the first fence from an unlocked dma_resv obj.
>   */
> @@ -428,7 +428,7 @@ EXPORT_SYMBOL(dma_resv_iter_first_unlock
>   *
>   * Beware that the iterator can be restarted.  Code which accumulates st=
atistics
>   * or similar needs to check for this with dma_resv_iter_is_restarted().=
 For
> - * this reason prefer the locked dma_resv_iter_next() whenver possible.
> + * this reason prefer the locked dma_resv_iter_next() whenever possible.
>   *
>   * Returns the next fence from an unlocked dma_resv obj.
>   */
> _______________________________________________
> Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
> To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
