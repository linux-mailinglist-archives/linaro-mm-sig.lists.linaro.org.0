Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 634592B516D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 20:45:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 919F6666D5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 16 Nov 2020 19:45:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 84023666E1; Mon, 16 Nov 2020 19:45:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 89E19665FA;
	Mon, 16 Nov 2020 19:44:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id C968660639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:44:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id B018A665FA; Mon, 16 Nov 2020 19:44:43 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 5076C60639
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 19:44:42 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id m125so414933wmm.3
 for <linaro-mm-sig@lists.linaro.org>; Mon, 16 Nov 2020 11:44:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pHZgWmU6XhEz4kKHQRjWGKIdxIJ0C0IVMz/y48zhekY=;
 b=mRORJNpuDyMATD35yrvrXWgIe0E7MFs8IXEjH+AgdGNur8E3C69N3Z9A26J++rueFY
 I4ue+r/mokTE/ogbKWe8y6AsV4/uMM+qNsu64nvnmfBZHkUhXNcrKVogItGXYVC5bm+k
 /QcLEuw7GGngjYvwHtR8/CdKKoLNw9jULZoDS9W8CeDloC6TZf82vlUIsFmNjHtfcUbp
 uRpaQKn8HQeg2eQ4Iyn6Z1E6qHeu14mgzJNq2vAkCjZ9IEnjqPUKCozR3XTiOOnpop7L
 Okd15TBUa63HXSaYHKlDpBm7RXwyGoSZXSB7540bY9fSvvFHMROkWmuQnDv+DuHsTBYn
 dQtw==
X-Gm-Message-State: AOAM533LXGNne06YzlXbroBP0FNYSgpzhagu3kJbtvwN2oG8h/jfmLt3
 RhO+7AaerIvhzC4oFhMFBLXEomreAIu5AXAzKbk=
X-Google-Smtp-Source: ABdhPJxnrX3oL/glLVny36dEA33OicyL3plY/Qf7bIxvAxk3pEuPzuj0B47kSHIMhMI+GvH+MgddeQrDkepwz1ilXrk=
X-Received: by 2002:a7b:c157:: with SMTP id z23mr522140wmi.70.1605555881490;
 Mon, 16 Nov 2020 11:44:41 -0800 (PST)
MIME-Version: 1.0
References: <20201116173005.1825880-1-lee.jones@linaro.org>
 <20201116173005.1825880-11-lee.jones@linaro.org>
In-Reply-To: <20201116173005.1825880-11-lee.jones@linaro.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Nov 2020 14:44:30 -0500
Message-ID: <CADnq5_MvHi4ktw+_oN8KYTZL_zMM6J8Zrm7-E0R5n9gv1ch0Gg@mail.gmail.com>
To: Lee Jones <lee.jones@linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: David Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 10/43] drm/radeon/radeon_pm: Move
 'radeon_pm_acpi_event_handler' prototype into shared header
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

