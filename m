Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9F5365A42
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 15:36:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DFDE966795
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 20 Apr 2021 13:36:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D11C4667AA; Tue, 20 Apr 2021 13:36:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9230667B6;
	Tue, 20 Apr 2021 13:35:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B66BB66795
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 13:35:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A0FE8667B6; Tue, 20 Apr 2021 13:35:46 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by lists.linaro.org (Postfix) with ESMTPS id 8C4C866795
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 13:35:45 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id j5so36677462wrn.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 20 Apr 2021 06:35:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h0665Q9PlPd4DaUIk9mWhDK12nGo1R6bvXcfes8jy7o=;
 b=eIEt/SIpUAGZZfUSp7NGz6N+XoGDtxyANy4CrjCgZQgBn1QGZEiyNDqL1gyHAU5O0m
 g7xdNUDdc6fh5nSVaEXYBzDQyr1GYZNJU03W3iwYKYrJVVVGPRsz9s3Fbs0NwOXgPgvR
 XRU05fTw6O10DQ5edcZLLzUdJglfiR0yb0Tr5MNaz6WG/WAPGQk9TCOgt0DQPuSaOwEB
 THKQgG/MpvalXCWRIXbL34E+E4iSrC7Bg7/bE9AyvUHf9lHq9rU7BU/KdBGcgDcTRIsr
 KyNXMBmuQmWbwYTQCcL1pKxEO3WCUah8iGaJ7uokBeBd+Z9BXmZXJlmpVo5r1MMJABcN
 b7fg==
X-Gm-Message-State: AOAM530N3dkKIQxccVvAUGDDVLXYt/h66bjS5NGNeNlQPVZtuPgTccUL
 tj5YId/lv+9oprIIJ8nVC0EVkGWSt4SwofRBLWqBSg==
X-Google-Smtp-Source: ABdhPJxuJXO0zzw6aKgSeT2Hl07jbqe9w8e2wOp9LJynwiaXBlRSa/MVfrZLfC4Tl9Tj/xypxtar5EW0p1iPvPkA0Do=
X-Received: by 2002:a5d:4b8b:: with SMTP id b11mr20538465wrt.256.1618925744656; 
 Tue, 20 Apr 2021 06:35:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210416123352.10747-1-peter.enderborg@sony.com>
In-Reply-To: <20210416123352.10747-1-peter.enderborg@sony.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Tue, 20 Apr 2021 14:34:58 +0100
Message-ID: <CAPj87rM9gaPS5SOHo3CKUU=5H0PDaG28r8BXimhVp-wmCbMvWA@mail.gmail.com>
To: Peter Enderborg <peter.enderborg@sony.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Michal Hocko <mhocko@suse.com>, Matthew Wilcox <willy@infradead.org>,
 NeilBrown <neilb@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Alexey Dobriyan <adobriyan@gmail.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Shakeel Butt <shakeelb@google.com>, Mike Rapoport <rppt@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Muchun Song <songmuchun@bytedance.com>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Roman Gushchin <guro@fb.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Add DmaBufTotal counter in
	meminfo
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
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
Content-Type: multipart/mixed; boundary="===============2309438735106835939=="
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

--===============2309438735106835939==
Content-Type: multipart/alternative; boundary="000000000000eda49405c067851b"

--000000000000eda49405c067851b
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

On Fri, 16 Apr 2021 at 13:34, Peter Enderborg <peter.enderborg@sony.com>
wrote:

> This adds a total used dma-buf memory. Details
> can be found in debugfs, however it is not for everyone
> and not always available. dma-buf are indirect allocated by
> userspace. So with this value we can monitor and detect
> userspace applications that have problems.
>

FWIW, this won't work super well for Android where gralloc is implemented
as a system service, so all graphics usage will instantly be accounted to
it.

Cheers,
Daniel

--000000000000eda49405c067851b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Peter,</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Fri, 16 Apr 2021 at 13:34, Peter Enderbor=
g &lt;<a href=3D"mailto:peter.enderborg@sony.com">peter.enderborg@sony.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">T=
his adds a total used dma-buf memory. Details<br>
can be found in debugfs, however it is not for everyone<br>
and not always available. dma-buf are indirect allocated by<br>
userspace. So with this value we can monitor and detect<br>
userspace applications that have problems.<br></blockquote><div><br></div><=
div>FWIW, this won&#39;t work super well for Android where gralloc is imple=
mented as a system service, so all graphics usage will instantly be account=
ed to it.</div><div><br></div><div>Cheers,</div><div>Daniel=C2=A0</div></di=
v></div>

--000000000000eda49405c067851b--

--===============2309438735106835939==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK

--===============2309438735106835939==--
