Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D4B38B6C3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:08:53 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3CD1C6137B
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:08:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3726E613E6; Thu, 20 May 2021 19:08:51 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 585C96131F;
	Thu, 20 May 2021 19:08:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E4836130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:08:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1A4C46131F; Thu, 20 May 2021 19:08:48 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by lists.linaro.org (Postfix) with ESMTPS id 1491C6130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:08:46 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id u11so17402859oiv.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qHZFdkVC10Rk4v8d8wk9MZUODh6XZ/Y3GEXZqNckb5U=;
 b=lNOy+B/7FQSLTgP+DMgb+OEqF5PvjT3KhWnrXHO+XJP0girbXNeh0EMLGBUNQxlZki
 YMSGTJiLYHo+8UP8kVmwTmV4OpJX3NqdARsf91DAAxfF7Vhljct5KRkPWnEMQTi0aG5k
 SjQqwq0sOQnhAP3Dm355NSEIF9hAT6V5Djc+68QcQe4aYZd50ke+TNQ2vsz0YTWOEoo7
 FvPUdRm7TS4uV7AzTkU57RjI9usIk4I0QlvLkBNNQ1KBgoEfaG2k5JBeYLQcu878+lGj
 28qZ41e204AUqoYSGLEbZxtyycEPH42j7cVQx9nm5h7NxHppNTOn7O0tJ/ps50UPNDg/
 iCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qHZFdkVC10Rk4v8d8wk9MZUODh6XZ/Y3GEXZqNckb5U=;
 b=C3SiqK3gpvadWF6jQ0ZJrw3I7qcoTo36/qvt2t/dt1ca5jZpNy8gaXAbBz8OUwsSsk
 yakB7pVmN8mFd+lxqKXu/YgNWbyTfl/2bIu6HSl7weeLpU3weuFY3xavXLO/aXbcRc1s
 jLZ6qdV8wNrCU3LjqOw9bYi0Xs9bKslOPEccQ6AwrmNWyGp00SK1szl8K8LqhxeewYSj
 p8NrKHvmcOUN7q3CCF60WDUC4hqiIGt+qYQuclTn/KmnuhwqZ++C9WKzFLYcUo4JbREB
 88ilxZgoO3FaJ1XXsnPEso4m9NeyzxDu16doTquVz1nzanGoyDMeopDLe1JAEg5idata
 Ggxw==
X-Gm-Message-State: AOAM532sqNOYZUj4Y8yMEnYssG9bDgWNrS7vv5KXxZfDOd7swFzDXtgw
 xd5jz8AeKoYLRjGuvuWDX8gzciw6VWdgFW7agK4=
X-Google-Smtp-Source: ABdhPJyrLDTWanoEUak7UWzvt+Za/lfUrq4eGtWiV8ldtaWeXrjDMvf0hHRph7JDX32l7J1wcaenH7U+BS5wJa80+x4=
X-Received: by 2002:a05:6808:1592:: with SMTP id
 t18mr2455890oiw.123.1621537725647; 
 Thu, 20 May 2021 12:08:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-11-lee.jones@linaro.org>
 <6869f83f-7876-973b-2db3-8c83cc23daf2@amd.com>
