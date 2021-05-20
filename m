Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 6108B38B6C7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:10:23 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F5486131F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:10:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8E72C6140D; Thu, 20 May 2021 19:10:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EFF346131F;
	Thu, 20 May 2021 19:10:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 26DE26130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:10:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 24D3F6131F; Thu, 20 May 2021 19:10:17 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
 [209.85.210.43])
 by lists.linaro.org (Postfix) with ESMTPS id 1ABC46130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:10:15 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id
 i14-20020a9d624e0000b029033683c71999so4652945otk.5
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qZmqhErjNw9NpB4sTEi7TBGKOlHWpPlsaMkchqCd25U=;
 b=VUk9UBH/QcIR0qeCSyhDdMQ/L42ux4gncCKIrTFJFcDzd6FRRipqIKh8piNmD1KJnl
 kmHeFjswq2lFGSXDBDXUCEt1dLMwk6XSOgtK6Ax11cwQyipfUaJRO0Z6bHFj7Sf19SoB
 LJASG5MubLxCC7Dv0UYkWWlAwT1hTF6AFdkCqD5f/pSvAHyVWMELpLmJaV8XQZIv7eMZ
 n7Fw0Xpf1bwMUgAOMFuUhGe6cIyjjTMicraKgLuYtwvFkS0D8jNaRI0I40CCB527W60y
 ptF9CSJPC7NFp2kmV0GTbc2GoN1Qc2vNoo3XHRFV7uD2bnguZGzpNtbozHgPPM7XHbnx
 MmRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qZmqhErjNw9NpB4sTEi7TBGKOlHWpPlsaMkchqCd25U=;
 b=nBJP26PKeDT7MVJ+PaZrCX9C5m1GgsT7mcoSaK1E+cp6WhrU4+kpFmvXLUgob6yYp7
 F5hu1WcrYzqP0RYg0k1nqpF5Ei0phOybz/ssSQqiN4zeLF6FdbJdKiisXZP/3nqDy8vR
 HURwbKNj6uaS3NXqCElSrbHqiT6f7k9Rc+dSIsOdpfz5kun3k/ORUhWhxfpfdLs9FJZP
 nBT8cnCGlYQEWZQ1da6WRE60bGITZlbGo+3p/Rce4FZ2gzJY4gOU6pV4MsP4mLOkttnr
 99YOo0uHx6FPWWZ9sns8UpKtbshCnHJZTc3HuW2/VwY8X5aJVXJLQrmtjbdKMxpvhGEd
 Uf8A==
X-Gm-Message-State: AOAM5321C8zc4rcPNe2ZMTGBpaf1l9+9SV2pMMy8PrrwOmlVrlIDkUqL
 c+wwU9BJuWH7toedDzCfSn6oVaMypRNteQVDtQQ=
X-Google-Smtp-Source: ABdhPJwMqj/CKQBdLb7dxshnqMhIbg//f1Ttg3En9FmwFe/Hdagzvy9jXwWeDIpGu4wupnXvU9vTUoBsQYzf0ZLnT+8=
X-Received: by 2002:a9d:74c6:: with SMTP id a6mr5119212otl.132.1621537814661; 
 Thu, 20 May 2021 12:10:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-12-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-12-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:10:03 -0400
Message-ID: <CADnq5_P1zF2Pw5BW54n+XEXyfNOLRnEvsk_zzZcz0TuanobubA@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 11/38] drm/amd/amdgpu/amdgpu_debugfs:
 Fix a couple of misnamed functions
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
YW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jOjEwMDQ6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90
b3R5cGUgZm9yIGFtZGdwdV9kZWJ1Z2ZzX3JlZ3NfZ2Z4b2ZmX3dyaXRlKCkuIFByb3RvdHlwZSB3
YXMgZm9yIGFtZGdwdV9kZWJ1Z2ZzX2dmeG9mZl93cml0ZSgpIGluc3RlYWQKPiAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYzoxMDUzOiB3YXJuaW5nOiBleHBlY3Rp
bmcgcHJvdG90eXBlIGZvciBhbWRncHVfZGVidWdmc19yZWdzX2dmeG9mZl9zdGF0dXMoKS4gUHJv
dG90eXBlIHdhcyBmb3IgYW1kZ3B1X2RlYnVnZnNfZ2Z4b2ZmX3JlYWQoKSBpbnN0ZWFkCj4KPiBD
YzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGll
IDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
ZWJ1Z2ZzLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVn
ZnMuYwo+IGluZGV4IGJjYWYyNzFiMzliZjUuLmE5YmJiMDAzNGUxZWMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2ZzLmMKPiBAQCAtOTkwLDcgKzk5MCw3
IEBAIHN0YXRpYyBzc2l6ZV90IGFtZGdwdV9kZWJ1Z2ZzX2dwcl9yZWFkKHN0cnVjdCBmaWxlICpm
LCBjaGFyIF9fdXNlciAqYnVmLAo+ICB9Cj4KPiAgLyoqCj4gLSAqIGFtZGdwdV9kZWJ1Z2ZzX3Jl
Z3NfZ2Z4b2ZmX3dyaXRlIC0gRW5hYmxlL2Rpc2FibGUgR0ZYT0ZGCj4gKyAqIGFtZGdwdV9kZWJ1
Z2ZzX2dmeG9mZl93cml0ZSAtIEVuYWJsZS9kaXNhYmxlIEdGWE9GRgo+ICAgKgo+ICAgKiBAZjog
b3BlbiBmaWxlIGhhbmRsZQo+ICAgKiBAYnVmOiBVc2VyIGJ1ZmZlciB0byB3cml0ZSBkYXRhIGZy
b20KPiBAQCAtMTA0MSw3ICsxMDQxLDcgQEAgc3RhdGljIHNzaXplX3QgYW1kZ3B1X2RlYnVnZnNf
Z2Z4b2ZmX3dyaXRlKHN0cnVjdCBmaWxlICpmLCBjb25zdCBjaGFyIF9fdXNlciAqYnUKPgo+Cj4g
IC8qKgo+IC0gKiBhbWRncHVfZGVidWdmc19yZWdzX2dmeG9mZl9zdGF0dXMgLSByZWFkIGdmeG9m
ZiBzdGF0dXMKPiArICogYW1kZ3B1X2RlYnVnZnNfZ2Z4b2ZmX3JlYWQgLSByZWFkIGdmeG9mZiBz
dGF0dXMKPiAgICoKPiAgICogQGY6IG9wZW4gZmlsZSBoYW5kbGUKPiAgICogQGJ1ZjogVXNlciBi
dWZmZXIgdG8gc3RvcmUgcmVhZCBkYXRhIGluCj4gLS0KPiAyLjMxLjEKPgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
