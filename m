Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCE54700DF
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Dec 2021 13:42:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C94461A49
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Dec 2021 12:42:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5E10F61EAF; Fri, 10 Dec 2021 12:42:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E342960B6E;
	Fri, 10 Dec 2021 12:42:10 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 4053560851
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 12:42:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 359A560B3B; Fri, 10 Dec 2021 12:42:08 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by lists.linaro.org (Postfix) with ESMTPS id 2BEA460851
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 12:42:06 +0000 (UTC)
Received: by mail-qv1-f41.google.com with SMTP id i12so7834356qvh.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Dec 2021 04:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=eO1oR3bssJVHG9Y26Y6bMlgt2qf5AyUrhg5Krs2dEgs=;
 b=nDHGUjCVp/Nzed1y5hlgRbG1rB1VpqFejneQkFUgnd/dOKi9xhgwHQdeHAU7UDO7dL
 LrYc4w9gGDZHDdSVQdmKeccT3bIBJv7XQs872y9Y9XmBMpsEqHghVBMYh1Jti+XjO52O
 5oG93oP6lP3YQYxXNywJisYGEi+hLH2uCUqTDaIh/Q1JWkkeuNkYpct45+7o7lGV0wEW
 xOqVnUOjCMIJRJDI3rkolyOSf0l2vFrO32O8YRFCag4oY1wM7wZGDFAM59KpogZqZPpm
 Iwzd5dUmyO/Y3bq4AshpPEOuX7z2kNyU7O/xsL9Dfv6wYok7wZgOUM+bfh0yRBCNlwSa
 QzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=eO1oR3bssJVHG9Y26Y6bMlgt2qf5AyUrhg5Krs2dEgs=;
 b=P0esFDHHILg3HeG917lVxRzHwwg6t6EMcZQqWfvikA0Ot9A//D7W4VyLY8sScM0H6k
 CC8b39ZXzGRV5aAk8N4v1/cRKqo4+GQ1L3GL8zlRolpTYs7RvV3gEAnECbFCMRp49GvM
 +J1/SHWDcWEZVueGEMB5ZyvZhxRkoztly/Xayvyzy4gaSA1nhIndne/KeIagwirsVHUC
 8psTSKZqByQ5QccXPTP8aiIBqr1j5o9dDnkhxqOj6dfr3sikiSIHdU0Kb+tGXtejhQzR
 0xay8faqmvYv3kkpZWHYUEJJrbkwlpGwGFzgeMvo+9xrHUCurQHJ8gf/TrBiZGpNtLN0
 1VGA==
X-Gm-Message-State: AOAM532ZUi9wGQVI3nwNv7A9t/vf+PW/CgbBw31HXupa72y9dBVBvFt+
 S0/1D8jTSF7hGgwI2VbLVlacSg==
X-Google-Smtp-Source: ABdhPJzRWU9mGRPVsRFVZCG14NYr/la8f9ijUEtK7ktXons/NVCP2JFtcdHPZxBHFIA6Sx/+qJ1MWA==
X-Received: by 2002:a0c:f6c5:: with SMTP id d5mr24246637qvo.111.1639140125710; 
 Fri, 10 Dec 2021 04:42:05 -0800 (PST)
Received: from ziepe.ca ([206.223.160.26])
 by smtp.gmail.com with ESMTPSA id n6sm1766301qtx.88.2021.12.10.04.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 04:42:05 -0800 (PST)
Received: from jgg by mlx with local (Exim 4.94) (envelope-from <jgg@ziepe.ca>)
 id 1mvfDw-001eiM-2r; Fri, 10 Dec 2021 08:42:04 -0400
