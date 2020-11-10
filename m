Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC562AE386
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 23:42:59 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9685665CF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Nov 2020 22:42:58 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id CAD0E665F2; Tue, 10 Nov 2020 22:42:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 80EB1665E9;
	Tue, 10 Nov 2020 22:42:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0329060F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:42:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DA922665E9; Tue, 10 Nov 2020 22:42:09 +0000 (UTC)
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by lists.linaro.org (Postfix) with ESMTPS id 7ADCC60F1E
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 22:42:08 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id c17so52933wrc.11
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Nov 2020 14:42:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hn1gX8PspkDOj8Q527Btx4yJgJJQpfPQNotleBd9s78=;
 b=m+VUkQNoPLixAhz0sXlyh6eOXa77vE82yBDE5/iNgro5uVs/znkKLeNb0UdOF4TC5L
 jD0O/ISixWVQgKl2ZZqT7CoH8xg2WeicEWRep/6dTlhx63xBsNi6qXSe2op6Vjy8yp37
 hSPfq1jucqL6ugJg7IAMkOZKPlUe8N11Yx2wahKLlzY/zjsH/l2MzhKmJbGymvzO/zvx
 7TfmmBoQ+/ZDNX4R1WIx32YcYnAb7UEjMKm1DEXyh7aaYSPUl3EwzAVzzO1DSBfI3pIO
 7nA2BLeM9PuHNeZIlL3v+id71ZJB+GtGy7EqGMpmh+4jyWFupQL96nupATS0tUWZJgv0
 QwdA==
X-Gm-Message-State: AOAM530zzGfo2zZGo2h5Y81sIjfaixtyqTO6HyIJdAuj1gZDqKi1qGB+
 g6tRdHm/EwWF9kdOKMLIza6b3iptlDhZyL/Yfbo=
X-Google-Smtp-Source: ABdhPJzpeprw0TRKEK/mcA0vV7/Yvkxpg9VGgvNrS9j5WDhVBOU+5lem10Hfpdjv+l80DR3N6054qdXwIeCfk1LsAs4=
X-Received: by 2002:adf:e8d0:: with SMTP id k16mr26053226wrn.362.1605048127616; 
 Tue, 10 Nov 2020 14:42:07 -0800 (PST)
MIME-Version: 1.0
References: <20201109211855.3340030-1-lee.jones@linaro.org>
 <20201109211855.3340030-13-lee.jones@linaro.org>
In-Reply-To: <20201109211855.3340030-13-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 10 Nov 2020 17:41:55 -0500
Message-ID: <CADnq5_O7nnvqxXGc4pyZZhMem4+-_mYmLNMU6UyT=6WtPfVSEg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Jerome Glisse <glisse@freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 12/20] drm/radeon/radeon_cs: Fix a bunch
	of doc-rot issues
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

