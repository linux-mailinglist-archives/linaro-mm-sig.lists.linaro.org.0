Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E9021EE55
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 12:50:10 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id ACF7260628
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2020 10:50:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9C9B46038C; Tue, 14 Jul 2020 10:50:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1FEB665A5;
	Tue, 14 Jul 2020 10:49:21 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1AB6C6601C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 10:49:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id F1F05665A5; Tue, 14 Jul 2020 10:49:15 +0000 (UTC)
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by lists.linaro.org (Postfix) with ESMTPS id F0B106601C
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 10:49:13 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id q5so20763536wru.6
 for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2020 03:49:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=XFyCObAFNGAkAD33iucRxardqlG+NdnL+BA8ka5PPr4=;
 b=Os/o6xPKHkDDsmMt2row+xVkAx10GFRwZ3xtX3EcEEw7y4hfJMZQI3yeuI5Qye2/i+
 JmaOC1Pojduzi16IqmloSZq4cLcJ6rx2SJeNwrievqXpbyVVzrnqP+Gto+QbES+wgg3Z
 gF50dXGf5tBtBRy0szlofMCpIfpPeRY53iw8F0ENcxUn9II3tQK7zxjiEfkUcKW6Gf1g
 U2G0CmzHfcSJmp69lOdCroD17LvWim4Jiyg17MIp2sCFRtDPl1A1BIEmoLrOlMGTamhI
 ttFEkUFQa0OTrNbF6D0JXofQfjjzIzlI4yag6J2kB0sFgMXmH75/ZdV/kUHOlSBdcFU3
 LLcQ==
X-Gm-Message-State: AOAM531/Mr06vagEgk3YNIaxcny3D7Yl2PQU4fGxbFkwiYepkyUn5z03
 XIFF+pcbWCkQ2pGSRh7STKucPQ==
X-Google-Smtp-Source: ABdhPJxzCDVzf3ULPsu9gK9KiSaB34ZTvYO1lf6Ch0WaVTCD95UxXPy23Q0JcDyFOFTm8A13sseYqQ==
X-Received: by 2002:adf:c44d:: with SMTP id a13mr4551346wrg.205.1594723752919; 
 Tue, 14 Jul 2020 03:49:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u17sm27474975wrp.70.2020.07.14.03.49.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 03:49:12 -0700 (PDT)
Date: Tue, 14 Jul 2020 12:49:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Message-ID: <20200714104910.GC3278063@phenom.ffwll.local>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-20-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200707201229.472834-20-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 amd-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 19/25] drm/amdgpu:
 s/GFP_KERNEL/GFP_ATOMIC in scheduler code
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

