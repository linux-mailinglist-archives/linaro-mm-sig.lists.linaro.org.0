Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CE110A06F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 15:37:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0CE4F60C0E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 14:37:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F412961503; Tue, 26 Nov 2019 14:37:11 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AD5B460EFE;
	Tue, 26 Nov 2019 14:36:40 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5FCFB60767
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 14:36:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 45AEF60EFE; Tue, 26 Nov 2019 14:36:38 +0000 (UTC)
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by lists.linaro.org (Postfix) with ESMTPS id 01FE960767
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 14:36:37 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id s5so22716061wrw.2
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 06:36:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p00g6V9Bama/EwveZj3ADq9UrHHz6k97X5GwWWgTLik=;
 b=ZsHIHZSu8hrQxKmQ4klx1PDDV92ZeMtaL0VS1n8o/MHW49m3FArFztP7E2WIN5d78t
 c5Fld6PBMpUNHVESH0+6iXcKoPzF3R09ZWfqtjps2HUilzgndA2zYejeW75AVhHVMhv1
 7VDcsyTw+2/97WG8M9g1YG+p1mMGtvTQz/dBrtMqfKFPXXCWGPD9JVm/zV3VRd+IdS+y
 pk9sIpaz0O8v0GKSRjF7Oj6rXGmPEFwL7+zbqeiOj35i5Co9XWR2wvGpfdhUMZ/7nrLt
 4Px8Wo3KrLorwxshFFhlTlc448puJkNECD0ROagAemotvVpaN4q48bVZ+QZT1ER83Rye
 /0kw==
X-Gm-Message-State: APjAAAUZ+EeXx5hL0Wgi29pO707l3OaQHAPGGvMxdWQDWDQijOVxNd0V
 druTx0EpSAu5vVa013D9VD4vXg==
X-Google-Smtp-Source: APXvYqw8HQ/k4LCGgSsKbBNHYzWHkOmHPyD+okzuX1cbn03mpFVw5eQaubupR/Gs5k0rar/3fSLlDg==
X-Received: by 2002:adf:f103:: with SMTP id r3mr1153440wro.295.1574778996104; 
 Tue, 26 Nov 2019 06:36:36 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id f67sm3369469wme.16.2019.11.26.06.36.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 06:36:35 -0800 (PST)
Date: Tue, 26 Nov 2019 15:36:33 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191126143633.GX29965@phenom.ffwll.local>
References: <20191126142516.630200-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126142516.630200-1-maarten.lankhorst@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] udmabuf: Remove deleted map/unmap
	handlers.
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

T24gVHVlLCBOb3YgMjYsIDIwMTkgYXQgMDM6MjU6MTZQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gQ29tbWl0IDdmMGRlOGQ4MDgxNiAoImRtYS1idWY6IERyb3AgZG1hX2J1Zl9r
KHVuKW1hcCIpIHJlbW92ZWQgbWFwL3VubWFwCj4gaGFuZGxlcnMsIGJ1dCB0aGV5IHN0aWxsIGV4
aXN0ZWQgaW4gdWRtYWJ1Zi4gUmVtb3ZlIHRoZW0gdGhlcmUgYXMgd2VsbAo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5j
b20+Cj4gRml4ZXM6IDdmMGRlOGQ4MDgxNiAoImRtYS1idWY6IERyb3AgZG1hX2J1Zl9rKHVuKW1h
cCIpCj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gQ2M6
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKCi9tZSBwdXRzIG9uIGJyb3duIHBhcGVy
IGJhZwoKUmV2aWV3ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+
Cgo+IC0tLQo+ICBkcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jIHwgMTYgLS0tLS0tLS0tLS0tLS0t
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jCj4gaW5k
ZXggOTYzNTg5NzQ1OGEwLi45ZGU1MzljMWRlZjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9kbWEt
YnVmL3VkbWFidWYuYwo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMKPiBAQCAtOTMs
MjYgKzkzLDEwIEBAIHN0YXRpYyB2b2lkIHJlbGVhc2VfdWRtYWJ1ZihzdHJ1Y3QgZG1hX2J1ZiAq
YnVmKQo+ICAJa2ZyZWUodWJ1Zik7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lkICprbWFwX3VkbWFi
dWYoc3RydWN0IGRtYV9idWYgKmJ1ZiwgdW5zaWduZWQgbG9uZyBwYWdlX251bSkKPiAtewo+IC0J
c3RydWN0IHVkbWFidWYgKnVidWYgPSBidWYtPnByaXY7Cj4gLQlzdHJ1Y3QgcGFnZSAqcGFnZSA9
IHVidWYtPnBhZ2VzW3BhZ2VfbnVtXTsKPiAtCj4gLQlyZXR1cm4ga21hcChwYWdlKTsKPiAtfQo+
IC0KPiAtc3RhdGljIHZvaWQga3VubWFwX3VkbWFidWYoc3RydWN0IGRtYV9idWYgKmJ1ZiwgdW5z
aWduZWQgbG9uZyBwYWdlX251bSwKPiAtCQkJICAgdm9pZCAqdmFkZHIpCj4gLXsKPiAtCWt1bm1h
cCh2YWRkcik7Cj4gLX0KPiAtCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgdWRt
YWJ1Zl9vcHMgPSB7Cj4gIAkubWFwX2RtYV9idWYJICA9IG1hcF91ZG1hYnVmLAo+ICAJLnVubWFw
X2RtYV9idWYJICA9IHVubWFwX3VkbWFidWYsCj4gIAkucmVsZWFzZQkgID0gcmVsZWFzZV91ZG1h
YnVmLAo+IC0JLm1hcAkJICA9IGttYXBfdWRtYWJ1ZiwKPiAtCS51bm1hcAkJICA9IGt1bm1hcF91
ZG1hYnVmLAo+ICAJLm1tYXAJCSAgPSBtbWFwX3VkbWFidWYsCj4gIH07Cj4gIAo+IC0tIAo+IDIu
MjQuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1k
ZXZlbAoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0
aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW5hcm8tbW0tc2lnCg==
