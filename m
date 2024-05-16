Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6598C71C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 09:00:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F403447D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 May 2024 07:00:48 +0000 (UTC)
Received: from mail-4317.proton.ch (mail-4317.proton.ch [185.70.43.17])
	by lists.linaro.org (Postfix) with ESMTPS id 94DDE3F624
	for <linaro-mm-sig@lists.linaro.org>; Thu, 16 May 2024 07:00:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=emersion.fr header.s=protonmail3 header.b=IGAZBS1y;
	spf=pass (lists.linaro.org: domain of contact@emersion.fr designates 185.70.43.17 as permitted sender) smtp.mailfrom=contact@emersion.fr;
	dmarc=pass (policy=none) header.from=emersion.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
	s=protonmail3; t=1715842836; x=1716102036;
	bh=leylzAvFIkYOhbcV7jem/Mh2/ncqrFvUUBxajYae3KI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=IGAZBS1ywHjG+Qgfei0nIbaiB88Bj8RWeijm4CgpCI+BXXoT0Jqpr6jswQEfiY7IX
	 MVCr7iqpB0qwoeJi50pQUg+3U41aIt4dfFCARDTLqbw+JWPR+3yPE9J/koviw4SpOF
	 hnti8NZzSUk+LYyYz2U729onxAw4A5vJkCW4EPoGjHBk1JdWakj3I16Rq+2EN4N3t+
	 oDrKFRBJ1Zv8bt/9uhGCOhE5nsG+4VRisMznQadNpDZjRygyAmVy8H2xQKe4Xm1oVE
	 61QhmxqvrKlXpX4uoZwJ3WnQrLtOA1TxdwNL4IdMWozxVJyEAEEUIw4LkxKh4/Qjcr
	 ZAi7jKUmPdUcQ==
Date: Thu, 16 May 2024 07:00:31 +0000
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <ttHZ6_mxyApQbVuEg7V20i3gCZ0nCr26aymroG2zxHv3CMRAA6RqZsUxNY3eBiYjycfb1r1WQdyMTwJO_I38FsJQMHA_Zdiqbbjs_YJWKr8=@emersion.fr>
In-Reply-To: <20240514204223.GN32013@pendragon.ideasonboard.com>
References: <3c0c7e7e-1530-411b-b7a4-9f13e0ff1f9e@redhat.com> <Zjpmu_Xj6BPdkDPa@phenom.ffwll.local> <20240507183613.GB20390@pendragon.ideasonboard.com> <4f59a9d78662831123cc7e560218fa422e1c5eca.camel@collabora.com> <Zjs5eM-rRoh6WYYu@phenom.ffwll.local> <20240513-heretic-didactic-newt-1d6daf@penduick> <20240513083417.GA18630@pendragon.ideasonboard.com> <c4db22ad94696ed22282bf8dad15088d94ade5d6.camel@collabora.com> <20240514204223.GN32013@pendragon.ideasonboard.com>
Feedback-ID: 1358184:user:proton
X-Pm-Message-ID: 0685ead30ccf82fc3e353c2ffb3045b08edb5c59
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 94DDE3F624
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	SUBJECT_ENDS_QUESTION(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[emersion.fr,none];
	R_SPF_ALLOW(-0.20)[+ip4:185.70.43.0/24];
	R_DKIM_ALLOW(-0.20)[emersion.fr:s=protonmail3];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[185.70.43.17:from];
	MIME_GOOD(-0.10)[text/plain];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ARC_NA(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:62371, ipnet:185.70.43.0/24, country:CH];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,redhat.com,linaro.org,arm.com,google.com,amd.com,0pointer.de,canonical.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_COUNT_ZERO(0.00)[0];
	FROM_EQ_ENVFROM(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[emersion.fr:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7URCYE2NS5G3UCU54ZL3WLLIK4ITGHS2
X-Message-ID-Hash: 7URCYE2NS5G3UCU54ZL3WLLIK4ITGHS2
X-MailFrom: contact@emersion.fr
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Maxime Ripard <mripard@redhat.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Hans de Goede <hdegoede@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Lennart Poettering <mzxreary@0pointer.de>, Robert Mader <robert.mader@collabora.com>, Sebastien Bacher <sebastien.bacher@canonical.com>, Linux Media Mailing List <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, linaro-mm-sig@lists.linaro.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Milan Zamazal <mzamazal@redhat.com>, Andrey Konovalov <andrey.konovalov.ynk@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: Safety of opening up /dev/dma_heap/* to physically present users (udev uaccess tag) ?
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7URCYE2NS5G3UCU54ZL3WLLIK4ITGHS2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tuesday, May 14th, 2024 at 22:42, Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> My experience on Arm platforms is that the KMS drivers offer allocation
> for scanout buffers, not render buffers, and mostly using the dumb
> allocator API. If the KMS device can scan out YUV natively, YUV buffer
> allocation should be supported. Am I missing something here ?

Note that dumb buffers are only intended for simple software-rendering
use-cases. Anything more complicated (e.g. involving GPU rendering)
should use another mechanism.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
