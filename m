Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE64204F96
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2020 12:52:11 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3D3B06192B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 23 Jun 2020 10:52:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2AF17664E8; Tue, 23 Jun 2020 10:52:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC942664E2;
	Tue, 23 Jun 2020 10:51:19 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 736F46097E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 10:51:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45921664E2; Tue, 23 Jun 2020 10:51:17 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id E8D3C6097E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 10:51:15 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id d4so16124219otk.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 23 Jun 2020 03:51:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QoCPlVuRfLdDkwTBRDRK73tEwxS3sN2fuJiGkn2CvdE=;
 b=KhPRNXGQxfUtpKIQKh5kLcNhWiakK0Sn7VtG2unXlhb403W4dDKbNORb4dDLjAXcDJ
 da9umNkMSwSyrqk6Lbx0TuqMeyybDhn1akEZcFqOtAiar/7FkB8p/dPuYlZk8r2kgj93
 c+a8IXlrxXPaQM/wLMq2NTdfZHwLPojeGsVLCMqJscl9W7RW3/BcoLzcPT9zlKjRXbh3
 n3YQx0i66uTzI/B8DDZIMKTtzYlJrCoX1dz+U5F3JANGKcb70pFy4AiG8gTFTtqk663R
 u2a5mKyMRcRRo+K1yuYx0ZZLze13Es7pIHlrwXEedjksgup9saPg5WTtQ+h72snogi47
 HUjg==
X-Gm-Message-State: AOAM533kqIXO8SWF/+HwBIWdJz+SZ2kR6GeRcEQxvWcz61TlQgpvsrVp
 fGmDZyPgQrh3qKynitoY9VO00DmKvrqQX7zBc5J7Ow==
X-Google-Smtp-Source: ABdhPJwsXeafc7ngCrqn/R9dExkVr9aTpMWL7pHCp5L8XQ6N2/9uvR1ASQII2PdIi3/ADKwLAzkpagO1g50upZNnhdo=
X-Received: by 2002:a05:6830:54:: with SMTP id
 d20mr18786397otp.281.1592909475390; 
 Tue, 23 Jun 2020 03:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-9-daniel.vetter@ffwll.ch>
In-Reply-To: <20200604081224.863494-9-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 23 Jun 2020 12:51:04 +0200
Message-ID: <CAKMK7uHx+rFyjQOWL2r1fOo2EP3u_owMP2zfg3NnEkxUY4BhkA@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>, 
 Roland Scheidegger <sroland@vmware.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>, 
 Thomas Hellstrom <thomas.hellstrom@intel.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma <linux-rdma@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 08/18] drm/amdgpu: add dma-fence
 annotations to atomic commit path
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

