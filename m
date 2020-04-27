Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6051BADF7
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2020 21:31:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38CA3615AF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2020 19:31:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2D6E860F2C; Mon, 27 Apr 2020 19:31:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 796D760E02;
	Mon, 27 Apr 2020 19:31:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1165E60DD0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2020 19:31:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E7E2F60E02; Mon, 27 Apr 2020 19:31:09 +0000 (UTC)
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by lists.linaro.org (Postfix) with ESMTPS id B2C5E60DD0
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2020 19:31:08 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id e26so162759wmk.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 27 Apr 2020 12:31:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HK4ed8QncVCh1Vo6RkjCKVWlusnpc0yRSsJhSHttXjo=;
 b=HZKnFmaUZgJld85ahgJGN+N8XwE+TXcA+yJxcdcEJkJ/8n5rIYgWOPgGjBhNPam9oy
 c1MKFHVxf1nRKkH2JRav9AxFMQFiWz1lsKG9EBwf4kQFUBLqkROd3S//PVnmIGBHZIRM
 lyq/ZSO25aufv2A19sUSlRmCDyXA+YqvisvsFNE8NQpXYqCiw/sescXZpp6cgEFxFECR
 qW0GIj/NJ2HZRowQ5pt35SPSggW/NflbV0pdz0HvsMhygTHaEQjS/wxXwMMop2UDfJor
 IHKgX9zq07h8Ll34JwsyYoACHMrXgyD7xmLmBBWAYuEEsPfIJXXzllr+1Ye5LXvE+SUd
 zujA==
X-Gm-Message-State: AGi0PuYivgJCJX+fNeHQHmwABOtb13JpCNKKcc/Ww2Av5oOwh1tajhHF
 YesKHMFf+or/rra2WJw/NVjzi962UUKGuxxvJCvrzA==
X-Google-Smtp-Source: APiQypIB/XGkXii6L27d5qf83YyxYGAbhK8c1MrsYRHdgjJbWhupl2AuXbKYhWqnRF9Fu63Y3D4QathCLMexhIHAI08=
X-Received: by 2002:a1c:6344:: with SMTP id x65mr284093wmb.56.1588015867738;
 Mon, 27 Apr 2020 12:31:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200427063655.21169-1-yanaijie@huawei.com>
 <69374bbb-7e17-8b3a-8a24-591de2c55ee3@amd.com>
In-Reply-To: <69374bbb-7e17-8b3a-8a24-591de2c55ee3@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 27 Apr 2020 15:30:56 -0400
Message-ID: <CADnq5_OK-uhUgxuemTy4gzYWZuoYJsYRgR+t5k7bC0CMXAKF+Q@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Chunming Zhou <David1.Zhou@amd.com>, Jason Yan <yanaijie@huawei.com>,
 Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: remove conversion to bool
	in amdgpu_device.c
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

QXBwbGllZC4gIHRoYW5rcyEKCkFsZXgKCk9uIE1vbiwgQXByIDI3LCAyMDIwIGF0IDQ6MDIgQU0g
Q2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFt
IDI3LjA0LjIwIHVtIDA4OjM2IHNjaHJpZWIgSmFzb24gWWFuOgo+ID4gVGhlICc+JyBleHByZXNz
aW9uIGl0c2VsZiBpcyBib29sLCBubyBuZWVkIHRvIGNvbnZlcnQgaXQgdG8gYm9vbCBhZ2Fpbi4K
PiA+IFRoaXMgZml4ZXMgdGhlIGZvbGxvd2luZyBjb2NjaWNoZWNrIHdhcm5pbmc6Cj4gPgo+ID4g
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jOjMwMDQ6NjgtNzM6IFdB
Uk5JTkc6Cj4gPiBjb252ZXJzaW9uIHRvIGJvb2wgbm90IG5lZWRlZCBoZXJlCj4gPgo+ID4gU2ln
bmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBodWF3ZWkuY29tPgo+Cj4gUmV2aWV3ZWQt
Ynk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgo+ID4gLS0t
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyB8IDIgKy0K
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2Uu
YyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwo+ID4gaW5kZXgg
M2Q2MDFkNWRkNWFmLi5hZDk0ZGUzNjMyZDggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwo+ID4gQEAgLTMwMDAsNyArMzAwMCw3IEBAIGludCBh
bWRncHVfZGV2aWNlX2luaXQoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCj4gPiAgICAgICBJ
TklUX1dPUksoJmFkZXYtPnhnbWlfcmVzZXRfd29yaywgYW1kZ3B1X2RldmljZV94Z21pX3Jlc2V0
X2Z1bmMpOwo+ID4KPiA+ICAgICAgIGFkZXYtPmdmeC5nZnhfb2ZmX3JlcV9jb3VudCA9IDE7Cj4g
PiAtICAgICBhZGV2LT5wbS5hY19wb3dlciA9IHBvd2VyX3N1cHBseV9pc19zeXN0ZW1fc3VwcGxp
ZWQoKSA+IDAgPyB0cnVlIDogZmFsc2U7Cj4gPiArICAgICBhZGV2LT5wbS5hY19wb3dlciA9IHBv
d2VyX3N1cHBseV9pc19zeXN0ZW1fc3VwcGxpZWQoKSA+IDA7Cj4gPgo+ID4gICAgICAgLyogUmVn
aXN0ZXJzIG1hcHBpbmcgKi8KPiA+ICAgICAgIC8qIFRPRE86IGJsb2NrIHVzZXJzcGFjZSBtYXBw
aW5nIG9mIGlvIHJlZ2lzdGVyICovCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGFtZC1nZnggbWFpbGluZyBsaXN0Cj4gYW1kLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2FtZC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1t
bS1zaWcK
