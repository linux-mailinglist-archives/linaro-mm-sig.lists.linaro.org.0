Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6204F7B58
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 11:15:42 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 014F1402AD
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  7 Apr 2022 09:15:42 +0000 (UTC)
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com [209.85.208.66])
	by lists.linaro.org (Postfix) with ESMTPS id 886883EA4D
	for <linaro-mm-sig@lists.linaro.org>; Thu,  7 Apr 2022 09:15:38 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id d10so5703718edj.0
        for <linaro-mm-sig@lists.linaro.org>; Thu, 07 Apr 2022 02:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=wOZr49sb/Ny9apGippa8fdUG/E6tcaVDX+ivqlNiEoY=;
        b=OUJdfm0Skg/SevIzmzikdz6fZur6D0CXVIcupP3mXL+yxFUOW0AUukZZ3mPDZIAqz6
         oOojssy3IAFP3UuvZOjSFUnfyfVG+F2Ur+jroH3JX/9Xuqbcy6tNPI9BF6qzAls8Pyes
         O5Tz5E9oaCFqu9ZnbxNI31yVF2KMClPL1HDtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wOZr49sb/Ny9apGippa8fdUG/E6tcaVDX+ivqlNiEoY=;
        b=RwcMt963hgVZ9S/Pl7Y4wLRpvqDvlgjAESGJr6ZoJkAadUXHCwIF7Ihi/bZD6XsExs
         4txNSlwHRgrPTCPQ7EJgb7HZrRuL6Es3/N0pmz0/SaeG4UvfNsXBZC5CE1E+Fg0+71Fo
         feYdTh5HDl9HIkkBetvJn5a2AcScoiLDp3E2OyhDZyhzONZCi0TpLCaf1CS0gdn0KHIX
         bkKN+0F5EdgM0hxExVBJrZHBfpx4V//VNy8Y/IpZ8Em+xdgwDgg2hPe9ez8KxRDJyDM6
         3JFhztRcrunbxtVferrEsC1JEQZC1VFS3SViJIVC8M4rk3RHWe7y/+efKHzlLw6C5n/p
         oaLA==
X-Gm-Message-State: AOAM533kTDpdM+1JV1KbpJ+oIoq8WximhCteAPOlPfMdmtXinsqcdvMW
	j0HTEspzYnmW02Q9CwK+3BFALg==
X-Google-Smtp-Source: ABdhPJzmpKY3RGEMTeuwi1iMVD/SXnxu3nIwPkgnTiZcLFENqdqDVYQLLrvfFPDqAev7Uq5qFJsuMA==
X-Received: by 2002:a05:6402:5186:b0:419:651e:5137 with SMTP id q6-20020a056402518600b00419651e5137mr13192197edd.335.1649322937637;
        Thu, 07 Apr 2022 02:15:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id i14-20020a50cfce000000b0041cbaba8743sm7069038edk.56.2022.04.07.02.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:15:37 -0700 (PDT)
Date: Thu, 7 Apr 2022 11:15:35 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yk6rt7Vpm038eGMZ@phenom.ffwll.local>
References: <20220407085946.744568-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407085946.744568-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Message-ID-Hash: VVGHDHS665AP2PBLYWQB6J6G6OOXEFLG
X-Message-ID-Hash: VVGHDHS665AP2PBLYWQB6J6G6OOXEFLG
X-MailFrom: daniel@ffwll.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: DMA-resv usage
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VVGHDHS665AP2PBLYWQB6J6G6OOXEFLG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 07, 2022 at 10:59:31AM +0200, Christian K=F6nig wrote:
> Hi Daniel,
>=20
> only patch #2 had some significant changes. The rest ist pretty much the
> same except for the dropped exynos change and the added cleanup for the
> seqlock.

Reviewed that patch, I plan to do a full review of the docs and hopefully
also a bit of all the various users once it's all landed.

Cheers, Daniel
--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