SGkgUm9sYW5kICYgdm13Z2Z4IG1haW50YWluZXJzLAoKVGhvbWFzIGhhcyBwbGF5ZWQgYXJvdW5k
IHdpdGggdGhlc2UgYW5ub3RhdGlvbnMgb24gaGlzIHZtd2dmeCBzZXR1cCwKYW5kIGZvdW5kIHNv
bWUgaXNzdWVzLiBBcHBhcmVudGx5IGluIHRoZSBhdG9taWNfY29tbWl0X3RhaWwgcGF0aCB3aGVu
CmhhbmRsaW5nIHRoZSBkaXJ0eSByZWN0YW5nbGUgc3R1ZmYgeW91IGFjcXVpcmUgYSB0dG0gcmVz
ZXJ2YXRpb24sCndoaWNoIGlzIGEgbm8tZ28gc2luY2UgaXQgY291bGQgZGVhZGxvY2sgd2l0aCBv
dGhlciBwYXRocyAtIGF0b21pYwpjb21taXRzIGNhbiBwcm9kdWNlIGEgZG1hX2ZlbmNlLgoKVGhp
cyBwYXRjaCBoZXJlIGhpZ2hsaWdodHMgdGhhdCB3aXRoIHRoZSBuZXcgYW5ub3RhdGlvbnMsIGFu
ZAphcHBhcmVudGx5IGNhdXNlcyBhIGxvY2tkZXAgc3BsYXQgaWYgeW91IGdvIHRocm91Z2ggdGhl
IGRpcnR5IHJlY3QKcGF0aHMgKG5vdCBzdXJlIGlmIGl0IGFsc28gaGFwcGVucyBvdGhlcndpc2Us
IFRob21hcyBjYW4gZmlsbCB5b3UgaW4Kd2l0aCB0aGUgZGV0YWlscykuCgpDYW4geW91IHBscyB0
YWtlIGEgbG9vayBhdCB0aGlzPyBJJ20gaGFwcHkgdG8gaGVscCBvdXQgd2l0aCBhbmFseXppbmcK
YW55IGxvY2tkZXAgc3BsYXRzLiBGb3IgYWN0dWFsIGZpeGVzIFRob21hcyBpcyBiZXR0ZXIgc2lu
Y2UgSSBkb24ndAp1bmRlcnN0YW5kIGEgbG90IG9mIGhvdyBkcm0vdm13Z2Z4IHdvcmtzIGludGVy
bmFsbHkuCgpDaGVlcnMsIERhbmllbAoKCk9uIFRodSwgSnVuIDQsIDIwMjAgYXQgMTA6MTIgQU0g
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4gd3JvdGU6Cj4KPiBJIG5lZWQg
YSBjYW5hcnkgaW4gYSB0dG0tYmFzZWQgYXRvbWljIGRyaXZlciB0byBtYWtlIHN1cmUgdGhlCj4g
ZG1hX2ZlbmNlX2JlZ2luL2VuZF9zaWduYWxsaW5nIGFubm90YXRpb25zIGFjdHVhbGx5IHdvcmsu
Cj4KPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwo+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVsLm9yZwo+IENjOiBh
bWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Pgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gU2ln
bmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCA2
ICsrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKPiBpbmRleCBi
ZGJhMGJmZDZkZjEuLmFkYWJmYTkyOWY0MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYwo+IEBAIC01Nyw2ICs1Nyw3IEBACj4K
PiAgI2luY2x1ZGUgIml2c3JjaWQvaXZzcmNpZF92aXNsYW5kczMwLmgiCj4KPiArI2luY2x1ZGUg
PGxpbnV4L21vZHVsZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9tb2R1bGVwYXJhbS5oPgo+ICAjaW5jbHVkZSA8bGludXgvdmVyc2lvbi5oPgo+IEBA
IC03MzIwLDYgKzczMjEsOSBAQCBzdGF0aWMgdm9pZCBhbWRncHVfZG1fYXRvbWljX2NvbW1pdF90
YWlsKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgICAgICAgIHN0cnVjdCBkcm1f
Y29ubmVjdG9yX3N0YXRlICpvbGRfY29uX3N0YXRlLCAqbmV3X2Nvbl9zdGF0ZTsKPiAgICAgICAg
IHN0cnVjdCBkbV9jcnRjX3N0YXRlICpkbV9vbGRfY3J0Y19zdGF0ZSwgKmRtX25ld19jcnRjX3N0
YXRlOwo+ICAgICAgICAgaW50IGNydGNfZGlzYWJsZV9jb3VudCA9IDA7Cj4gKyAgICAgICBib29s
IGZlbmNlX2Nvb2tpZTsKPiArCj4gKyAgICAgICBmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVn
aW5fc2lnbmFsbGluZygpOwo+Cj4gICAgICAgICBkcm1fYXRvbWljX2hlbHBlcl91cGRhdGVfbGVn
YWN5X21vZGVzZXRfc3RhdGUoZGV2LCBzdGF0ZSk7Cj4KPiBAQCAtNzYwMCw2ICs3NjA0LDggQEAg
c3RhdGljIHZvaWQgYW1kZ3B1X2RtX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QgZHJtX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCj4gICAgICAgICAvKiBTaWduYWwgSFcgcHJvZ3JhbW1pbmcgY29tcGxl
dGlvbiAqLwo+ICAgICAgICAgZHJtX2F0b21pY19oZWxwZXJfY29tbWl0X2h3X2RvbmUoc3RhdGUp
Owo+Cj4gKyAgICAgICBkbWFfZmVuY2VfZW5kX3NpZ25hbGxpbmcoZmVuY2VfY29va2llKTsKPiAr
Cj4gICAgICAgICBpZiAod2FpdF9mb3JfdmJsYW5rKQo+ICAgICAgICAgICAgICAgICBkcm1fYXRv
bWljX2hlbHBlcl93YWl0X2Zvcl9mbGlwX2RvbmUoZGV2LCBzdGF0ZSk7Cj4KPiAtLQo+IDIuMjYu
Mgo+CgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0
aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
