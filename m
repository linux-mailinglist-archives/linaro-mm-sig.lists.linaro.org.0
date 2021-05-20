Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FA638B6EA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:14:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3283961391
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:14:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0C72E6130C; Thu, 20 May 2021 19:14:01 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 44E436131F;
	Thu, 20 May 2021 19:13:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 64ED36130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:13:57 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 60AD961320; Thu, 20 May 2021 19:13:57 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by lists.linaro.org (Postfix) with ESMTPS id 4E62E6130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:13:55 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id
 80-20020a9d08560000b0290333e9d2b247so5289694oty.7
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4e2VdgTFJlvcvj2P7xFhk2OWf2Vw8hURmKQ/jkEZ8DQ=;
 b=ezXgqYpyUEE3k6E23Z2w5y+7QpfYLuVRb58W1d8LCGCQ0rI4n/+xcn5pEOnD2XEwGc
 ZFESJRjhrzmvYJypAz7kjFxjWWm69x1rgmsg1M5+byOvCbkqD42Kily+y/V2v7FJzoQG
 GfDqsptBHJ0Uxc3A6wre9aw1x4UCQx+8I5G1vOLiof5atKnNOO6XN1iNHxqQb2vMGBLf
 53GGvgIlVVnteholUZOzNBuxzJhcv7wvIo/t18cbb5lbKHntcgUKW4U+Z9clRT/TAcLx
 dc+jUzXPwbm/yPvryNh3KuiOLNobxwyIFoHHpPTE3KtW7XcCnOXgmMGaZ4+7xbGqHpjI
 R8TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4e2VdgTFJlvcvj2P7xFhk2OWf2Vw8hURmKQ/jkEZ8DQ=;
 b=s+9/kRnjAh2yYfD/s50EyRQOYWk2dROktFxjLUrYBnTAYAcWY9eW1xjsO8a2hr+Muj
 NcfTIQtl1ePQY52K3ovFEJdWxjh+I48zCSEQSFsczMGT0RmZNwQTRlm61pXXW+jjS5gi
 yRwJublWLRaR3xmN2giryc9QLhD8PuiSmeD1iJTzh3qL5v9Q6r7aO0UP16YWLzOR4Hqz
 lQLVoiHlxDeDuHsJrRxemaMYWmR7GrtRT6SUAwu2YxgK+uZ+dPvld/wN2DexPDmGGQVZ
 d6IyJTaQLNwSpzd5zFPwhDanPlYjmDvNOoCTfD9u6RiOnr879TgON6g2cVfNQm0Zxk73
 Y5GQ==
X-Gm-Message-State: AOAM533MuIQMHvxMbx1SryHnp1C3IkDFikgdGU5NN6YTORzaJ3r1mMI4
 pCZVIDQmZ5HrLTjo5oY7ZxsODmSroNXLdh6i0Ro=
X-Google-Smtp-Source: ABdhPJzAKzYxXdp5xq0MqY9EcXKxblI7UDxmIIZsPw8Bd2K9JzAYaNM6nwJLxQjNQ1GW6s2RE+yFoJXI7ECtaUP0+68=
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr5101139oti.23.1621538034833; 
 Thu, 20 May 2021 12:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-15-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-15-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:13:43 -0400
