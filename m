Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC062AE21F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:49:15 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CD08C66604
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 21:49:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id BC458665EF; Tue, 10 Nov 2020 21:49:14 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64AAE665E9;
	Tue, 10 Nov 2020 21:48:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AE0B76192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 21:48:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 910CE665E9; Tue, 10 Nov 2020 21:48:39 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 209F26192C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 21:48:38 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s8so7254448wrw.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 13:48:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Up1aG6ydtrr1/JYHxw8NlS2buR9mdLMPGDsROtKbZk8=;
 b=AkhZbOKQRyePwHFaTpbJlktg2GCYQGhQF1l1SI0d0etAXYf0XTWscY8yy8FTn6QWB9
 yJZpFrBiVIX6k9BRplBRuSM5+rfObR8UlakM8exuDqtfuqwR+VD+veIPyqUX9Vyyjqkl
 ndTHZh4LEVwmvAjG/4XMp0wtuk0TtFQJune4JoNRhxJxkna6LavDmYf8Y/BCzc8W//81
 udonpGvexlhwywsdI5L5CDx3QByY1UfVZIFmxBH0tD0VpB0JaknV+ykeFcvaNB8t079o
 eZ7Hr/EHmUCraIrrg+t/c3IFbXduSlX/CoDCa7VaN/JLChPkQe1Bazrq/kJViIe+D77S
 DXQw==
X-Gm-Message-State: AOAM533TTsUnBBkQPJP2gyVD1gxaRIS3HzO7Kfo0uGzkvBAK3hU41aKC
 Sp6DnQHRWWSi2h7jGNH3ZpqRL/QazICOJribBFE=
X-Google-Smtp-Source: ABdhPJy0RUmp6/kZ5soVHYMu10l5Y1AvwxF0c1Q4+XZ4V5PKLlnBkZmIH1vULyJL9AQs6Yc/XgVzbGFetswrD7SAgog=
X-Received: by 2002:adf:e350:: with SMTP id n16mr26964608wrj.419.1605044917283; 
 Tue, 10 Nov 2020 13:48:37 -0800 (PST)
MIME-Version: 1.0
References: <20201105144517.1826692-1-lee.jones@linaro.org>
 <20201105144517.1826692-19-lee.jones@linaro.org>
In-Reply-To: <20201105144517.1826692-19-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 16:48:26 -0500
Message-ID: <CADnq5_PUZbPh0gmrTcY-cuLeUjfXNt8bS5YBz8g3VgCskYeh4A@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 18/19] gpu: drm: amd: amdgpu: amdgpu:
 Mark global variables as __maybe_unused
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

T24gVGh1LCBOb3YgNSwgMjAyMCBhdCA5OjUyIEFNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gVGhlc2UgMyB2YXJpYWJsZXMgYXJlIHVzZWQgaW4gKnNvbWUqIHNv
dXJjZWZpbGVzIHdoaWNoIGluY2x1ZGUKPiBhbWRncHUuaCwgYnV0IG5vdCAqYWxsKi4gIFRoaXMg
bGVhZHMgdG8gYSBmbHVycnkgb2YgYnVpbGQgd2FybmluZ3MuCj4KPiBGaXhlcyB0aGUgZm9sbG93
aW5nIFc9MSBrZXJuZWwgYnVpbGQgd2FybmluZyhzKToKPgo+ICBmcm9tIGRyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdS5oOjY3LAo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHUuaDoxOTg6MTk6IHdhcm5pbmc6IOKAmG5vX3N5c3RlbV9tZW1fbGltaXTigJkgZGVmaW5l
ZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1Lmg6MTk3OjE5OiB3YXJuaW5nOiDigJhkZWJ1Z19ldmljdGlv
bnPigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1Lmg6MTk2OjE4OiB3YXJuaW5nOiDigJhz
Y2hlZF9wb2xpY3nigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWNvbnN0LXZhcmlh
YmxlPV0KPgo+ICBOQjogUmVwZWF0cyB+NjUwIHRpbWVzIC0gc25pcHBlZCBmb3IgYnJldml0eS4K
Pgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJD
aHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBB
aXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZnds
bC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzog
YW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2lnbmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUu
am9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQuICBUaGFua3MhCgpBbGV4Cgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHUuaCB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1LmggYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHUuaAo+IGluZGV4IDE4M2IwOWQ3MWI2NGEuLjU5Mzk3NTMwODAwNTYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1LmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHUuaAo+IEBAIC0xOTMsOSArMTkzLDkgQEAgZXh0
ZXJuIGludCBzY2hlZF9wb2xpY3k7Cj4gIGV4dGVybiBib29sIGRlYnVnX2V2aWN0aW9uczsKPiAg
ZXh0ZXJuIGJvb2wgbm9fc3lzdGVtX21lbV9saW1pdDsKPiAgI2Vsc2UKPiAtc3RhdGljIGNvbnN0
IGludCBzY2hlZF9wb2xpY3kgPSBLRkRfU0NIRURfUE9MSUNZX0hXUzsKPiAtc3RhdGljIGNvbnN0
IGJvb2wgZGVidWdfZXZpY3Rpb25zOyAvKiA9IGZhbHNlICovCj4gLXN0YXRpYyBjb25zdCBib29s
IG5vX3N5c3RlbV9tZW1fbGltaXQ7Cj4gK3N0YXRpYyBjb25zdCBpbnQgX19tYXliZV91bnVzZWQg
c2NoZWRfcG9saWN5ID0gS0ZEX1NDSEVEX1BPTElDWV9IV1M7Cj4gK3N0YXRpYyBjb25zdCBib29s
IF9fbWF5YmVfdW51c2VkIGRlYnVnX2V2aWN0aW9uczsgLyogPSBmYWxzZSAqLwo+ICtzdGF0aWMg
Y29uc3QgYm9vbCBfX21heWJlX3VudXNlZCBub19zeXN0ZW1fbWVtX2xpbWl0Owo+ICAjZW5kaWYK
Pgo+ICBleHRlcm4gaW50IGFtZGdwdV90bXo7Cj4gLS0KPiAyLjI1LjEKPgo+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcg
bGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3Jn
L21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
