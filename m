Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EBD2B2253
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 18:28:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8901666F3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Nov 2020 17:28:34 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id D94DB666F5; Fri, 13 Nov 2020 17:28:34 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7ADD6666F0;
	Fri, 13 Nov 2020 17:27:55 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 2CD63666ED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:27:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1A75E666F0; Fri, 13 Nov 2020 17:27:53 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id B6242666ED
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 17:27:51 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c17so10729064wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Nov 2020 09:27:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Aoo3XC1xgkYP3AILMBs2qRa84a7jg1GfVsNZfCCxg90=;
 b=cSCg+iudedhgRhlvAQmCLmma64AI9keDHtxttITV8w9dUIOlSoZFsIQ7cBlNPkk0PJ
 CDGPxalHZo1ZTdej/e1iv/cbVKLRom4w4/4uzI5fQpyYBpNbF78uh3x5PUUuYiQmc1JG
 FBz3JpNSqbdV89yo8ZQk5snstwnHjF7M4SLfg4/2n/BcUx1Ghu5wszhr8G66fJn6a6js
 pLRbBrgPnw36Ti/bpwb6RJ5q6/H3Bctp884eQOmyKIfduqmnB4sRb8RDjhu/Rrpj7pHW
 rN/DQl9soZ+JQ0FeE+gdaApDEIdpG5/qH7S0MNAUew5jCnM5gjr6/5qvG5aYCkXRIuvp
 u38w==
X-Gm-Message-State: AOAM533ZX64LxV/bLJrraUHM4+XranagVkCv7901Ef94CKBHMIk3HGeW
 JdQPoj8PVRd0u3ulQAlP2vm0pvfB6GcT/jGsRcW6Ezh+
X-Google-Smtp-Source: ABdhPJyU763L3HQHIS0PPLGIYKDLP9HCwyeqI8Bd+rjzwFY33/WRlgaDonxguETxNniMFVJGuSnI8DtIIg1RJPZiRng=
X-Received: by 2002:adf:8028:: with SMTP id 37mr4685613wrk.111.1605288469699; 
 Fri, 13 Nov 2020 09:27:49 -0800 (PST)
MIME-Version: 1.0
References: <20201113134938.4004947-1-lee.jones@linaro.org>
 <20201113134938.4004947-26-lee.jones@linaro.org>
In-Reply-To: <20201113134938.4004947-26-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 13 Nov 2020 12:27:38 -0500
Message-ID: <CADnq5_NN81LB=FiwRnALOV3PWZKjicZh93BaBEcO=D_E1wHn0w@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 25/40] drm/amd/amdgpu/amdgpu_debugfs:
 Demote obvious abuse of kernel-doc formatting
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

T24gRnJpLCBOb3YgMTMsIDIwMjAgYXQgODo1MCBBTSBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5h
cm8ub3JnPiB3cm90ZToKPgo+IEZpeGVzIHRoZSBmb2xsb3dpbmcgVz0xIGtlcm5lbCBidWlsZCB3
YXJuaW5nKHMpOgo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2Zz
LmM6MzA4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdmJyBub3QgZGVz
Y3JpYmVkIGluICdhbWRncHVfZGVidWdmc19yZWdzX3JlYWQnCj4gIGRyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2ZzLmM6MzA4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0
ZXIgb3IgbWVtYmVyICdidWYnIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9kZWJ1Z2ZzX3JlZ3Nf
cmVhZCcKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYzozMDg6
IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3NpemUnIG5vdCBkZXNjcmli
ZWQgaW4gJ2FtZGdwdV9kZWJ1Z2ZzX3JlZ3NfcmVhZCcKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X2RlYnVnZnMuYzozMDg6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBv
ciBtZW1iZXIgJ3Bvcycgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X2RlYnVnZnNfcmVnc19yZWFk
Jwo+ICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jOjMxNzogd2Fy
bmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnZicgbm90IGRlc2NyaWJlZCBpbiAn
YW1kZ3B1X2RlYnVnZnNfcmVnc193cml0ZScKPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2RlYnVnZnMuYzozMTc6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1i
ZXIgJ2J1Zicgbm90IGRlc2NyaWJlZCBpbiAnYW1kZ3B1X2RlYnVnZnNfcmVnc193cml0ZScKPiAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYzozMTc6IHdhcm5pbmc6
IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3NpemUnIG5vdCBkZXNjcmliZWQgaW4gJ2Ft
ZGdwdV9kZWJ1Z2ZzX3JlZ3Nfd3JpdGUnCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kZWJ1Z2ZzLmM6MzE3OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVy
ICdwb3MnIG5vdCBkZXNjcmliZWQgaW4gJ2FtZGdwdV9kZWJ1Z2ZzX3JlZ3Nfd3JpdGUnCj4KPiBD
YzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgo+IENjOiAiQ2hyaXN0
aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KPiBDYzogRGF2aWQgQWlybGll
IDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+
Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+Cj4gQ2M6IGFtZC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+CgpBcHBsaWVkLiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jCj4gaW5kZXggNWMxZjM3MjVjNzQxMC4uYTY2
NjdhMmNhMGRiMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rl
YnVnZnMuYwo+IEBAIC0zMDAsNyArMzAwLDcgQEAgc3RhdGljIGludCAgYW1kZ3B1X2RlYnVnZnNf
cHJvY2Vzc19yZWdfb3AoYm9vbCByZWFkLCBzdHJ1Y3QgZmlsZSAqZiwKPiAgICAgICAgIHJldHVy
biByZXN1bHQ7Cj4gIH0KPgo+IC0vKioKPiArLyoKPiAgICogYW1kZ3B1X2RlYnVnZnNfcmVnc19y
ZWFkIC0gQ2FsbGJhY2sgZm9yIHJlYWRpbmcgTU1JTyByZWdpc3RlcnMKPiAgICovCj4gIHN0YXRp
YyBzc2l6ZV90IGFtZGdwdV9kZWJ1Z2ZzX3JlZ3NfcmVhZChzdHJ1Y3QgZmlsZSAqZiwgY2hhciBf
X3VzZXIgKmJ1ZiwKPiBAQCAtMzA5LDcgKzMwOSw3IEBAIHN0YXRpYyBzc2l6ZV90IGFtZGdwdV9k
ZWJ1Z2ZzX3JlZ3NfcmVhZChzdHJ1Y3QgZmlsZSAqZiwgY2hhciBfX3VzZXIgKmJ1ZiwKPiAgICAg
ICAgIHJldHVybiBhbWRncHVfZGVidWdmc19wcm9jZXNzX3JlZ19vcCh0cnVlLCBmLCBidWYsIHNp
emUsIHBvcyk7Cj4gIH0KPgo+IC0vKioKPiArLyoKPiAgICogYW1kZ3B1X2RlYnVnZnNfcmVnc193
cml0ZSAtIENhbGxiYWNrIGZvciB3cml0aW5nIE1NSU8gcmVnaXN0ZXJzCj4gICAqLwo+ICBzdGF0
aWMgc3NpemVfdCBhbWRncHVfZGVidWdmc19yZWdzX3dyaXRlKHN0cnVjdCBmaWxlICpmLCBjb25z
dCBjaGFyIF9fdXNlciAqYnVmLAo+IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBk
cmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJv
LW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
