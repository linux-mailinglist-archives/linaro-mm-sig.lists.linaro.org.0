Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9426D3344CA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Mar 2021 18:07:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C3E2E6676D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Mar 2021 17:07:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B58D96678F; Wed, 10 Mar 2021 17:07:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A2D5566770;
	Wed, 10 Mar 2021 17:06:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 422876676B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Mar 2021 17:06:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 334E266770; Wed, 10 Mar 2021 17:06:56 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by lists.linaro.org (Postfix) with ESMTPS id EB0536676B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Mar 2021 17:06:54 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id x135so15366967oia.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Mar 2021 09:06:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ckay+pu+4QlnhlTMgneWcMsMH2vmyeEkqCVZ+1F2Jt4=;
 b=sl2nzL3jDLXT5b9ehVZlKl1zBkHkMGDfZqt843TYxnvykpMOAXX7Ml7XKSMq5z9Ier
 OgaqbrV/8NNLCydWBnojqOYhb81je4cZQBKswSZrcI60YYydh9K953oWXIqESJSxibYd
 6v1Wlci4r5uRqRn6QwrlSkocLI1jZ4kwBqAnKEtI0KI2T5cRH1jZsnwSHOqXJh/ob3j2
 6QJz5gF8j3VmMPvPBm/t0VtmQTNbvSJzwTiODsmUYC9jVPZlGVkxcWctlAUjUOlOFE65
 WXTOrX/3sW+fM/aiasuBU5oSeX2vQML17BkYx55eTTfM6YpVT1EBjIX7/jGibFKKoFoB
 xgFg==
X-Gm-Message-State: AOAM530jHlw0BULPKs3r/ePCmB7PAU4UjFgdrMMfSv+4GjGrHaHwj7lo
 zE9QM+PoO8ISnbVlHO/PZ2d68lpUv3Q6a8+AwHY=
X-Google-Smtp-Source: ABdhPJz+N++ipstT7fwx8AeHyiwcCQ4oNiFfp1L623ZgZtgNubYgLNBkODDj1YHjtonmpx8CpU3NaDX2TXdxUWQG8ZE=
X-Received: by 2002:aca:af10:: with SMTP id y16mr3086498oie.120.1615396014280; 
 Wed, 10 Mar 2021 09:06:54 -0800 (PST)
MIME-Version: 1.0
References: <20210310163655.2591893-1-daniel@qtec.com>
In-Reply-To: <20210310163655.2591893-1-daniel@qtec.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 10 Mar 2021 12:06:43 -0500
Message-ID: <CADnq5_PmbXBaziCEqRODb_DvtKaw9ucXXjkdmdj9N_R8P-9Jcw@mail.gmail.com>
To: Daniel Gomez <daniel@qtec.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Evan Quan <evan.quan@amd.com>, linux-media <linux-media@vger.kernel.org>,
 Guchun Chen <guchun.chen@amd.com>, David Airlie <airlied@linux.ie>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Huang Rui <ray.huang@amd.com>, Monk Liu <Monk.Liu@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Yintian Tao <yttao@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Dennis Li <Dennis.Li@amd.com>, Hawking Zhang <Hawking.Zhang@amd.com>
Subject: Re: [Linaro-mm-sig] [PATCH]] drm/amdgpu/gfx9: add gfxoff quirk
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

