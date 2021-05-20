Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B18038B793
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:28:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7538361448
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:28:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5245D61407; Thu, 20 May 2021 19:28:08 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 558456137F;
	Thu, 20 May 2021 19:28:06 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id CD8BB61376
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:28:04 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CB4196137F; Thu, 20 May 2021 19:28:04 +0000 (UTC)
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com
 [209.85.161.43])
 by lists.linaro.org (Postfix) with ESMTPS id C38E661376
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:28:02 +0000 (UTC)
Received: by mail-oo1-f43.google.com with SMTP id
 i8-20020a4aa1080000b0290201edd785e7so4038886ool.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4k80R92raKX44try8NOlI5SNEciXr8tCWt15U235ZOY=;
 b=u5HMyC2dzOhRwetk6bFz5gxLMOhluu4CAuFx5YJ9V3fbc/xw/CgL5YRqYjhGiyTW5n
 3AqF3gy2HlXhnwJ0kZfowlu0bDBzz2toiJdGn95DqPqVNTsAq0ZvJ8Q+HfHXnQFAJuEF
 B+gCJPmEySu7ANm9VWs7g6r1aM2vci0dafOoH+ksiVn0CwsVL6/mH8ppdwz8MJ+DT1dH
 cN2WQhb020RIVtBZqgNHNS43F6T9b8ou7Tw2j7gfAgwHfcUZzHUmMxfsECPsBFofyL2r
 nzo8wZzOG+rq6dVItNbWteQlyBTRaS5mpPUPrcawglZWe15fu50Our5mUlnK1SJ8Yxdo
 NrVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4k80R92raKX44try8NOlI5SNEciXr8tCWt15U235ZOY=;
 b=e+fIchguxbJb8CtCxvozJZANh5ht7ONhoflYyz9rZE+/1xDaTUc5w6kNDTr9NGc4H+
 Cqj+MjzS0lEoD9jNsf3Px6BzBVUhW8XhwyUy/GG/tkDy0CuBmLirANarN/kxHkLsMGyZ
 TEgaBLbpGGpSXMjXEiygPuicue9lcDz2AuDyk3SK/1zvAsTNsJuVnBd7HJEokFYI5DQz
 suY8hWdqG51VIRoFQ0BPOEPRacmhBdGDMLOrV2q1R+XKYQIyQXeJryN/3hza/lnwCnWd
 Vf2QQZXG+fKPVbzWKA3UFqQSo/F4OF23+RrR1EgQFyWd8g/Cup6JKG/lGQ8EHeblncTf
 hhUg==
X-Gm-Message-State: AOAM5334oFe84Gsr7iXLZkjMreBDI7/s77aIGMOcOVr6/sbEaC/+HQIw
 q2xIl7CgUJS92HYW9au9ddGqR92rCgdvGmDI2fw=
X-Google-Smtp-Source: ABdhPJw/G1SAe+q/1vmFaWI1wZ9doKKFcivmwBNweNkYvrpMqu9DHVkQfhze30Eo9Oia8iZcUi5SWEhoaNXsk7+gfII=
X-Received: by 2002:a4a:d085:: with SMTP id i5mr4993114oor.61.1621538882348;
 Thu, 20 May 2021 12:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-35-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-35-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:27:51 -0400
