Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6A65FB9B3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Oct 2022 19:32:12 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C2DF63F4BB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Oct 2022 17:32:11 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id B4ED43F196
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Oct 2022 17:31:52 +0000 (UTC)
Received: from [192.168.2.145] (109-252-119-114.nat.spd-mgts.ru [109.252.119.114])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BECC86602358;
	Tue, 11 Oct 2022 18:31:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1665509511;
	bh=FbjwvyBn8Jk5nWNvSwUKiVg917Dtcke8nkTgpCuxGHg=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=j9FFZ8t9+K/yyb3uyYTMRMmOZwbPmrFNo2nLiwt+NaQZrbzcY4YA8uPgvq9KqKyKu
	 qfSxAQSs3xdybENOLmYyju3gm2jzJes8ytBnen1UmrG70xGfL9X93PKjnudy4jAGU9
	 gl+8JqZyTgX4VAz30gatLmK/w1aZ0uiSfREFVnx4BKEjtHICZB25vE8HLEsmHDTqCu
	 yIpeJVFLrAb6mYjYFS9OIEMj1EcqLBHaz1mjNnYKGPhtHbHH9fs9DzhtYGqeU92wP3
	 bGYgN3stcLAlbVz256MpW1wDubM6bGRxeP+1wxa5ae3PSGyqaSwxKah/5yl/VkpzQm
	 rYhgIy9tlB8RA==
Message-ID: <fd3baeeb-2277-768c-e0d1-f3adcecb848a@collabora.com>
Date: Tue, 11 Oct 2022 20:31:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: David Airlie <airlied@linux.ie>, Gerd Hoffmann <kraxel@redhat.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu
 <olvaffe@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Thierry Reding
 <thierry.reding@gmail.com>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas_os@shipmail.org>,
 Qiang Yu <yuq825@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Leon Romanovsky <leon@kernel.org>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Tomi Valkeinen <tomba@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Lucas Stach <l.stach@pengutronix.de>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Ruhl Michael J <michael.j.ruhl@intel.com>
References: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20220928191600.5874-1-dmitry.osipenko@collabora.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: --
X-Rspamd-Queue-Id: B4ED43F196
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[linux.ie,redhat.com,chromium.org,gmail.com,ffwll.ch,collabora.com,fooishbar.org,linux.intel.com,kernel.org,suse.de,linaro.org,amd.com,samsung.com,intel.com,shipmail.org,qti.qualcomm.com,ziepe.ca,suse.com,epam.com,armlinux.org.uk,pengutronix.de];
	RCPT_COUNT_GT_50(0.00)[51];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,gmail.com,lists.linaro.org,collabora.com,lists.linux-foundation.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=j9FFZ8t9;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Message-ID-Hash: WDMBXZ2COSJZXTR3YPDE6HM5LHTJM7PK
X-Message-ID-Hash: WDMBXZ2COSJZXTR3YPDE6HM5LHTJM7PK
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, kernel@collabora.com, virtualization@lists.linux-foundation.org, linux-rdma@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v6 00/21] Move all drivers to a common dma-buf locking convention
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WDMBXZ2COSJZXTR3YPDE6HM5LHTJM7PK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 9/28/22 22:15, Dmitry Osipenko wrote:
> Hello,
> 
> This series moves all drivers to a dynamic dma-buf locking specification.
> From now on all dma-buf importers are made responsible for holding
> dma-buf's reservation lock around all operations performed over dma-bufs
> in accordance to the locking specification. This allows us to utilize
> reservation lock more broadly around kernel without fearing of a potential
> deadlocks.
> 
> This patchset passes all i915 selftests. It was also tested using VirtIO,
> Panfrost, Lima, Tegra, udmabuf, AMDGPU and Nouveau drivers. I tested cases
> of display+GPU, display+V4L and GPU+V4L dma-buf sharing (where appropriate),
> which covers majority of kernel drivers since rest of the drivers share
> same or similar code paths.

All the non-drm patches have been acked by the respective maintainers.
I'm now feeling comfortable to take this series into drm-misc-next and
going to do it later this week.

If anyone have more comments to add, then please do it now. It won't be
possible to drop out patches from drm-misc once they will be merged. All
further changes will have to be made on top of the applied patches.

Thanks to all who reviewed this patchset!

-- 
Best regards,
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
