Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B73B97E608
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 08:33:51 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0837F448B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Sep 2024 06:33:50 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by lists.linaro.org (Postfix) with ESMTPS id 77A7043C0E
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Sep 2024 06:33:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="ON/wJWWG";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.167.48 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5366fd6fdf1so4206177e87.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 22 Sep 2024 23:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727073212; x=1727678012; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y5jTK+r41Ph8334euEi90MC38DwR8Kznsi20eXBe15E=;
        b=ON/wJWWGZepaQt/qKLUftU10N8u14Ao2hmpOxq0EZOrSk3shq1MdnFPTAKaqIK97XS
         NUExHQGG//w4ZkXVuigSj2UoNmxFO/FSd0mlXBLM+lzVE/jexvwbFM4JV8Zo2EGCApDA
         MF1hlbTkM6KEsuyf5p135qVF821zmCHNWwPm15cXB1uCuap7pJ05rM+r8cgFN0Pw+/x3
         LkOfzmxhslGk/TrUSrtQRd0q6L3ndcuhSjqQNM8gX5AgEzhpb+4F3F7nS1IuF6cADxC4
         sESc1v6Jg0wVtnEtTL4EWiEz+eRH8nosAieeqNcs4V0DawfXQO95qta63yYW/sRBZcNC
         oGIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727073212; x=1727678012;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5jTK+r41Ph8334euEi90MC38DwR8Kznsi20eXBe15E=;
        b=HC0oOqJ0tyyLigpW8DIzbV5Dmry+TpBtUPZUK/f7c0pi0m2BQV+UnxumhW1QgOG4ZN
         YJvkuNlZ0U8LbVIyQO7rSpq2Yoz0gcTDcKdOBEgjFlEx8CzOQfPH+GHiqTKPl6MOmE9N
         fD6WG9HjYBPsJXYCLKPABmO5P6iIjxrtNxi7G/yX+Q87RBrVtKee/aTmx8KeDGksld0X
         VZWE+fsU11AJByVQxD9+aBoPObJVjkB2IFZuGqN2A0HFIC3nrQutaZg4ApwY8OTos+Y9
         xmPwfDEfG54Vj6GESInH60kW6ONHTXnWvEFZPKd0MSWAqKlUClyIBke80qCJWh2VSjPG
         jwSA==
X-Forwarded-Encrypted: i=1; AJvYcCWtcCpMz/jsMpwXO/HwlCy1VuooOE7VheuNZnjeVhDw0ZPgLTEb9EpR9aDEdg5tc0QVZIPhfyl0FYZ18dMV@lists.linaro.org
X-Gm-Message-State: AOJu0YxyK0p1nt6EEIy6w6lNtCeBzV9/KtNekyiumK/tS7o0MqrmuRtm
	TfTsytGzDdPy07jKGbLAPTYTqprRkIwzl7Kw9f28PmtU/gnSYXlTEJZhMmJePlrmKQ==
X-Google-Smtp-Source: AGHT+IF0SSg0hB/gqsdKj0/yr4GTl2yjAfBCnM5NlEWIac3bv4HTXek3j/tUDFkeNkN6x6DTtY/72Q==
X-Received: by 2002:a05:6512:110c:b0:52e:be1f:bf7f with SMTP id 2adb3069b0e04-536ad1808d1mr4286439e87.27.1727073212004;
        Sun, 22 Sep 2024 23:33:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-536870b4255sm3165429e87.259.2024.09.22.23.33.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 23:33:31 -0700 (PDT)
Date: Mon, 23 Sep 2024 09:33:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jens Wiklander <jens.wiklander@linaro.org>
Message-ID: <dhxvyshwi4qmcmwceokhqey2ww4azjcs6qrpnkgivdj7tv5cke@r36srvvbof6q>
References: <20240830070351.2855919-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240830070351.2855919-1-jens.wiklander@linaro.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 77A7043C0E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.167.48:from];
	TAGGED_RCPT(0.00)[dt];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.trustedfirmware.org,lists.infradead.org,nxp.com,gmail.com,mediatek.com,linaro.org,collabora.com,arm.com,google.com,amd.com,kernel.org];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: FJPUJ3GEBGJVM7DT44OT2T63JU25GNRE
