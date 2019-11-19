Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id BA325102E07
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Nov 2019 22:09:41 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 85F1F617A2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 Nov 2019 21:09:40 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7867C618D4; Tue, 19 Nov 2019 21:09:40 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 93ABF618AF;
	Tue, 19 Nov 2019 21:08:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2F58A617A2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Nov 2019 21:08:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1481B618AF; Tue, 19 Nov 2019 21:08:55 +0000 (UTC)
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by lists.linaro.org (Postfix) with ESMTPS id 999D0617A2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Nov 2019 21:08:53 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z26so4766837wmi.4
 for <linaro-mm-sig@lists.linaro.org>; Tue, 19 Nov 2019 13:08:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2zlbs2pXUEmTBiqM5uPjmApb3LNff5iUPeL5FIOnQYk=;
 b=KMb1+AqSWgwhWAGHrRPeSyEt2kPQ5is4UZKGSwpVy4yaGL5o9qksT/H2tUJA+OZKKg
 HF2LJFWfy+wn4SH+ZyFNkvBMpOaxaHs/f88UVfbwcBd/A6PO2R5EboDYIyyhdurJbyZz
 zNeuzlJZuZqVuB40ynjppcsd0iO7JtyMG3aYmbDyqxpxop7fG5RW8G525TzciHev1J09
 64M5E0Y0BGCDc7eCT+X5mC8zLEOFyWiRXUPWky2TMpPZGcOP/kNR7uUB9BUv6lgfMVpg
 f0RPVwPEjFtO2cRzqcbeweWSKnvfq3Sc3D72EFztK5PlREhBMO8SksaRr2hEFi0YWLU1
 R71A==
X-Gm-Message-State: APjAAAXgdeV8j948xDHLa1tC59fk3Wn5iW2ypCNgzHXHAW0g/JFsDmPB
 7H/nlHwSnyVtjYToIM9yu0ThgQ==
X-Google-Smtp-Source: APXvYqzxX3jOaHPiLm+PN11cjUpEZn6I77rrmK+0fYGUxMig2vga+11YIaGfPENiJrgAdlabNeLEyg==
X-Received: by 2002:a1c:41c2:: with SMTP id o185mr7906751wma.34.1574197732676; 
 Tue, 19 Nov 2019 13:08:52 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id z14sm28005126wrl.60.2019.11.19.13.08.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 13:08:52 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 19 Nov 2019 22:08:43 +0100
Message-Id: <20191119210844.16947-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
References: <20191119210844.16947-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rob Herring <robh@kernel.org>, Russell King <linux+etnaviv@armlinux.org.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Eric Anholt <eric@anholt.net>,
 Christian Gmeiner <christian.gmeiner@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Ben Skeggs <bskeggs@redhat.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sean Paul <sean@poorly.run>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 2/3] dma-resv: Also prime acquire ctx for
	lockdep
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

