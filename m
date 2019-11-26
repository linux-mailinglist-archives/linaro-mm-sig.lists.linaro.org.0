Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB3E109CAD
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 11:55:55 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 20C4261887
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Nov 2019 10:55:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0EB1161627; Tue, 26 Nov 2019 10:55:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 58ADE61503;
	Tue, 26 Nov 2019 10:54:58 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 61C566065D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 10:54:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3BE8A61503; Tue, 26 Nov 2019 10:54:54 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 9530E6065D
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 10:54:52 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y11so18761198wrt.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Nov 2019 02:54:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0m2aIhtiBled0Rier5l0ndzlr2Gepz/S9qpk6DhIAfk=;
 b=poK4I2IyRek8YoCFe8u7HHPMv85Ok8IZunDRj1I6JMVMKX1IQjs8HpJJOn5eipP2hD
 Bm6r8EurwwV6Wud+T53TxZ+DUjBmt0xBMtmfYkVeluWWIKfM+94kLYOTLwOoqp6gVTht
 OxJuD6QpT25MwKRWe3lPkUD6rYcJ4WJ+yH8E7jf5objxzBg6N3W41X3TRokY2CgSREdk
 BSN2cf9k0OYL3bD2bXdFL4oTs4hKcpnqP2DAPA488Mlxj7ogqfWQhe1WR2MFdIYHC+QR
 6yYxI+8H1t8BLYqiY5cm+wXEuXaDExjjaSsaekPyI5yRAxwfcvfC54nx8NULD+73pGsY
 anNQ==
X-Gm-Message-State: APjAAAUXmbQXeLHQ06o5lChLVl44+GplZTlt9jBZU9GHJhNTPK9ujEdP
 dwU/4giQOZUf6Eph87FxDsHyYQ==
X-Google-Smtp-Source: APXvYqw2gpCez7KPdk4MsgX35uNVq4zbeJB++ioWP7G+2byVIAVs0drRL1YXoZ9d5vA/Sb0+8pTpuA==
X-Received: by 2002:a5d:522e:: with SMTP id i14mr39752974wra.27.1574765691638; 
 Tue, 26 Nov 2019 02:54:51 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id w10sm2539028wmd.26.2019.11.26.02.54.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 02:54:50 -0800 (PST)
Date: Tue, 26 Nov 2019 11:54:48 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20191126105448.GT29965@phenom.ffwll.local>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-16-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118103536.17675-16-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 15/15] dma-buf: Remove kernel map/unmap
	hooks
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

T24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgMTE6MzU6MzZBTSArMDEwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBBbGwgaW1wbGVtZW50YXRpb25zIGFyZSBnb25lIG5vdy4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiBDYzogU3VtaXQg
U2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogbGludXgtbWVkaWFAdmdlci5r
ZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwoKQXBwbGllZCB0
aGUgZmluYWwgdHdvIHBhdGNoZXMgb2YgdGhpcyBzZXJpZXMgbm93IHRvby4KLURhbmllbAoKPiAt
LS0KPiAgaW5jbHVkZS9saW51eC9kbWEtYnVmLmggfCAyNSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+IGluZGV4
IDdmZWI5YzM4MDVhZS4uYWJmNTQ1OWE1YjlkIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgv
ZG1hLWJ1Zi5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiBAQCAtMjQ5LDMxICsy
NDksNiBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMgewo+ICAJICovCj4gIAlpbnQgKCptbWFwKShzdHJ1
Y3QgZG1hX2J1ZiAqLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSk7Cj4gIAo+IC0JLyoqCj4g
LQkgKiBAbWFwOgo+IC0JICoKPiAtCSAqIE1hcHMgYSBwYWdlIGZyb20gdGhlIGJ1ZmZlciBpbnRv
IGtlcm5lbCBhZGRyZXNzIHNwYWNlLiBUaGUgcGFnZSBpcwo+IC0JICogc3BlY2lmaWVkIGJ5IG9m
ZnNldCBpbnRvIHRoZSBidWZmZXIgaW4gUEFHRV9TSVpFIHVuaXRzLgo+IC0JICoKPiAtCSAqIFRo
aXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuCj4gLQkgKgo+IC0JICogUmV0dXJuczoKPiAtCSAqCj4g
LQkgKiBWaXJ0dWFsIGFkZHJlc3MgcG9pbnRlciB3aGVyZSByZXF1ZXN0ZWQgcGFnZSBjYW4gYmUg
YWNjZXNzZWQuIE5VTEwKPiAtCSAqIG9uIGVycm9yIG9yIHdoZW4gdGhpcyBmdW5jdGlvbiBpcyB1
bmltcGxlbWVudGVkIGJ5IHRoZSBleHBvcnRlci4KPiAtCSAqLwo+IC0Jdm9pZCAqKCptYXApKHN0
cnVjdCBkbWFfYnVmICosIHVuc2lnbmVkIGxvbmcpOwo+IC0KPiAtCS8qKgo+IC0JICogQHVubWFw
Ogo+IC0JICoKPiAtCSAqIFVubWFwcyBhIHBhZ2UgZnJvbSB0aGUgYnVmZmVyLiBQYWdlIG9mZnNl
dCBhbmQgYWRkcmVzcyBwb2ludGVyIHNob3VsZAo+IC0JICogYmUgdGhlIHNhbWUgYXMgdGhlIG9u
ZSBwYXNzZWQgdG8gYW5kIHJldHVybmVkIGJ5IG1hdGNoaW5nIGNhbGwgdG8gbWFwLgo+IC0JICoK
PiAtCSAqIFRoaXMgY2FsbGJhY2sgaXMgb3B0aW9uYWwuCj4gLQkgKi8KPiAtCXZvaWQgKCp1bm1h
cCkoc3RydWN0IGRtYV9idWYgKiwgdW5zaWduZWQgbG9uZywgdm9pZCAqKTsKPiAtCj4gIAl2b2lk
ICooKnZtYXApKHN0cnVjdCBkbWFfYnVmICopOwo+ICAJdm9pZCAoKnZ1bm1hcCkoc3RydWN0IGRt
YV9idWYgKiwgdm9pZCAqdmFkZHIpOwo+ICB9Owo+IC0tIAo+IDIuMjQuMAo+IAoKLS0gCkRhbmll
bCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9n
LmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
