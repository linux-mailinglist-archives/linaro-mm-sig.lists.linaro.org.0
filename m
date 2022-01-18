Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9702F491F98
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jan 2022 07:57:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8C6973EE67
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jan 2022 06:56:59 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 7395E3EE08
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jan 2022 06:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642489016;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=I5up6dZy0ZUANufFKUFgvfkxOTraxEVper7GxcI8Tho=;
	b=Ev73GMYrRFEFduft8bEl+KjHmNdXaGo60DPLZ8DQRDglvGw5T+G/f/KzVRHZG/qoHu0nGK
	wPWdwUrRA8P8/jH8KxosVl1elGzSmfFburxFVesHZjsbUO+vFCDYE6gWm+dDXMgtlsZoVL
	glYX0GOdrMek0zIMZ/mkp0Y5arbdyb4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-550-OcFCS_5ROZqcaHB5-A-z2g-1; Tue, 18 Jan 2022 01:56:54 -0500
X-MC-Unique: OcFCS_5ROZqcaHB5-A-z2g-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00B6B192AB76;
	Tue, 18 Jan 2022 06:56:53 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.192.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4C5D10550B1;
	Tue, 18 Jan 2022 06:56:52 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
	id F19FC18000A6; Tue, 18 Jan 2022 07:56:50 +0100 (CET)
Date: Tue, 18 Jan 2022 07:56:50 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <20220118065650.fi74ebzqmmz4e5io@sirius.home.kraxel.org>
References: <20211230142649.23022-1-paskripkin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211230142649.23022-1-paskripkin@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Message-ID-Hash: PXTRCRX5F6Z2LPMB5RLF3CD5BOHGPVVI
X-Message-ID-Hash: PXTRCRX5F6Z2LPMB5RLF3CD5BOHGPVVI
X-MailFrom: kraxel@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] udmabuf: validate ubuf->pagecount
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PXTRCRX5F6Z2LPMB5RLF3CD5BOHGPVVI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Dec 30, 2021 at 05:26:49PM +0300, Pavel Skripkin wrote:
> Syzbot has reported GPF in sg_alloc_append_table_from_pages(). The
> problem was in ubuf->pages == ZERO_PTR.
> 
> ubuf->pagecount is calculated from arguments passed from user-space. If
> user creates udmabuf with list.size == 0 then ubuf->pagecount will be
> also equal to zero; it causes kmalloc_array() to return ZERO_PTR.
> 
> Fix it by validating ubuf->pagecount before passing it to
> kmalloc_array().
> 
> Fixes: fbb0de795078 ("Add udmabuf misc device")
> Reported-and-tested-by: syzbot+2c56b725ec547fa9cb29@syzkaller.appspotmail.com
> Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
> ---

Pushed to drm-misc-next.

thanks,
  Gerd

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
