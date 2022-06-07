Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A879539251
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 15:51:40 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E7323F183
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 31 May 2022 13:51:39 +0000 (UTC)
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by lists.linaro.org (Postfix) with ESMTPS id 4CEF13F194
	for <linaro-mm-sig@lists.linaro.org>; Fri, 27 May 2022 15:56:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: alyssa)
	with ESMTPSA id 3D3D51F463CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1653667011;
	bh=n5RHKvs6olD8LksjT484qw9Rh0JisRhUIQ7ggPkOqx4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q6kTO5Ap+i5kmaF5um389IzxbauaGndK+JrcD4hEezqh4whcGeSqpoC5zDuWw57KI
	 8fh+bDAIu8408A79BVtUamQIZPLFV90q8BABnbTh44p5m/jr3XQRDvEP68ncgCedK7
	 iWk55rkqi/komv0pBkw1cQB5acBLw5+u+DvpIejXBAgHDD4NeyeS1JVK49uoVmHCS2
	 mbrHXxwVcX6JnH811NUonPSSXnHqfm2ChKbnZSgvS/P41yiK/z0a3BBHsiTV5+ccK9
	 oLlgD/Myd6w2UL6nCNj7WWOM5ohWFrt2ikdxXL5RtRt+P5YoENL4mecu8Xj8kkWW7F
	 NZnyFvgN0M2lA==
Date: Fri, 27 May 2022 11:56:36 -0400
From: Alyssa Rosenzweig <alyssa@collabora.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Message-ID: <YpD0tCuCd7HzwWg6@maud>
References: <20220526235040.678984-1-dmitry.osipenko@collabora.com>
 <20220526235040.678984-5-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220526235040.678984-5-dmitry.osipenko@collabora.com>
X-MailFrom: alyssa@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: SURWZRAB4EYBOLYPZI5J7D6XVPNNZ2L7
X-Message-ID-Hash: SURWZRAB4EYBOLYPZI5J7D6XVPNNZ2L7
X-Mailman-Approved-At: Tue, 31 May 2022 13:51:35 +0000
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Rob Clark <robdclark@gmail.com>, Emil Velikov <emil.l.velikov@gmail.com>, Robin Murphy <robin.murphy@arm.com>, Qiang Yu <yuq825@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian K??nig <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.
 org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org, Dmitry Osipenko <digetx@gmail.com>, linux-tegra@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 04/22] drm/panfrost: Fix shrinker list corruption by madvise IOCTL
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SURWZRAB4EYBOLYPZI5J7D6XVPNNZ2L7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Acked-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>

On Fri, May 27, 2022 at 02:50:22AM +0300, Dmitry Osipenko wrote:
> Calling madvise IOCTL twice on BO causes memory shrinker list corruption
> and crashes kernel because BO is already on the list and it's added to
> the list again, while BO should be removed from from the list before it's
> re-added. Fix it.
> 
> Cc: stable@vger.kernel.org
> Fixes: 013b65101315 ("drm/panfrost: Add madvise and shrinker support")
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/gpu/drm/panfrost/panfrost_drv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> index 087e69b98d06..b1e6d238674f 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> @@ -433,8 +433,8 @@ static int panfrost_ioctl_madvise(struct drm_device *dev, void *data,
>  
>  	if (args->retained) {
>  		if (args->madv == PANFROST_MADV_DONTNEED)
> -			list_add_tail(&bo->base.madv_list,
> -				      &pfdev->shrinker_list);
> +			list_move_tail(&bo->base.madv_list,
> +				       &pfdev->shrinker_list);
>  		else if (args->madv == PANFROST_MADV_WILLNEED)
>  			list_del_init(&bo->base.madv_list);
>  	}
> -- 
> 2.35.3
> 
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
