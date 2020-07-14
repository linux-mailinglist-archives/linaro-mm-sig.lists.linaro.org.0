Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B9C21EED3
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 13:13:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F251B6659D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 11:13:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id E5500665AA; Tue, 14 Jul 2020 11:13:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1887F665A6;
	Tue, 14 Jul 2020 11:12:38 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1E88B6601C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 11:12:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 040B4665A6; Tue, 14 Jul 2020 11:12:30 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id 1BD8E6601C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 11:12:26 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r12so20811116wrj.13
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 04:12:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=VJUMRju7OKuE24xgVbETEzznY9nUxSvHfkGn/7lFRJc=;
 b=XgQKczH2UTq4BbFCWtPgWpJe9gedwjkNk65UE6EQANWjHMyk3StXELaeazEEXjTz9f
 vQTTqeyaKf+DS7gvmC+swKSfmWol9ycHZ9WE+x/IsT+nAj3jYbE+1DBL5OR2GnONqHJN
 OBNvGVTi3wNkOoqrjN2xgSvVdbqTWYpVuytO9+W3wKpnpwg8qtYdB3tCQpv564Jr3rrq
 hztmBnho4qCqi1z9cWCcug0rAG63D9Pg6jaGyTUUHgcCbL+MZ3Fu883JqVp7k3+U/sB5
 wCWGye33EBIiY3ZH5W6Kpa2152h178FulOOeXdDnv8TL1yZWbm/YnhnolVNk/7HayDqy
 iWRw==
X-Gm-Message-State: AOAM531U3TNuiIqlEkjxoQ+k5pT8g7ZVedsSPd+q5+wfZUKCnmTqDRZY
 q0AZx09fu6VX+pWqe3d9kF0gdg==
X-Google-Smtp-Source: ABdhPJz5Pus9C7QZEyzkJv8l+/+SFrBsdEtrmB/rDpt1sctjAKSgOKT85PdH59/MA9EocwuEPu+DYA==
X-Received: by 2002:adf:f542:: with SMTP id j2mr4633600wrp.61.1594725145156;
 Tue, 14 Jul 2020 04:12:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l1sm29243097wrb.12.2020.07.14.04.12.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 04:12:24 -0700 (PDT)
Date: Tue, 14 Jul 2020 13:12:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20200714111222.GE3278063@phenom.ffwll.local>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-21-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707201229.472834-21-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 20/25] drm/amdgpu: DC also loves to
 allocate stuff where it shouldn't
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

