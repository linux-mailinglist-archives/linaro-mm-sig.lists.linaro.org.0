Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 575D710029F
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2019 11:37:38 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7BDB26105C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Nov 2019 10:37:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6BE806177D; Mon, 18 Nov 2019 10:37:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F61361791;
	Mon, 18 Nov 2019 10:36:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 475E161754
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 10:36:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3A08A61791; Mon, 18 Nov 2019 10:36:26 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 5E72F618AF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 10:36:01 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a15so18787365wrf.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Nov 2019 02:36:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6Ra81SF/gAF1NOlsK25mQDZVt7/1R+jY1Ddov0yZk/I=;
 b=Z/ZZ+IpocIVAnj5M6Xmmi7iUhGQOolvrOTAv/a9le5v+tyNo2M9aPvge6Esb/zU0sv
 DfwSf5+bM/NpFkUSKbK4scdjI741aJLYYjDTlsredIpqk+K77C3hGDwYPcBXFtWVaj8b
 VkvJAsEnxB/AWKqKL/P13obGghKfpu8ZCcaXOLXQwHKlRzU/W5CCtLJE6zS4vFUSyzur
 nyP6DncRN07ZGFGjmeOokrcUoFNHr3M7rz6+/AwYOL3Y2u3Q0uPEGeyX12EWk69NXcEh
 VfPcgN6G5FRs2WCVXWeqQ6u2q0WJ8cM0QIVdmAWN5i7MeTF6fGNrxzjlZ+WapHjHy7QS
 8J/w==
X-Gm-Message-State: APjAAAWRm6SZQutXaAOZ+n4XCnNMkoG1F88MonFY8kYZhUBhON1pPjQP
 AKXgp1u3M9qsajP5n3VaFoURcO1APto=
X-Google-Smtp-Source: APXvYqw29riHGoWMhCfeUGpT8JpzsyL2a/U5QhM8PPUltRaVH+y5YSQ78vFp9V+DsJILGfZcCnEWvA==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr11213479wrs.112.1574073360548; 
 Mon, 18 Nov 2019 02:36:00 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:36:00 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 18 Nov 2019 11:35:36 +0100
Message-Id: <20191118103536.17675-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH 15/15] dma-buf: Remove kernel map/unmap hooks
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

QWxsIGltcGxlbWVudGF0aW9ucyBhcmUgZ29uZSBub3cuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
VmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQu
c2Vtd2FsQGxpbmFyby5vcmc+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwotLS0KIGluY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
IHwgMjUgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmgKaW5kZXggN2ZlYjljMzgwNWFlLi5hYmY1NDU5YTViOWQgMTAwNjQ0Ci0t
LSBhL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCisrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
CkBAIC0yNDksMzEgKzI0OSw2IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7CiAJICovCiAJaW50ICgq
bW1hcCkoc3RydWN0IGRtYV9idWYgKiwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpOwogCi0J
LyoqCi0JICogQG1hcDoKLQkgKgotCSAqIE1hcHMgYSBwYWdlIGZyb20gdGhlIGJ1ZmZlciBpbnRv
IGtlcm5lbCBhZGRyZXNzIHNwYWNlLiBUaGUgcGFnZSBpcwotCSAqIHNwZWNpZmllZCBieSBvZmZz
ZXQgaW50byB0aGUgYnVmZmVyIGluIFBBR0VfU0laRSB1bml0cy4KLQkgKgotCSAqIFRoaXMgY2Fs
bGJhY2sgaXMgb3B0aW9uYWwuCi0JICoKLQkgKiBSZXR1cm5zOgotCSAqCi0JICogVmlydHVhbCBh
ZGRyZXNzIHBvaW50ZXIgd2hlcmUgcmVxdWVzdGVkIHBhZ2UgY2FuIGJlIGFjY2Vzc2VkLiBOVUxM
Ci0JICogb24gZXJyb3Igb3Igd2hlbiB0aGlzIGZ1bmN0aW9uIGlzIHVuaW1wbGVtZW50ZWQgYnkg
dGhlIGV4cG9ydGVyLgotCSAqLwotCXZvaWQgKigqbWFwKShzdHJ1Y3QgZG1hX2J1ZiAqLCB1bnNp
Z25lZCBsb25nKTsKLQotCS8qKgotCSAqIEB1bm1hcDoKLQkgKgotCSAqIFVubWFwcyBhIHBhZ2Ug
ZnJvbSB0aGUgYnVmZmVyLiBQYWdlIG9mZnNldCBhbmQgYWRkcmVzcyBwb2ludGVyIHNob3VsZAot
CSAqIGJlIHRoZSBzYW1lIGFzIHRoZSBvbmUgcGFzc2VkIHRvIGFuZCByZXR1cm5lZCBieSBtYXRj
aGluZyBjYWxsIHRvIG1hcC4KLQkgKgotCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuCi0J
ICovCi0Jdm9pZCAoKnVubWFwKShzdHJ1Y3QgZG1hX2J1ZiAqLCB1bnNpZ25lZCBsb25nLCB2b2lk
ICopOwotCiAJdm9pZCAqKCp2bWFwKShzdHJ1Y3QgZG1hX2J1ZiAqKTsKIAl2b2lkICgqdnVubWFw
KShzdHJ1Y3QgZG1hX2J1ZiAqLCB2b2lkICp2YWRkcik7CiB9OwotLSAKMi4yNC4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
