Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F82743559
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 08:52:14 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A00B03EF10
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jun 2023 06:52:13 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	by lists.linaro.org (Postfix) with ESMTPS id 0429A3EF10
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jun 2023 06:51:59 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=nc8+oxUW;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.178 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2b6a1245542so24404541fa.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 29 Jun 2023 23:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688107918; x=1690699918;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cBW2ODM2guWVZdVNnU/ZES/eGWsE5AoCM8ERdHN+G5k=;
        b=nc8+oxUWp5DFHwbTo0NYizKyGgQgFkvBhDxNPNUsX8fFlcDRgc0UjitbA/WmZT5gGt
         AQpS5FWCMK0OPMWi/7kJHZs/8o2YooPQP6kUMt/8T9wLWfZoRhawJhk6Vl9H+wPbanba
         90z5RH1PDVJZr190f6x7kcWYHbjz4Yp5G15QJe1ZYcylHcyuB0I23QmyQhYnKo+HqcNT
         fLUX0hFlqLU5O9M9YVGb95bdksWjo5UDmUoHS0CkDhSYf7LBQJnLrJjJarrcS/JQfmLL
         L7dMPM9wiKNu4234i+W6K2e/iSSiyLJ4qVIP4xLpW6liN0iH3A26PS/qRWaZ+yCmuKRm
         rs+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688107918; x=1690699918;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cBW2ODM2guWVZdVNnU/ZES/eGWsE5AoCM8ERdHN+G5k=;
        b=S5GIAmA5LgDadkx4wlaK9rxEZcSyAuG9U1uqmzpXPt/Pyfsto/Fq/Zw6N+fNiHQOuR
         3x1sGf4lboEoCo8Bz1dN+K+8vRDBcwxfjX5BwwVerq35oaxT/QVfkyHyDSm60dBAD6y+
         fsk4x+jkPEoJF/MO3/pdg/NJ8VDXLE3FsrFhI59ax0mA6q+Bn6384rRexufRmEMx5F23
         tZP2790c0pJuBWMmH1FWIXtTG1BNJ2g4HDTFTfmBRtGAc1qCwRKL+OdzLK88wJrTzCqV
         jT4cZQZ8veTaB5T4BCYO6PX/Pr2oniD6nWPGCczjussZQfsJCpgaDOT2/81xHwIeT0AU
         08Lw==
X-Gm-Message-State: ABy/qLY8bLTqsAkj7NFLRQ+6eqiVg3XaHg5BIN6FD+whEg/YJxr/xauO
	BwTXgn+ulQ7wAxni5Q5lNyC9k6K4pM5RmNZ8ZeEt39iH
X-Google-Smtp-Source: APBJJlHNp8Ainsp3NPDijOl5zudm1amCzUpI/b6OsWN0NSoMe20xSzSBReBYTUzp2a7lNP1NV1Z5kJiY4LeNW3XdO5k=
X-Received: by 2002:a2e:8e8d:0:b0:2b1:ad15:fe38 with SMTP id
 z13-20020a2e8e8d000000b002b1ad15fe38mr1273612ljk.3.1688107917676; Thu, 29 Jun
 2023 23:51:57 -0700 (PDT)
MIME-Version: 1.0
References: <CABdmKX0A8mqz5cS4+CqjRgpQQKuSp=3SvE1KJ_di09VjJQVoGg@mail.gmail.com>
 <20230630045246.1674919-1-jstultz@google.com>
In-Reply-To: <20230630045246.1674919-1-jstultz@google.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Fri, 30 Jun 2023 12:21:46 +0530
Message-ID: <CAO_48GEtT_rG=7aDG8g7Eosu0RWqzuNqGwsW7ODdomwu=ekafg@mail.gmail.com>
To: John Stultz <jstultz@google.com>
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	NEURAL_HAM(-0.00)[-0.957];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	URIBL_BLOCKED(0.00)[linaro.org:email,linaro.org:dkim,mail-lj1-f178.google.com:helo,mail-lj1-f178.google.com:rdns];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_HAS_DN(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.178:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 0429A3EF10
X-Spamd-Bar: --------
Message-ID-Hash: LLH22XYNQQ3PBOJJ5SG7KGWUNKH7WB6F
X-Message-ID-Hash: LLH22XYNQQ3PBOJJ5SG7KGWUNKH7WB6F
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: LKML <linux-kernel@vger.kernel.org>, "T . J . Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, kernel-team@android.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] MAINTAINERS: Add T.J. Mercier as reviewer for DMA-BUF HEAPS FRAMEWORK
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LLH22XYNQQ3PBOJJ5SG7KGWUNKH7WB6F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi John,

On Fri, 30 Jun 2023 at 10:22, John Stultz <jstultz@google.com> wrote:
>
> T.J. has been responsible for dmab-buf items on the Android team
> for awhile now, so it would be great to have him on as a reviewer.
>
> Cc: T.J. Mercier <tjmercier@google.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Cc: Brian Starkey <Brian.Starkey@arm.com>
> Cc: John Stultz <jstultz@google.com>
> Cc: linux-media@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linaro-mm-sig@lists.linaro.org
> Cc: kernel-team@android.com
> Signed-off-by: John Stultz <jstultz@google.com>

Thank you for the patch;
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>

I'll push it to drm-misc along with the one removing Liam.

> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cb075f52d97b..f4e92b968ed7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6184,6 +6184,7 @@ R:        Benjamin Gaignard <benjamin.gaignard@collabora.com>
>  R:     Laura Abbott <labbott@redhat.com>
>  R:     Brian Starkey <Brian.Starkey@arm.com>
>  R:     John Stultz <jstultz@google.com>
> +R:     T.J. Mercier <tjmercier@google.com>
>  L:     linux-media@vger.kernel.org
>  L:     dri-devel@lists.freedesktop.org
>  L:     linaro-mm-sig@lists.linaro.org (moderated for non-subscribers)
> --
> 2.41.0.255.g8b1d071c50-goog
>

Best,
Sumit.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