T24gVHVlLCBKdWwgMDcsIDIwMjAgYXQgMTA6MTI6MjRQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBOb3QgZ29pbmcgdG8gYm90aGVyIHdpdGggYSBjb21wbGV0ZSZwcmV0dHkgY29tbWl0
IG1lc3NhZ2UsIGp1c3QKPiBvZmZlbmRpbmcgYmFja3RyYWNlOgo+IAo+ICAgICAgICAga3ZtYWxs
b2Nfbm9kZSsweDQ3LzB4ODAKPiAgICAgICAgIGRjX2NyZWF0ZV9zdGF0ZSsweDFmLzB4NjAgW2Ft
ZGdwdV0KPiAgICAgICAgIGRjX2NvbW1pdF9zdGF0ZSsweGNiLzB4OWIwIFthbWRncHVdCj4gICAg
ICAgICBhbWRncHVfZG1fYXRvbWljX2NvbW1pdF90YWlsKzB4ZDMxLzB4MjAxMCBbYW1kZ3B1XQo+
ICAgICAgICAgY29tbWl0X3RhaWwrMHhhNC8weDE0MCBbZHJtX2ttc19oZWxwZXJdCj4gICAgICAg
ICBkcm1fYXRvbWljX2hlbHBlcl9jb21taXQrMHgxNTIvMHgxODAgW2RybV9rbXNfaGVscGVyXQo+
ICAgICAgICAgZHJtX2NsaWVudF9tb2Rlc2V0X2NvbW1pdF9hdG9taWMrMHgxZWEvMHgyNTAgW2Ry
bV0KPiAgICAgICAgIGRybV9jbGllbnRfbW9kZXNldF9jb21taXRfbG9ja2VkKzB4NTUvMHgxOTAg
W2RybV0KPiAgICAgICAgIGRybV9jbGllbnRfbW9kZXNldF9jb21taXQrMHgyNC8weDQwIFtkcm1d
Cj4gCj4gdjI6IEZvdW5kIG1vcmUgaW4gREMgY29kZSwgSSdtIGp1c3QgZ29pbmcgdG8gcGlsZSB0
aGVtIGFsbCB1cC4KPiAKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IENjOiBsaW51eC1yZG1hQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CgpBbnlvbmUgZnJvbSBhbWRncHUgREMgdGVhbSBzdGFydGVkIHRvIGxvb2sgaW50byB0
aGlzIGFuZCB0aGUgc3Vic2VxdWVudApwYXRjaGVzIGluIERDPyBOb3RlIHRoYXQgdGhlIGxhc3Qg
b25lIGlzbid0IG5lZWRlZCBhbnltb3JlIGJlY2F1c2UgaXQncwpub3cgZml4IGluIHVwc3RyZWFt
IHdpdGgKCmNvbW1pdCBjZGFhZTgzNzFhYTlkNGVhMTY0OGEyOTliMWE3NTk0NmI5NTU2OTQ0CkF1
dGhvcjogQmhhd2FucHJlZXQgTGFraGEgPEJoYXdhbnByZWV0Lkxha2hhQGFtZC5jb20+CkRhdGU6
ICAgTW9uIE1heSAxMSAxNDoyMToxNyAyMDIwIC0wNDAwCgogICAgZHJtL2FtZC9kaXNwbGF5OiBI
YW5kbGUgR1BVIHJlc2V0IGZvciBEQyBibG9jawoKQnV0IHRoYXQgcGF0Y2ggaGFzIGEgdG9uIG9m
IG1lbW9yeSBhbGxvY2F0aW9ucyBpbiB0aGUgcmVzZXQgcGF0aCBub3csIHNvCnlvdSBqdXN0IHJl
cGxhY2VkIG9uZSBkZWFkbG9jayB3aXRoIGFub3RoZXIgb25lIC4uLgoKTm90ZSB0aGF0IHNpbmNl
IGFtZGdwdSBoYXMgaXQncyBwcml2YXRlIGF0b21pY19jb21taXRfdGFpbCBpbXBsZW1lbmF0aW9u
CnRoaXMgd29uJ3QgaG9sZCB1cCB0aGUgZ2VuZXJpYyBhdG9taWMgYW5ub3RhdGlvbnMsIGJ1dCBJ
IHRoaW5rIGl0IHdpbGwKaG9sZCB1cCB0aGUgdGRyIGFubm90YXRpb25zIGF0IGxlYXN0LiBQbHVz
IHdvdWxkIGJlIG5pY2UgdG8gZml4IHRoaXMKc29tZWhvdy4KLURhbmllbAoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jICAgICAgICAgICAgICAgICB8IDIgKy0KPiAg
ZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYyB8IDIgKy0K
PiAgZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2RjL2NvcmUvZGMuYyAgICAgICAgICB8IDQg
KysrLQo+ICAzIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jCj4gaW5kZXggNGNmYzc4NjY5OWM3Li4xYjBj
Njc0ZmFiMjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYXRvbS5jCj4gQEAgLTEyMjYsNyAr
MTIyNiw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2F0b21fZXhlY3V0ZV90YWJsZV9sb2NrZWQoc3Ry
dWN0IGF0b21fY29udGV4dCAqY3R4LCBpbnQgaW5kZXgsCj4gIAllY3R4LmFib3J0ID0gZmFsc2U7
Cj4gIAllY3R4Lmxhc3RfanVtcCA9IDA7Cj4gIAlpZiAod3MpCj4gLQkJZWN0eC53cyA9IGtjYWxs
b2MoNCwgd3MsIEdGUF9LRVJORUwpOwo+ICsJCWVjdHgud3MgPSBrY2FsbG9jKDQsIHdzLCBHRlBf
QVRPTUlDKTsKPiAgCWVsc2UKPiAgCQllY3R4LndzID0gTlVMTDsKPiAgCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCj4gaW5kZXggNmFm
Y2MzM2ZmODQ2Li4zZDQxZWRkYzc5MDggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9kaXNwbGF5L2FtZGdwdV9kbS9hbWRncHVfZG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKPiBAQCAtNjg3Miw3ICs2ODcyLDcgQEAg
c3RhdGljIHZvaWQgYW1kZ3B1X2RtX2NvbW1pdF9wbGFuZXMoc3RydWN0IGRybV9hdG9taWNfc3Rh
dGUgKnN0YXRlLAo+ICAJCXN0cnVjdCBkY19zdHJlYW1fdXBkYXRlIHN0cmVhbV91cGRhdGU7Cj4g
IAl9ICpidW5kbGU7Cj4gIAo+IC0JYnVuZGxlID0ga3phbGxvYyhzaXplb2YoKmJ1bmRsZSksIEdG
UF9LRVJORUwpOwo+ICsJYnVuZGxlID0ga3phbGxvYyhzaXplb2YoKmJ1bmRsZSksIEdGUF9BVE9N
SUMpOwo+ICAKPiAgCWlmICghYnVuZGxlKSB7Cj4gIAkJZG1fZXJyb3IoIkZhaWxlZCB0byBhbGxv
Y2F0ZSB1cGRhdGUgYnVuZGxlXG4iKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9kaXNwbGF5L2RjL2NvcmUvZGMuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9kYy9j
b3JlL2RjLmMKPiBpbmRleCA5NDJjZWIwZjYzODMuLmY5YTU4NTA5ZWZiMiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvZGMvY29yZS9kYy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2FtZC9kaXNwbGF5L2RjL2NvcmUvZGMuYwo+IEBAIC0xNDc1LDggKzE0NzUsMTAg
QEAgYm9vbCBkY19wb3N0X3VwZGF0ZV9zdXJmYWNlc190b19zdHJlYW0oc3RydWN0IGRjICpkYykK
PiAgCj4gIHN0cnVjdCBkY19zdGF0ZSAqZGNfY3JlYXRlX3N0YXRlKHN0cnVjdCBkYyAqZGMpCj4g
IHsKPiArCS8qIE5vIHlvdSByZWFsbHkgY2FudCBhbGxvY2F0ZSByYW5kb20gY3JhcCBoZXJlIHRo
aXMgbGF0ZSBpbgo+ICsJICogYXRvbWljX2NvbW1pdF90YWlsLiAqLwo+ICAJc3RydWN0IGRjX3N0
YXRlICpjb250ZXh0ID0ga3Z6YWxsb2Moc2l6ZW9mKHN0cnVjdCBkY19zdGF0ZSksCj4gLQkJCQkJ
ICAgIEdGUF9LRVJORUwpOwo+ICsJCQkJCSAgICBHRlBfQVRPTUlDKTsKPiAgCj4gIAlpZiAoIWNv
bnRleHQpCj4gIAkJcmV0dXJuIE5VTEw7Cj4gLS0gCj4gMi4yNy4wCj4gCgotLSAKRGFuaWVsIFZl
dHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
YXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0
dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
