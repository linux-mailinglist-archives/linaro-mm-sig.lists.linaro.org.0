Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1668B1FB103
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 14:43:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3E53A617AE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 16 Jun 2020 12:43:23 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 29CA866588; Tue, 16 Jun 2020 12:43:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 53B1C61808;
	Tue, 16 Jun 2020 12:42:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 85FB2606A3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 12:42:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7AC9F617AE; Tue, 16 Jun 2020 12:42:26 +0000 (UTC)
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by lists.linaro.org (Postfix) with ESMTPS id EA136606A3
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 12:42:24 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id m2so15770069otr.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 16 Jun 2020 05:42:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q13V/CJ4C0CyeaU3PQKnFBowYarfzkVCYNjXfCo/M1g=;
 b=CAsPCtOilIzDQPQkv1+WlNWnFPcYaM4Pz9jJIeRIe8LNdjp09JhT+LhGRR5b5PsrnX
 Kz5I/LghSVVtQQoCNe+FHAcIzBjmlcFGsie7kB9yhmrq03+TatmXhBqxOgsZhp6UEVHu
 jIHUjHqfXoxBXdbngOWcYk/6TO9FYfZ33fgl0fDTW03KiFCeUI8ps+FbcejGr2mg40iB
 sv0uawjYfETDXESVUjvp+LqKHsrf1aFXjIY4XU5Oj3RS9od8DK4flqTMjseSBOG03CoR
 cs2wctptOoyyx7qcJXk8KTpMDSOKuKJKFmSXl4jBUo+q8Su2ZoD98ssPFTicAjd9IhcE
 kYpQ==
X-Gm-Message-State: AOAM531PUcBj4f+kuc6tw6/r09gPuXnbgfh8eCTipK8a2mL4VvBH9enU
 kb6ZF+FZvvmLQhLsRifiqIlVgzmWYoWNkKGHVHi5XVZd
X-Google-Smtp-Source: ABdhPJzhAV2LivvUc5lRUH69PwIWyJxi2VmbDvUnvq3A5eHKpR9ycJLgvoVE/+1vvl1sKwZOwieTyzQkoxH+C6slI3k=
X-Received: by 2002:a9d:6a85:: with SMTP id l5mr1098400otq.371.1592311344349; 
 Tue, 16 Jun 2020 05:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200611114418.19852-1-sumit.semwal@linaro.org>
In-Reply-To: <20200611114418.19852-1-sumit.semwal@linaro.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 16 Jun 2020 18:12:13 +0530
Message-ID: <CAO_48GFVYOv8Km7fEh8iBPp7d5ziySBV0vB9nu_+oset6hBO8w@mail.gmail.com>
To: "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>, 
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Chris Wilson <chris@chris-wilson.co.uk>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Arnd Bergmann <arnd@arndb.de>, Chenbo Feng <fengc@google.com>,
 LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>,
 Linaro MM SIG <linaro-mm-sig@lists.linaro.org>,
 syzbot+3643a18836bce555bff6@syzkaller.appspotmail.com,
 Charan Teja Reddy <charante@codeaurora.org>
Subject: Re: [Linaro-mm-sig] [PATCH v2] dma-buf: Move dma_buf_release() from
	fops to dentry_ops
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

