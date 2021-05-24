Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E221938F33D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 May 2021 20:49:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 790ED61178
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 24 May 2021 18:49:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3671C61151; Mon, 24 May 2021 18:49:13 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52CFF61019;
	Mon, 24 May 2021 18:49:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9BE9D61017
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 18:49:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 999F261019; Mon, 24 May 2021 18:49:08 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by lists.linaro.org (Postfix) with ESMTPS id 93D6C61017
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 18:49:06 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id s19so27938603oic.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 24 May 2021 11:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dYnEhzkp1dbbf9fIGVRRORFDdaTodcnnOdSTVqP9m0o=;
 b=J3EkV+L9cKqEC9dducGQe+dlBDeMynfnUMq+roxzZEzKLRGNcT56FSxo8Ei5FeMx9C
 5OeCXpu0A4JO9WW4UhE3RpEM26Ari6+3g4EcsBxkChmBIzewPsSA9EBS2SLG5QaR27f+
 wj6/1NBybMiWJZwBBPkUyzliWdjaSUvZDPHlcEiMBw9DeugmzMAcZUBbM6sF7CsYghl/
 ghnzS0dH/qs9krdIbeCr+R2u00qPaEQ8aM5DeVSD/u0sD5nyJUNQ/Iw5a4taqbyDdoT2
 05GQday22Hv7KDHRrMyHlo9lWGmOaEKIDUdPmh4JIjhM1gjsq/IT7F70IZF1gH2nTYTV
 v+3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dYnEhzkp1dbbf9fIGVRRORFDdaTodcnnOdSTVqP9m0o=;
 b=rqOzZMG/p+uFoSglqecnEVJnIhMpup5tkuvTH6U90morYuM2dNn+Nfd6ffgZLtGIxi
 /thJ8luwTbIVQy0UJJWLc6KZn76qKS3xpmDt3IBbUXvIK6jtspoPBTmNZVYiD4TzVyvM
 BdQ6P4W0prHJXQ9QEO7IrYZ2hEg9rFsCwz2EpejV5RBASZW7dRxCbA8qing0pT/5krXr
 UhBiBegS8vMcj7LHroRkr/HKvcAEILUZ2w/dzXEa0wup5X2Xc2Shdfjq0OQmN4xN4ffw
 ioG2RMH4VLhgraIx5a385IasLhPynKE8vMeuL49Tt88y1DwlxAIPIO3tIqBf2mScAcLI
 lmKQ==
X-Gm-Message-State: AOAM531Q+6PAJN+l20kRhbudlMUvesHBcHQx7Y4juDpsIXJIQyHUjTkp
 547/bnW3nf2PdJr5KzH+U4yesv49LxMyBhqf9tw=
X-Google-Smtp-Source: ABdhPJwVX9evJqZgQ8DoevhP5UkPf9wyiPN6kdoDCnSMac0ZTswKiitlAwMr0DjZ60GMh/dFVtX2UO7EU+ZEJZcSc34=
X-Received: by 2002:a05:6808:206:: with SMTP id l6mr329581oie.5.1621882146073; 
 Mon, 24 May 2021 11:49:06 -0700 (PDT)
MIME-Version: 1.0
References: <1621853213-55876-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1621853213-55876-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 24 May 2021 14:48:55 -0400
Message-ID: <CADnq5_N3WkoYHcn8b1-qZ23+t=E9xxV5fV_1Lwqck6x2dUPqmA@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: remove unreachable code
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Cc: Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

Applied.  Thanks!

Alex

On Mon, May 24, 2021 at 6:47 AM Jiapeng Chong
<jiapeng.chong@linux.alibaba.com> wrote:
>
> In the function amdgpu_uvd_cs_msg(), every branch in the switch
> statement will have a return, so the code below the switch statement
> will not be executed.
>
> Eliminate the follow smatch warning:
>
> drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c:845 amdgpu_uvd_cs_msg() warn:
> ignoring unreachable code.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> index 82f0542..375b346 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> @@ -842,8 +842,6 @@ static int amdgpu_uvd_cs_msg(struct amdgpu_uvd_cs_ctx *ctx,
>                 DRM_ERROR("Illegal UVD message type (%d)!\n", msg_type);
>                 return -EINVAL;
>         }
> -       BUG();
> -       return -EINVAL;
>  }
>
>  /**
> --
> 1.8.3.1
>
_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