T24gTW9uLCBOb3YgMTYsIDIwMjAgYXQgMTI6MzAgUE0gTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz4gd3JvdGU6Cj4KPiBGaXhlcyB0aGUgZm9sbG93aW5nIFc9MSBrZXJuZWwgYnVpbGQg
d2FybmluZyhzKToKPgo+ICBkcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9wbS5jOjc0OjY6
IHdhcm5pbmc6IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYcmFkZW9uX3BtX2FjcGlfZXZl
bnRfaGFuZGxlcuKAmSBbLVdtaXNzaW5nLXByb3RvdHlwZXNdCj4gIDc0IHwgdm9pZCByYWRlb25f
cG1fYWNwaV9ldmVudF9oYW5kbGVyKHN0cnVjdCByYWRlb25fZGV2aWNlICpyZGV2KQo+ICB8IF5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPgo+IENjOiBBbGV4IERldWNoZXIgPGFsZXhhbmRl
ci5kZXVjaGVyQGFtZC5jb20+Cj4gQ2M6ICJDaHJpc3RpYW4gS8O2bmlnIiA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1p
dC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzogYW1kLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW51eC1tZWRpYUB2
Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCj4gU2ln
bmVkLW9mZi1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCkFwcGxpZWQgd2l0
aCBtaW5vciBjaGFuZ2VzLiAgVGhhbmtzIQoKQWxleAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fYWNwaS5jIHwgIDMgKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24v
cmFkZW9uX3BtLmMgICB8ICAxICsKPiAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcG0u
aCAgIHwgMzMgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQs
IDM1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9wbS5oCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fYWNwaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fYWNwaS5jCj4gaW5kZXggNmNmMTY0NWU3YTFhOC4uMWJhZWY3YjQ5M2RlZiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9hY3BpLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9hY3BpLmMKPiBAQCAtMzYsNiArMzYsNyBAQAo+ICAj
aW5jbHVkZSAiYXRvbS5oIgo+ICAjaW5jbHVkZSAicmFkZW9uLmgiCj4gICNpbmNsdWRlICJyYWRl
b25fYWNwaS5oIgo+ICsjaW5jbHVkZSAicmFkZW9uX3BtLmgiCj4KPiAgI2lmIGRlZmluZWQoQ09O
RklHX1ZHQV9TV0lUQ0hFUk9PKQo+ICBib29sIHJhZGVvbl9hdHB4X2RncHVfcmVxX3Bvd2VyX2Zv
cl9kaXNwbGF5cyh2b2lkKTsKPiBAQCAtNDUsOCArNDYsNiBAQCBzdGF0aWMgaW5saW5lIGJvb2wg
cmFkZW9uX2F0cHhfZGdwdV9yZXFfcG93ZXJfZm9yX2Rpc3BsYXlzKHZvaWQpIHsgcmV0dXJuIGZh
bHNlOwo+Cj4gICNkZWZpbmUgQUNQSV9BQ19DTEFTUyAgICAgICAgICAgImFjX2FkYXB0ZXIiCj4K
PiAtZXh0ZXJuIHZvaWQgcmFkZW9uX3BtX2FjcGlfZXZlbnRfaGFuZGxlcihzdHJ1Y3QgcmFkZW9u
X2RldmljZSAqcmRldik7Cj4gLQo+ICBzdHJ1Y3QgYXRpZl92ZXJpZnlfaW50ZXJmYWNlIHsKPiAg
ICAgICAgIHUxNiBzaXplOyAgICAgICAgICAgICAgIC8qIHN0cnVjdHVyZSBzaXplIGluIGJ5dGVz
IChpbmNsdWRlcyBzaXplIGZpZWxkKSAqLwo+ICAgICAgICAgdTE2IHZlcnNpb247ICAgICAgICAg
ICAgLyogdmVyc2lvbiAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3Jh
ZGVvbl9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcG0uYwo+IGluZGV4IDY1
ZDE3MmIxM2UwNjUuLjE5OTVkYWQ1OWRkMDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X3BtLmMKPiBAQCAtMzMsNiArMzMsNyBAQAo+ICAjaW5jbHVkZSAiYXZpdm9kLmgiCj4gICNpbmNs
dWRlICJyNjAwX2RwbS5oIgo+ICAjaW5jbHVkZSAicmFkZW9uLmgiCj4gKyNpbmNsdWRlICJyYWRl
b25fcG0uaCIKPgo+ICAjZGVmaW5lIFJBREVPTl9JRExFX0xPT1BfTVMgMTAwCj4gICNkZWZpbmUg
UkFERU9OX1JFQ0xPQ0tfREVMQVlfTVMgMjAwCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yYWRlb24vcmFkZW9uX3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9wbS5o
Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi41ZWYxNDc3ODVl
ODE1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9u
X3BtLmgKPiBAQCAtMCwwICsxLDMzIEBACj4gKy8qIHJhZGVvbl9wbS5oIC0tIFByaXZhdGUgaGVh
ZGVyIGZvciByYWRlb24gZHJpdmVyIC0qLSBsaW51eC1jIC0qLQo+ICsgKgo+ICsgKiBDb3B5cmln
aHQgMTk5OSBQcmVjaXNpb24gSW5zaWdodCwgSW5jLiwgQ2VkYXIgUGFyaywgVGV4YXMuCj4gKyAq
IENvcHlyaWdodCAyMDAwIFZBIExpbnV4IFN5c3RlbXMsIEluYy4sIEZyZW1vbnQsIENhbGlmb3Ju
aWEuCj4gKyAqIEFsbCByaWdodHMgcmVzZXJ2ZWQuCj4gKyAqCj4gKyAqIFBlcm1pc3Npb24gaXMg
aGVyZWJ5IGdyYW50ZWQsIGZyZWUgb2YgY2hhcmdlLCB0byBhbnkgcGVyc29uIG9idGFpbmluZyBh
Cj4gKyAqIGNvcHkgb2YgdGhpcyBzb2Z0d2FyZSBhbmQgYXNzb2NpYXRlZCBkb2N1bWVudGF0aW9u
IGZpbGVzICh0aGUgIlNvZnR3YXJlIiksCj4gKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdp
dGhvdXQgcmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KPiArICogdGhl
IHJpZ2h0cyB0byB1c2UsIGNvcHksIG1vZGlmeSwgbWVyZ2UsIHB1Ymxpc2gsIGRpc3RyaWJ1dGUs
IHN1YmxpY2Vuc2UsCj4gKyAqIGFuZC9vciBzZWxsIGNvcGllcyBvZiB0aGUgU29mdHdhcmUsIGFu
ZCB0byBwZXJtaXQgcGVyc29ucyB0byB3aG9tIHRoZQo+ICsgKiBTb2Z0d2FyZSBpcyBmdXJuaXNo
ZWQgdG8gZG8gc28sIHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgo+ICsgKgo+
ICsgKiBUaGUgYWJvdmUgY29weXJpZ2h0IG5vdGljZSBhbmQgdGhpcyBwZXJtaXNzaW9uIG5vdGlj
ZSAoaW5jbHVkaW5nIHRoZSBuZXh0Cj4gKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQg
aW4gYWxsIGNvcGllcyBvciBzdWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKPiArICogU29mdHdh
cmUuCj4gKyAqCj4gKyAqIFRIRSBTT0ZUV0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VU
IFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBFWFBSRVNTIE9SCj4gKyAqIElNUExJRUQsIElOQ0xVRElO
RyBCVVQgTk9UIExJTUlURUQgVE8gVEhFIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZLAo+
ICsgKiBGSVRORVNTIEZPUiBBIFBBUlRJQ1VMQVIgUFVSUE9TRSBBTkQgTk9OSU5GUklOR0VNRU5U
LiAgSU4gTk8gRVZFTlQgU0hBTEwKPiArICogUFJFQ0lTSU9OIElOU0lHSFQgQU5EL09SIElUUyBT
VVBQTElFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFHRVMgT1IKPiArICogT1RIRVIg
TElBQklMSVRZLCBXSEVUSEVSIElOIEFOIEFDVElPTiBPRiBDT05UUkFDVCwgVE9SVCBPUiBPVEhF
UldJU0UsCj4gKyAqIEFSSVNJTkcgRlJPTSwgT1VUIE9GIE9SIElOIENPTk5FQ1RJT04gV0lUSCBU
SEUgU09GVFdBUkUgT1IgVEhFIFVTRSBPUiBPVEhFUgo+ICsgKiBERUFMSU5HUyBJTiBUSEUgU09G
VFdBUkUuCj4gKyAqCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX1JBREVPTl9QTV9IX18KPiArI2Rl
ZmluZSBfX1JBREVPTl9QTV9IX18KPiArCj4gK3ZvaWQgcmFkZW9uX3BtX2FjcGlfZXZlbnRfaGFu
ZGxlcihzdHJ1Y3QgcmFkZW9uX2RldmljZSAqcmRldik7Cj4gKwo+ICsjZW5kaWYgICAgICAgICAg
ICAgICAgICAgICAgICAgLyogX19SQURFT05fUE1fSF9fICovCj4gLS0KPiAyLjI1LjEKPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVs
IG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
