Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2CA38B6F7
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 21:14:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5C6BF6140A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 20 May 2021 19:14:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 5068861376; Thu, 20 May 2021 19:14:45 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 171956131F;
	Thu, 20 May 2021 19:14:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A954E6130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:14:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A63B56131F; Thu, 20 May 2021 19:14:40 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by lists.linaro.org (Postfix) with ESMTPS id 9BE406130C
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 19:14:38 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id
 t10-20020a05683022eab0290304ed8bc759so15818953otc.12
 for <linaro-mm-sig@lists.linaro.org>; Thu, 20 May 2021 12:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CFznQ5UzwVzYSrYk++bKt7INj01icNDyVEHe4lOS4xc=;
 b=oE4NN5AjJr7IrcZo1Es/vlSqvlT754NfJM7Mfc3xB6CSK7ll+/YvAtbQ2mR8AmC2BT
 sqS5dDVeSrEVWayFMSVJDASe9FKfS/Wr+qazoBbhp1Mr5/3hGxEj3m4HbdwTGxSA57TV
 tsUkAfXtKbZiSLaKd7b6iQvIx1PLbFfsvdI70eiZVuoimjccc7Oj24jOCjMZq8sDyO2X
 Gv0+5ths4rebFvxoKAo+njIxd/9sGHIKha8J/mMF2dIP6p44evYd0zbysZmm2eSWaG0V
 O5f+2Aw+n+upOXSmQcSvJZizKUNdhUyUqPutN+1XKRyxG3dHqSjSG6i6PLNAiQvAa5GA
 WMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CFznQ5UzwVzYSrYk++bKt7INj01icNDyVEHe4lOS4xc=;
 b=dXg9LCQvae689jWe1jlZ0Xh3cFEYPWpctkMljc+BPb7zp6eUL7VfSIgmlOBeAdVeAN
 vX/MvbuLKDfVxGlGo5wY3Ga0ik3CUz/oES5Onl1c48upd+Qizn/kkYtCR/dq6h6ekYh1
 VZOY3NQHGEGIDzEuaHuG9uIFFbudGfSb/9T6zXIOX3mHYrT+JbezPZCnHzuxElFfpNMf
 MlJkKmTGORgdp/zGO3rr8fmlo2a5BBz4cT+Gyt70hCvfPRSA+JbGAR0crzDOHrrVDY/6
 bgq+mHPRb5OATrxi7AHF4uFzadoQz8oT+sES3IWDuANnLcwdFI6aLrCZyBHoff7tWhWB
 VKsw==
X-Gm-Message-State: AOAM531uAaCgh2BcMbL7HCHMMVPSjT0hsnpleYz9OdTEgu2v4DJ6LlKT
 mgiyxvmLIxMcD+MHn6qCR7Ad8+gwlTlcYVhEokw=
X-Google-Smtp-Source: ABdhPJx25eh9IbEMpsnOwMHXas2EpZVFTY5iQRIyfyjEiHJt8Xqx1LcdVt3ezxRqHGRJRlAfp7MTX+b2xOf6Ptl94Fg=
X-Received: by 2002:a9d:57cd:: with SMTP id q13mr5103104oti.23.1621538078199; 
 Thu, 20 May 2021 12:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210520120248.3464013-1-lee.jones@linaro.org>
 <20210520120248.3464013-17-lee.jones@linaro.org>