T24gVHVlLCBKdWwgMDcsIDIwMjAgYXQgMTA6MTI6MjNQTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBNeSBkbWEtZmVuY2UgbG9ja2RlcCBhbm5vdGF0aW9ucyBjYXVnaHQgYW4gaW52ZXJz
aW9uIGJlY2F1c2Ugd2UKPiBhbGxvY2F0ZSBtZW1vcnkgd2hlcmUgd2UgcmVhbGx5IHNob3VsZG4n
dDoKPiAKPiAJa21lbV9jYWNoZV9hbGxvYysweDJiLzB4NmQwCj4gCWFtZGdwdV9mZW5jZV9lbWl0
KzB4MzAvMHgzMzAgW2FtZGdwdV0KPiAJYW1kZ3B1X2liX3NjaGVkdWxlKzB4MzA2LzB4NTUwIFth
bWRncHVdCj4gCWFtZGdwdV9qb2JfcnVuKzB4MTBmLzB4MjYwIFthbWRncHVdCj4gCWRybV9zY2hl
ZF9tYWluKzB4MWI5LzB4NDkwIFtncHVfc2NoZWRdCj4gCWt0aHJlYWQrMHgxMmUvMHgxNTAKPiAK
PiBUcm91YmxlIHJpZ2h0IG5vdyBpcyB0aGF0IGxvY2tkZXAgb25seSB2YWxpZGF0ZXMgYWdhaW5z
dCBHRlBfRlMsIHdoaWNoCj4gd291bGQgYmUgZ29vZCBlbm91Z2ggZm9yIHNocmlua2Vycy4gQnV0
IGZvciBtbXVfbm90aWZpZXJzIHdlIGFjdHVhbGx5Cj4gbmVlZCAhR0ZQX0FUT01JQywgc2luY2Ug
dGhleSBjYW4gYmUgY2FsbGVkIGZyb20gYW55IHBhZ2UgbGF1bmRlcmluZywKPiBldmVuIGlmIEdG
UF9OT0ZTIG9yIEdGUF9OT0lPIGFyZSBzZXQuCj4gCj4gSSBndWVzcyB3ZSBzaG91bGQgaW1wcm92
ZSB0aGUgbG9ja2RlcCBhbm5vdGF0aW9ucyBmb3IKPiBmc19yZWNsYWltX2FjcXVpcmUvcmVsZWFz
ZS4KPiAKPiBPZmMgcmVhbCBmaXggaXMgdG8gcHJvcGVybHkgcHJlYWxsb2NhdGUgdGhpcyBmZW5j
ZSBhbmQgc3R1ZmYgaXQgaW50bwo+IHRoZSBhbWRncHUgam9iIHN0cnVjdHVyZS4gQnV0IEdGUF9B
VE9NSUMgZ2V0cyB0aGUgbG9ja2RlcCBzcGxhdCBvdXQgb2YKPiB0aGUgd2F5Lgo+IAo+IHYyOiBU
d28gbW9yZSBhbGxvY2F0aW9ucyBpbiBzY2hlZHVsZXIgcGF0aHMuCj4gCj4gRnJpc3Qgb25lOgo+
IAo+IAlfX2ttYWxsb2MrMHg1OC8weDcyMAo+IAlhbWRncHVfdm1pZF9ncmFiKzB4MTAwLzB4Y2Ew
IFthbWRncHVdCj4gCWFtZGdwdV9qb2JfZGVwZW5kZW5jeSsweGY5LzB4MTIwIFthbWRncHVdCj4g
CWRybV9zY2hlZF9lbnRpdHlfcG9wX2pvYisweDNmLzB4NDQwIFtncHVfc2NoZWRdCj4gCWRybV9z
Y2hlZF9tYWluKzB4ZjkvMHg0OTAgW2dwdV9zY2hlZF0KPiAKPiBTZWNvbmQgb25lOgo+IAo+IAlr
bWVtX2NhY2hlX2FsbG9jKzB4MmIvMHg2ZDAKPiAJYW1kZ3B1X3N5bmNfZmVuY2UrMHg3ZS8weDEx
MCBbYW1kZ3B1XQo+IAlhbWRncHVfdm1pZF9ncmFiKzB4ODZiLzB4Y2EwIFthbWRncHVdCj4gCWFt
ZGdwdV9qb2JfZGVwZW5kZW5jeSsweGY5LzB4MTIwIFthbWRncHVdCj4gCWRybV9zY2hlZF9lbnRp
dHlfcG9wX2pvYisweDNmLzB4NDQwIFtncHVfc2NoZWRdCj4gCWRybV9zY2hlZF9tYWluKzB4Zjkv
MHg0OTAgW2dwdV9zY2hlZF0KPiAKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCj4g
Q2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IENjOiBsaW51eC1yZG1hQHZnZXIu
a2VybmVsLm9yZwo+IENjOiBhbWQtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+CgpIYXMgYW55b25lIGZyb20gYW1kIHNpZGUgc3RhcnRlZCBsb29raW5nIGlu
dG8gaG93IHRvIGZpeCB0aGlzIHByb3Blcmx5PwoKSSBsb29rZWQgYSBiaXQgaW50byBmaXhpbmcg
dGhpcyB3aXRoIG1lbXBvb2wsIGFuZCB0aGUgYmlnIGd1YXJhbnRlZSB3ZQpuZWVkIGlzIHRoYXQK
LSB0aGVyZSdzIGEgaGFyZCB1cHBlciBsaW1pdCBvbiBob3cgbWFueSBhbGxvY2F0aW9ucyB3ZSBt
aW5pbWFsbHkgbmVlZCB0bwogIGd1YXJhbnRlZSBmb3J3YXJkIHByb2dyZXNzLiBBbmQgdGhlIGVu
dGlyZSB2bWlkIGFsbG9jYXRpb24gYW5kCiAgYW1kZ3B1X3N5bmNfZmVuY2Ugc3R1ZmYga2luZGEg
bWFrZXMgbWUgcXVlc3Rpb24gdGhhdCdzIGEgdmFsaWQKICBhc3N1bXB0aW9uLgoKLSBtZW1wb29s
X2ZyZWUgbXVzdCBiZSBjYWxsZWQgd2l0aG91dCBhbnkgbG9ja3MgaW4gdGhlIHdheSB3aGljaCBh
cmUgaGVsZAogIHdoaWxlIHdlIGNhbGwgbWVtcG9vbF9hbGxvYy4gT3RoZXJ3aXNlIHdlIGFnYWlu
IGhhdmUgYSBuaWNlIGRlYWRsb2NrCiAgd2l0aCBubyBmb3J3YXJkIHByb2dyZXNzLiBJIHRyaWVk
IGF1ZGl0aW5nIHRoYXQsIGJ1dCBnb3QgbG9zdCBpbiBhbWRncHUKICBhbmQgc2NoZWR1bGVyIGNv
ZGUuIFNvbWUgbG9ja2RlcCBhbm5vdGF0aW9ucyBmb3IgbWVtcG9vbC5jIG1pZ2h0IGhlbHAsCiAg
YnV0IHRoZXkncmUgbm90IGdvaW5nIHRvIGNhdGNoIGV2ZXJ5dGhpbmcuIFBsdXMgaXQgd291bGQg
YmUgYWdhaW4gbWFudWFsCiAgYW5ub3RhdGlvbnMgYmVjYXVzZSB0aGlzIGlzIHlldCBhbm90aGVy
IGNyb3NzLXJlbGVhc2UgaXNzdWUuIFNvIG5vdCBzdXJlCiAgdGhhdCBoZWxwcyBhdCBhbGwuCgpp
b3csIG5vdCBzdXJlIHdoYXQgdG8gZG8gaGVyZS4gSWRlYXM/CgpDaGVlcnMsIERhbmllbAoKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMgfCAyICstCj4g
IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pZHMuYyAgIHwgMiArLQo+ICBkcml2
ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jICB8IDIgKy0KPiAgMyBmaWxlcyBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2ZlbmNlLmMKPiBpbmRleCA4ZDg0OTc1ODg1Y2QuLmEwODlh
ODI3ZmRmZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZmVuY2UuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9mZW5jZS5j
Cj4gQEAgLTE0Myw3ICsxNDMsNyBAQCBpbnQgYW1kZ3B1X2ZlbmNlX2VtaXQoc3RydWN0IGFtZGdw
dV9yaW5nICpyaW5nLCBzdHJ1Y3QgZG1hX2ZlbmNlICoqZiwKPiAgCXVpbnQzMl90IHNlcTsKPiAg
CWludCByOwo+ICAKPiAtCWZlbmNlID0ga21lbV9jYWNoZV9hbGxvYyhhbWRncHVfZmVuY2Vfc2xh
YiwgR0ZQX0tFUk5FTCk7Cj4gKwlmZW5jZSA9IGttZW1fY2FjaGVfYWxsb2MoYW1kZ3B1X2ZlbmNl
X3NsYWIsIEdGUF9BVE9NSUMpOwo+ICAJaWYgKGZlbmNlID09IE5VTEwpCj4gIAkJcmV0dXJuIC1F
Tk9NRU07Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfaWRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKPiBpbmRl
eCAyNjdmYTQ1ZGRiNjYuLmEzMzNjYTJkNGRkZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfaWRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfaWRzLmMKPiBAQCAtMjA4LDcgKzIwOCw3IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X3ZtaWRfZ3JhYl9pZGxlKHN0cnVjdCBhbWRncHVfdm0gKnZtLAo+ICAJaWYgKHJpbmctPnZtaWRf
d2FpdCAmJiAhZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKHJpbmctPnZtaWRfd2FpdCkpCj4gIAkJcmV0
dXJuIGFtZGdwdV9zeW5jX2ZlbmNlKHN5bmMsIHJpbmctPnZtaWRfd2FpdCk7Cj4gIAo+IC0JZmVu
Y2VzID0ga21hbGxvY19hcnJheShzaXplb2Yodm9pZCAqKSwgaWRfbWdyLT5udW1faWRzLCBHRlBf
S0VSTkVMKTsKPiArCWZlbmNlcyA9IGttYWxsb2NfYXJyYXkoc2l6ZW9mKHZvaWQgKiksIGlkX21n
ci0+bnVtX2lkcywgR0ZQX0FUT01JQyk7Cj4gIAlpZiAoIWZlbmNlcykKPiAgCQlyZXR1cm4gLUVO
T01FTTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9zeW5jLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfc3luYy5jCj4gaW5k
ZXggOGVhNmM0OTUyOWU3Li5hZjIyYjUyNmNlYzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X3N5bmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L2FtZGdwdV9zeW5jLmMKPiBAQCAtMTYwLDcgKzE2MCw3IEBAIGludCBhbWRncHVfc3lu
Y19mZW5jZShzdHJ1Y3QgYW1kZ3B1X3N5bmMgKnN5bmMsIHN0cnVjdCBkbWFfZmVuY2UgKmYpCj4g
IAlpZiAoYW1kZ3B1X3N5bmNfYWRkX2xhdGVyKHN5bmMsIGYpKQo+ICAJCXJldHVybiAwOwo+ICAK
PiAtCWUgPSBrbWVtX2NhY2hlX2FsbG9jKGFtZGdwdV9zeW5jX3NsYWIsIEdGUF9LRVJORUwpOwo+
ICsJZSA9IGttZW1fY2FjaGVfYWxsb2MoYW1kZ3B1X3N5bmNfc2xhYiwgR0ZQX0FUT01JQyk7Cj4g
IAlpZiAoIWUpCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4gIAo+IC0tIAo+IDIuMjcuMAo+IAoKLS0g
CkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