T24gTW9uLCBOb3YgOSwgMjAyMCBhdCA0OjE5IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFy
by5vcmc+IHdyb3RlOgo+Cj4gRml4ZXMgdGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdh
cm5pbmcocyk6Cj4KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYzo0MTY6IHdh
cm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ2JhY2tvZmYnIG5vdCBkZXNjcmli
ZWQgaW4gJ3JhZGVvbl9jc19wYXJzZXJfZmluaScKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fY3MuYzo3MzU6IHdhcm5pbmc6IEZ1bmN0aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ3An
IG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9jc19wYWNrZXRfcGFyc2UnCj4gIGRyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcmFkZW9uX2NzLmM6NzM1OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIg
b3IgbWVtYmVyICdpZHgnIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9jc19wYWNrZXRfcGFyc2Un
Cj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmM6NzM1OiB3YXJuaW5nOiBFeGNl
c3MgZnVuY3Rpb24gcGFyYW1ldGVyICdwYXJzZXInIGRlc2NyaXB0aW9uIGluICdyYWRlb25fY3Nf
cGFja2V0X3BhcnNlJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jOjg0NDog
d2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAncCcgbm90IGRlc2NyaWJlZCBp
biAncmFkZW9uX2NzX3BhY2tldF9uZXh0X3JlbG9jJwo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9u
L3JhZGVvbl9jcy5jOjg0NDogd2FybmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAn
Y3NfcmVsb2MnIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9jc19wYWNrZXRfbmV4dF9yZWxvYycK
PiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYzo4NDQ6IHdhcm5pbmc6IEZ1bmN0
aW9uIHBhcmFtZXRlciBvciBtZW1iZXIgJ25vbW0nIG5vdCBkZXNjcmliZWQgaW4gJ3JhZGVvbl9j
c19wYWNrZXRfbmV4dF9yZWxvYycKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3Mu
Yzo4NDQ6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0ZXIgJ3BhcnNlcicgZGVzY3Jp
cHRpb24gaW4gJ3JhZGVvbl9jc19wYWNrZXRfbmV4dF9yZWxvYycKPiAgZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fY3MuYzo4NDQ6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBwYXJhbWV0
ZXIgJ2RhdGEnIGRlc2NyaXB0aW9uIGluICdyYWRlb25fY3NfcGFja2V0X25leHRfcmVsb2MnCj4g
IGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmM6ODQ0OiB3YXJuaW5nOiBFeGNlc3Mg
ZnVuY3Rpb24gcGFyYW1ldGVyICdvZmZzZXRfc3RhcnQnIGRlc2NyaXB0aW9uIGluICdyYWRlb25f
Y3NfcGFja2V0X25leHRfcmVsb2MnCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2Nz
LmM6ODQ0OiB3YXJuaW5nOiBFeGNlc3MgZnVuY3Rpb24gcGFyYW1ldGVyICdvZmZzZXRfbWFzaycg
ZGVzY3JpcHRpb24gaW4gJ3JhZGVvbl9jc19wYWNrZXRfbmV4dF9yZWxvYycKPiAgZHJpdmVycy9n
cHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYzo4NDQ6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbiBw
YXJhbWV0ZXIgJ3JlbG9jJyBkZXNjcmlwdGlvbiBpbiAncmFkZW9uX2NzX3BhY2tldF9uZXh0X3Jl
bG9jJwo+Cj4gQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KPiBD
YzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERh
dmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVs
QGZmd2xsLmNoPgo+IENjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+
IENjOiBKZXJvbWUgR2xpc3NlIDxnbGlzc2VAZnJlZWRlc2t0b3Aub3JnPgo+IENjOiBhbWQtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW5hcm8tbW0tc2ln
QGxpc3RzLmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgoKQXBwbGllZCB3aXRoIHNvbWUgbWlub3IgZml4dXBzLgoKVGhhbmtzIQoKQWxl
eAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYyB8IDEyICsrKysr
Ky0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2NzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9jcy5jCj4gaW5kZXggMjFjZTJmOTUwMmMwOS4u
NzI5OTM5ZGYyOWNjNSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVv
bl9jcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fY3MuYwo+IEBAIC00
MDgsNiArNDA4LDcgQEAgc3RhdGljIGludCBjbXBfc2l6ZV9zbWFsbGVyX2ZpcnN0KHZvaWQgKnBy
aXYsIHN0cnVjdCBsaXN0X2hlYWQgKmEsCj4gICAqIGNzX3BhcnNlcl9maW5pKCkgLSBjbGVhbiBw
YXJzZXIgc3RhdGVzCj4gICAqIEBwYXJzZXI6ICAgIHBhcnNlciBzdHJ1Y3R1cmUgaG9sZGluZyBw
YXJzaW5nIGNvbnRleHQuCj4gICAqIEBlcnJvcjogICAgIGVycm9yIG51bWJlcgo+ICsgKiBAYmFj
a29mZjogICBpbmRpY2F0b3IgdG8gYmFja29mZiB0aGUgcmVzZXJ2YXRpb24KPiAgICoKPiAgICog
SWYgZXJyb3IgaXMgc2V0IHRoYW4gdW52YWxpZGF0ZSBidWZmZXIsIG90aGVyd2lzZSBqdXN0IGZy
ZWUgbWVtb3J5Cj4gICAqIHVzZWQgYnkgcGFyc2luZyBjb250ZXh0Lgo+IEBAIC03MjMsOCArNzI0
LDkgQEAgaW50IHJhZGVvbl9jc19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpk
YXRhLCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbHApCj4KPiAgLyoqCj4gICAqIHJhZGVvbl9jc19wYWNr
ZXRfcGFyc2UoKSAtIHBhcnNlIGNwIHBhY2tldCBhbmQgcG9pbnQgaWIgaW5kZXggdG8gbmV4dCBw
YWNrZXQKPiAtICogQHBhcnNlcjogICAgcGFyc2VyIHN0cnVjdHVyZSBob2xkaW5nIHBhcnNpbmcg
Y29udGV4dC4KPiArICogQHA6ICAgICAgICAgcGFyc2VyIHN0cnVjdHVyZSBob2xkaW5nIHBhcnNp
bmcgY29udGV4dC4KPiAgICogQHBrdDogICAgICAgd2hlcmUgdG8gc3RvcmUgcGFja2V0IGluZm9y
bWF0aW9uCj4gKyAqIEBpZHg6ICAgICAgIHBhY2tldCBpbmRleAo+ICAgKgo+ICAgKiBBc3N1bWUg
dGhhdCBjaHVua19pYl9pbmRleCBpcyBwcm9wZXJseSBzZXQuIFdpbGwgcmV0dXJuIC1FSU5WQUwK
PiAgICogaWYgcGFja2V0IGlzIGJpZ2dlciB0aGFuIHJlbWFpbmluZyBpYiBzaXplLiBvciBpZiBw
YWNrZXRzIGlzIHVua25vd24uCj4gQEAgLTgyOSwxMSArODMxLDkgQEAgdm9pZCByYWRlb25fY3Nf
ZHVtcF9wYWNrZXQoc3RydWN0IHJhZGVvbl9jc19wYXJzZXIgKnAsCj4KPiAgLyoqCj4gICAqIHJh
ZGVvbl9jc19wYWNrZXRfbmV4dF9yZWxvYygpIC0gcGFyc2UgbmV4dCAoc2hvdWxkIGJlIHJlbG9j
KSBwYWNrZXQKPiAtICogQHBhcnNlcjogICAgICAgICAgICBwYXJzZXIgc3RydWN0dXJlIGhvbGRp
bmcgcGFyc2luZyBjb250ZXh0Lgo+IC0gKiBAZGF0YTogICAgICAgICAgICAgIHBvaW50ZXIgdG8g
cmVsb2NhdGlvbiBkYXRhCj4gLSAqIEBvZmZzZXRfc3RhcnQ6ICAgICAgc3RhcnRpbmcgb2Zmc2V0
Cj4gLSAqIEBvZmZzZXRfbWFzazogICAgICAgb2Zmc2V0IG1hc2sgKHRvIGFsaWduIHN0YXJ0IG9m
ZnNldCBvbikKPiAtICogQHJlbG9jOiAgICAgICAgICAgICByZWxvYyBpbmZvcm1hdGlvbnMKPiAr
ICogQHA6ICAgICAgICAgICAgICAgICBwYXJzZXIgc3RydWN0dXJlIGhvbGRpbmcgcGFyc2luZyBj
b250ZXh0Lgo+ICsgKiBAY3NfcmVsb2M6ICAgICAgICAgIHJlbG9jIGluZm9ybWF0aW9ucwo+ICsg
KiBAbm9tbTogICAgICAgICAgICAgIG5ldmVyIGFjdHVhbGx5IHVzZWQKPiAgICoKPiAgICogQ2hl
Y2sgaWYgbmV4dCBwYWNrZXQgaXMgcmVsb2NhdGlvbiBwYWNrZXQzLCBkbyBibyB2YWxpZGF0aW9u
IGFuZCBjb21wdXRlCj4gICAqIEdQVSBvZmZzZXQgdXNpbmcgdGhlIHByb3ZpZGVkIHN0YXJ0Lgo+
IC0tCj4gMi4yNS4xCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcmktZGV2ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8u
b3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1z
aWcK