X-Message-ID-Hash: FJPUJ3GEBGJVM7DT44OT2T63JU25GNRE
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, op-tee@lists.trustedfirmware.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, Olivier Masse <olivier.masse@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, Yong Wu <yong.wu@mediatek.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T . J . Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Sumit Garg <sumit.garg@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 0/4] Linaro restricted heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FJPUJ3GEBGJVM7DT44OT2T63JU25GNRE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Fri, Aug 30, 2024 at 09:03:47AM GMT, Jens Wiklander wrote:
> Hi,
> 
> This patch set is based on top of Yong Wu's restricted heap patch set [1].
> It's also a continuation on Olivier's Add dma-buf secure-heap patch set [2].
> 
> The Linaro restricted heap uses genalloc in the kernel to manage the heap
> carvout. This is a difference from the Mediatek restricted heap which
> relies on the secure world to manage the carveout.
> 
> I've tried to adress the comments on [2], but [1] introduces changes so I'm
> afraid I've had to skip some comments.

I know I have raised the same question during LPC (in connection to
Qualcomm's dma-heap implementation). Is there any reason why we are
using generic heaps instead of allocating the dma-bufs on the device
side?

In your case you already have TEE device, you can use it to allocate and
export dma-bufs, which then get imported by the V4L and DRM drivers.

I have a feeling (I might be completely wrong here) that by using
generic dma-buf heaps we can easily end up in a situation when the
userspace depends heavily on the actual platform being used (to map the
platform to heap names). I think we should instead depend on the
existing devices (e.g. if there is a TEE device, use an IOCTL to
allocate secured DMA BUF from it, otherwise check for QTEE device,
otherwise check for some other vendor device).

The mental experiment to check if the API is correct is really simple:
Can you use exactly the same rootfs on several devices without
any additional tuning (e.g. your QEMU, HiKey, a Mediatek board, Qualcomm
laptop, etc)?

> 
> This can be tested on QEMU with the following steps:
> repo init -u https://github.com/jenswi-linaro/manifest.git -m qemu_v8.xml \
>         -b prototype/sdp-v1
> repo sync -j8
> cd build
> make toolchains -j4
> make all -j$(nproc)
> make run-only
> # login and at the prompt:
> xtest --sdp-basic
> 
> https://optee.readthedocs.io/en/latest/building/prerequisites.html
> list dependencies needed to build the above.
> 
> The tests are pretty basic, mostly checking that a Trusted Application in
> the secure world can access and manipulate the memory.

- Can we test that the system doesn't crash badly if user provides
  non-secured memory to the users which expect a secure buffer?

- At the same time corresponding entities shouldn't decode data to the
  buffers accessible to the rest of the sytem.

> 
> Cheers,
> Jens
> 
> [1] https://lore.kernel.org/dri-devel/20240515112308.10171-1-yong.wu@mediatek.com/
> [2] https://lore.kernel.org/lkml/20220805135330.970-1-olivier.masse@nxp.com/
> 
> Changes since Olivier's post [2]:
> * Based on Yong Wu's post [1] where much of dma-buf handling is done in
>   the generic restricted heap
> * Simplifications and cleanup
> * New commit message for "dma-buf: heaps: add Linaro restricted dmabuf heap
>   support"
> * Replaced the word "secure" with "restricted" where applicable
> 
> Etienne Carriere (1):
>   tee: new ioctl to a register tee_shm from a dmabuf file descriptor
> 
> Jens Wiklander (2):
>   dma-buf: heaps: restricted_heap: add no_map attribute
>   dma-buf: heaps: add Linaro restricted dmabuf heap support
> 
> Olivier Masse (1):
>   dt-bindings: reserved-memory: add linaro,restricted-heap
> 
>  .../linaro,restricted-heap.yaml               |  56 ++++++
>  drivers/dma-buf/heaps/Kconfig                 |  10 ++
>  drivers/dma-buf/heaps/Makefile                |   1 +
>  drivers/dma-buf/heaps/restricted_heap.c       |  17 +-
>  drivers/dma-buf/heaps/restricted_heap.h       |   2 +
>  .../dma-buf/heaps/restricted_heap_linaro.c    | 165 ++++++++++++++++++
>  drivers/tee/tee_core.c                        |  38 ++++
>  drivers/tee/tee_shm.c                         | 104 ++++++++++-
>  include/linux/tee_drv.h                       |  11 ++
>  include/uapi/linux/tee.h                      |  29 +++
>  10 files changed, 426 insertions(+), 7 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/linaro,restricted-heap.yaml
>  create mode 100644 drivers/dma-buf/heaps/restricted_heap_linaro.c
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