In-Reply-To: <20210520120248.3464013-17-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 20 May 2021 15:14:27 -0400
Message-ID: <CADnq5_MXLwMR7XsEiu1pAJ9d8cm6uHA7S4jtuqf-9z=kHbuMww@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 16/38] drm/amd/amdgpu/si_dma: Fix some
 function name disparity
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

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFRodSwgTWF5IDIwLCAyMDIxIGF0IDg6MDQgQU0g
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9s
bG93aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9zaV9kbWEuYzozMjA6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9y
IGNpa19kbWFfdm1fY29weV9wdGUoKS4gUHJvdG90eXBlIHdhcyBmb3Igc2lfZG1hX3ZtX2NvcHlf
cHRlKCkgaW5zdGVhZAo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9zaV9kbWEuYzo0MTI6
IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUgZm9yIHNpX2RtYV9wYWRfaWIoKS4gUHJvdG90
eXBlIHdhcyBmb3Igc2lfZG1hX3JpbmdfcGFkX2liKCkgaW5zdGVhZAo+ICBkcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zaV9kbWEuYzo0MjU6IHdhcm5pbmc6IGV4cGVjdGluZyBwcm90b3R5cGUg
Zm9yIGNpa19zZG1hX3JpbmdfZW1pdF9waXBlbGluZV9zeW5jKCkuIFByb3RvdHlwZSB3YXMgZm9y
IHNpX2RtYV9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYygpIGluc3RlYWQKPgo+IENjOiBBbGV4IERl
dWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmln
IiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRA
bGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3Vt
aXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENj
OiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5s
aW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9y
Zz4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2lfZG1hLmMgfCA2ICsrKy0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NpX2RtYS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9hbWRncHUvc2lfZG1hLmMKPiBpbmRleCBjYjcwM2UzMDcyMzhkLi4xOTVi
NDViY2I4YWQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NpX2Rt
YS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2lfZG1hLmMKPiBAQCAtMzA1
LDcgKzMwNSw3IEBAIHN0YXRpYyBpbnQgc2lfZG1hX3JpbmdfdGVzdF9pYihzdHJ1Y3QgYW1kZ3B1
X3JpbmcgKnJpbmcsIGxvbmcgdGltZW91dCkKPiAgfQo+Cj4gIC8qKgo+IC0gKiBjaWtfZG1hX3Zt
X2NvcHlfcHRlIC0gdXBkYXRlIFBURXMgYnkgY29weWluZyB0aGVtIGZyb20gdGhlIEdBUlQKPiAr
ICogc2lfZG1hX3ZtX2NvcHlfcHRlIC0gdXBkYXRlIFBURXMgYnkgY29weWluZyB0aGVtIGZyb20g
dGhlIEdBUlQKPiAgICoKPiAgICogQGliOiBpbmRpcmVjdCBidWZmZXIgdG8gZmlsbCB3aXRoIGNv
bW1hbmRzCj4gICAqIEBwZTogYWRkciBvZiB0aGUgcGFnZSBlbnRyeQo+IEBAIC00MDIsNyArNDAy
LDcgQEAgc3RhdGljIHZvaWQgc2lfZG1hX3ZtX3NldF9wdGVfcGRlKHN0cnVjdCBhbWRncHVfaWIg
KmliLAo+ICB9Cj4KPiAgLyoqCj4gLSAqIHNpX2RtYV9wYWRfaWIgLSBwYWQgdGhlIElCIHRvIHRo
ZSByZXF1aXJlZCBudW1iZXIgb2YgZHcKPiArICogc2lfZG1hX3JpbmdfcGFkX2liIC0gcGFkIHRo
ZSBJQiB0byB0aGUgcmVxdWlyZWQgbnVtYmVyIG9mIGR3Cj4gICAqCj4gICAqIEByaW5nOiBhbWRn
cHVfcmluZyBwb2ludGVyCj4gICAqIEBpYjogaW5kaXJlY3QgYnVmZmVyIHRvIGZpbGwgd2l0aCBw
YWRkaW5nCj4gQEAgLTQxNSw3ICs0MTUsNyBAQCBzdGF0aWMgdm9pZCBzaV9kbWFfcmluZ19wYWRf
aWIoc3RydWN0IGFtZGdwdV9yaW5nICpyaW5nLCBzdHJ1Y3QgYW1kZ3B1X2liICppYikKPiAgfQo+
Cj4gIC8qKgo+IC0gKiBjaWtfc2RtYV9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYyAtIHN5bmMgdGhl
IHBpcGVsaW5lCj4gKyAqIHNpX2RtYV9yaW5nX2VtaXRfcGlwZWxpbmVfc3luYyAtIHN5bmMgdGhl
IHBpcGVsaW5lCj4gICAqCj4gICAqIEByaW5nOiBhbWRncHVfcmluZyBwb2ludGVyCj4gICAqCj4g
LS0KPiAyLjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
