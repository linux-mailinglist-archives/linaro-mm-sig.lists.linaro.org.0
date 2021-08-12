Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 409653E9F73
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 09:32:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C87CC632A1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 12 Aug 2021 07:32:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AF4E561417; Thu, 12 Aug 2021 07:32:26 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0BBBC60A66;
	Thu, 12 Aug 2021 07:32:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD7176075B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 07:32:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id BB4ED60A66; Thu, 12 Aug 2021 07:32:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by lists.linaro.org (Postfix) with ESMTPS id AF0906075B
 for <linaro-mm-sig@lists.linaro.org>; Thu, 12 Aug 2021 07:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1628753539;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6f58TOtWer368hRYhnkXwLD6FguP4+evhzIoFM/JA6Q=;
 b=WlGPS6dB3FlAz+5a6r3ElKtTNmh8tJkAXea69wnZfVpTNrdQWf+xHQZ6Z9tXGK5XUoFHtz
 10XVGlzpo3A9XS3E4mcvmYI8hJCS4iL0Ir82b3EZ7Oh/pUoI7CSVaj0Uui4aoreVi24NOW
 ZdXVFa6kWxAOp9O94H284Jwokd9SUYY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-Hu38IQyYM4ev8s7frURskQ-1; Thu, 12 Aug 2021 03:32:17 -0400
X-MC-Unique: Hu38IQyYM4ev8s7frURskQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23F558799E0;
 Thu, 12 Aug 2021 07:32:16 +0000 (UTC)
Received: from sirius.home.kraxel.org (unknown [10.39.193.3])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F3616A05F;
 Thu, 12 Aug 2021 07:32:15 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 088651800922; Thu, 12 Aug 2021 09:32:14 +0200 (CEST)
Date: Thu, 12 Aug 2021 09:32:14 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <20210812073214.xwflqw7c6cpt3n7p@sirius.home.kraxel.org>
References: <20210811175052.21254-1-paskripkin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210811175052.21254-1-paskripkin@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH next] udmabuf: fix general protection
 fault in udmabuf_create
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
Cc: linux-kernel@vger.kernel.org, christian.koenig@amd.com,
 linaro-mm-sig@lists.linaro.org,
 syzbot+e9cd3122a37c5d6c51e8@syzkaller.appspotmail.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

On Wed, Aug 11, 2021 at 08:50:52PM +0300, Pavel Skripkin wrote:
> Syzbot reported general protection fault in udmabuf_create. The problem
> was in wrong error handling.
> 
> In commit 16c243e99d33 ("udmabuf: Add support for mapping hugepages (v4)")
> shmem_read_mapping_page() call was replaced with find_get_page_flags(),
> but find_get_page_flags() returns NULL on failure instead PTR_ERR().
> 
> Wrong error checking was causing GPF in get_page(), since passed page
> was equal to NULL. Fix it by changing if (IS_ER(!hpage)) to if (!hpage)
> 
> Reported-by: syzbot+e9cd3122a37c5d6c51e8@syzkaller.appspotmail.com
> Fixes: 16c243e99d33 ("udmabuf: Add support for mapping hugepages (v4)")
> Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>

Pushed to drm-misc-next.

thanks,
  Gerd

_______________________________________________
Linaro-mm-sig mailing list
Linaro-mm-sig@lists.linaro.org
https://lists.linaro.org/mailman/listinfo/linaro-mm-sig