Message-ID: <CADnq5_NqMsveaWdJGzGzx4OZ3wkHso=3T+r2RXwYBAbsFSLSOg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 34/38] drm/amd/amdgpu/amdgpu_vce: Fix a
 few incorrectly named functions
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
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QXBwbGllZC4gIFRoYW5rcyEKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDQgQU0gTGVlIEpv
bmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5n
IFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdmNlLmM6OTg6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGFt
ZGdwdV92Y2VfaW5pdCgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfdmNlX3N3X2luaXQoKSBp
bnN0ZWFkCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92Y2UuYzoyMTQ6IHdh
cm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGFtZGdwdV92Y2VfZmluaSgpLiBQcm90b3R5
cGUgd2FzIGZvciBhbWRncHVfdmNlX3N3X2ZpbmkoKSBpbnN0ZWFkCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV92Y2UuYzo1OTA6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5
cGUgZm9yIGFtZGdwdV92Y2VfY3NfdmFsaWRhdGVfYm8oKS4gUHJvdG90eXBlIHdhcyBmb3IgYW1k
Z3B1X3ZjZV92YWxpZGF0ZV9ibygpIGluc3RlYWQKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvYW1kZ3B1X3ZjZS5jOjcyNDogd2FybmluZzogZXhwZWN0aW5nIHByb3RvdHlwZSBmb3IgYW1k
Z3B1X3ZjZV9jc19wYXJzZSgpLiBQcm90b3R5cGUgd2FzIGZvciBhbWRncHVfdmNlX3JpbmdfcGFy
c2VfY3MoKSBpbnN0ZWFkCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV92Y2Uu
Yzo5NjA6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIGFtZGdwdV92Y2VfY3NfcGFy
c2Vfdm0oKS4gUHJvdG90eXBlIHdhcyBmb3IgYW1kZ3B1X3ZjZV9yaW5nX3BhcnNlX2NzX3ZtKCkg
aW5zdGVhZAo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4K
PiBDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6
IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsQGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3Jn
Pgo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENj
OiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9u
ZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfdmNlLmMgfCAxMCArKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3ZjZS5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X3ZjZS5jCj4gaW5kZXggZWE2YTYyZjY3ZTM4MC4uN2FkODNkYTYxM2VkZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNlLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNlLmMKPiBAQCAtODcsNyArODcsNyBA
QCBzdGF0aWMgaW50IGFtZGdwdV92Y2VfZ2V0X2Rlc3Ryb3lfbXNnKHN0cnVjdCBhbWRncHVfcmlu
ZyAqcmluZywgdWludDMyX3QgaGFuZGxlLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgYm9vbCBkaXJlY3QsIHN0cnVjdCBkbWFfZmVuY2UgKipmZW5jZSk7Cj4KPiAgLyoq
Cj4gLSAqIGFtZGdwdV92Y2VfaW5pdCAtIGFsbG9jYXRlIG1lbW9yeSwgbG9hZCB2Y2UgZmlybXdh
cmUKPiArICogYW1kZ3B1X3ZjZV9zd19pbml0IC0gYWxsb2NhdGUgbWVtb3J5LCBsb2FkIHZjZSBm
aXJtd2FyZQo+ICAgKgo+ICAgKiBAYWRldjogYW1kZ3B1X2RldmljZSBwb2ludGVyCj4gICAqIEBz
aXplOiBzaXplIGZvciB0aGUgbmV3IEJPCj4gQEAgLTIwNCw3ICsyMDQsNyBAQCBpbnQgYW1kZ3B1
X3ZjZV9zd19pbml0KHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LCB1bnNpZ25lZCBsb25nIHNp
emUpCj4gIH0KPgo+ICAvKioKPiAtICogYW1kZ3B1X3ZjZV9maW5pIC0gZnJlZSBtZW1vcnkKPiAr
ICogYW1kZ3B1X3ZjZV9zd19maW5pIC0gZnJlZSBtZW1vcnkKPiAgICoKPiAgICogQGFkZXY6IGFt
ZGdwdV9kZXZpY2UgcG9pbnRlcgo+ICAgKgo+IEBAIC01NzQsNyArNTc0LDcgQEAgc3RhdGljIGlu
dCBhbWRncHVfdmNlX2dldF9kZXN0cm95X21zZyhzdHJ1Y3QgYW1kZ3B1X3JpbmcgKnJpbmcsIHVp
bnQzMl90IGhhbmRsZSwKPiAgfQo+Cj4gIC8qKgo+IC0gKiBhbWRncHVfdmNlX2NzX3ZhbGlkYXRl
X2JvIC0gbWFrZSBzdXJlIG5vdCB0byBjcm9zcyA0R0IgYm91bmRhcnkKPiArICogYW1kZ3B1X3Zj
ZV92YWxpZGF0ZV9ibyAtIG1ha2Ugc3VyZSBub3QgdG8gY3Jvc3MgNEdCIGJvdW5kYXJ5Cj4gICAq
Cj4gICAqIEBwOiBwYXJzZXIgY29udGV4dAo+ICAgKiBAaWJfaWR4OiBpbmRpcmVjdCBidWZmZXIg
dG8gdXNlCj4gQEAgLTcxNSw3ICs3MTUsNyBAQCBzdGF0aWMgaW50IGFtZGdwdV92Y2VfdmFsaWRh
dGVfaGFuZGxlKHN0cnVjdCBhbWRncHVfY3NfcGFyc2VyICpwLAo+ICB9Cj4KPiAgLyoqCj4gLSAq
IGFtZGdwdV92Y2VfY3NfcGFyc2UgLSBwYXJzZSBhbmQgdmFsaWRhdGUgdGhlIGNvbW1hbmQgc3Ry
ZWFtCj4gKyAqIGFtZGdwdV92Y2VfcmluZ19wYXJzZV9jcyAtIHBhcnNlIGFuZCB2YWxpZGF0ZSB0
aGUgY29tbWFuZCBzdHJlYW0KPiAgICoKPiAgICogQHA6IHBhcnNlciBjb250ZXh0Cj4gICAqIEBp
Yl9pZHg6IGluZGlyZWN0IGJ1ZmZlciB0byB1c2UKPiBAQCAtOTUxLDcgKzk1MSw3IEBAIGludCBh
bWRncHVfdmNlX3JpbmdfcGFyc2VfY3Moc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsIHVpbnQz
Ml90IGliX2lkeCkKPiAgfQo+Cj4gIC8qKgo+IC0gKiBhbWRncHVfdmNlX2NzX3BhcnNlX3ZtIC0g
cGFyc2UgdGhlIGNvbW1hbmQgc3RyZWFtIGluIFZNIG1vZGUKPiArICogYW1kZ3B1X3ZjZV9yaW5n
X3BhcnNlX2NzX3ZtIC0gcGFyc2UgdGhlIGNvbW1hbmQgc3RyZWFtIGluIFZNIG1vZGUKPiAgICoK
PiAgICogQHA6IHBhcnNlciBjb250ZXh0Cj4gICAqIEBpYl9pZHg6IGluZGlyZWN0IGJ1ZmZlciB0
byB1c2UKPiAtLQo+IDIuMzEuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW5hcm8tbW0tc2lnCg==