SGVsbG8sCgpJZiB0aGVyZSBhcmUgbm8gb2JqZWN0aW9ucyB0byB0aGlzLCBJIHdpbGwgcGxhbiB0
byBtZXJnZSBpdCBzb29uLgoKRGFuaWVsLCBDaHJpcywgQ2hlbmJvPwoKT24gVGh1LCAxMSBKdW4g
MjAyMCBhdCAxNzoxNCwgU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4gd3Jv
dGU6Cj4KPiBDaGFyYW4gVGVqYSByZXBvcnRlZCBhICd1c2UtYWZ0ZXItZnJlZScgaW4gZG1hYnVm
ZnNfZG5hbWUgWzFdLCB3aGljaAo+IGhhcHBlbnMgaWYgdGhlIGRtYV9idWZfcmVsZWFzZSgpIGlz
IGNhbGxlZCB3aGlsZSB0aGUgdXNlcnNwYWNlIGlzCj4gYWNjZXNzaW5nIHRoZSBkbWFfYnVmIHBz
ZXVkbyBmcydzIGRtYWJ1ZmZzX2RuYW1lKCkgaW4gYW5vdGhlciBwcm9jZXNzLAo+IGFuZCBkbWFf
YnVmX3JlbGVhc2UoKSByZWxlYXNlcyB0aGUgZG1hYnVmIG9iamVjdCB3aGVuIHRoZSBsYXN0IHJl
ZmVyZW5jZQo+IHRvIHRoZSBzdHJ1Y3QgZmlsZSBnb2VzIGF3YXkuCj4KPiBJIGRpc2N1c3NlZCB3
aXRoIEFybmQgQmVyZ21hbm4sIGFuZCBoZSBzdWdnZXN0ZWQgdGhhdCByYXRoZXIgdGhhbiB0eWlu
Zwo+IHRoZSBkbWFfYnVmX3JlbGVhc2UoKSB0byB0aGUgZmlsZV9vcGVyYXRpb25zJyByZWxlYXNl
KCksIHdlIGNhbiB0aWUgaXQgdG8KPiB0aGUgZGVudHJ5X29wZXJhdGlvbnMnIGRfcmVsZWFzZSgp
LCB3aGljaCB3aWxsIGJlIGNhbGxlZCB3aGVuIHRoZSBsYXN0IHJlZgo+IHRvIHRoZSBkZW50cnkg
aXMgcmVtb3ZlZC4KPgo+IFRoZSBwYXRoIGV4ZXJjaXNlZCBieSBfX2ZwdXQoKSBjYWxscyBmX29w
LT5yZWxlYXNlKCkgZmlyc3QsIGFuZCB0aGVuIGNhbGxzCj4gZHB1dCwgd2hpY2ggZXZlbnR1YWxs
eSBjYWxscyBkX29wLT5kX3JlbGVhc2UoKS4KPgo+IEluIHRoZSAnbm9ybWFsJyBjYXNlLCB3aGVu
IG5vIHVzZXJzcGFjZSBhY2Nlc3MgaXMgaGFwcGVuaW5nIHZpYSBkbWFfYnVmCj4gcHNldWRvIGZz
LCB0aGVyZSBzaG91bGQgYmUgZXhhY3RseSBvbmUgZmQsIGZpbGUsIGRlbnRyeSBhbmQgaW5vZGUs
IHNvCj4gY2xvc2luZyB0aGUgZmQgd2lsbCBraWxsIG9mIGV2ZXJ5dGhpbmcgcmlnaHQgYXdheS4K
Pgo+IEluIHRoZSBwcmVzZW50ZWQgY2FzZSwgdGhlIGRlbnRyeSdzIGRfcmVsZWFzZSgpIHdpbGwg
YmUgY2FsbGVkIG9ubHkgd2hlbgo+IHRoZSBkZW50cnkncyBsYXN0IHJlZiBpcyByZWxlYXNlZC4K
Pgo+IFRoZXJlZm9yZSwgbGV0cyBtb3ZlIGRtYV9idWZfcmVsZWFzZSgpIGZyb20gZm9wcy0+cmVs
ZWFzZSgpIHRvCj4gZF9vcHMtPmRfcmVsZWFzZSgpCj4KPiBNYW55IHRoYW5rcyB0byBBcm5kIGZv
ciBoaXMgRlMgaW5zaWdodHMgOikKPgo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0
Y2h3b3JrL3BhdGNoLzEyMzgyNzgvCj4KPiBGaXhlczogYmIyYmI5MDMwNDI1ICgiZG1hLWJ1Zjog
YWRkIERNQV9CVUZfU0VUX05BTUUgaW9jdGxzIikKPiBSZXBvcnRlZC1ieTogc3l6Ym90KzM2NDNh
MTg4MzZiY2U1NTViZmY2QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiBDYzogPHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmc+IFs1LjMrXQo+IENjOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
Pgo+IFJlcG9ydGVkLWJ5OiBDaGFyYW4gVGVqYSBSZWRkeSA8Y2hhcmFudGVAY29kZWF1cm9yYS5v
cmc+Cj4gUmV2aWV3ZWQtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gU2lnbmVk
LW9mZi1ieTogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPgo+IC0tLQo+
IHYyOiBwZXIgQXJuZDogTW92ZWQgZG1hX2J1Zl9yZWxlYXNlKCkgYWJvdmUgdG8gYXZvaWQgZm9y
d2FyZCBkZWNsYXJhdGlvbjsKPiAgICAgIHJlbW92ZWQgZGVudHJ5X29wcyBjaGVjay4KPiAtLS0K
PiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDU0ICsrKysrKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjkg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBi
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBpbmRleCAwMWNlMTI1ZjhlOGQuLjQxMjYyOTYw
MWFkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gKysrIGIvZHJp
dmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IEBAIC01NCwzNyArNTQsMTEgQEAgc3RhdGljIGNoYXIg
KmRtYWJ1ZmZzX2RuYW1lKHN0cnVjdCBkZW50cnkgKmRlbnRyeSwgY2hhciAqYnVmZmVyLCBpbnQg
YnVmbGVuKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGVudHJ5LT5kX25hbWUubmFt
ZSwgcmV0ID4gMCA/IG5hbWUgOiAiIik7Cj4gIH0KPgo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IGRl
bnRyeV9vcGVyYXRpb25zIGRtYV9idWZfZGVudHJ5X29wcyA9IHsKPiAtICAgICAgIC5kX2RuYW1l
ID0gZG1hYnVmZnNfZG5hbWUsCj4gLX07Cj4gLQo+IC1zdGF0aWMgc3RydWN0IHZmc21vdW50ICpk
bWFfYnVmX21udDsKPiAtCj4gLXN0YXRpYyBpbnQgZG1hX2J1Zl9mc19pbml0X2NvbnRleHQoc3Ry
dWN0IGZzX2NvbnRleHQgKmZjKQo+IC17Cj4gLSAgICAgICBzdHJ1Y3QgcHNldWRvX2ZzX2NvbnRl
eHQgKmN0eDsKPiAtCj4gLSAgICAgICBjdHggPSBpbml0X3BzZXVkbyhmYywgRE1BX0JVRl9NQUdJ
Qyk7Cj4gLSAgICAgICBpZiAoIWN0eCkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07
Cj4gLSAgICAgICBjdHgtPmRvcHMgPSAmZG1hX2J1Zl9kZW50cnlfb3BzOwo+IC0gICAgICAgcmV0
dXJuIDA7Cj4gLX0KPiAtCj4gLXN0YXRpYyBzdHJ1Y3QgZmlsZV9zeXN0ZW1fdHlwZSBkbWFfYnVm
X2ZzX3R5cGUgPSB7Cj4gLSAgICAgICAubmFtZSA9ICJkbWFidWYiLAo+IC0gICAgICAgLmluaXRf
ZnNfY29udGV4dCA9IGRtYV9idWZfZnNfaW5pdF9jb250ZXh0LAo+IC0gICAgICAgLmtpbGxfc2Ig
PSBraWxsX2Fub25fc3VwZXIsCj4gLX07Cj4gLQo+IC1zdGF0aWMgaW50IGRtYV9idWZfcmVsZWFz
ZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiArc3RhdGljIHZvaWQg
ZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRyeSkKPiAgewo+ICAgICAgICAgc3Ry
dWN0IGRtYV9idWYgKmRtYWJ1ZjsKPgo+IC0gICAgICAgaWYgKCFpc19kbWFfYnVmX2ZpbGUoZmls
ZSkpCj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+IC0KPiAtICAgICAgIGRtYWJ1
ZiA9IGZpbGUtPnByaXZhdGVfZGF0YTsKPiArICAgICAgIGRtYWJ1ZiA9IGRlbnRyeS0+ZF9mc2Rh
dGE7Cj4KPiAgICAgICAgIEJVR19PTihkbWFidWYtPnZtYXBwaW5nX2NvdW50ZXIpOwo+Cj4gQEAg
LTExMCw5ICs4NCwzMiBAQCBzdGF0aWMgaW50IGRtYV9idWZfcmVsZWFzZShzdHJ1Y3QgaW5vZGUg
Kmlub2RlLCBzdHJ1Y3QgZmlsZSAqZmlsZSkKPiAgICAgICAgIG1vZHVsZV9wdXQoZG1hYnVmLT5v
d25lcik7Cj4gICAgICAgICBrZnJlZShkbWFidWYtPm5hbWUpOwo+ICAgICAgICAga2ZyZWUoZG1h
YnVmKTsKPiArfQo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkZW50cnlfb3BlcmF0aW9ucyBk
bWFfYnVmX2RlbnRyeV9vcHMgPSB7Cj4gKyAgICAgICAuZF9kbmFtZSA9IGRtYWJ1ZmZzX2RuYW1l
LAo+ICsgICAgICAgLmRfcmVsZWFzZSA9IGRtYV9idWZfcmVsZWFzZSwKPiArfTsKPiArCj4gK3N0
YXRpYyBzdHJ1Y3QgdmZzbW91bnQgKmRtYV9idWZfbW50Owo+ICsKPiArc3RhdGljIGludCBkbWFf
YnVmX2ZzX2luaXRfY29udGV4dChzdHJ1Y3QgZnNfY29udGV4dCAqZmMpCj4gK3sKPiArICAgICAg
IHN0cnVjdCBwc2V1ZG9fZnNfY29udGV4dCAqY3R4Owo+ICsKPiArICAgICAgIGN0eCA9IGluaXRf
cHNldWRvKGZjLCBETUFfQlVGX01BR0lDKTsKPiArICAgICAgIGlmICghY3R4KQo+ICsgICAgICAg
ICAgICAgICByZXR1cm4gLUVOT01FTTsKPiArICAgICAgIGN0eC0+ZG9wcyA9ICZkbWFfYnVmX2Rl
bnRyeV9vcHM7Cj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4gK3N0YXRpYyBzdHJ1Y3QgZmls
ZV9zeXN0ZW1fdHlwZSBkbWFfYnVmX2ZzX3R5cGUgPSB7Cj4gKyAgICAgICAubmFtZSA9ICJkbWFi
dWYiLAo+ICsgICAgICAgLmluaXRfZnNfY29udGV4dCA9IGRtYV9idWZfZnNfaW5pdF9jb250ZXh0
LAo+ICsgICAgICAgLmtpbGxfc2IgPSBraWxsX2Fub25fc3VwZXIsCj4gK307Cj4gKwo+ICBzdGF0
aWMgaW50IGRtYV9idWZfbW1hcF9pbnRlcm5hbChzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHZt
X2FyZWFfc3RydWN0ICp2bWEpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBkbWFfYnVmICpkbWFidWY7
Cj4gQEAgLTQxMiw3ICs0MDksNiBAQCBzdGF0aWMgdm9pZCBkbWFfYnVmX3Nob3dfZmRpbmZvKHN0
cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGZpbGUgKmZpbGUpCj4gIH0KPgo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBkbWFfYnVmX2ZvcHMgPSB7Cj4gLSAgICAgICAucmVs
ZWFzZSAgICAgICAgPSBkbWFfYnVmX3JlbGVhc2UsCj4gICAgICAgICAubW1hcCAgICAgICAgICAg
PSBkbWFfYnVmX21tYXBfaW50ZXJuYWwsCj4gICAgICAgICAubGxzZWVrICAgICAgICAgPSBkbWFf
YnVmX2xsc2VlaywKPiAgICAgICAgIC5wb2xsICAgICAgICAgICA9IGRtYV9idWZfcG9sbCwKPiAt
LQo+IDIuMjcuMAo+CgpCZXN0LApTdW1pdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNp
Z0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbmFyby1tbS1zaWcK
