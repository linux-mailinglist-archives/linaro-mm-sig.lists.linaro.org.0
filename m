Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CE82AC55B
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 20:48:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 786B3665E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  9 Nov 2020 19:48:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 627F8665F3; Mon,  9 Nov 2020 19:48:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4E321665B5;
	Mon,  9 Nov 2020 19:48:11 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 232AC6621A
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 19:48:08 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 08573665B5; Mon,  9 Nov 2020 19:48:08 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 707866621A
 for <linaro-mm-sig@lists.linaro.org>; Mon,  9 Nov 2020 19:48:06 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id t67so624682wmt.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 09 Nov 2020 11:48:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3WLOB+DsIhONnbyWJDNWa6PF7p/j2odAKBqntDd2Dp8=;
 b=OQLySyq3lU0YEkGn/+WJVx/a9RsYSPBULyqd+iTIsgMAImbZ8epVEY8tYWgNMaQbmr
 XcnY77I+L1A4eP6Tqlo+KXX4cNnVADmaeDTYV+PuaS5a3ZpGU+Ij32fDYrf6Wvbq3IZN
 3YYOiaM4vmXXZyp6MwoBrzH/ycAlpg2xJsiYqO0yVkkFkgS1C3c+w3IGJ9h2K6sLTqJh
 Zi/KFP/+bPn0gacR2Q/Eo0k0TCOm1DKQYwL3Ooo2wmP7imuBIG3TIsm/5s73xhnLpcsJ
 bTDeRBimttw+jnkPL466Q0mrCS2h1jpZsys5w+/D243gDCcBNvh/M6DMvuiekFGG3xpO
 Oalg==
X-Gm-Message-State: AOAM53343WdmXAD3uY+Rk3NiEyYlqKIlFhjAZ0JpKAzcDw5hQIlOGLb/
 5cizxf1n1kK/Ye6qWZKk80xAUslx4Fo6XpjtbPg=
X-Google-Smtp-Source: ABdhPJyKHv/hmDBOb9KR8vgX4EYpgNR+v0BD8Y47n9XpurORBE4ESC/uFvjcz4SC0hsXS9txtw0C628iOkCL9RwhChA=
X-Received: by 2002:a1c:80cb:: with SMTP id b194mr795848wmd.73.1604951285618; 
 Mon, 09 Nov 2020 11:48:05 -0800 (PST)
MIME-Version: 1.0
References: <20201109083824.14664-1-unixbhaskar@gmail.com>
In-Reply-To: <20201109083824.14664-1-unixbhaskar@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 9 Nov 2020 14:47:54 -0500
Message-ID: <CADnq5_N3vCB4yBdwozt-04f5LLRVPk_SNm0s=z+u_Rf-C7S0gQ@mail.gmail.com>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, Greg KH <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Kazlauskas,
 Nicholas" <nicholas.kazlauskas@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Huang Rui <ray.huang@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>, Jean Delvare <jdelvare@suse.de>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drivers: amdgpu: amdgpu_display.c: Fix
 a spelling doens\'t to doesn\'t
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCAzOjUyIEFNIEJoYXNrYXIgQ2hvd2RodXJ5IDx1bml4Ymhh
c2thckBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gcy9kb2Vucyd0L2RvZXNuJ3QvcAo+Cj4gU2lnbmVk
LW9mZi1ieTogQmhhc2thciBDaG93ZGh1cnkgPHVuaXhiaGFza2FyQGdtYWlsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXkuYyB8IDIgKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kaXNwbGF5LmMKPiBpbmRleCA3Y2M3YWYyYTY4
MjIuLmE5MmNiMTM3MjkzYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1k
Z3B1X2Rpc3BsYXkuYwo+IEBAIC01MTIsNyArNTEyLDcgQEAgdWludDMyX3QgYW1kZ3B1X2Rpc3Bs
YXlfc3VwcG9ydGVkX2RvbWFpbnMoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCj4gICAgICAg
ICAgKiB0byBhdm9pZCBoYW5nIGNhdXNlZCBieSBwbGFjZW1lbnQgb2Ygc2Nhbm91dCBCTyBpbiBH
VFQgb24gY2VydGFpbgo+ICAgICAgICAgICogQVBVcy4gU28gZm9yY2UgdGhlIEJPIHBsYWNlbWVu
dCB0byBWUkFNIGluIGNhc2UgdGhpcyBhcmNoaXRlY3R1cmUKPiAgICAgICAgICAqIHdpbGwgbm90
IGFsbG93IFVTV0MgbWFwcGluZ3MuCj4gLSAgICAgICAgKiBBbHNvLCBkb24ndCBhbGxvdyBHVFQg
ZG9tYWluIGlmIHRoZSBCTyBkb2Vucyd0IGhhdmUgVVNXQyBmYWxnIHNldC4KPiArICAgICAgICAq
IEFsc28sIGRvbid0IGFsbG93IEdUVCBkb21haW4gaWYgdGhlIEJPIGRvZXNuJ3QgaGF2ZSBVU1dD
IGZhbGcgc2V0LgoKQXBwbGllZC4gQ2FyZSB0byBzZW5kIGEgcGF0Y2ggdG8gYWxzbyBmaXggdGhl
IHNwZWxsaW5nIG9mICJmbGFnIj8KClRoYW5rcywKCkFsZXgKCgo+ICAgICAgICAgICovCj4gICAg
ICAgICBpZiAoKGJvX2ZsYWdzICYgQU1ER1BVX0dFTV9DUkVBVEVfQ1BVX0dUVF9VU1dDKSAmJgo+
ICAgICAgICAgICAgIGFtZGdwdV9ib19zdXBwb3J0X3Vzd2MoYm9fZmxhZ3MpICYmCj4gLS0KPiAy
LjI2LjIKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
