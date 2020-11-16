Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C542B5228
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 21:14:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D4C8666E1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:14:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3902A666E5; Mon, 16 Nov 2020 20:14:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3B761665FA;
	Mon, 16 Nov 2020 20:14:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5705560900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:14:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3FE65665FA; Mon, 16 Nov 2020 20:14:10 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id C28A160900
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 20:14:08 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k2so20249146wrx.2
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 12:14:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tlFFgICp87GKZs6ppYHW2rMrLGlJH6xaYF8VswIu2r8=;
 b=Y5Tlq5K0CIjEVv4nyvkNso78iuyuTpyGG3aelix0GspQ5viuTaaBXHHq2WD1wGNCDJ
 6lZpfjcLKEKUnabk2kpNJl085DQwaYWY81GeG75KfRlUaQMrCMQIk6B/jSbhcVh83h5e
 ss54oGtOKSnalnaJrZ5RS3aDZtym++FjVQ8a7oCeYJfv30paEyzrnCHmfPBUxaCyHfXC
 5kDJ3CE3T3b/BsowEkUaG7gaipOg2P3rDms+gH6LSQ/X9uXM6aV6C/RvJ0yPev9Tv8XA
 NzS8bLmGxD0ieTVS57algP+ybBQDJEZ5RlUxxfa1iGe+VQ059+pmlw+x/3wDLBBNEJXp
 hzsw==
X-Gm-Message-State: AOAM530RroAsUeuez042rYcUJY+Hqt1CtcOh5veTgte5EbIq3oSmIoP7
 k1IlpBlruSuO6ZgFxNsYLZ580GXXHlRPrEniAKE=
X-Google-Smtp-Source: ABdhPJyhVjBfB4XwW22p2f67Xq+c+n49ESvD/mLBvHttBW5MOL3/bbo6s1Z+aAzlKoUDvKA9FP/lfmG14QOnR/KpvmY=
X-Received: by 2002:adf:9144:: with SMTP id j62mr4516760wrj.419.1605557647980; 
 Mon, 16 Nov 2020 12:14:07 -0800 (PST)
MIME-Version: 1.0
References: <20201116173700.1830487-1-lee.jones@linaro.org>
 <20201116173700.1830487-22-lee.jones@linaro.org>
