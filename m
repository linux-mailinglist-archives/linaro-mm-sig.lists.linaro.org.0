Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF4539038A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 May 2021 16:09:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4ED2260B6D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 May 2021 14:09:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2477C60ADB; Tue, 25 May 2021 14:09:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BAA8660A7C;
	Tue, 25 May 2021 14:09:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B888608ED
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 14:09:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9954F60A7C; Tue, 25 May 2021 14:09:16 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 90F97608ED
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 14:09:14 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 z137-20020a1c7e8f0000b02901774f2a7dc4so1740047wmc.0
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 May 2021 07:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=hg0kLFdzUIdBjsi4lARjo6wP7z8MYrdqivPZrwICJsM=;
 b=Rma14aAQYBXaxY6uZ4wfhq86yRkCJq8fuDMm5Dls1pmgyo2tJmZO9E2OZeypvtjgdR
 fbBV33m11Y6vk+ldV7LF8kX0FAeGhwKvrCU8+Qf0O0L47G8+J6ea8ZjJZv1BaxjYZHjR
 PM2yRsI0yhlakCN5k47kj3j9pLgag/qdGWvoGT7q3Y3uTZnDHyshh2hcLe2Pf0UjuBqr
 9U8n489LVlqfheYYqUk1o3i6AbZ1jRu8mpaFiBKT6CS7wXxTAa7xGagqCnUiQSJ7/dHn
 zqIl7LwxShg9ZqvCK+s+CNPVIGV77QkDE5YAWh2nQlDj2N1JPSb2m8efj5nF5Y2C1zWP
 myGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=hg0kLFdzUIdBjsi4lARjo6wP7z8MYrdqivPZrwICJsM=;
 b=RloxyG3k4M98BhncO1BHPrKgEt1q74ki3iVIpn51MOX2hXVFplOxVbzkASbAGt7COO
 +DBB7uTmPJvF8Jb2oct+ctiKaH2M41vGQxbNMI119uD97mZIDIvkubgc3AoViLICsDux
 dKR28RqkHj30+28xZQ1i4NPEe52HHQ6+DfzdOE2wif9ad6lcwvpVpgW4o0hfh2/sxAr6
 5C37GlDMRXhrUyGwTlm9akxy/hepEBNuDqQ9haUsI/FpzRf9R72EdJ9AYWEcJ6XgDve8
 8KlLFGCuf4lTzZTwo0cPPEwvsaRtWOvkRVNd0IJpQqmHZRC4owwRXpwiY1PAQhHB45QY
 yRJA==
X-Gm-Message-State: AOAM531J6vzCZhCMInvAPWH4/GagSabupkHzD5PcPIA47PTl0d6/19di
 RtdBk4gw9KJ96F99DHJka0c=
X-Google-Smtp-Source: ABdhPJw9LWIiUBXzKRCmur/frT8mNLcwchqQ0hbKF05DQ70SIz3IzbILlMtineBcApx+kWKJ+9SSkA==
X-Received: by 2002:a1c:bcc3:: with SMTP id m186mr24240821wmf.74.1621951753781; 
 Tue, 25 May 2021 07:09:13 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:d67f:bd9a:6dbf:33b1?
 ([2a02:908:1252:fb60:d67f:bd9a:6dbf:33b1])
 by smtp.gmail.com with ESMTPSA id l16sm3089148wmj.47.2021.05.25.07.09.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 May 2021 07:09:13 -0700 (PDT)
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>, alexander.deucher@amd.com
References: <1621939214-57004-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0dbdc879-8da7-3a08-1e42-6b8b88dfceb6@gmail.com>
Date: Tue, 25 May 2021 16:09:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <1621939214-57004-1-git-send-email-jiapeng.chong@linux.alibaba.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH v2] amdgpu: remove unreachable code
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
Cc: airlied@linux.ie, Xinhui.Pan@amd.com, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP



Am 25.05.21 um 12:40 schrieb Jiapeng Chong:
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
> Changes in v2:
>    -For the follow advice: https://lore.kernel.org/patchwork/patch/1435074/
>
>   drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 1 -
>   1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> index 82f0542..b32ed85 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
> @@ -840,7 +840,6 @@ static int amdgpu_uvd_cs_msg(struct amdgpu_uvd_cs_ctx *ctx,
>   
>   	default:
>   		DRM_ERROR("Illegal UVD message type (%d)!\n", msg_type);
> -		return -EINVAL;
>   	}
>   	BUG();

You also need to remove the BUG() here or otherwise that will crash on 
an relatively harmless error.

Christian.

>   	return -EINVAL;

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