U2VtbmF0aWNhbGx5IGl0IHJlYWxseSBkb2Vzbid0IG1hdHRlciB3aGVyZSB3ZSBncmFiIHRoZSB0
aWNrZXQuIEJ1dApzaW5jZSB0aGUgdGlja2V0IGlzIGEgZmFrZSBsb2NrZGVwIGxvY2ssIGl0IG1h
dHRlcnMgZm9yIGxvY2tkZXAKdmFsaWRhdGlvbiBwdXJwb3Nlcy4KClRoaXMgbWVhbnMgc3R1ZmYg
bGlrZSBncmFiYmluZyBhIHRpY2tldCBhbmQgdGhlbiBkb2luZwpjb3B5X2Zyb20vdG9fdXNlciBp
c24ndCBhbGxvd2VkIGFueW1vcmUuIFRoaXMgaXMgYSBjaGFuZ2VkIGNvbXBhcmVkIHRvCnRoZSBj
dXJyZW50IHR0bSBmYXVsdCBoYW5kbGVyLCB3aGljaCBkb2Vzbid0IGJvdGhlciB3aXRoIGhhdmlu
ZyBhIGZ1bGwKcmVzZXJ2YXRpb24uIFNpbmNlIEknbSBsb29raW5nIGludG8gZml4aW5nIHRoZSBU
T0RPIGVudHJ5IGluCnR0bV9tZW1fZXZpY3Rfd2FpdF9idXN5KCkgSSB0aGluayB0aGF0J2xsIGhh
dmUgdG8gY2hhbmdlIHNvb25lciBvcgpsYXRlciBhbnl3YXksIGJldHRlciBnZXQgc3RhcnRlZC4g
QSBiaXQgbW9yZSBjb250ZXh0IG9uIHdoeSBJJ20KbG9va2luZyBpbnRvIHRoaXM6IEZvciBiYWNr
d2FyZHMgY29tcGF0IHdpdGggZXhpc3RpbmcgaTkxNSBnZW0gY29kZSBJCnRoaW5rIHdlJ2xsIGhh
dmUgdG8gZG8gZnVsbCBzbG93cGF0aCBsb2NraW5nIGluIHRoZSBpOTE1IGVxdWl2YWxlbnQgb2YK
dGhlIGV2aWN0aW9uIGNvZGUuIEFuZCB3aXRoIGR5bmFtaWMgZG1hLWJ1ZiB0aGF0IHdpbGwgbGVh
ayBhY3Jvc3MKZHJpdmVycywgc28gYW5vdGhlciB0aGluZyB3ZSBuZWVkIHRvIHN0YW5kYXJkaXpl
IGFuZCBtYWtlIHN1cmUgaXQncwpkb25lIHRoZSBzYW1lIHdheSBldmVyeXdheS4KClVuZm9ydHVu
YXRlbHkgdGhpcyBtZWFucyBhbm90aGVyIGZ1bGwgYXVkaXQgb2YgYWxsIGRyaXZlcnM6CgotIGdl
bSBoZWxwZXJzOiBhY3F1aXJlX2luaXQgaXMgZG9uZSByaWdodCBiZWZvcmUgdGFraW5nIGxvY2tz
LCBzbyBubwogIHByb2JsZW0uIFNhbWUgZm9yIGFjcXVpcmVfZmluaSBhbmQgdW5sb2NraW5nLCB3
aGljaCBtZWFucyBub3RoaW5nCiAgdGhhdCdzIG5vdCBhbHJlYWR5IGNvdmVyZWQgYnkgdGhlIGRt
YV9yZXN2X2xvY2sgcnVsZXMgd2lsbCBiZSBjYXVnaHQKICB3aXRoIHRoaXMgZXh0ZW5zaW9uIGhl
cmUgdG8gdGhlIGFjcXVpcmVfY3R4LgoKLSBldG5hdml2OiBBbiBhYnNvbHV0ZSBtYXNzaXZlIGFt
b3VudCBvZiBjb2RlIGlzIHJ1biBiZXR3ZWVuIHRoZQogIGFjcXVpcmVfaW5pdCBhbmQgdGhlIGZp
cnN0IGxvY2sgYWNxdWlzaXRpb24gaW4gc3VibWl0X2xvY2tfb2JqZWN0cy4KICBCdXQgbm90aGlu
ZyB0aGF0IHdvdWxkIHRvdWNoIHVzZXIgbWVtb3J5IGFuZCBjb3VsZCBjYXVzZSBhIGZhdWx0Lgog
IEZ1cnRoZXJtb3JlIG5vdGhpbmcgdGhhdCB1c2VzIHRoZSB0aWNrZXQsIHNvIGV2ZW4gaWYgSSBt
aXNzZWQKICBzb21ldGhpbmcsIGl0IHdvdWxkIGJlIGVhc3kgdG8gZml4IGJ5IHB1c2hpbmcgdGhl
IGFjcXVpcmVfaW5pdCByaWdodAogIGJlZm9yZSB0aGUgZmlyc3QgdXNlLiBTaW1pbGFyIG9uIHRo
ZSB1bmxvY2svYWNxdWlyZV9maW5pIHNpZGUuCgotIGk5MTU6IFJpZ2h0IG5vdyAoYW5kIHRoaXMg
d2lsbCBsaWtlbHkgY2hhbmdlIGEgbG90IHJzbikgdGhlIGFjcXVpcmUKICBjdHggYW5kIGFjdHVh
bCBsb2NrcyBhcmUgcmlnaHQgbmV4dCB0byBlYWNoIGFub3RoZXIuIE5vIHByb2JsZW0uCgotIG1z
bSBoYXMgYSBwcm9ibGVtOiBzdWJtaXRfY3JlYXRlIGNhbGxzIGFjcXVpcmVfaW5pdCwgYnV0IHRo
ZW4KICBzdWJtaXRfbG9va3VwX29iamVjdHMoKSBoYXMgYSBidW5jaCBvZiBjb3B5X2Zyb21fdXNl
ciB0byBkbyB0aGUKICBvYmplY3QgbG9va3Vwcy4gVGhhdCdzIHRoZSBvbmx5IHRoaW5nIGJlZm9y
ZSBzdWJtaXRfbG9ja19vYmplY3RzCiAgY2FsbCBkbWFfcmVzdl9sb2NrKCkuIERlc3BpdGUgYWxs
IHRoZSBjb3B5cGFzdGEgdG8gZXRuYXZpdiwgZXRuYXZpdgogIGRvZXMgbm90IGhhdmUgdGhpcyBp
c3N1ZSBzaW5jZSBpdCBjb3BpZXMgYWxsIHRoZSB1c2Vyc3BhY2Ugc3RydWN0cwogIGVhcmxpZXIu
IHN1Ym1pdF9jbGVhbnVwIGRvZXMgbm90IGhhdmUgYW55IHN1Y2ggaXNzdWVzLgoKICBXaXRoIHRo
ZSBwcmVwIHBhdGNoIHRvIHB1bGwgb3V0IHRoZSBhY3F1aXJlX2N0eCBhbmQgcmVvcmRlciBpdCBt
c20KICBpcyBnb2luZyB0byBiZSBzYWZlIHRvby4KCi0gbm91dmVhdTogYWNxdWlyZV9pbml0IGlz
IHJpZ2h0IG5leHQgdG8gdHRtX2JvX3Jlc2VydmUsIHNvIGFsbCBnb29kLgogIFNpbWlsYXIgb24g
dGhlIGFjcXVpcmVfZmluaS90dG1fYm9fdW5yZXNlcnZlIHNpZGUuCgotIHR0bSBleGVjYnVmIHV0
aWxzOiBhY3F1aXJlIGNvbnRleHQgYW5kIGxvY2tpbmcgYXJlIGV2ZW4gaW4gdGhlIHNhbWUKICBm
dW5jdGlvbnMgaGVyZSAob25lIGZ1bmN0aW9uIHRvIHJlc2VydmUgZXZlcnl0aGluZywgdGhlIG90
aGVyIHRvCiAgdW5yZXNlcnZlKSwgc28gYWxsIGdvb2QuCgotIHZjNDogQW5vdGhlciBjYXNlIHdo
ZXJlIGFjcXVpcmUgY29udGV4dCBhbmQgbG9ja2luZyBhcmUgaGFuZGxlZCBpbgogIHRoZSBzYW1l
IGZ1bmN0aW9ucyAob25lIGZ1bmN0aW9uIHRvIGxvY2sgZXZlcnl0aGluZywgdGhlIG90aGVyIHRv
CiAgdW5sb2NrKS4KCkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBTdW1p
dCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgpDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKQ2M6IEh1YW5nIFJ1
aSA8cmF5Lmh1YW5nQGFtZC5jb20+CkNjOiBFcmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0PgpD
YzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPgpDYzogQWxleCBEZXVjaGVyIDxhbGV4
YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4K
Q2M6IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgpDYzogUnVzc2VsbCBLaW5n
IDxsaW51eCtldG5hdml2QGFybWxpbnV4Lm9yZy51az4KQ2M6IENocmlzdGlhbiBHbWVpbmVyIDxj
aHJpc3RpYW4uZ21laW5lckBnbWFpbC5jb20+CkNjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFp
bC5jb20+CkNjOiBTZWFuIFBhdWwgPHNlYW5AcG9vcmx5LnJ1bj4KU2lnbmVkLW9mZi1ieTogRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVm
L2RtYS1yZXN2LmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLXJlc3YuYwppbmRleCBkM2M3NjBlMTk5OTEuLjA3OWUzOGZk
ZTMzYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMKKysrIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1yZXN2LmMKQEAgLTEwMCw3ICsxMDAsOSBAQCBzdGF0aWMgdm9pZCBkbWFf
cmVzdl9saXN0X2ZyZWUoc3RydWN0IGRtYV9yZXN2X2xpc3QgKmxpc3QpCiBzdGF0aWMgdm9pZCBf
X2luaXQgZG1hX3Jlc3ZfbG9ja2RlcCh2b2lkKQogewogCXN0cnVjdCBtbV9zdHJ1Y3QgKm1tID0g
bW1fYWxsb2MoKTsKKwlzdHJ1Y3Qgd3dfYWNxdWlyZV9jdHggY3R4OwogCXN0cnVjdCBkbWFfcmVz
diBvYmo7CisJaW50IHJldDsKIAogCWlmICghbW0pCiAJCXJldHVybjsKQEAgLTEwOCwxMCArMTEw
LDE0IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBkbWFfcmVzdl9sb2NrZGVwKHZvaWQpCiAJZG1hX3Jl
c3ZfaW5pdCgmb2JqKTsKIAogCWRvd25fcmVhZCgmbW0tPm1tYXBfc2VtKTsKLQl3d19tdXRleF9s
b2NrKCZvYmoubG9jaywgTlVMTCk7CisJd3dfYWNxdWlyZV9pbml0KCZjdHgsICZyZXNlcnZhdGlv
bl93d19jbGFzcyk7CisJcmV0ID0gZG1hX3Jlc3ZfbG9jaygmb2JqLCAmY3R4KTsKKwlpZiAocmV0
ID09IC1FREVBRExLKQorCQlkbWFfcmVzdl9sb2NrX3Nsb3coJm9iaiwgJmN0eCk7CiAJZnNfcmVj
bGFpbV9hY3F1aXJlKEdGUF9LRVJORUwpOwogCWZzX3JlY2xhaW1fcmVsZWFzZShHRlBfS0VSTkVM
KTsKIAl3d19tdXRleF91bmxvY2soJm9iai5sb2NrKTsKKwl3d19hY3F1aXJlX2ZpbmkoJmN0eCk7
CiAJdXBfcmVhZCgmbW0tPm1tYXBfc2VtKTsKIAkKIAltbXB1dChtbSk7Ci0tIAoyLjI0LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1z
aWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xp
c3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