Message-ID: <CADnq5_Mpddbb4FX0FX+6NAhhOH0iQ3ZnP37-jOkWupqdmWwmrA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 14/38] drm/amd/amdgpu/gfx_v7_0: Repair
 function names in the documentation
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

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDMgQU0g
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9s
bG93aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9nZnhfdjdfMC5jOjIxMjY6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUg
Zm9yIGdmeF92N18wX3JpbmdfZW1pdF9oZHAoKS4gUHJvdG90eXBlIHdhcyBmb3IgZ2Z4X3Y3XzBf
cmluZ19lbWl0X2hkcF9mbHVzaCgpIGluc3RlYWQKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvZ2Z4X3Y3XzAuYzoyMjYyOiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBnZnhf
djdfMF9yaW5nX2VtaXRfaWIoKS4gUHJvdG90eXBlIHdhcyBmb3IgZ2Z4X3Y3XzBfcmluZ19lbWl0
X2liX2dmeCgpIGluc3RlYWQKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3XzAu
YzozMjA3OiB3YXJuaW5nOiBleHBlY3RpbmcgcHJvdG90eXBlIGZvciBnZnhfdjdfMF9yaW5nX2Vt
aXRfdm1fZmx1c2goKS4gUHJvdG90eXBlIHdhcyBmb3IgZ2Z4X3Y3XzBfcmluZ19lbWl0X3BpcGVs
aW5lX3N5bmMoKSBpbnN0ZWFkCj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hl
ckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1k
LmNvbT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2Fs
QGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRy
aS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJu
ZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYt
Ynk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2dmeF92N18wLmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92N18wLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9nZnhfdjdfMC5jCj4gaW5kZXggYzM1ZmRkMmVmMmQ0ZC4uNjg1MjEyYzNkZGFlNSAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9nZnhfdjdfMC5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvZ2Z4X3Y3XzAuYwo+IEBAIC0yMTE2LDcgKzIxMTYsNyBA
QCBzdGF0aWMgaW50IGdmeF92N18wX3JpbmdfdGVzdF9yaW5nKHN0cnVjdCBhbWRncHVfcmluZyAq
cmluZykKPiAgfQo+Cj4gIC8qKgo+IC0gKiBnZnhfdjdfMF9yaW5nX2VtaXRfaGRwIC0gZW1pdCBh
biBoZHAgZmx1c2ggb24gdGhlIGNwCj4gKyAqIGdmeF92N18wX3JpbmdfZW1pdF9oZHBfZmx1c2gg
LSBlbWl0IGFuIGhkcCBmbHVzaCBvbiB0aGUgY3AKPiAgICoKPiAgICogQHJpbmc6IGFtZGdwdV9y
aW5nIHN0cnVjdHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24KPiAgICoKPiBAQCAtMjI0Miw3
ICsyMjQyLDcgQEAgc3RhdGljIHZvaWQgZ2Z4X3Y3XzBfcmluZ19lbWl0X2ZlbmNlX2NvbXB1dGUo
c3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLAo+ICAgKiBJQiBzdHVmZgo+ICAgKi8KPiAgLyoqCj4g
LSAqIGdmeF92N18wX3JpbmdfZW1pdF9pYiAtIGVtaXQgYW4gSUIgKEluZGlyZWN0IEJ1ZmZlcikg
b24gdGhlIHJpbmcKPiArICogZ2Z4X3Y3XzBfcmluZ19lbWl0X2liX2dmeCAtIGVtaXQgYW4gSUIg
KEluZGlyZWN0IEJ1ZmZlcikgb24gdGhlIHJpbmcKPiAgICoKPiAgICogQHJpbmc6IGFtZGdwdV9y
aW5nIHN0cnVjdHVyZSBob2xkaW5nIHJpbmcgaW5mb3JtYXRpb24KPiAgICogQGpvYjogam9iIHRv
IHJldHJpZXZlIHZtaWQgZnJvbQo+IEBAIC0zMTk2LDcgKzMxOTYsNyBAQCBzdGF0aWMgaW50IGdm
eF92N18wX2NwX3Jlc3VtZShzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikKPiAgfQo+Cj4gIC8q
Kgo+IC0gKiBnZnhfdjdfMF9yaW5nX2VtaXRfdm1fZmx1c2ggLSBjaWsgdm0gZmx1c2ggdXNpbmcg
dGhlIENQCj4gKyAqIGdmeF92N18wX3JpbmdfZW1pdF9waXBlbGluZV9zeW5jIC0gY2lrIHZtIGZs
dXNoIHVzaW5nIHRoZSBDUAo+ICAgKgo+ICAgKiBAcmluZzogdGhlIHJpbmcgdG8gZW1pdCB0aGUg
Y29tbWFuZHMgdG8KPiAgICoKPiAtLQo+IDIuMzEuMQo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFy
by1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