In-Reply-To: <20201116173700.1830487-22-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 15:13:56 -0500
Message-ID: <CADnq5_MosQTaddZ7-ydRiGjPZ6FZ26F_WXgwV7MN5wmaqdEm0w@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 21/43] drm/radeon/r600_dma: Move
 'r600_gpu_check_soft_reset()'s prototype to shared location
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzggUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuYzoxNjE1OjU6IHdh
cm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYcjYwMF9ncHVfY2hlY2tfc29mdF9y
ZXNldOKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gIDE2MTUgfCB1MzIgcjYwMF9ncHVfY2hl
Y2tfc29mdF9yZXNldChzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldikKPiAgfCBefn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4KPiBDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBh
bWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdAYW1kLmNv
bT4KPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxp
bmFyby5vcmc+Cj4gQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IGRyaS1k
ZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwu
b3JnCj4gQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwo+IFNpZ25lZC1vZmYtYnk6
IExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgpBcHBsaWVkIHdpdGggbWlub3IgY2hh
bmdlcy4gIFRoYW5rcyEKCkFsZXgKCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2
MDAuYyAgICAgfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYwMC5oICAgICB8IDM1
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVv
bi9yNjAwX2RtYS5jIHwgIDMgKy0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9y
YWRlb24vcjYwMC5oCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuYwo+IGluZGV4IGYwOWI2ZGM1Y2JlYjMu
Ljk0ZTg4MTVlNTA2N2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yNjAw
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuYwo+IEBAIC0zOSw2ICszOSw3
IEBACj4KPiAgI2luY2x1ZGUgImF0b20uaCIKPiAgI2luY2x1ZGUgImF2aXZvZC5oIgo+ICsjaW5j
bHVkZSAicjYwMC5oIgo+ICAjaW5jbHVkZSAicjYwMGQuaCIKPiAgI2luY2x1ZGUgInJ2NzcwLmgi
Cj4gICNpbmNsdWRlICJyYWRlb24uaCIKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3Jh
ZGVvbi9yNjAwLmggYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuaAo+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uMmEzOTE1ZjAwMzllNAo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDAuaAo+IEBAIC0wLDAgKzEs
MzUgQEAKPiArLyogcjYwMC5oIC0tIFByaXZhdGUgaGVhZGVyIGZvciByYWRlb24gZHJpdmVyIC0q
LSBsaW51eC1jIC0qLQo+ICsgKgo+ICsgKiBDb3B5cmlnaHQgMTk5OSBQcmVjaXNpb24gSW5zaWdo
dCwgSW5jLiwgQ2VkYXIgUGFyaywgVGV4YXMuCj4gKyAqIENvcHlyaWdodCAyMDAwIFZBIExpbnV4
IFN5c3RlbXMsIEluYy4sIEZyZW1vbnQsIENhbGlmb3JuaWEuCj4gKyAqIEFsbCByaWdodHMgcmVz
ZXJ2ZWQuCj4gKyAqCj4gKyAqIFBlcm1pc3Npb24gaXMgaGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2Yg
Y2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBhCj4gKyAqIGNvcHkgb2YgdGhpcyBzb2Z0
d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9uIGZpbGVzICh0aGUgIlNvZnR3YXJlIiks
Cj4gKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1
ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KPiArICogdGhlIHJpZ2h0cyB0byB1c2UsIGNvcHksIG1v
ZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUsIHN1YmxpY2Vuc2UsCj4gKyAqIGFuZC9v
ciBzZWxsIGNvcGllcyBvZiB0aGUgU29mdHdhcmUsIGFuZCB0byBwZXJtaXQgcGVyc29ucyB0byB3
aG9tIHRoZQo+ICsgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1YmplY3QgdG8g
dGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgo+ICsgKgo+ICsgKiBUaGUgYWJvdmUgY29weXJpZ2h0
IG5vdGljZSBhbmQgdGhpcyBwZXJtaXNzaW9uIG5vdGljZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cj4g
KyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJzdGFu
dGlhbCBwb3J0aW9ucyBvZiB0aGUKPiArICogU29mdHdhcmUuCj4gKyAqCj4gKyAqIFRIRSBTT0ZU
V0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBF
WFBSRVNTIE9SCj4gKyAqIElNUExJRUQsIElOQ0xVRElORyBCVVQgTk9UIExJTUlURUQgVE8gVEhF
IFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZLAo+ICsgKiBGSVRORVNTIEZPUiBBIFBBUlRJ
Q1VMQVIgUFVSUE9TRSBBTkQgTk9OSU5GUklOR0VNRU5ULiAgSU4gTk8gRVZFTlQgU0hBTEwKPiAr
ICogUFJFQ0lTSU9OIElOU0lHSFQgQU5EL09SIElUUyBTVVBQTElFUlMgQkUgTElBQkxFIEZPUiBB
TlkgQ0xBSU0sIERBTUFHRVMgT1IKPiArICogT1RIRVIgTElBQklMSVRZLCBXSEVUSEVSIElOIEFO
IEFDVElPTiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhFUldJU0UsCj4gKyAqIEFSSVNJTkcgRlJP
TSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lUSCBUSEUgU09GVFdBUkUgT1IgVEhFIFVTRSBP
UiBPVEhFUgo+ICsgKiBERUFMSU5HUyBJTiBUSEUgU09GVFdBUkUuCj4gKyAqCj4gKyAqLwo+ICsK
PiArI2lmbmRlZiBfX1I2MDBfSF9fCj4gKyNkZWZpbmUgX19SNjAwX0hfXwo+ICsKPiArc3RydWN0
IHJhZGVvbl9kZXZpY2U7Cj4gKwo+ICt1MzIgcjYwMF9ncHVfY2hlY2tfc29mdF9yZXNldChzdHJ1
Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gKwo+ICsjZW5kaWYgICAgICAgICAgICAgICAgICAg
ICAgICAgLyogX19SNjAwX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFk
ZW9uL3I2MDBfZG1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3I2MDBfZG1hLmMKPiBpbmRl
eCBhZjZjMGRhNDVmMjhhLi44OWNhMjczOGM1ZDRjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9yYWRlb24vcjYwMF9kbWEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcjYw
MF9kbWEuYwo+IEBAIC0yNCwxMCArMjQsOSBAQAo+Cj4gICNpbmNsdWRlICJyYWRlb24uaCIKPiAg
I2luY2x1ZGUgInJhZGVvbl9hc2ljLmgiCj4gKyNpbmNsdWRlICJyNjAwLmgiCj4gICNpbmNsdWRl
ICJyNjAwZC5oIgo+Cj4gLXUzMiByNjAwX2dwdV9jaGVja19zb2Z0X3Jlc2V0KHN0cnVjdCByYWRl
b25fZGV2aWNlICpyZGV2KTsKPiAtCj4gIC8qCj4gICAqIERNQQo+ICAgKiBTdGFydGluZyB3aXRo
IFI2MDAsIHRoZSBHUFUgaGFzIGFuIGFzeW5jaHJvbm91cwo+IC0tCj4gMi4yNS4xCj4KPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
