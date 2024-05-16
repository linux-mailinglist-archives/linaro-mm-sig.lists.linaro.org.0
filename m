Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B03C8C751D
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 13:21:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4620E447BD
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 11:21:15 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lists.linaro.org (Postfix) with ESMTPS id E043C3F52A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 11:21:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b=Gue0RRZr;
	spf=pass (lists.linaro.org: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com;
	dmarc=none
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1BD7527C;
	Thu, 16 May 2024 13:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1715858455;
	bh=zOS8dze4DHU+JcfmWuNExW36s1PrTMzSDeM83PQTAEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gue0RRZrMUUTfv1S3jH6uD0PSmsbRLpG4yyPFWD3DIXNYU2EguRKev+56NuegTm6N
	 7ZTaGR+m0g0q+G5H+3/QBGhDxR7exhKyoV/ZrIrTylqf4XM1NMkHON/NdkeJRgfJiW
	 0ZOaHcJADgAdNCuAb8yDlbYShhfeAjl4z9UNm9Gg=
Date: Thu, 16 May 2024 14:20:55 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Simon Ser <contact@emersion.fr>
Message-ID: <20240516112055.GB5253@pendragon.ideasonboard.com>
References: <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com>
 <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local>
 <20240507183613.GB20390@pendragon.ideasonboard.com>
 <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com>
 <Zjs5eM-rRoh6WYYu@phenom.ffwll.local>
 <20240513-heretic-didactic-newt-1d6daf@penduick>
 <20240513083417.GA18630@pendragon.ideasonboard.com>
 <c4db22ad94696ed22282bf8dad15088d94ade5d6.camel@collabora.com>
 <20240514204223.GN32013@pendragon.ideasonboard.com>
 <ttHZ6_mxyApQbVuEg7V20i3gCZ0nCr26aymroG2zxHv3CMRAA6RqZsUxNY3eBiYjycfb1r1WQdyMTwJO_I38FsJQMHA_Zdiqbbjs_YJWKr8=@emersion.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ttHZ6_mxyApQbVuEg7V20i3gCZ0nCr26aymroG2zxHv3CMRAA6RqZsUxNY3eBiYjycfb1r1WQdyMTwJO_I38FsJQMHA_Zdiqbbjs_YJWKr8=@emersion.fr>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E043C3F52A
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.90 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_NA(0.00)[ideasonboard.com];
	FREEMAIL_CC(0.00)[collabora.com,redhat.com,linaro.org,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:29169, ipnet:213.167.240.0/20, country:FR];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: OCZALVJ4GGOUVDHYWXIH3LLKMTQHQITO
X-Message-ID-Hash: OCZALVJ4GGOUVDHYWXIH3LLKMTQHQITO
X-MailFrom: laurent.pinchart@ideasonboard.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Maxime Ripard <mripard@redhat.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OCZALVJ4GGOUVDHYWXIH3LLKMTQHQITO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, May 16, 2024 at 07:00:31AM +0000, Simon Ser wrote:
> On Tuesday, May 14th, 2024 at 22:42, Laurent Pinchart wrote:
> 
> > My experience on Arm platforms is that the KMS drivers offer allocation
> > for scanout buffers, not render buffers, and mostly using the dumb
> > allocator API. If the KMS device can scan out YUV natively, YUV buffer
> > allocation should be supported. Am I missing something here ?
> 
> Note that dumb buffers are only intended for simple software-rendering
> use-cases. Anything more complicated (e.g. involving GPU rendering)
> should use another mechanism.

Sure. Even if dumb buffers may work for GPU rendering in some cases,
there's no guarantee they will, so they shouldn't be used.

My comment was related to scanout buffers, as I was puzzled by Nicolas
mentioning how "KMS drivers only offer allocation for render buffers".
On Arm platforms the render buffers are allocated on the GPU's DRM
device as far as I understand, while the KMS drivers allocate scanout
buffers using the dumb buffers API.

-- 
Regards,

Laurent Pinchart
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
