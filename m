Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF75BFC56
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Sep 2022 12:29:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DA4AA48A60
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Sep 2022 10:29:20 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id C66D448A05
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Sep 2022 10:29:14 +0000 (UTC)
Received: from [192.168.2.145] (109-252-122-187.nat.spd-mgts.ru [109.252.122.187])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 849396600375;
	Wed, 21 Sep 2022 11:29:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1663756153;
	bh=ZT5srTQo2GbRKK2KbdtuOuJEzC+8ncCgGSp7dm2y2mQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KPQr5wDCdzoryN7A6LVprDyAfEKWUzqJjfZG9/T3ie9+Id2SgBPSkiw1tnPiVbIkh
	 9xYi4rhroxm8IY+KtWBG7kcFoghtlJSjGRxD9Zytp+LrsqLoMKkz+F3fPmzq0K/KE0
	 gZln48XpBZ4rppZf5Uw3l7jqj2le3d8o8fSbRO24fxqQGReVs+RXf9MhL2OIUJdl67
	 09j126W1FOcPf5LF6iA61F+lB9ytLMh2Vp6FqSwuiEZ5AfOcfOzCTypft4YiMBWss4
	 DYt+8EbmT0phFuB3P1uiR8i27jtygGVenFxHjBkYiz420ZoeLTqqU6QIxugByMigaa
	 T2NKIJ/zl9B5w==
Message-ID: <333ce447-05e0-a127-6f8e-2ffd75e0c992@collabora.com>
Date: Wed, 21 Sep 2022 13:29:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
To: Sumit Semwal <sumit.semwal@linaro.org>
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
 <20220913192757.37727-16-dmitry.osipenko@collabora.com>
 <CAO_48GFtLjR657nO+yh9KwsrWbNmGVsf7srHj19biO+NauYt4w@mail.gmail.com>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <CAO_48GFtLjR657nO+yh9KwsrWbNmGVsf7srHj19biO+NauYt4w@mail.gmail.com>
Message-ID-Hash: BX5UDDCCKJBF7KRQLUC4AUY5RR4IPDRV
X-Message-ID-Hash: BX5UDDCCKJBF7KRQLUC4AUY5RR4IPDRV
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Daniel Vetter <daniel@ffwll.ch>, Daniel Almeida <daniel.almeida@collabora.com>, Gert Wollny <gert.wollny@collabora.com>, Gustavo Padovan <gustavo.padovan@collabora.com>, Daniel Stone <daniel@fooishbar.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Deucher <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <"rodrigo. vivi"@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Qiang Yu <yuq825@gm
 ail.com>, Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>, Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>, Christian Gmeiner <christian.gmeiner@gmail.com>, Ruhl Michael J <michael.j.ruhl@intel.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, "linux-arm- msm"@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 15/21] dma-buf: Move dma_buf_vmap() to dynamic locking specification
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BX5UDDCCKJBF7KRQLUC4AUY5RR4IPDRV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 9/20/22 17:13, Sumit Semwal wrote:
> Hi Dmitry,
> 
> Thanks very much for the series.
> 
> On Wed, 14 Sept 2022 at 00:59, Dmitry Osipenko
> <dmitry.osipenko@collabora.com> wrote:
>>
>> Move dma_buf_vmap/vunmap_unlocked() functions to the dynamic locking
>> specification by asserting that the reservation lock is held.
> Thanks for the patch; just a minor nit - I think you mean dma_buf_vmap
> / vunmap() here, and not _unlocked?

Yes, the _unlocked should be dropped here. Thank you for the review!

-- 
Best regards,
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