T24gV2VkLCBNYXIgMTAsIDIwMjEgYXQgMTE6MzcgQU0gRGFuaWVsIEdvbWV6IDxkYW5pZWxAcXRl
Yy5jb20+IHdyb3RlOgo+Cj4gRGlzYWJsaW5nIEdGWE9GRiB2aWEgdGhlIHF1aXJrIGxpc3QgZml4
ZXMgYSBoYXJkd2FyZSBsb2NrdXAgaW4KPiBSeXplbiBWMTYwNUIsIFJBVkVOIDB4MTAwMjoweDE1
REQgcmV2IDB4ODMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR29tZXogPGRhbmllbEBxdGVj
LmNvbT4KPiAtLS0KPgo+IFRoaXMgcGF0Y2ggaXMgYSBjb250aW51YXRpb24gb2YgdGhlIHdvcmsg
aGVyZToKPiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMS8yLzMvMTIyIHdoZXJlIGEgaGFyZHdh
cmUgbG9ja3VwIHdhcyBkaXNjdXNzZWQgYW5kCj4gYSBkbWFfZmVuY2UgZGVhZGxvY2sgd2FzIHBy
b3Zva2UgYXMgYSBzaWRlIGVmZmVjdC4gVG8gcmVwcm9kdWNlIHRoZSBpc3N1ZQo+IHBsZWFzZSBy
ZWZlciB0byB0aGUgYWJvdmUgbGluay4KPgo+IFRoZSBoYXJkd2FyZSBsb2NrdXAgd2FzIGludHJv
ZHVjZWQgaW4gNS42LXJjMSBmb3Igb3VyIHBhcnRpY3VsYXIgcmV2aXNpb24gYXMgaXQKPiB3YXNu
J3QgcGFydCBvZiB0aGUgbmV3IGJsYWNrbGlzdC4gQmVmb3JlIHRoYXQsIGluIGtlcm5lbCB2NS41
LCB0aGlzIGhhcmR3YXJlIHdhcwo+IHdvcmtpbmcgZmluZSB3aXRob3V0IGFueSBoYXJkd2FyZSBs
b2NrIGJlY2F1c2UgdGhlIEdGWE9GRiB3YXMgYWN0dWFsbHkgZGlzYWJsZWQKPiBieSB0aGUgaWYg
Y29uZGl0aW9uIGZvciB0aGUgQ0hJUF9SQVZFTiBjYXNlLiBTbyB0aGlzIHBhdGNoLCBhZGRzIHRo
ZSAnUmFkZW9uCj4gVmVnYSBNb2JpbGUgU2VyaWVzIFsxMDAyOjE1ZGRdIChyZXYgODMpJyB0byB0
aGUgYmxhY2tsaXN0IHRvIGRpc2FibGUgdGhlIEdGWE9GRi4KPgo+IEJ1dCBiZXNpZGVzIHRoZSBm
aXgsIEknZCBsaWtlIHRvIGFzayBmcm9tIHdoZXJlIHRoaXMgcmV2aXNpb24gY29tZXMgZnJvbS4g
SXMgaXQKPiBhbiBBU0lDIHJldmlzaW9uIG9yIGlzIGl0IGhhcmRjb2RlZCBpbiB0aGUgVkJJT1Mg
ZnJvbSBvdXIgdmVuZG9yPyBGcm9tIHdoYXQgSQo+IGNhbiBzZWUsIGl0IGNvbWVzIGZyb20gdGhl
IEFTSUMgYW5kIEkgd29uZGVyIGlmIHNvbWVob3cgd2UgY2FuIGdldCBhbiBBUFUgaW4gdGhlCj4g
ZnV0dXJlLCAnbm90IGJsYWNrbGlzdGVkJywgd2l0aCB0aGUgc2FtZSBwcm9ibGVtLiBUaGVuLCBz
aG91bGQgdGhpcyB0YWJsZSBvbmx5Cj4gZmlsdGVyIGZvciB0aGUgdmVuZG9yIGFuZCBkZXZpY2Ug
YW5kIG5vdCB0aGUgcmV2aXNpb24/IERvIHlvdSBrbm93IGlmIHRoZXJlIGFyZQo+IGFueSByZXZp
c2lvbnMgZm9yIHRoZSAxMDAyOjE1ZGQgdmFsaWRhdGVkLCB0ZXN0ZWQgYW5kIGZ1bmN0aW9uYWw/
CgpUaGUgcGNpIHJldmlzaW9uIGlkIChSSUQpIGlzIHVzZWQgdG8gc3BlY2lmeSB0aGUgc3BlY2lm
aWMgU0tVIHdpdGhpbiBhCmZhbWlseS4gIEdGWE9GRiBpcyBzdXBwb3NlZCB0byBiZSB3b3JraW5n
IG9uIGFsbCByYXZlbiB2YXJpYW50cy4gIEl0CndhcyB0ZXN0ZWQgYW5kIGZ1bmN0aW9uYWwgb24g
YWxsIHJlZmVyZW5jZSBwbGF0Zm9ybXMgYW5kIGFueSBPRU0KcGxhdGZvcm1zIHRoYXQgbGF1bmNo
ZWQgd2l0aCBMaW51eCBzdXBwb3J0LiAgVGhlcmUgYXJlIGEgbG90IG9mCmRlcGVuZGVuY2llcyBv
biBzYmlvcyBpbiB0aGUgZWFybHkgcmF2ZW4gdmFyaWFudHMgKDB4MTVkZCksIHNvIGl0J3MKbGlr
ZWx5IG1vcmUgb2YgYSBzcGVjaWZpYyBwbGF0Zm9ybSBpc3N1ZSwgYnV0IHRoZXJlIGlzIG5vdCBh
IGdvb2Qgd2F5CnRvIGRldGVjdCB0aGlzIHNvIHdlIHVzZSB0aGUgRElEL1NTSUQvUklEIGFzIGEg
cHJveHkuICBUaGUgbmV3ZXIgcmF2ZW4KdmFyaWFudHMgKDB4MTVkOCkgaGF2ZSBtdWNoIGJldHRl
ciBHRlhPRkYgc3VwcG9ydCBzaW5jZSB0aGV5IGFsbApzaGlwcGVkIHdpdGggbmV3ZXIgZmlybXdh
cmUgYW5kIHNiaW9zLgoKQWxleAoKCj4KPiBMb2dzOgo+IFsgICAyNy43MDgzNDhdIFtkcm1dIGlu
aXRpYWxpemluZyBrZXJuZWwgbW9kZXNldHRpbmcgKFJBVkVOCj4gMHgxMDAyOjB4MTVERCAweDEw
MDI6MHgxNUREIDB4ODMpLgo+IFsgICAyNy43ODkxNTZdIGFtZGdwdTogQVRPTSBCSU9TOiAxMTMt
UkFWRU4tMTE1Cj4KPiBUaGFua3MgaW4gYWR2YW5jZSwKPiBEYW5pZWwKPgo+ICBkcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9nZnhfdjlfMC5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
Z2Z4X3Y5XzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2dmeF92OV8wLmMKPiBpbmRl
eCA2NWRiODhiYjZjYmMuLjMxOWQ0Yjk5YWVjOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9nZnhfdjlfMC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRn
cHUvZ2Z4X3Y5XzAuYwo+IEBAIC0xMjQzLDYgKzEyNDMsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGFtZGdwdV9nZnhvZmZfcXVpcmsgYW1kZ3B1X2dmeG9mZl9xdWlya19saXN0W10gPSB7Cj4gICAg
ICAgICB7IDB4MTAwMiwgMHgxNWRkLCAweDEwM2MsIDB4ODNlNywgMHhkMyB9LAo+ICAgICAgICAg
LyogR0ZYT0ZGIGlzIHVuc3RhYmxlIG9uIEM2IHBhcnRzIHdpdGggYSBWQklPUyAxMTMtUkFWRU4t
MTE0ICovCj4gICAgICAgICB7IDB4MTAwMiwgMHgxNWRkLCAweDEwMDIsIDB4MTVkZCwgMHhjNiB9
LAo+ICsgICAgICAgLyogR0ZYT0ZGIHByb3Zva2VzIGEgaHcgbG9ja3VwIG9uIDgzIHBhcnRzIHdp
dGggYSBWQklPUyAxMTMtUkFWRU4tMTE1ICovCj4gKyAgICAgICB7IDB4MTAwMiwgMHgxNWRkLCAw
eDEwMDIsIDB4MTVkZCwgMHg4MyB9LAo+ICAgICAgICAgeyAwLCAwLCAwLCAwLCAwIH0sCj4gIH07
Cj4KPiAtLQo+IDIuMzAuMQo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRldmVsQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