In-Reply-To: <6869f83f-7876-973b-2db3-8c83cc23daf2@amd.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:08:34 -0400
Message-ID: <CADnq5_M_VzxKFSL59kViFDVgxQbugisa7FEXhwnxFdj1QHjXQA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 10/38] drm/amd/amdgpu/amdgpu_ids:
 Correct some function name disparity
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
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Alex Deucher <alexander.deucher@amd.com>, Lee Jones <lee.jones@linaro.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDQgQU0g
Q2hyaXN0aWFuIEvDtm5pZwo8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFt
IDIwLjA1LjIxIHVtIDE0OjAyIHNjaHJpZWIgTGVlIEpvbmVzOgo+ID4gRml4ZXMgdGhlIGZvbGxv
d2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6Cj4gPgo+ID4gICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmM6MjAwOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90
eXBlIGZvciBhbWRncHVfdm1fZ3JhYl9pZGxlKCkuIFByb3RvdHlwZSB3YXMgZm9yIGFtZGdwdV92
bWlkX2dyYWJfaWRsZSgpIGluc3RlYWQKPiA+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2lkcy5jOjI3Mjogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgYW1kZ3B1
X3ZtX2dyYWJfcmVzZXJ2ZWQoKS4gUHJvdG90eXBlIHdhcyBmb3IgYW1kZ3B1X3ZtaWRfZ3JhYl9y
ZXNlcnZlZCgpIGluc3RlYWQKPiA+ICAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2lkcy5jOjMzNzogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgYW1kZ3B1X3ZtX2dy
YWJfdXNlZCgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfdm1pZF9ncmFiX3VzZWQoKSBpbnN0
ZWFkCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYzo0MTA6IHdh
cm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGFtZGdwdV92bV9ncmFiX2lkKCkuIFByb3Rv
dHlwZSB3YXMgZm9yIGFtZGdwdV92bWlkX2dyYWIoKSBpbnN0ZWFkCj4gPgo+ID4gQ2M6IEFsZXgg
RGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiA+IENjOiAiQ2hyaXN0aWFuIEvD
tm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiA+IENjOiBEYXZpZCBBaXJsaWUgPGFp
cmxpZWRAbGludXguaWU+Cj4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+
ID4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gPiBDYzogYW1k
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gPiBDYzogbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMg
PGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+Cj4gUmV2aWV3ZWQtYnk6IENocmlzdGlhbiBLw7ZuaWcg
PGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyB8IDggKysrKy0tLS0KPiA+ICAgMSBmaWxlIGNoYW5n
ZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2lkcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2lkcy5jCj4gPiBpbmRleCBiNDk3MWU5MGI5OGNmLi5jN2YzYWFl
MjNjNjI1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1
X2lkcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMK
PiA+IEBAIC0xODMsNyArMTgzLDcgQEAgYm9vbCBhbWRncHVfdm1pZF9oYWRfZ3B1X3Jlc2V0KHN0
cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAo+ID4gICB9Cj4gPgo+ID4gICAvKioKPiA+IC0gKiBh
bWRncHVfdm1fZ3JhYl9pZGxlIC0gZ3JhYiBpZGxlIFZNSUQKPiA+ICsgKiBhbWRncHVfdm1pZF9n
cmFiX2lkbGUgLSBncmFiIGlkbGUgVk1JRAo+ID4gICAgKgo+ID4gICAgKiBAdm06IHZtIHRvIGFs
bG9jYXRlIGlkIGZvcgo+ID4gICAgKiBAcmluZzogcmluZyB3ZSB3YW50IHRvIHN1Ym1pdCBqb2Ig
dG8KPiA+IEBAIC0yNTYsNyArMjU2LDcgQEAgc3RhdGljIGludCBhbWRncHVfdm1pZF9ncmFiX2lk
bGUoc3RydWN0IGFtZGdwdV92bSAqdm0sCj4gPiAgIH0KPiA+Cj4gPiAgIC8qKgo+ID4gLSAqIGFt
ZGdwdV92bV9ncmFiX3Jlc2VydmVkIC0gdHJ5IHRvIGFzc2lnbiByZXNlcnZlZCBWTUlECj4gPiAr
ICogYW1kZ3B1X3ZtaWRfZ3JhYl9yZXNlcnZlZCAtIHRyeSB0byBhc3NpZ24gcmVzZXJ2ZWQgVk1J
RAo+ID4gICAgKgo+ID4gICAgKiBAdm06IHZtIHRvIGFsbG9jYXRlIGlkIGZvcgo+ID4gICAgKiBA
cmluZzogcmluZyB3ZSB3YW50IHRvIHN1Ym1pdCBqb2IgdG8KPiA+IEBAIC0zMjUsNyArMzI1LDcg
QEAgc3RhdGljIGludCBhbWRncHVfdm1pZF9ncmFiX3Jlc2VydmVkKHN0cnVjdCBhbWRncHVfdm0g
KnZtLAo+ID4gICB9Cj4gPgo+ID4gICAvKioKPiA+IC0gKiBhbWRncHVfdm1fZ3JhYl91c2VkIC0g
dHJ5IHRvIHJldXNlIGEgVk1JRAo+ID4gKyAqIGFtZGdwdV92bWlkX2dyYWJfdXNlZCAtIHRyeSB0
byByZXVzZSBhIFZNSUQKPiA+ICAgICoKPiA+ICAgICogQHZtOiB2bSB0byBhbGxvY2F0ZSBpZCBm
b3IKPiA+ICAgICogQHJpbmc6IHJpbmcgd2Ugd2FudCB0byBzdWJtaXQgam9iIHRvCj4gPiBAQCAt
Mzk3LDcgKzM5Nyw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X3ZtaWRfZ3JhYl91c2VkKHN0cnVjdCBh
bWRncHVfdm0gKnZtLAo+ID4gICB9Cj4gPgo+ID4gICAvKioKPiA+IC0gKiBhbWRncHVfdm1fZ3Jh
Yl9pZCAtIGFsbG9jYXRlIHRoZSBuZXh0IGZyZWUgVk1JRAo+ID4gKyAqIGFtZGdwdV92bWlkX2dy
YWIgLSBhbGxvY2F0ZSB0aGUgbmV4dCBmcmVlIFZNSUQKPiA+ICAgICoKPiA+ICAgICogQHZtOiB2
bSB0byBhbGxvY2F0ZSBpZCBmb3IKPiA+ICAgICogQHJpbmc6IHJpbmcgd2Ugd2FudCB0byBzdWJt
aXQgam9iIHRvCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGFtZC1nZnggbWFpbGluZyBsaXN0Cj4gYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2FtZC1n
ZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBz
Oi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
