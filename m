Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 69ED23E0D51
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 06:33:08 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E00A619CF
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Aug 2021 04:33:06 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 73A586065A; Thu,  5 Aug 2021 04:33:06 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 399EB6065A;
	Thu,  5 Aug 2021 04:33:03 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 974916085A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 04:33:01 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 92B8E60B4F; Thu,  5 Aug 2021 04:33:01 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by lists.linaro.org (Postfix) with ESMTPS id 8C1EB6085A
 for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Aug 2021 04:32:59 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 z6-20020a0568302906b02904f268d34f86so3591084otu.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 04 Aug 2021 21:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WPmSYKxM3hDxf4j2HGMY4KEBqM5rWpME+JCZGt0gVjw=;
 b=d6lgTlgZ4XtRuTrGFwjnfu6FMANDeGYNkF3HVRgAEz3zNJWeXPay2/77o5xUFwchyy
 fZ+RxFE6PKyFPBCA/PrBqv7fb7Ru/8F66ANYljfjpCZek/EgK9BnwwHV0KtaiOXGOBHC
 awwvqO+5eU4YhGFJjXO4OaZpU6kBceP9x20lc/jksWMCQHnZ8orlDNKyp4wj86imwnCD
 6YKPbF79Crl7D4d2jD8s0rV9wTcK0I3OjHVcLIxaFULDXF9ynJoOKulQ9ZfLCD/pGLv1
 zFEDI6x2G+joB+ZOQckwYoiMZ1LQcX9rian6mNKcuPDevnN7/eoOCrSnqHj1w21TH/v7
 BVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WPmSYKxM3hDxf4j2HGMY4KEBqM5rWpME+JCZGt0gVjw=;
 b=DFnheVDfoXXjxwrwJzAPFn9/SDC71lOKotlOlpkhX3t4RmEFV9OFwU1C5YTaRxQN9p
 f23bBdqnFhMOJ73n0cc+5tGemE12uAH14luNnSwTZATmo1/JYhcNzgZlaoWoRV4YD3aW
 QwG6k3CVZ8s9CmtWYI9M8+DAy4olm7psRR/sglBd5qoSo3bYQFA+JtimBb9dpO1ispHE
 M6RqkTBKVOLKsYiroOPSktB7p9pna4ZUtXGaW6qowuTcYYgRS7P23V4D+fRx716oNwvs
 0vfxSfZUlTKANi+kj3fRckMs5DkVLeob0dI8PfYCPMK5W3UOqhbQxsRxP6sxwINStriG
 KyGQ==
X-Gm-Message-State: AOAM532W6RdYRAFX+ZyeGCpWm/zHaTB5nW+VEpsPOrr41eUOlUXvwxGj
 AR4+RFziRdH7RSSOXtoyGd2mt16s3X8GFpzZWK8=
X-Google-Smtp-Source: ABdhPJxVoTU6a30brhTf1IeElqkRglO5k+x+tHkN0DLsz3Nd4Duri9Cmng8GzMH9mtkqISPNR9a5gCNiMTCPSizufzw=
X-Received: by 2002:a9d:70c3:: with SMTP id w3mr2216613otj.311.1628137979011; 
 Wed, 04 Aug 2021 21:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210804015132.29617-1-islituo@gmail.com>
 <f515880f-17f8-66b3-20d9-c1a46a252463@amd.com>
In-Reply-To: <f515880f-17f8-66b3-20d9-c1a46a252463@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 5 Aug 2021 00:32:47 -0400
Message-ID: <CADnq5_MSp=PAqbaTrS771ssKJzVpT2LyDTjZCSx2hh-DFo3MXg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: drop redundant null-pointer
 checks in amdgpu_ttm_tt_populate() and amdgpu_ttm_tt_unpopulate()
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
Cc: "Yang, Philip" <Philip.Yang@amd.com>, Oak Zeng <Oak.Zeng@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Dave Airlie <airlied@linux.ie>,
 "Kuehling, Felix" <Felix.Kuehling@amd.com>, xinhui pan <Xinhui.Pan@amd.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Nirmoy Das <nirmoy.das@amd.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, "Deucher,
 Alexander" <alexander.deucher@amd.com>, Dave Airlie <airlied@redhat.com>,
 TOTE Robot <oslab@tsinghua.edu.cn>, Jia-Ju Bai <baijiaju1990@gmail.com>,
 Tuo Li <islituo@gmail.com>, linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFdlZCwgQXVnIDQsIDIwMjEgYXQgMjo0OSBBTSBD
aHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+IHdyb3RlOgo+Cj4gQW0g
MDQuMDguMjEgdW0gMDM6NTEgc2NocmllYiBUdW8gTGk6Cj4gPiBUaGUgdmFyaWFsYmUgZ3R0IGlu
IHRoZSBmdW5jdGlvbiBhbWRncHVfdHRtX3R0X3BvcHVsYXRlKCkgYW5kCj4gPiBhbWRncHVfdHRt
X3R0X3VucG9wdWxhdGUoKSBpcyBndWFyYW50ZWVkIHRvIGJlIG5vdCBOVUxMIGluIHRoZSBjb250
ZXh0Lgo+ID4gVGh1cyB0aGUgbnVsbC1wb2ludGVyIGNoZWNrcyBhcmUgcmVkdW5kYW50IGFuZCBj
YW4gYmUgZHJvcHBlZC4KPiA+Cj4gPiBSZXBvcnRlZC1ieTogVE9URSBSb2JvdCA8b3NsYWJAdHNp
bmdodWEuZWR1LmNuPgo+ID4gU2lnbmVkLW9mZi1ieTogVHVvIExpIDxpc2xpdHVvQGdtYWlsLmNv
bT4KPgo+IFJldmlld2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
dHRtLmMgfCA0ICsrLS0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5j
Cj4gPiBpbmRleCAzYTU1ZjA4ZTAwZTEuLjcxOTUzOWJkNmM0NCAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV90dG0uYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3R0bS5jCj4gPiBAQCAtMTEyMSw3ICsxMTIxLDcgQEAg
c3RhdGljIGludCBhbWRncHVfdHRtX3R0X3BvcHVsYXRlKHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2
LAo+ID4gICAgICAgc3RydWN0IGFtZGdwdV90dG1fdHQgKmd0dCA9ICh2b2lkICopdHRtOwo+ID4K
PiA+ICAgICAgIC8qIHVzZXIgcGFnZXMgYXJlIGJvdW5kIGJ5IGFtZGdwdV90dG1fdHRfcGluX3Vz
ZXJwdHIoKSAqLwo+ID4gLSAgICAgaWYgKGd0dCAmJiBndHQtPnVzZXJwdHIpIHsKPiA+ICsgICAg
IGlmIChndHQtPnVzZXJwdHIpIHsKPiA+ICAgICAgICAgICAgICAgdHRtLT5zZyA9IGt6YWxsb2Mo
c2l6ZW9mKHN0cnVjdCBzZ190YWJsZSksIEdGUF9LRVJORUwpOwo+ID4gICAgICAgICAgICAgICBp
ZiAoIXR0bS0+c2cpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4g
PiBAQCAtMTE0Niw3ICsxMTQ2LDcgQEAgc3RhdGljIHZvaWQgYW1kZ3B1X3R0bV90dF91bnBvcHVs
YXRlKHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2LAo+ID4gICAgICAgc3RydWN0IGFtZGdwdV90dG1f
dHQgKmd0dCA9ICh2b2lkICopdHRtOwo+ID4gICAgICAgc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFk
ZXY7Cj4gPgo+ID4gLSAgICAgaWYgKGd0dCAmJiBndHQtPnVzZXJwdHIpIHsKPiA+ICsgICAgIGlm
IChndHQtPnVzZXJwdHIpIHsKPiA+ICAgICAgICAgICAgICAgYW1kZ3B1X3R0bV90dF9zZXRfdXNl
cl9wYWdlcyh0dG0sIE5VTEwpOwo+ID4gICAgICAgICAgICAgICBrZnJlZSh0dG0tPnNnKTsKPiA+
ICAgICAgICAgICAgICAgdHRtLT5zZyA9IE5VTEw7Cj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
