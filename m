Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DD662D5CE
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 10:04:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 566FF3F58E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Nov 2022 09:04:58 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lists.linaro.org (Postfix) with ESMTPS id A375B3EFA4
	for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Nov 2022 09:04:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=mail header.b=f6GwjHb6;
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 46.235.227.172 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass (policy=none) header.from=collabora.com
Received: from [192.168.2.32] (109-252-117-140.nat.spd-mgts.ru [109.252.117.140])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id CCB366602A93;
	Thu, 17 Nov 2022 09:04:38 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1668675879;
	bh=myO5od7Hy8GIA7LiyC3cxVd6NrDXoa1PiKxCCo4rsOo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f6GwjHb6vzocRth+JNvAYc2pN8BmnjT1HIKyO0WpgXx0Uzfz5r4DBLdklSRwEIePh
	 4myD3frJhoPsIahlC8nDpTtKTT5NZQ4UNzVLi9RLQaDJa7XNsOxvu1PumSaX65lip7
	 0M82mlguMT/WwH7yR/NzfW/t2igHJuUxZI8h+HJ82kS+re66fLRFj8Asx5N87kwvKy
	 yS18Cz8SVgiWwKIIHculrfu1KFzjZSILxXE7SBNCITGQN+c4DA12kz1O6Jl2KzKb3p
	 xGfWwmyWKz41NjDbDLB1Cbnk4l2NFLeZ+ME2tGPIMJuB4Arx6sZAv3trwRfDxqkfm9
	 8IbSUfkmwLV5g==
Message-ID: <970e798d-ea26-5e1e-ace8-7915a866f7c7@collabora.com>
Date: Thu, 17 Nov 2022 12:04:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>,
 Gerd Hoffmann <kraxel@redhat.com>
References: <20221117045842.27161-1-lukasz.wiecaszek@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20221117045842.27161-1-lukasz.wiecaszek@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: ---
X-Rspamd-Queue-Id: A375B3EFA4
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-0.50)[46.235.227.172:from];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:46.235.227.172];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[madras.collabora.co.uk:helo,madras.collabora.co.uk:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[googlemail.com,redhat.com];
	ASN(0.00)[asn:44684, ipnet:46.235.224.0/21, country:GB];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org]
Message-ID-Hash: WVEMWJAVRFPSTOPHM7KJCRBZDTJNFU2F
X-Message-ID-Hash: WVEMWJAVRFPSTOPHM7KJCRBZDTJNFU2F
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WVEMWJAVRFPSTOPHM7KJCRBZDTJNFU2F/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On 11/17/22 07:58, Lukasz Wiecaszek wrote:
> The reason behind that patch is associated with videobuf2 subsystem
> (or more genrally with v4l2 framework) and user created
> dma buffers (udmabuf). In some circumstances
> when dealing with V4L2_MEMORY_DMABUF buffers videobuf2 subsystem
> wants to use dma_buf_vmap() method on the attached dma buffer.
> As udmabuf does not have .vmap operation implemented,
> such dma_buf_vmap() natually fails.
> 
> videobuf2_common: __vb2_queue_alloc: allocated 3 buffers, 1 plane(s) each
> videobuf2_common: __prepare_dmabuf: buffer for plane 0 changed
> videobuf2_common: __prepare_dmabuf: failed to map dmabuf for plane 0
> videobuf2_common: __buf_prepare: buffer preparation failed: -14
> 
> The patch itself seems to be strighforward.
> It adds implementation of .vmap and .vunmap methods
> to 'struct dma_buf_ops udmabuf_ops'.
> .vmap method itself uses vm_map_ram() to map pages linearly
> into the kernel virtual address space.
> .vunmap removes mapping created earlier by .vmap.
> All locking and 'vmapping counting' is done in dma_buf.c
> so it seems to be redundant/unnecessary in .vmap/.vunmap.
> 
> Signed-off-by: Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>

If new patch version doesn't contain significant changes and you got
acks/reviews for the previous version, then you should add the given
acked-by and reviewed-by tags to the commit message by yourself.

-- 
Best regards,
Dmitry

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