Date: Fri, 10 Dec 2021 08:42:04 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shunsuke Mie <mie@igel.co.jp>
Message-ID: <20211210124204.GG6467@ziepe.ca>
References: <20211122110817.33319-1-mie@igel.co.jp>
 <CANXvt5oB8_2sDGccSiTMqeLYGi3Vuo-6NnHJ9PGgZZMv=fnUVw@mail.gmail.com>
 <20211207171447.GA6467@ziepe.ca>
 <CANXvt5rCayOcengPr7Z_aFmJaXwWj9VcWZbaHnuHj6=2CkPndA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANXvt5rCayOcengPr7Z_aFmJaXwWj9VcWZbaHnuHj6=2CkPndA@mail.gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [RFC PATCH v4 0/2] RDMA/rxe: Add dma-buf support
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
Cc: Damian Hobson-Garcia <dhobsong@igel.co.jp>,
 Takanari Hayama <taki@igel.co.jp>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma <linux-rdma@vger.kernel.org>, Tomohito Esaki <etom@igel.co.jp>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Doug Ledford <dledford@redhat.com>, Zhu Yanjun <zyjzyj2000@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, Sean Hefty <sean.hefty@intel.com>,
 Maor Gottlieb <maorg@nvidia.com>,
 Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Jianxin Xiong <jianxin.xiong@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCBEZWMgMTAsIDIwMjEgYXQgMDg6Mjk6MjRQTSArMDkwMCwgU2h1bnN1a2UgTWllIHdy
b3RlOgo+IEhpIEphc29uLAo+IFRoYW5rIHlvdSBmb3IgcmVwbHlpbmcuCj4gCj4gMjAyMeW5tDEy
5pyIOOaXpSjmsLQpIDI6MTQgSmFzb24gR3VudGhvcnBlIDxqZ2dAemllcGUuY2E+Ogo+ID4KPiA+
IE9uIEZyaSwgRGVjIDAzLCAyMDIxIGF0IDEyOjUxOjQ0UE0gKzA5MDAsIFNodW5zdWtlIE1pZSB3
cm90ZToKPiA+ID4gSGkgbWFpbnRhaW5lcnMsCj4gPiA+Cj4gPiA+IENvdWxkIHlvdSBwbGVhc2Ug
cmV2aWV3IHRoaXMgcGF0Y2ggc2VyaWVzPwo+ID4KPiA+IFdoeSBpcyBpdCBSRkM/Cj4gPgo+ID4g
SSdtIGNvbmZ1c2VkIHdoeSB0aGlzIGlzIHVzZWZ1bD8KPiA+Cj4gPiBUaGlzIGNhbid0IGRvIGNv
cHkgZnJvbSBNTUlPIG1lbW9yeSwgc28gaXQgc2hvdWxkbid0IGJlIGNvbXBhdGlibGUKPiA+IHdp
dGggdGhpbmdzIGxpa2UgR2F1ZGkgLSBkb2VzIHNvbWV0aGluZyBwcmV2ZW50IHRoaXM/Cj4gSSB0
aGluayBpZiBhbiBleHBvcnQgb2YgdGhlIGRtYS1idWYgc3VwcG9ydHMgdm1hcCwgQ1BVIGlzIGFi
bGUgdG8gYWNjZXNzIHRoZQo+IG1taW8gbWVtb3J5Lgo+IAo+IElzIGl0IHdyb25nPyBJZiB0aGlz
IGlzIHdyb25nLCB0aGVyZSBpcyBubyBhZHZhbnRhZ2VzIHRoaXMgY2hhbmdlcy4uCgpJIGRvbid0
IGtub3cgd2hhdCB0aGUgZG1hYnVmIGZvbGtzIGRpZCwgYnV0IHllcywgaXQgaXMgd3JvbmcuCgpJ
T01FTSBtdXN0IGJlIHRvdWNoZWQgdXNpbmcgb25seSBzcGVjaWFsIGFjY2Vzc29ycywgc29tZSBw
bGF0Zm9ybXMKY3Jhc2ggaWYgeW91IGRvbid0IGRvIHRoaXMuIEV2ZW4geDg2IHdpbGwgY3Jhc2gg
aWYgeW91IHRvdWNoIGl0IHdpdGgKc29tZXRoaW5nIGxpa2UgYW4gWE1NIG9wdGltaXplZCBtZW1j
cHkuCgpDaHJpc3RpYW4/IElmIHRoZSB2bWFwIHN1Y2NlZWRzIHdoYXQgcnVsZXMgbXVzdCB0aGUg
Y2FsbGVyIHVzZSB0bwphY2Nlc3MgdGhlIG1lbW9yeT8KCkphc29uCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
