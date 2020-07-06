Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B53215B70
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Jul 2020 18:07:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C4167664F9
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  6 Jul 2020 16:07:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B6FEC664EB; Mon,  6 Jul 2020 16:07:21 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 468EB65FC3;
	Mon,  6 Jul 2020 16:06:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6283618D4
 for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2020 16:06:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 96B9B618C4; Mon,  6 Jul 2020 16:06:49 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 16712618C4
 for <linaro-mm-sig@lists.linaro.org>; Mon,  6 Jul 2020 16:06:48 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id q5so41621653wru.6
 for <linaro-mm-sig@lists.linaro.org>; Mon, 06 Jul 2020 09:06:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xCr/E2UfpfNx/3DS3JnlJgbuc+JNeFMMCFYGgSgWR/I=;
 b=r/dAV6vcAXfUoupS8b8zl/1LtvSTsNk5vDEFTeZRbVhZW5CmdsXqejxG2wfBUnviqK
 5zqfC3l4wtECKYvPge6Egq9XTu/7sX7O+vfFBAauwA/X3+brKTkLb/gnsOit5q0Ffvjx
 JE10Bdk0utf3LN6arlHopxGUJwaiQNricNekR9gdU7RX5BhAwX1oJsNmzIBWX/0IJplQ
 q3VvP/aKOds1QeZMHlFwgGGbYbW4/5A0M9LwSVrQVe4wgLBjlL7fC8vzMGIK29+ZxKvB
 rlO1eu+bN7I3f0XFJOYttk82yWQGLFCe2ekwEwo+n1+S1KcnHznDiKuFNlgO9gKaopi6
 7BIg==
X-Gm-Message-State: AOAM530tX3JylH9fxBjpq+Zfqo/vAoHtvFOB8XUHaDzcE0bOfLj2mZrk
 zBegH8nAZBbpbv+oSDCk1UtcqV7ZEOlG78g/if8=
X-Google-Smtp-Source: ABdhPJxdm0SXjqdvnZSqVXcNs0zZL+fxT8CbYJGVE6ad2dBa9So/9NH/7pLse8Fajv9YZRRN3Dtr8tqXQjjPfoZIRfs=
X-Received: by 2002:adf:fa89:: with SMTP id h9mr48658791wrr.120.1594051607057; 
 Mon, 06 Jul 2020 09:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200702015552.42377-1-yuehaibing@huawei.com>
In-Reply-To: <20200702015552.42377-1-yuehaibing@huawei.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 6 Jul 2020 12:06:36 -0400
Message-ID: <CADnq5_M35jhfPDCGaYxYBxMcptVJjcXw5qSy-PLTh0Z8vjSFZA@mail.gmail.com>
To: YueHaibing <yuehaibing@huawei.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@linux.ie>, "Kuehling, Felix" <Felix.Kuehling@amd.com>,
 tiancyin <tianci.yin@amd.com>, kernel-janitors@vger.kernel.org,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerd Hoffmann <kraxel@redhat.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Likun Gao <Likun.Gao@amd.com>, linux-media <linux-media@vger.kernel.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Hawking Zhang <Hawking.Zhang@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH -next] drm/amdgpu: remove set but not
	used variable 'adev'
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gVGh1LCBKdWwgMiwgMjAyMCBhdCAzOjI1IEFNIFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVh
d2VpLmNvbT4gd3JvdGU6Cj4KPiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUn
IHdhcm5pbmc6Cj4KPiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmM6IElu
IGZ1bmN0aW9uICdhbWRncHVfaW5pdF9tZW1fdHlwZSc6Cj4gZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X3R0bS5jOjgxOjI0OiB3YXJuaW5nOgo+ICB2YXJpYWJsZSAnYWRldicgc2V0
IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0LXNldC12YXJpYWJsZV0KPiAgIHN0cnVjdCBhbWRn
cHVfZGV2aWNlICphZGV2Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIF4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVhd2VpLmNvbT4KCldpdGggb3VyIGN1cnJl
bnQgLW5leHQgdHJlZSwgdGhpcyBwYXRjaCBpcyBubyBsb25nZXIgYXBwbGljYWJsZS4KCkFsZXgK
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYyB8IDQgLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9hbWRncHVfdHRtLmMKPiBpbmRleCBiYjk1NjI3YWQyY2MuLjgxOTk3MDJkMzM1NCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdHRtLmMKPiBAQCAtNzgsMTAg
Kzc4LDYgQEAKPiAgc3RhdGljIGludCBhbWRncHVfaW5pdF9tZW1fdHlwZShzdHJ1Y3QgdHRtX2Jv
X2RldmljZSAqYmRldiwgdWludDMyX3QgdHlwZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHN0cnVjdCB0dG1fbWVtX3R5cGVfbWFuYWdlciAqbWFuKQo+ICB7Cj4gLSAgICAgICBz
dHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldjsKPiAtCj4gLSAgICAgICBhZGV2ID0gYW1kZ3B1X3R0
bV9hZGV2KGJkZXYpOwo+IC0KPiAgICAgICAgIHN3aXRjaCAodHlwZSkgewo+ICAgICAgICAgY2Fz
ZSBUVE1fUExfU1lTVEVNOgo+ICAgICAgICAgICAgICAgICAvKiBTeXN0ZW0gbWVtb3J5ICovCj4K
Pgo+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vYW1kLWdmeApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0t
c2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9s
aXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
